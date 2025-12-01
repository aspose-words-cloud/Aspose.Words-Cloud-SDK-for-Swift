/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BuildReportOnlineRequest.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// Request model for buildReportOnline operation.
public class BuildReportOnlineRequest : WordsApiRequest {
    private let template : InputStream;
    private let data : String;
    private let reportEngineSettings : ReportEngineSettings;
    private let documentFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case template;
        case data;
        case reportEngineSettings;
        case documentFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the BuildReportOnlineRequest class.
    public init(template : InputStream, data : String, reportEngineSettings : ReportEngineSettings, documentFileName : String? = nil) {
        self.template = template;
        self.data = data;
        self.reportEngineSettings = reportEngineSettings;
        self.documentFileName = documentFileName;
    }

    // File with template.
    public func getTemplate() -> InputStream {
        return self.template;
    }

    // A string providing data to populate the specified template. The string must be of one of the following types: xml, json, csv.
    public func getData() -> String {
        return self.data;
    }

    // An object providing settings of a report engine.
    public func getReportEngineSettings() -> ReportEngineSettings {
        return self.reportEngineSettings;
    }

    // The filename of the output document, that will be used when the resulting document has a dynamic field {filename}. If it is not set, the "template" will be used instead.
    public func getDocumentFileName() -> String? {
        return self.documentFileName;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/buildReport";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
             if (self.getDocumentFileName() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "documentFileName", value: try ObjectSerializer.serializeToString(value: self.getDocumentFileName()!)));

         #else
                     queryItems.append(URLQueryItem(name: "documentFileName", value: try ObjectSerializer.serializeToString(value: self.getDocumentFileName()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileReference]();
         formParams.append(RequestFormParam(name: "template", body: try ObjectSerializer.serializeFile(value: self.getTemplate()), contentType: "application/octet-stream"));

         formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: self.getData()), contentType: "text/plain"));

         formParams.append(RequestFormParam(name: "reportEngineSettings", body: try ObjectSerializer.serialize(value: self.getReportEngineSettings()), contentType: "application/json"));
         self.getReportEngineSettings().collectFilesContent(&requestFilesContent);
         try self.getReportEngineSettings().validate();

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
        return data;
    }
}
