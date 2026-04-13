/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SplitDocumentOnlineJobRequest.swift">
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

// Request model for splitDocumentOnlineJob operation.
public class SplitDocumentOnlineJobRequest : WordsApiRequest {
    private let document : InputStream;
    private let format : String;
    private let loadEncoding : String?;
    private let password : String?;
    private let encryptedPassword : String?;
    private let openTypeSupport : Bool?;
    private let destFileName : String?;
    private let from : Int?;
    private let to : Int?;
    private let zipOutput : Bool?;
    private let fontsLocation : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case format;
        case loadEncoding;
        case password;
        case encryptedPassword;
        case openTypeSupport;
        case destFileName;
        case from;
        case to;
        case zipOutput;
        case fontsLocation;
        case invalidCodingKey;
    }

    // Initializes a new instance of the SplitDocumentOnlineJobRequest class.
    public init(document : InputStream, format : String, loadEncoding : String? = nil, password : String? = nil, encryptedPassword : String? = nil, openTypeSupport : Bool? = nil, destFileName : String? = nil, from : Int? = nil, to : Int? = nil, zipOutput : Bool? = nil, fontsLocation : String? = nil) {
        self.document = document;
        self.format = format;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.encryptedPassword = encryptedPassword;
        self.openTypeSupport = openTypeSupport;
        self.destFileName = destFileName;
        self.from = from;
        self.to = to;
        self.zipOutput = zipOutput;
        self.fontsLocation = fontsLocation;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // The format to split.
    public func getFormat() -> String {
        return self.format;
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

    // The start page.
    public func getFrom() -> Int? {
        return self.from;
    }

    // The end page.
    public func getTo() -> Int? {
        return self.to;
    }

    // The flag indicating whether to ZIP the output.
    public func getZipOutput() -> Bool? {
        return self.zipOutput;
    }

    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/job/put/online/put/split";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         #if os(Linux) 
             queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: self.getFormat())));
         #else
                 queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: self.getFormat())));
         #endif


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


             if (self.getFrom() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "from", value: try ObjectSerializer.serializeToString(value: self.getFrom()!)));

         #else
                     queryItems.append(URLQueryItem(name: "from", value: try ObjectSerializer.serializeToString(value: self.getFrom()!)));

         #endif        
             }


             if (self.getTo() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "to", value: try ObjectSerializer.serializeToString(value: self.getTo()!)));

         #else
                     queryItems.append(URLQueryItem(name: "to", value: try ObjectSerializer.serializeToString(value: self.getTo()!)));

         #endif        
             }


             if (self.getZipOutput() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serializeToString(value: self.getZipOutput()!)));

         #else
                     queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serializeToString(value: self.getZipOutput()!)));

         #endif        
             }


             if (self.getFontsLocation() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: self.getFontsLocation()!)));

         #else
                     queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: self.getFontsLocation()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileReference]();
         formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: self.getDocument()), contentType: "application/octet-stream"));

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
        return try ObjectSerializer.deserialize(type: JobInfo.self, from: data);
    }

    public func getOriginalRequest() -> WordsApiRequest {
        return SplitDocumentOnlineRequest(document: self.getDocument(), format: self.getFormat(), loadEncoding: self.getLoadEncoding(), password: self.getPassword(), encryptedPassword: self.getEncryptedPassword(), openTypeSupport: self.getOpenTypeSupport(), destFileName: self.getDestFileName(), from: self.getFrom(), to: self.getTo(), zipOutput: self.getZipOutput(), fontsLocation: self.getFontsLocation());
    }
}
