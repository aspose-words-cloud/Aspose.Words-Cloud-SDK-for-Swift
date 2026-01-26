/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="LoadWebDocumentRequest.swift">
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

// Request model for loadWebDocument operation.
public class LoadWebDocumentRequest : WordsApiRequest {
    private let data : LoadWebDocumentData;
    private let storage : String?;

    private enum CodingKeys: String, CodingKey {
        case data;
        case storage;
        case invalidCodingKey;
    }

    // Initializes a new instance of the LoadWebDocumentRequest class.
    public init(data : LoadWebDocumentData, storage : String? = nil) {
        self.data = data;
        self.storage = storage;
    }

    // The properties of data downloading.
    public func getData() -> LoadWebDocumentData {
        return self.data;
    }

    // Original document storage.
    public func getStorage() -> String? {
        return self.storage;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/loadWebDocument";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
             if (self.getStorage() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: self.getStorage()!)));

         #else
                     queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: self.getStorage()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileReference]();
         formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: self.getData()), contentType: "application/json"));
         self.getData().collectFilesContent(&requestFilesContent);
         try self.getData().validate();

         try apiInvoker.prepareFilesContent(&requestFilesContent);
         for requestFileReference in requestFilesContent {
             if (requestFileReference.source == "Request") {
                 formParams.append(RequestFormParam(name: requestFileReference.reference, body: try ObjectSerializer.serializeFile(value: requestFileReference.content), contentType: "application/octet-stream"));
             }
         }

         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         if (formParams.count > 0) {
             result.setBody(formParams: formParams);
         }
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data, headers : [String: String]) throws -> Any? {
        return try ObjectSerializer.deserialize(type: SaveResponse.self, from: data);
    }
}
