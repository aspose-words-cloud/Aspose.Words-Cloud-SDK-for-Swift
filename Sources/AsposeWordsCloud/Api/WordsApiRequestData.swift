/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsApiRequestData.swift">
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

// Common REST API request data
public struct WordsApiRequestData {
    private let url : URL;
    private let method : String;
    private var body : Data?;
    private var headers : Dictionary<String, String>;

    public init(url : URL, method : String) {
        self.url = URL(string: url.absoluteString.replacingOccurrences(of: "%25", with: "%"))!;
        self.method = method;
        self.body = nil;
        self.headers = Dictionary<String, String>();
    }

    public func getURL() -> URL {
        return self.url;
    }

    public func getMethod() -> String {
        return self.method;
    }

    public mutating func setBody(body : Data?, contentType : String) {
        self.body = body;
        self.setContentType(value: contentType);
    }

    public mutating func setBody(formParams : [RequestFormParam]) {
        if (formParams.count == 0)
        {
            self.body = nil;
        }
        else if (formParams.count == 1) {
            let formParam = formParams[0];
            self.body = formParam.getBody();
            self.setContentType(value: formParam.getContentType());
        }
        else {
            // Generate body for multipart requests
            var needsClrf = false;
            var formBody = Data();
            let boundaryPrefix = UUID().uuidString;
            for formParam in formParams {
                if (needsClrf) {
                    formBody.append("\r\n".data(using: .utf8)!);
                }
                needsClrf = true;

                formBody.append("--\(boundaryPrefix)\r\n".data(using: .utf8)!);
                formBody.append("Content-Type: \(formParam.getContentType())\r\n".data(using: .utf8)!);
                formBody.append("Content-Disposition: form-data".data(using: .utf8)!);
                if (formParam.getName() != nil) {
                    formBody.append("; name=\"\(formParam.getName()!)\"".data(using: .utf8)!);
                }
                if (formParam.getFilename() != nil) {
                    formBody.append("; filename=\"\(formParam.getFilename()!)\"".data(using: .utf8)!);
                }
                formBody.append("\r\n\r\n".data(using: .utf8)!);
                formBody.append(formParam.getBody());
            }
            formBody.append("\r\n--\(boundaryPrefix)--\r\n".data(using: .utf8)!);

            self.body = formBody;
            self.setContentType(value: "multipart/form-data; boundary=\"\(boundaryPrefix)\"");
        }
    }

    public func getBody() -> Data? {
        return self.body;
    }

    public mutating func addHeader(key : String, value : String) {
        self.headers[key] = value;
    }

    public mutating func setContentType(value : String) {
        self.headers["Content-Type"] = value;
    }

    public func getHeaders() -> Dictionary<String, String> {
        return self.headers;
    }

    public func toBatchPart(configuration : Configuration) throws -> Data {
        let baseUrlSize = try configuration.getApiRootUrl().appendingPathComponent("/words/").absoluteString.count;
        let fullUrl = self.getURL().absoluteString;
        let relUrl = String(fullUrl[fullUrl.index(fullUrl.startIndex, offsetBy: baseUrlSize)..<fullUrl.endIndex]);

        var result = Data();
        result.append(self.getMethod().data(using: .utf8)!);
        result.append(" ".data(using: .utf8)!);
        result.append(relUrl.data(using: .utf8)!);
        result.append(" \r\n".data(using: .utf8)!);

        for (key, value) in self.getHeaders() {
            result.append(key.data(using: .utf8)!);
            result.append(": ".data(using: .utf8)!);
            result.append(value.data(using: .utf8)!);
            result.append("\r\n".data(using: .utf8)!);
        }

        result.append("\r\n".data(using: .utf8)!);

        if (self.getBody() != nil) {
            result.append(self.getBody()!);
        }

        return result;
    }
}
