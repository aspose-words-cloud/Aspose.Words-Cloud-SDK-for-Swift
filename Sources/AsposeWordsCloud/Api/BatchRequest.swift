/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsBatchRequest.swift">
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

// General protocol for all models.
public struct BatchRequest {
    private var requestId : String;
    private var dependsOn : String;
    private let request : WordsApiRequest;

    public init(request : WordsApiRequest) {
        self.request = request;
        self.requestId = UUID().uuidString;
        self.dependsOn = "";
    }

    public func getRequestId() -> String {
         return self.requestId;
    }

    public mutating func setDependsOn(request : BatchRequest) {
         return self.dependsOn = request.requestId;
    }

    public func getRequest() -> WordsApiRequest {
         return self.request;
    }

    public func resultOf() -> InputStream {
         return InputStream(data: ("ResultOf(" + self.requestId + ")").data(using: .utf8)!);
    }

    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
        var result = try request.createApiRequestData(apiInvoker: apiInvoker, configuration: configuration);
        result.addHeader(key: "RequestId", value: self.requestId);
        if (!self.dependsOn.isEmpty) {
            result.addHeader(key: "DependsOn", value: self.dependsOn);
        }
        return result;
    }
}
