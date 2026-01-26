/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ApiInvoker.swift">
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

#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif

// Utility class for executing and processing requests to Cloud API
public class ApiInvoker {
    // An object containing the configuration for executing API requests 
    private let configuration : Configuration;

#if os(Linux)
    // Encryption of passwords in query params not supported on linux
#else
    private let encryptor : Encryptor;
#endif

    // Cached value of oauth2 authorization tokeт. 
    // It is filled after the first call to the API. 
    // Mutex is used to synchronize updates in a multi-threaded environment.
    private let mutex : NSLock;
    private var accessTokenCache : String?;

    // Maximum size of printing body content in debug mode
    private let maxDebugPrintingContentSize = 1024 * 1024; // 1Mb

    // Status codes for HTTP request
    private let httpStatusCodeOK = 200;
    private let httpStatusCodeBadRequest = 400;
    private let httpStatusCodeUnauthorized = 401;
    private let httpStatusCodeTimeout = 408;

    // Initialize ApiInvoker object with specific configuration
#if os(Linux)
    public init(configuration : Configuration) {
        self.configuration = configuration;
        self.mutex = NSLock();
        self.accessTokenCache = nil;
    }
#else
    public init(configuration : Configuration, encryptor: Encryptor) {
        self.configuration = configuration;
        self.mutex = NSLock();
        self.accessTokenCache = nil;
        self.encryptor = encryptor;
    }
#endif

    // Internal class for represent API response
    private class InvokeResponse {
        public var data : Data?;
        public var headers : [String : String];
        public var errorCode : Int;
        public var errorMessage : String?;

        public init(errorCode : Int) {
            self.errorCode = errorCode;
            self.headers = [String : String]();
        }
    }

    // Internal struct for represent oauth2 authorization response
    private struct AccessTokenResult : Decodable {
        public var access_token : String?;
    }

    // Internal function for prepare files content list
    public func prepareFilesContent(_ requestFilesContent : inout [FileReference]) throws {
#if os(Linux)
        // Encryption of passwords not supported on linux
#else
        for requestFileReference in requestFilesContent {
            if (requestFileReference.password != nil) {
                requestFileReference.encryptPassword(try encryptString(value: requestFileReference.password!));
            }
        }
#endif
    }

    // Invoke request to the API with the specified set of arguments and execute callback after the request is completed
    public func invoke(apiRequestData : WordsApiRequestData, callback: @escaping (_ response: Data?, _ headers: [String: String], _ error: Error?) -> ()
    ) {
        // Create URL request object
        var request = URLRequest(url: apiRequestData.getURL());
        request.httpMethod = apiRequestData.getMethod();
        request.timeoutInterval = self.configuration.getTimeout();

        // Fill headers
        for (key, value) in apiRequestData.getHeaders() {
            request.setValue(value, forHTTPHeaderField: key);
        }

        // Process the request body
        if (apiRequestData.getBody() != nil) {
            request.httpBody = apiRequestData.getBody();
        }

        // Request or get from cache authorization token
        invokeAuthToken(forceTokenRequest: false, callback: { accessToken, statusCode in
            if (statusCode == self.httpStatusCodeOK) {
                // When authorization is completed - invoke API request
                self.invokeRequest(urlRequest: &request, accessToken: accessToken, callback: { response in
                    if (response.errorCode == self.httpStatusCodeUnauthorized) {
                        // Update request token when API request returns 401 error
                        self.invokeAuthToken(forceTokenRequest: true, callback: { accessToken, statusCode in
                            if (statusCode == self.httpStatusCodeOK) {
                                // Retry API request with new authorization token
                                self.invokeRequest(urlRequest: &request, accessToken: accessToken, callback: { response in
                                    if (response.errorCode == self.httpStatusCodeOK) {
                                        // Api request success
                                        callback(response.data, response.headers, nil);
                                    }
                                    else {
                                        callback(nil, [String : String](), WordsApiError.requestError(errorCode: response.errorCode, message: response.errorMessage));
                                    }
                                });
                            }
                            else {
                                callback(nil, [String : String](), WordsApiError.requestError(errorCode: statusCode, message: "Authorization failed."));
                            }
                        });
                    }
                    else if (response.errorCode == self.httpStatusCodeOK) {
                        // Api request success
                        callback(response.data, response.headers, nil);
                    }
                    else {
                        callback(nil, [String : String](), WordsApiError.requestError(errorCode: response.errorCode, message: response.errorMessage));
                    }
                });
            }
            else {
                callback(nil, [String : String](), WordsApiError.requestError(errorCode: statusCode, message: "Authorization failed."));
            }
        });
    }

    // Invokes prepared request to the API. Callback returns a response from the API call
    private func invokeRequest(urlRequest : inout URLRequest, accessToken : String?, callback : @escaping (_ response: InvokeResponse) -> ()) {
        // Set access token to request headers
        if (accessToken != nil) {
            urlRequest.setValue(accessToken!, forHTTPHeaderField: "Authorization");
        }

        // Set statistic headers
        urlRequest.setValue(self.configuration.getSdkName(), forHTTPHeaderField: "x-aspose-client");
        urlRequest.setValue(self.configuration.getSdkVersion(), forHTTPHeaderField: "x-aspose-client-version");

        // Print request when debug mode is enabled
        if (configuration.isDebugMode()) {
            print("REQUEST BEGIN");
            if (urlRequest.url?.absoluteString != nil) {
                print("URL: \(String(describing: urlRequest.url!.absoluteString))");
            }
            if (urlRequest.allHTTPHeaderFields != nil) {
                print("HEADERS: \(String(describing: urlRequest.allHTTPHeaderFields!))");
            }
            if (urlRequest.httpBody != nil) {
                if (urlRequest.httpBody!.count > maxDebugPrintingContentSize) {
                    print("BODY: Response data too long for debug printing. Size: \(urlRequest.httpBody!.count)");
                }
                else {
                    let bodyStr = String(data: urlRequest.httpBody!, encoding: .utf8);
                    if (bodyStr != nil) {
                        print("BODY: \(bodyStr!)");
                    }
                    else {
                        let chars = urlRequest.httpBody!.map { Character(UnicodeScalar($0)) };
                        print("BODY: \(String(Array(chars)))");
                    }
                }
            }
            print("REQUEST END");
        }

        // Execute request
        let result = URLSession.shared.dataTask(with: urlRequest, completionHandler: { d, r, e in
            let rawResponse = r as? HTTPURLResponse;
            let invokeResponse = InvokeResponse(errorCode: self.httpStatusCodeTimeout);

            invokeResponse.data = d;
            if (rawResponse != nil) {
                invokeResponse.errorCode = rawResponse!.statusCode;
                invokeResponse.errorMessage = rawResponse!.description;
                for header in rawResponse!.allHeaderFields {
                    invokeResponse.headers[String(describing: header.key)] = String(describing: header.value);
                }
            }
            else {
                invokeResponse.errorCode = self.httpStatusCodeBadRequest;
            }

            // Print response when debug mode is enabled
            if (self.configuration.isDebugMode()) {
                print("RESPONSE BEGIN");
                print("\tSTATUS CODE: \(invokeResponse.errorCode)");
                if (invokeResponse.errorMessage != nil) {
                    print("MESSAGE: \(invokeResponse.errorMessage!)");
                }
                if (invokeResponse.data != nil) {
                    if (invokeResponse.data!.count > self.maxDebugPrintingContentSize) {
                        print("BODY: Response data too long for debug printing. Size: \(invokeResponse.data!.count)");
                    }
                    else {
                        let bodyStr = String(data: invokeResponse.data!, encoding: .utf8);
                        if (bodyStr != nil) {
                            print("BODY: \(bodyStr!)");
                        }
                        else {
                            let chars = invokeResponse.data!.map { Character(UnicodeScalar($0)) };
                            print("BODY: \(String(Array(chars)))");
                        }
                    }
                }
                print("RESPONSE END");
            }

            callback(invokeResponse);
        });
        result.resume();
    }

    // Requests authorization token from server. After the first call, the token is cached and the cached value is used for future calls.
    private func invokeAuthToken(forceTokenRequest: Bool, callback : @escaping (_ accessToken: String?, _ statusCode: Int) -> ()) {
        var accessToken : String? = nil;
        if (!forceTokenRequest) {
            mutex.lock();
            if (self.accessTokenCache != nil) {
                accessToken = String(self.accessTokenCache!);
            }
            mutex.unlock();
        }

        if (accessToken == nil) {
            let urlPath = URL(string: self.configuration.getBaseUrl())!.appendingPathComponent("v4.0/words/connect/token");
            var request = URLRequest(url: urlPath);
            request.httpMethod = "POST";
            request.timeoutInterval = self.configuration.getTimeout();
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type");
            request.httpBody = "grant_type=client_credentials&client_id=\(configuration.getClientId())&client_secret=\(configuration.getClientSecret())".data(using: .utf8);
            invokeRequest(urlRequest: &request, accessToken: nil, callback: { response in
                var newAccessToken : String? = nil;
                if (response.errorCode == self.httpStatusCodeOK) {
                    do {
                        let result = try ObjectSerializer.deserializeInternal(type: AccessTokenResult.self, from: response.data!);
                        if (result.access_token != nil) {
                            newAccessToken = "Bearer " + result.access_token!;
                        }
                    } catch {
                        // Do nothing
                    }
                }
                if (newAccessToken != nil) {
                    self.mutex.lock();
                    self.accessTokenCache = newAccessToken;
                    self.mutex.unlock();
                }
                callback(newAccessToken, response.errorCode);
            });
        }
        else {
            callback(accessToken, self.httpStatusCodeOK);
        }
    }

    public func lengthField(of valueField: [UInt8]) -> [UInt8] {
        var count = valueField.count;

        if (count < 128) {
            return [ UInt8(count) ];
        }

        // The number of bytes needed to encode count.
        let lengthBytesCount = Int((log2(Double(count)) / 8) + 1);

        // The first byte in the length field encoding the number of remaining bytes.
        let firstLengthFieldByte = UInt8(128 + lengthBytesCount);

        var lengthField: [UInt8] = []
        for _ in 0..<lengthBytesCount {
            // Take the last 8 bits of count.
            let lengthByte = UInt8(count & 0xff);
            // Add them to the length field.
            lengthField.insert(lengthByte, at: 0);
            // Delete the last 8 bits of count.
            count = count >> 8;
        }

        // Include the first byte.
        lengthField.insert(firstLengthFieldByte, at: 0);

        return lengthField;
    }

#if os(Linux)
    // Encryption of passwords in query params not supported on linux
#else
    public func encryptString(value : String) throws -> String {
        return try encryptor.encrypt(data: value);
    }
#endif
}
