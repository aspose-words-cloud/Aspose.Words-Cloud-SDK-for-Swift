/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ExecuteMailMergeRequest.swift">
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

// Request model for executeMailMerge operation.
public class ExecuteMailMergeRequest : WordsApiRequest {
    private let name : String;
    private let data : String?;
    private let options : FieldOptions?;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let encryptedPassword : String?;
    private let openTypeSupport : Bool?;
    private let withRegions : Bool?;
    private let mailMergeDataFile : String?;
    private let cleanup : String?;
    private let useWholeParagraphAsRegion : Bool?;
    private let mergeWholeDocument : Bool?;
    private let destFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case data;
        case options;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case encryptedPassword;
        case openTypeSupport;
        case withRegions;
        case mailMergeDataFile;
        case cleanup;
        case useWholeParagraphAsRegion;
        case mergeWholeDocument;
        case destFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the ExecuteMailMergeRequest class.
    public init(name : String, data : String? = nil, options : FieldOptions? = nil, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, encryptedPassword : String? = nil, openTypeSupport : Bool? = nil, withRegions : Bool? = nil, mailMergeDataFile : String? = nil, cleanup : String? = nil, useWholeParagraphAsRegion : Bool? = nil, mergeWholeDocument : Bool? = nil, destFileName : String? = nil) {
        self.name = name;
        self.data = data;
        self.options = options;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.encryptedPassword = encryptedPassword;
        self.openTypeSupport = openTypeSupport;
        self.withRegions = withRegions;
        self.mailMergeDataFile = mailMergeDataFile;
        self.cleanup = cleanup;
        self.useWholeParagraphAsRegion = useWholeParagraphAsRegion;
        self.mergeWholeDocument = mergeWholeDocument;
        self.destFileName = destFileName;
    }

    // The filename of the input document.
    public func getName() -> String {
        return self.name;
    }

    // Mail merge data.
    public func getData() -> String? {
        return self.data;
    }

    // Field options.
    public func getOptions() -> FieldOptions? {
        return self.options;
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

    // The flag indicating whether to execute Mail Merge operation with regions.
    public func getWithRegions() -> Bool? {
        return self.withRegions;
    }

    // The data file.
    public func getMailMergeDataFile() -> String? {
        return self.mailMergeDataFile;
    }

    // The cleanup options.
    public func getCleanup() -> String? {
        return self.cleanup;
    }

    // The flag indicating whether paragraph with TableStart or TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields. The default value is true.
    public func getUseWholeParagraphAsRegion() -> Bool? {
        return self.useWholeParagraphAsRegion;
    }

    // The flag indicating whether fields in whole document are updated while executing of a mail merge with regions.
    public func getMergeWholeDocument() -> Bool? {
        return self.mergeWholeDocument;
    }

    // The filename of the output document. If this parameter is omitted, the result will be saved with autogenerated name.
    public func getDestFileName() -> String? {
        return self.destFileName;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/{name}/MailMerge";
         rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: self.getName()));

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


             if (self.getWithRegions() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "withRegions", value: try ObjectSerializer.serializeToString(value: self.getWithRegions()!)));

         #else
                     queryItems.append(URLQueryItem(name: "withRegions", value: try ObjectSerializer.serializeToString(value: self.getWithRegions()!)));

         #endif        
             }


             if (self.getMailMergeDataFile() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "mailMergeDataFile", value: try ObjectSerializer.serializeToString(value: self.getMailMergeDataFile()!)));

         #else
                     queryItems.append(URLQueryItem(name: "mailMergeDataFile", value: try ObjectSerializer.serializeToString(value: self.getMailMergeDataFile()!)));

         #endif        
             }


             if (self.getCleanup() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "cleanup", value: try ObjectSerializer.serializeToString(value: self.getCleanup()!)));

         #else
                     queryItems.append(URLQueryItem(name: "cleanup", value: try ObjectSerializer.serializeToString(value: self.getCleanup()!)));

         #endif        
             }


             if (self.getUseWholeParagraphAsRegion() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "useWholeParagraphAsRegion", value: try ObjectSerializer.serializeToString(value: self.getUseWholeParagraphAsRegion()!)));

         #else
                     queryItems.append(URLQueryItem(name: "useWholeParagraphAsRegion", value: try ObjectSerializer.serializeToString(value: self.getUseWholeParagraphAsRegion()!)));

         #endif        
             }


             if (self.getMergeWholeDocument() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "mergeWholeDocument", value: try ObjectSerializer.serializeToString(value: self.getMergeWholeDocument()!)));

         #else
                     queryItems.append(URLQueryItem(name: "mergeWholeDocument", value: try ObjectSerializer.serializeToString(value: self.getMergeWholeDocument()!)));

         #endif        
             }


             if (self.getDestFileName() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));

         #else
                     queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileReference]();
         if (self.getData() != nil) {
             formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: self.getData()!), contentType: "text/plain"));
         }

         if (self.getOptions() != nil) {
             formParams.append(RequestFormParam(name: "options", body: try ObjectSerializer.serialize(value: self.getOptions()!), contentType: "application/json"));
             try self.getOptions()!.validate();
         }

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
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: data);
    }
}
