/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DeleteFolderRequest.swift">
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

// Request model for deleteFolder operation.
public class DeleteFolderRequest : WordsApiRequest {
    private let path : String;
    private let storageName : String?;
    private let recursive : Bool?;

    private enum CodingKeys: String, CodingKey {
        case path;
        case storageName;
        case recursive;
        case invalidCodingKey;
    }

    // Initializes a new instance of the DeleteFolderRequest class.
    public init(path : String, storageName : String? = nil, recursive : Bool? = nil) {
        self.path = path;
        self.storageName = storageName;
        self.recursive = recursive;
    }

    // Folder path e.g. '/folder'.
    public func getPath() -> String {
        return self.path;
    }

    // Storage name.
    public func getStorageName() -> String? {
        return self.storageName;
    }

    // Enable to delete folders, subfolders and files.
    public func getRecursive() -> Bool? {
        return self.recursive;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/storage/folder/{path}";
         rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: self.getPath()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
             if (self.getStorageName() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: self.getStorageName()!)));

         #else
                     queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: self.getStorageName()!)));

         #endif        
             }


             if (self.getRecursive() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "recursive", value: try ObjectSerializer.serializeToString(value: self.getRecursive()!)));

         #else
                     queryItems.append(URLQueryItem(name: "recursive", value: try ObjectSerializer.serializeToString(value: self.getRecursive()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileReference]();
         try apiInvoker.prepareFilesContent(&requestFilesContent);
         for requestFileReference in requestFilesContent {
             if (requestFileReference.source == "Request") {
                 formParams.append(RequestFormParam(name: requestFileReference.reference, body: try ObjectSerializer.serializeFile(value: requestFileReference.content), contentType: "application/octet-stream"));
             }
         }

         var result = WordsApiRequestData(url: urlBuilder.url!, method: "DELETE");
         if (formParams.count > 0) {
             result.setBody(formParams: formParams);
         }
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data, headers : [String: String]) throws -> Any? {
        return nil;
    }
}
