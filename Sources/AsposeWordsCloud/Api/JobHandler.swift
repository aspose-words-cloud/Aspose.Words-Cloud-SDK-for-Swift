/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="JobHandler.swift">
 *   Copyright (c) 2026 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

import Foundation

public class JobHandler<T> {
    private let apiInvoker : ApiInvoker;
    private let request : WordsApiRequest;
    private var info : JobInfo;
    private var result : T?;

    public init(apiInvoker : ApiInvoker, request : WordsApiRequest, info : JobInfo) {
        self.apiInvoker = apiInvoker;
        self.request = request;
        self.info = info;
    }

    public func getMessage() -> String {
        return self.info.getMessage() ?? "";
    }

    public func getStatus() -> JobInfo.Status? {
        return self.info.getStatus();
    }

    public func getResult() -> T? {
        return self.result;
    }

    public func update(callback: @escaping (_ response : T?, _ error : Error?) -> ()) {
        guard let jobId = self.info.getJobId(), !jobId.isEmpty else {
            callback(nil, WordsApiError.requestError(errorCode: 400, message: "Invalid job id."));
            return;
        }

        self.apiInvoker.callJobResult(jobId: jobId, callback: { parts, error in
            if (error != nil) {
                callback(nil, error);
                return;
            }

            do {
                if let responseParts = parts, responseParts.count >= 1 {
                    self.info = try ObjectSerializer.deserializeJobInfoPart(partData: responseParts[0]);
                    if (responseParts.count >= 2 && self.info.getStatus() == JobInfo.Status.succeded) {
                        self.result = try ObjectSerializer.deserializeHttpResponsePart(request: self.request, partData: responseParts[1]) as? T;
                    }
                }

                callback(self.result, nil);
            }
            catch let deserializeError {
                callback(nil, deserializeError);
            }
        });
    }

    public func update() throws -> T? {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : T? = nil;
        var responseError : Error? = nil;
        self.update(callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }

        return responseObject;
    }

    public func waitResult(updateInterval : TimeInterval, callback: @escaping (_ response : T?, _ error : Error?) -> ()) {
        DispatchQueue.global().async {
            do {
                callback(try self.waitResult(updateInterval: updateInterval), nil);
            }
            catch let error {
                callback(nil, error);
            }
        }
    }

    public func waitResult(updateInterval : TimeInterval) throws -> T {
        while (self.info.getStatus() == JobInfo.Status.queued || self.info.getStatus() == JobInfo.Status.processing) {
            Thread.sleep(forTimeInterval: updateInterval);
            _ = try self.update();
        }

        if (self.result == nil && self.info.getStatus() == JobInfo.Status.succeded) {
            _ = try self.update();
        }

        if (self.info.getStatus() != JobInfo.Status.succeded) {
            throw WordsApiError.requestError(
                errorCode: 400,
                message: "Job failed with status \"\(self.info.getStatus()?.rawValue ?? "unknown")\" - \"\(self.getMessage())\"."
            );
        }

        return self.result!;
    }
}
