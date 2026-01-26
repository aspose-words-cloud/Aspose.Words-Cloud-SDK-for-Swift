/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="UpdateTableCellFormatRequest.swift">
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

// Request model for updateTableCellFormat operation.
public class UpdateTableCellFormatRequest : WordsApiRequest {
    private let name : String;
    private let tableRowPath : String;
    private let index : Int;
    private let format : TableCellFormat;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let encryptedPassword : String?;
    private let openTypeSupport : Bool?;
    private let destFileName : String?;
    private let revisionAuthor : String?;
    private let revisionDateTime : String?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case tableRowPath;
        case index;
        case format;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case encryptedPassword;
        case openTypeSupport;
        case destFileName;
        case revisionAuthor;
        case revisionDateTime;
        case invalidCodingKey;
    }

    // Initializes a new instance of the UpdateTableCellFormatRequest class.
    public init(name : String, tableRowPath : String, index : Int, format : TableCellFormat, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, encryptedPassword : String? = nil, openTypeSupport : Bool? = nil, destFileName : String? = nil, revisionAuthor : String? = nil, revisionDateTime : String? = nil) {
        self.name = name;
        self.tableRowPath = tableRowPath;
        self.index = index;
        self.format = format;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.encryptedPassword = encryptedPassword;
        self.openTypeSupport = openTypeSupport;
        self.destFileName = destFileName;
        self.revisionAuthor = revisionAuthor;
        self.revisionDateTime = revisionDateTime;
    }

    // The filename of the input document.
    public func getName() -> String {
        return self.name;
    }

    // The path to the table row in the document tree.
    public func getTableRowPath() -> String {
        return self.tableRowPath;
    }

    // Object index.
    public func getIndex() -> Int {
        return self.index;
    }

    // The properties.
    public func getFormat() -> TableCellFormat {
        return self.format;
    }

    // Original document folder.
    public func getFolder() -> String? {
        return self.folder;
    }

    // Original document storage.
    public func getStorage() -> String? {
        return self.storage;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password of protected Word document. Use the parameter to pass a password via SDK. SDK encrypts it automatically. We don't recommend to use the parameter to pass a plain password for direct call of API.
    public func getPassword() -> String? {
        return self.password;
    }

    // Password of protected Word document. Use the parameter to pass an encrypted password for direct calls of API. See SDK code for encyption details.
    public func getEncryptedPassword() -> String? {
        return self.encryptedPassword;
    }

    // The value indicates whether OpenType support is on.
    public func getOpenTypeSupport() -> Bool? {
        return self.openTypeSupport;
    }

    // Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    public func getDestFileName() -> String? {
        return self.destFileName;
    }

    // Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    public func getRevisionAuthor() -> String? {
        return self.revisionAuthor;
    }

    // The date and time to use for revisions.
    public func getRevisionDateTime() -> String? {
        return self.revisionDateTime;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/{name}/{tableRowPath}/cells/{index}/cellformat";
         rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: self.getName()));

         rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: self.getTableRowPath()));

         rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: self.getIndex()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
             if (self.getFolder() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: self.getFolder()!)));

         #else
                     queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: self.getFolder()!)));

         #endif        
             }


             if (self.getStorage() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: self.getStorage()!)));

         #else
                     queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: self.getStorage()!)));

         #endif        
             }


             if (self.getLoadEncoding() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));

         #else
                     queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));

         #endif        
             }


             if (self.getPassword() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: self.getPassword()!)));

         #else
                     queryItems.append(URLQueryItem(name: "encryptedPassword", value: try apiInvoker.encryptString(value: self.getPassword()!)));

         #endif        
             }


             if (self.getEncryptedPassword() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "encryptedPassword", value: try ObjectSerializer.serializeToString(value: self.getEncryptedPassword()!)));

         #else
                     queryItems.append(URLQueryItem(name: "encryptedPassword", value: try ObjectSerializer.serializeToString(value: self.getEncryptedPassword()!)));

         #endif        
             }


             if (self.getOpenTypeSupport() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "openTypeSupport", value: try ObjectSerializer.serializeToString(value: self.getOpenTypeSupport()!)));

         #else
                     queryItems.append(URLQueryItem(name: "openTypeSupport", value: try ObjectSerializer.serializeToString(value: self.getOpenTypeSupport()!)));

         #endif        
             }


             if (self.getDestFileName() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));

         #else
                     queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));

         #endif        
             }


             if (self.getRevisionAuthor() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: self.getRevisionAuthor()!)));

         #else
                     queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: self.getRevisionAuthor()!)));

         #endif        
             }


             if (self.getRevisionDateTime() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: self.getRevisionDateTime()!)));

         #else
                     queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: self.getRevisionDateTime()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileReference]();
         formParams.append(RequestFormParam(name: "format", body: try ObjectSerializer.serialize(value: self.getFormat()), contentType: "application/json"));
         self.getFormat().collectFilesContent(&requestFilesContent);
         try self.getFormat().validate();

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
        return try ObjectSerializer.deserialize(type: TableCellFormatResponse.self, from: data);
    }
}
