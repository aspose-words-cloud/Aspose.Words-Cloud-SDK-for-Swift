/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsAPI.swift">
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

// Aspose.Words.Cloud API for Swift
public protocol Encryptor {
    func encrypt(data: String) throws -> String
}

public class WordsAPI : Encryptor {

    private let configuration : Configuration;
    private var apiInvoker : ApiInvoker?;

#if os(Linux)
    // Encryption of passwords in query params not supported on linux
#else
    // RSA key for password encryption
    private var encryptionKey : SecKey?;
#endif

    // Initializes a new instance of the WordsAPI class based on Configuration object.
    public init(configuration : Configuration) throws {
        self.configuration = configuration;
    }

    // Initializes a new instance of the WordsAPI class based on ClientId and clientSecret.
    public init(clientId: String, clientSecret: String) throws {
        self.configuration = Configuration(clientId: clientId, clientSecret: clientSecret);
    }

    // Async representation of acceptAllRevisions method
    // Accepts all the revisions in the document.
    public func acceptAllRevisions(request : AcceptAllRevisionsRequest, callback : @escaping (_ response : RevisionsModificationResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RevisionsModificationResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of acceptAllRevisions method
    // Accepts all the revisions in the document.
    public func acceptAllRevisions(request : AcceptAllRevisionsRequest) throws -> RevisionsModificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RevisionsModificationResponse? = nil;
        var responseError : Error? = nil;
        self.acceptAllRevisions(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of acceptAllRevisionsOnline method
    // Accepts all the revisions in the document.
    public func acceptAllRevisionsOnline(request : AcceptAllRevisionsOnlineRequest, callback : @escaping (_ response : AcceptAllRevisionsOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? AcceptAllRevisionsOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of acceptAllRevisionsOnline method
    // Accepts all the revisions in the document.
    public func acceptAllRevisionsOnline(request : AcceptAllRevisionsOnlineRequest) throws -> AcceptAllRevisionsOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : AcceptAllRevisionsOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.acceptAllRevisionsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of appendDocument method
    // Appends documents to the original document.
    public func appendDocument(request : AppendDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of appendDocument method
    // Appends documents to the original document.
    public func appendDocument(request : AppendDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.appendDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of appendDocumentOnline method
    // Appends documents to the original document.
    public func appendDocumentOnline(request : AppendDocumentOnlineRequest, callback : @escaping (_ response : AppendDocumentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? AppendDocumentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of appendDocumentOnline method
    // Appends documents to the original document.
    public func appendDocumentOnline(request : AppendDocumentOnlineRequest) throws -> AppendDocumentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : AppendDocumentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.appendDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of applyStyleToDocumentElement method
    // Applies a style to the document node.
    public func applyStyleToDocumentElement(request : ApplyStyleToDocumentElementRequest, callback : @escaping (_ response : WordsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? WordsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of applyStyleToDocumentElement method
    // Applies a style to the document node.
    public func applyStyleToDocumentElement(request : ApplyStyleToDocumentElementRequest) throws -> WordsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : WordsResponse? = nil;
        var responseError : Error? = nil;
        self.applyStyleToDocumentElement(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of applyStyleToDocumentElementOnline method
    // Applies a style to the document node.
    public func applyStyleToDocumentElementOnline(request : ApplyStyleToDocumentElementOnlineRequest, callback : @escaping (_ response : ApplyStyleToDocumentElementOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ApplyStyleToDocumentElementOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of applyStyleToDocumentElementOnline method
    // Applies a style to the document node.
    public func applyStyleToDocumentElementOnline(request : ApplyStyleToDocumentElementOnlineRequest) throws -> ApplyStyleToDocumentElementOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ApplyStyleToDocumentElementOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.applyStyleToDocumentElementOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of buildReport method
    // Executes the report generation process using the specified document template and the external data source in XML, JSON or CSV format.
    public func buildReport(request : BuildReportRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of buildReport method
    // Executes the report generation process using the specified document template and the external data source in XML, JSON or CSV format.
    public func buildReport(request : BuildReportRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.buildReport(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of buildReportOnline method
    // Executes the report generation process online using the specified document template and the external data source in XML, JSON or CSV format.
    public func buildReportOnline(request : BuildReportOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of buildReportOnline method
    // Executes the report generation process online using the specified document template and the external data source in XML, JSON or CSV format.
    public func buildReportOnline(request : BuildReportOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.buildReportOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of classify method
    // Runs a multi-class text classification for the specified raw text.
    public func classify(request : ClassifyRequest, callback : @escaping (_ response : ClassificationResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ClassificationResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of classify method
    // Runs a multi-class text classification for the specified raw text.
    public func classify(request : ClassifyRequest) throws -> ClassificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ClassificationResponse? = nil;
        var responseError : Error? = nil;
        self.classify(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of classifyDocument method
    // Runs a multi-class text classification for the document.
    public func classifyDocument(request : ClassifyDocumentRequest, callback : @escaping (_ response : ClassificationResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ClassificationResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of classifyDocument method
    // Runs a multi-class text classification for the document.
    public func classifyDocument(request : ClassifyDocumentRequest) throws -> ClassificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ClassificationResponse? = nil;
        var responseError : Error? = nil;
        self.classifyDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of classifyDocumentOnline method
    // Runs a multi-class text classification for the document.
    public func classifyDocumentOnline(request : ClassifyDocumentOnlineRequest, callback : @escaping (_ response : ClassificationResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ClassificationResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of classifyDocumentOnline method
    // Runs a multi-class text classification for the document.
    public func classifyDocumentOnline(request : ClassifyDocumentOnlineRequest) throws -> ClassificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ClassificationResponse? = nil;
        var responseError : Error? = nil;
        self.classifyDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of compareDocument method
    // Compares two documents.
    public func compareDocument(request : CompareDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of compareDocument method
    // Compares two documents.
    public func compareDocument(request : CompareDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.compareDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of compareDocumentOnline method
    // Compares two documents.
    public func compareDocumentOnline(request : CompareDocumentOnlineRequest, callback : @escaping (_ response : CompareDocumentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CompareDocumentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of compareDocumentOnline method
    // Compares two documents.
    public func compareDocumentOnline(request : CompareDocumentOnlineRequest) throws -> CompareDocumentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CompareDocumentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.compareDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of compressDocument method
    // Compress and resize images inside the document.
    // The default settings allows to reduce the size of the document without any visible degradation of images quality.
    public func compressDocument(request : CompressDocumentRequest, callback : @escaping (_ response : CompressResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CompressResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of compressDocument method
    // Compress and resize images inside the document.
    // The default settings allows to reduce the size of the document without any visible degradation of images quality.
    public func compressDocument(request : CompressDocumentRequest) throws -> CompressResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CompressResponse? = nil;
        var responseError : Error? = nil;
        self.compressDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of compressDocumentOnline method
    // Compress and resize images inside the document.
    // The default settings allows to reduce the size of the document without any visible degradation of images quality.
    public func compressDocumentOnline(request : CompressDocumentOnlineRequest, callback : @escaping (_ response : CompressDocumentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CompressDocumentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of compressDocumentOnline method
    // Compress and resize images inside the document.
    // The default settings allows to reduce the size of the document without any visible degradation of images quality.
    public func compressDocumentOnline(request : CompressDocumentOnlineRequest) throws -> CompressDocumentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CompressDocumentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.compressDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of convertDocument method
    // Converts a document on a local drive to the specified format.
    public func convertDocument(request : ConvertDocumentRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of convertDocument method
    // Converts a document on a local drive to the specified format.
    public func convertDocument(request : ConvertDocumentRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.convertDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of copyFile method
    // Copy file.
    public func copyFile(request : CopyFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of copyFile method
    // Copy file.
    public func copyFile(request : CopyFileRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.copyFile(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of copyFolder method
    // Copy folder.
    public func copyFolder(request : CopyFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of copyFolder method
    // Copy folder.
    public func copyFolder(request : CopyFolderRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.copyFolder(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of copyStyle method
    // Makes a copy of the style in the document.
    public func copyStyle(request : CopyStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StyleResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of copyStyle method
    // Makes a copy of the style in the document.
    public func copyStyle(request : CopyStyleRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.copyStyle(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of copyStyleOnline method
    // Makes a copy of the style in the document.
    public func copyStyleOnline(request : CopyStyleOnlineRequest, callback : @escaping (_ response : CopyStyleOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CopyStyleOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of copyStyleOnline method
    // Makes a copy of the style in the document.
    public func copyStyleOnline(request : CopyStyleOnlineRequest) throws -> CopyStyleOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CopyStyleOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.copyStyleOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of copyStylesFromTemplate method
    // Copies styles from the origin document to the target document.
    public func copyStylesFromTemplate(request : CopyStylesFromTemplateRequest, callback : @escaping (_ response : WordsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? WordsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of copyStylesFromTemplate method
    // Copies styles from the origin document to the target document.
    public func copyStylesFromTemplate(request : CopyStylesFromTemplateRequest) throws -> WordsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : WordsResponse? = nil;
        var responseError : Error? = nil;
        self.copyStylesFromTemplate(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of createDocument method
    // Creates a new document in cloud storage in the format, determined by the file extension.
    // Supported all save format extensions.
    public func createDocument(request : CreateDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of createDocument method
    // Creates a new document in cloud storage in the format, determined by the file extension.
    // Supported all save format extensions.
    public func createDocument(request : CreateDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.createDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of createFolder method
    // Create the folder.
    public func createFolder(request : CreateFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of createFolder method
    // Create the folder.
    public func createFolder(request : CreateFolderRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.createFolder(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of createOrUpdateDocumentProperty method
    // Adds a new or updates an existing document property.
    public func createOrUpdateDocumentProperty(request : CreateOrUpdateDocumentPropertyRequest, callback : @escaping (_ response : DocumentPropertyResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentPropertyResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of createOrUpdateDocumentProperty method
    // Adds a new or updates an existing document property.
    public func createOrUpdateDocumentProperty(request : CreateOrUpdateDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertyResponse? = nil;
        var responseError : Error? = nil;
        self.createOrUpdateDocumentProperty(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of createOrUpdateDocumentPropertyOnline method
    // Adds a new or updates an existing document property.
    public func createOrUpdateDocumentPropertyOnline(request : CreateOrUpdateDocumentPropertyOnlineRequest, callback : @escaping (_ response : CreateOrUpdateDocumentPropertyOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CreateOrUpdateDocumentPropertyOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of createOrUpdateDocumentPropertyOnline method
    // Adds a new or updates an existing document property.
    public func createOrUpdateDocumentPropertyOnline(request : CreateOrUpdateDocumentPropertyOnlineRequest) throws -> CreateOrUpdateDocumentPropertyOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CreateOrUpdateDocumentPropertyOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.createOrUpdateDocumentPropertyOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteAllParagraphTabStops method
    // Removes paragraph tab stops from the document node.
    public func deleteAllParagraphTabStops(request : DeleteAllParagraphTabStopsRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TabStopsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteAllParagraphTabStops method
    // Removes paragraph tab stops from the document node.
    public func deleteAllParagraphTabStops(request : DeleteAllParagraphTabStopsRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.deleteAllParagraphTabStops(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteAllParagraphTabStopsOnline method
    // Removes paragraph tab stops from the document node.
    public func deleteAllParagraphTabStopsOnline(request : DeleteAllParagraphTabStopsOnlineRequest, callback : @escaping (_ response : DeleteAllParagraphTabStopsOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DeleteAllParagraphTabStopsOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteAllParagraphTabStopsOnline method
    // Removes paragraph tab stops from the document node.
    public func deleteAllParagraphTabStopsOnline(request : DeleteAllParagraphTabStopsOnlineRequest) throws -> DeleteAllParagraphTabStopsOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DeleteAllParagraphTabStopsOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.deleteAllParagraphTabStopsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteBookmark method
    // Removes a bookmark from the document.
    public func deleteBookmark(request : DeleteBookmarkRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteBookmark method
    // Removes a bookmark from the document.
    public func deleteBookmark(request : DeleteBookmarkRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteBookmark(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteBookmarkOnline method
    // Removes a bookmark from the document.
    public func deleteBookmarkOnline(request : DeleteBookmarkOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteBookmarkOnline method
    // Removes a bookmark from the document.
    public func deleteBookmarkOnline(request : DeleteBookmarkOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteBookmarkOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteBookmarks method
    // Removes all bookmarks from the document.
    public func deleteBookmarks(request : DeleteBookmarksRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteBookmarks method
    // Removes all bookmarks from the document.
    public func deleteBookmarks(request : DeleteBookmarksRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteBookmarks(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteBookmarksOnline method
    // Removes all bookmarks from the document.
    public func deleteBookmarksOnline(request : DeleteBookmarksOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteBookmarksOnline method
    // Removes all bookmarks from the document.
    public func deleteBookmarksOnline(request : DeleteBookmarksOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteBookmarksOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteBorder method
    // Removes a border from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBorder(request : DeleteBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BorderResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteBorder method
    // Removes a border from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBorder(request : DeleteBorderRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.deleteBorder(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteBorderOnline method
    // Removes a border from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBorderOnline(request : DeleteBorderOnlineRequest, callback : @escaping (_ response : DeleteBorderOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DeleteBorderOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteBorderOnline method
    // Removes a border from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBorderOnline(request : DeleteBorderOnlineRequest) throws -> DeleteBorderOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DeleteBorderOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.deleteBorderOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteBorders method
    // Removes borders from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBorders(request : DeleteBordersRequest, callback : @escaping (_ response : BordersResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BordersResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteBorders method
    // Removes borders from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBorders(request : DeleteBordersRequest) throws -> BordersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BordersResponse? = nil;
        var responseError : Error? = nil;
        self.deleteBorders(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteBordersOnline method
    // Removes borders from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBordersOnline(request : DeleteBordersOnlineRequest, callback : @escaping (_ response : DeleteBordersOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DeleteBordersOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteBordersOnline method
    // Removes borders from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBordersOnline(request : DeleteBordersOnlineRequest) throws -> DeleteBordersOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DeleteBordersOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.deleteBordersOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteComment method
    // Removes a comment from the document.
    public func deleteComment(request : DeleteCommentRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteComment method
    // Removes a comment from the document.
    public func deleteComment(request : DeleteCommentRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteComment(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteCommentOnline method
    // Removes a comment from the document.
    public func deleteCommentOnline(request : DeleteCommentOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteCommentOnline method
    // Removes a comment from the document.
    public func deleteCommentOnline(request : DeleteCommentOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteCommentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteComments method
    // Removes all comments from the document.
    public func deleteComments(request : DeleteCommentsRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteComments method
    // Removes all comments from the document.
    public func deleteComments(request : DeleteCommentsRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteComments(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteCommentsOnline method
    // Removes all comments from the document.
    public func deleteCommentsOnline(request : DeleteCommentsOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteCommentsOnline method
    // Removes all comments from the document.
    public func deleteCommentsOnline(request : DeleteCommentsOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteCommentsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteCustomXmlPart method
    // Removes the custom xml part from the document.
    public func deleteCustomXmlPart(request : DeleteCustomXmlPartRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteCustomXmlPart method
    // Removes the custom xml part from the document.
    public func deleteCustomXmlPart(request : DeleteCustomXmlPartRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteCustomXmlPart(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteCustomXmlPartOnline method
    // Removes the custom xml part from the document.
    public func deleteCustomXmlPartOnline(request : DeleteCustomXmlPartOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteCustomXmlPartOnline method
    // Removes the custom xml part from the document.
    public func deleteCustomXmlPartOnline(request : DeleteCustomXmlPartOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteCustomXmlPartOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteCustomXmlParts method
    // Removes all custom xml parts from the document.
    public func deleteCustomXmlParts(request : DeleteCustomXmlPartsRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteCustomXmlParts method
    // Removes all custom xml parts from the document.
    public func deleteCustomXmlParts(request : DeleteCustomXmlPartsRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteCustomXmlParts(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteCustomXmlPartsOnline method
    // Removes all custom xml parts from the document.
    public func deleteCustomXmlPartsOnline(request : DeleteCustomXmlPartsOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteCustomXmlPartsOnline method
    // Removes all custom xml parts from the document.
    public func deleteCustomXmlPartsOnline(request : DeleteCustomXmlPartsOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteCustomXmlPartsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteDocumentProperty method
    // Removes a document property.
    public func deleteDocumentProperty(request : DeleteDocumentPropertyRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteDocumentProperty method
    // Removes a document property.
    public func deleteDocumentProperty(request : DeleteDocumentPropertyRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteDocumentProperty(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteDocumentPropertyOnline method
    // Removes a document property.
    public func deleteDocumentPropertyOnline(request : DeleteDocumentPropertyOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteDocumentPropertyOnline method
    // Removes a document property.
    public func deleteDocumentPropertyOnline(request : DeleteDocumentPropertyOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteDocumentPropertyOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteDrawingObject method
    // Removes a DrawingObject from the document node.
    public func deleteDrawingObject(request : DeleteDrawingObjectRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteDrawingObject method
    // Removes a DrawingObject from the document node.
    public func deleteDrawingObject(request : DeleteDrawingObjectRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteDrawingObject(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteDrawingObjectOnline method
    // Removes a DrawingObject from the document node.
    public func deleteDrawingObjectOnline(request : DeleteDrawingObjectOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteDrawingObjectOnline method
    // Removes a DrawingObject from the document node.
    public func deleteDrawingObjectOnline(request : DeleteDrawingObjectOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteDrawingObjectOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteField method
    // Removes a field from the document node.
    public func deleteField(request : DeleteFieldRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteField method
    // Removes a field from the document node.
    public func deleteField(request : DeleteFieldRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteField(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFieldOnline method
    // Removes a field from the document node.
    public func deleteFieldOnline(request : DeleteFieldOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteFieldOnline method
    // Removes a field from the document node.
    public func deleteFieldOnline(request : DeleteFieldOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteFieldOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteFields method
    // Removes fields from the document node.
    public func deleteFields(request : DeleteFieldsRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFields method
    // Removes fields from the document node.
    public func deleteFields(request : DeleteFieldsRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFields(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFieldsOnline method
    // Removes fields from the document node.
    public func deleteFieldsOnline(request : DeleteFieldsOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteFieldsOnline method
    // Removes fields from the document node.
    public func deleteFieldsOnline(request : DeleteFieldsOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteFieldsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteFile method
    // Delete file.
    public func deleteFile(request : DeleteFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFile method
    // Delete file.
    public func deleteFile(request : DeleteFileRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFile(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFolder method
    // Delete folder.
    public func deleteFolder(request : DeleteFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFolder method
    // Delete folder.
    public func deleteFolder(request : DeleteFolderRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFolder(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFootnote method
    // Removes a footnote from the document node.
    public func deleteFootnote(request : DeleteFootnoteRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFootnote method
    // Removes a footnote from the document node.
    public func deleteFootnote(request : DeleteFootnoteRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFootnote(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFootnoteOnline method
    // Removes a footnote from the document node.
    public func deleteFootnoteOnline(request : DeleteFootnoteOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteFootnoteOnline method
    // Removes a footnote from the document node.
    public func deleteFootnoteOnline(request : DeleteFootnoteOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteFootnoteOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteFormField method
    // Removes a form field from the document node.
    public func deleteFormField(request : DeleteFormFieldRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFormField method
    // Removes a form field from the document node.
    public func deleteFormField(request : DeleteFormFieldRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFormField(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFormFieldOnline method
    // Removes a form field from the document node.
    public func deleteFormFieldOnline(request : DeleteFormFieldOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteFormFieldOnline method
    // Removes a form field from the document node.
    public func deleteFormFieldOnline(request : DeleteFormFieldOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteFormFieldOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteHeaderFooter method
    // Removes a HeaderFooter object from the document section.
    public func deleteHeaderFooter(request : DeleteHeaderFooterRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteHeaderFooter method
    // Removes a HeaderFooter object from the document section.
    public func deleteHeaderFooter(request : DeleteHeaderFooterRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteHeaderFooter(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteHeaderFooterOnline method
    // Removes a HeaderFooter object from the document section.
    public func deleteHeaderFooterOnline(request : DeleteHeaderFooterOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteHeaderFooterOnline method
    // Removes a HeaderFooter object from the document section.
    public func deleteHeaderFooterOnline(request : DeleteHeaderFooterOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteHeaderFooterOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteHeadersFooters method
    // Removes HeaderFooter objects from the document section.
    public func deleteHeadersFooters(request : DeleteHeadersFootersRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteHeadersFooters method
    // Removes HeaderFooter objects from the document section.
    public func deleteHeadersFooters(request : DeleteHeadersFootersRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteHeadersFooters(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteHeadersFootersOnline method
    // Removes HeaderFooter objects from the document section.
    public func deleteHeadersFootersOnline(request : DeleteHeadersFootersOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteHeadersFootersOnline method
    // Removes HeaderFooter objects from the document section.
    public func deleteHeadersFootersOnline(request : DeleteHeadersFootersOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteHeadersFootersOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteMacros method
    // Removes macros from the document.
    public func deleteMacros(request : DeleteMacrosRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteMacros method
    // Removes macros from the document.
    public func deleteMacros(request : DeleteMacrosRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteMacros(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteMacrosOnline method
    // Removes macros from the document.
    public func deleteMacrosOnline(request : DeleteMacrosOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteMacrosOnline method
    // Removes macros from the document.
    public func deleteMacrosOnline(request : DeleteMacrosOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteMacrosOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteOfficeMathObject method
    // Removes an OfficeMath object from the document node.
    public func deleteOfficeMathObject(request : DeleteOfficeMathObjectRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteOfficeMathObject method
    // Removes an OfficeMath object from the document node.
    public func deleteOfficeMathObject(request : DeleteOfficeMathObjectRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteOfficeMathObject(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteOfficeMathObjectOnline method
    // Removes an OfficeMath object from the document node.
    public func deleteOfficeMathObjectOnline(request : DeleteOfficeMathObjectOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteOfficeMathObjectOnline method
    // Removes an OfficeMath object from the document node.
    public func deleteOfficeMathObjectOnline(request : DeleteOfficeMathObjectOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteOfficeMathObjectOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteOfficeMathObjects method
    // Removes all office math objects from the document.
    public func deleteOfficeMathObjects(request : DeleteOfficeMathObjectsRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteOfficeMathObjects method
    // Removes all office math objects from the document.
    public func deleteOfficeMathObjects(request : DeleteOfficeMathObjectsRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteOfficeMathObjects(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteOfficeMathObjectsOnline method
    // Removes all office math objects from the document.
    public func deleteOfficeMathObjectsOnline(request : DeleteOfficeMathObjectsOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteOfficeMathObjectsOnline method
    // Removes all office math objects from the document.
    public func deleteOfficeMathObjectsOnline(request : DeleteOfficeMathObjectsOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteOfficeMathObjectsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteParagraph method
    // Removes a paragraph from the document node.
    public func deleteParagraph(request : DeleteParagraphRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteParagraph method
    // Removes a paragraph from the document node.
    public func deleteParagraph(request : DeleteParagraphRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteParagraph(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteParagraphListFormat method
    // Removes the formatting properties of a paragraph list from the document node.
    public func deleteParagraphListFormat(request : DeleteParagraphListFormatRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphListFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteParagraphListFormat method
    // Removes the formatting properties of a paragraph list from the document node.
    public func deleteParagraphListFormat(request : DeleteParagraphListFormatRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.deleteParagraphListFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteParagraphListFormatOnline method
    // Removes the formatting properties of a paragraph list from the document node.
    public func deleteParagraphListFormatOnline(request : DeleteParagraphListFormatOnlineRequest, callback : @escaping (_ response : DeleteParagraphListFormatOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DeleteParagraphListFormatOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteParagraphListFormatOnline method
    // Removes the formatting properties of a paragraph list from the document node.
    public func deleteParagraphListFormatOnline(request : DeleteParagraphListFormatOnlineRequest) throws -> DeleteParagraphListFormatOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DeleteParagraphListFormatOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.deleteParagraphListFormatOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteParagraphOnline method
    // Removes a paragraph from the document node.
    public func deleteParagraphOnline(request : DeleteParagraphOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteParagraphOnline method
    // Removes a paragraph from the document node.
    public func deleteParagraphOnline(request : DeleteParagraphOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteParagraphOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteParagraphTabStop method
    // Removes a paragraph tab stop from the document node.
    public func deleteParagraphTabStop(request : DeleteParagraphTabStopRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TabStopsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteParagraphTabStop method
    // Removes a paragraph tab stop from the document node.
    public func deleteParagraphTabStop(request : DeleteParagraphTabStopRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.deleteParagraphTabStop(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteParagraphTabStopOnline method
    // Removes a paragraph tab stop from the document node.
    public func deleteParagraphTabStopOnline(request : DeleteParagraphTabStopOnlineRequest, callback : @escaping (_ response : DeleteParagraphTabStopOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DeleteParagraphTabStopOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteParagraphTabStopOnline method
    // Removes a paragraph tab stop from the document node.
    public func deleteParagraphTabStopOnline(request : DeleteParagraphTabStopOnlineRequest) throws -> DeleteParagraphTabStopOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DeleteParagraphTabStopOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.deleteParagraphTabStopOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteRun method
    // Removes a Run object from the paragraph.
    public func deleteRun(request : DeleteRunRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteRun method
    // Removes a Run object from the paragraph.
    public func deleteRun(request : DeleteRunRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteRun(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteRunOnline method
    // Removes a Run object from the paragraph.
    public func deleteRunOnline(request : DeleteRunOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteRunOnline method
    // Removes a Run object from the paragraph.
    public func deleteRunOnline(request : DeleteRunOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteRunOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteSection method
    // Removes a section from the document.
    public func deleteSection(request : DeleteSectionRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteSection method
    // Removes a section from the document.
    public func deleteSection(request : DeleteSectionRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteSection(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteSectionOnline method
    // Removes a section from the document.
    public func deleteSectionOnline(request : DeleteSectionOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteSectionOnline method
    // Removes a section from the document.
    public func deleteSectionOnline(request : DeleteSectionOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteSectionOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteStructuredDocumentTag method
    // Removes a StructuredDocumentTag (SDT) from the document node.
    public func deleteStructuredDocumentTag(request : DeleteStructuredDocumentTagRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteStructuredDocumentTag method
    // Removes a StructuredDocumentTag (SDT) from the document node.
    public func deleteStructuredDocumentTag(request : DeleteStructuredDocumentTagRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteStructuredDocumentTag(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteStructuredDocumentTagOnline method
    // Removes a StructuredDocumentTag (SDT) from the document node.
    public func deleteStructuredDocumentTagOnline(request : DeleteStructuredDocumentTagOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteStructuredDocumentTagOnline method
    // Removes a StructuredDocumentTag (SDT) from the document node.
    public func deleteStructuredDocumentTagOnline(request : DeleteStructuredDocumentTagOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteStructuredDocumentTagOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteTable method
    // Removes a table from the document node.
    public func deleteTable(request : DeleteTableRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteTable method
    // Removes a table from the document node.
    public func deleteTable(request : DeleteTableRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteTable(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteTableCell method
    // Removes a cell from the table row.
    public func deleteTableCell(request : DeleteTableCellRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteTableCell method
    // Removes a cell from the table row.
    public func deleteTableCell(request : DeleteTableCellRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteTableCell(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteTableCellOnline method
    // Removes a cell from the table row.
    public func deleteTableCellOnline(request : DeleteTableCellOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteTableCellOnline method
    // Removes a cell from the table row.
    public func deleteTableCellOnline(request : DeleteTableCellOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteTableCellOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteTableOnline method
    // Removes a table from the document node.
    public func deleteTableOnline(request : DeleteTableOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteTableOnline method
    // Removes a table from the document node.
    public func deleteTableOnline(request : DeleteTableOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteTableOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteTableRow method
    // Removes a row from the table.
    public func deleteTableRow(request : DeleteTableRowRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteTableRow method
    // Removes a row from the table.
    public func deleteTableRow(request : DeleteTableRowRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteTableRow(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteTableRowOnline method
    // Removes a row from the table.
    public func deleteTableRowOnline(request : DeleteTableRowOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteTableRowOnline method
    // Removes a row from the table.
    public func deleteTableRowOnline(request : DeleteTableRowOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.deleteTableRowOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteWatermark method
    // Removes a watermark from the document.
    public func deleteWatermark(request : DeleteWatermarkRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteWatermark method
    // Removes a watermark from the document.
    public func deleteWatermark(request : DeleteWatermarkRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.deleteWatermark(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteWatermarkOnline method
    // Removes a watermark from the document.
    public func deleteWatermarkOnline(request : DeleteWatermarkOnlineRequest, callback : @escaping (_ response : DeleteWatermarkOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DeleteWatermarkOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteWatermarkOnline method
    // Removes a watermark from the document.
    public func deleteWatermarkOnline(request : DeleteWatermarkOnlineRequest) throws -> DeleteWatermarkOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DeleteWatermarkOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.deleteWatermarkOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of downloadFile method
    // Download file.
    public func downloadFile(request : DownloadFileRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of downloadFile method
    // Download file.
    public func downloadFile(request : DownloadFileRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.downloadFile(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of executeMailMerge method
    // Executes a Mail Merge operation.
    public func executeMailMerge(request : ExecuteMailMergeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of executeMailMerge method
    // Executes a Mail Merge operation.
    public func executeMailMerge(request : ExecuteMailMergeRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.executeMailMerge(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of executeMailMergeOnline method
    // Executes a Mail Merge operation online.
    public func executeMailMergeOnline(request : ExecuteMailMergeOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of executeMailMergeOnline method
    // Executes a Mail Merge operation online.
    public func executeMailMergeOnline(request : ExecuteMailMergeOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.executeMailMergeOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getAllRevisions method
    // Get all information about revisions.
    public func getAllRevisions(request : GetAllRevisionsRequest, callback : @escaping (_ response : RevisionsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RevisionsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getAllRevisions method
    // Get all information about revisions.
    public func getAllRevisions(request : GetAllRevisionsRequest) throws -> RevisionsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RevisionsResponse? = nil;
        var responseError : Error? = nil;
        self.getAllRevisions(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getAllRevisionsOnline method
    // Get all information about revisions.
    public func getAllRevisionsOnline(request : GetAllRevisionsOnlineRequest, callback : @escaping (_ response : RevisionsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RevisionsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getAllRevisionsOnline method
    // Get all information about revisions.
    public func getAllRevisionsOnline(request : GetAllRevisionsOnlineRequest) throws -> RevisionsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RevisionsResponse? = nil;
        var responseError : Error? = nil;
        self.getAllRevisionsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getAvailableFonts method
    // Reads available fonts from the document.
    public func getAvailableFonts(request : GetAvailableFontsRequest, callback : @escaping (_ response : AvailableFontsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? AvailableFontsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getAvailableFonts method
    // Reads available fonts from the document.
    public func getAvailableFonts(request : GetAvailableFontsRequest) throws -> AvailableFontsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : AvailableFontsResponse? = nil;
        var responseError : Error? = nil;
        self.getAvailableFonts(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBookmarkByName method
    // Reads a bookmark, specified by name, from the document.
    public func getBookmarkByName(request : GetBookmarkByNameRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BookmarkResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBookmarkByName method
    // Reads a bookmark, specified by name, from the document.
    public func getBookmarkByName(request : GetBookmarkByNameRequest) throws -> BookmarkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarkResponse? = nil;
        var responseError : Error? = nil;
        self.getBookmarkByName(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBookmarkByNameOnline method
    // Reads a bookmark, specified by name, from the document.
    public func getBookmarkByNameOnline(request : GetBookmarkByNameOnlineRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BookmarkResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBookmarkByNameOnline method
    // Reads a bookmark, specified by name, from the document.
    public func getBookmarkByNameOnline(request : GetBookmarkByNameOnlineRequest) throws -> BookmarkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarkResponse? = nil;
        var responseError : Error? = nil;
        self.getBookmarkByNameOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBookmarks method
    // Reads bookmarks from the document.
    public func getBookmarks(request : GetBookmarksRequest, callback : @escaping (_ response : BookmarksResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BookmarksResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBookmarks method
    // Reads bookmarks from the document.
    public func getBookmarks(request : GetBookmarksRequest) throws -> BookmarksResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarksResponse? = nil;
        var responseError : Error? = nil;
        self.getBookmarks(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBookmarksOnline method
    // Reads bookmarks from the document.
    public func getBookmarksOnline(request : GetBookmarksOnlineRequest, callback : @escaping (_ response : BookmarksResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BookmarksResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBookmarksOnline method
    // Reads bookmarks from the document.
    public func getBookmarksOnline(request : GetBookmarksOnlineRequest) throws -> BookmarksResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarksResponse? = nil;
        var responseError : Error? = nil;
        self.getBookmarksOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBorder method
    // Reads a border from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func getBorder(request : GetBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BorderResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBorder method
    // Reads a border from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func getBorder(request : GetBorderRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.getBorder(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBorderOnline method
    // Reads a border from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func getBorderOnline(request : GetBorderOnlineRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BorderResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBorderOnline method
    // Reads a border from the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func getBorderOnline(request : GetBorderOnlineRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.getBorderOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBorders method
    // Reads borders from the document node.
    public func getBorders(request : GetBordersRequest, callback : @escaping (_ response : BordersResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BordersResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBorders method
    // Reads borders from the document node.
    public func getBorders(request : GetBordersRequest) throws -> BordersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BordersResponse? = nil;
        var responseError : Error? = nil;
        self.getBorders(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBordersOnline method
    // Reads borders from the document node.
    public func getBordersOnline(request : GetBordersOnlineRequest, callback : @escaping (_ response : BordersResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BordersResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBordersOnline method
    // Reads borders from the document node.
    public func getBordersOnline(request : GetBordersOnlineRequest) throws -> BordersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BordersResponse? = nil;
        var responseError : Error? = nil;
        self.getBordersOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getComment method
    // Reads a comment from the document.
    public func getComment(request : GetCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CommentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getComment method
    // Reads a comment from the document.
    public func getComment(request : GetCommentRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.getComment(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getCommentOnline method
    // Reads a comment from the document.
    public func getCommentOnline(request : GetCommentOnlineRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CommentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getCommentOnline method
    // Reads a comment from the document.
    public func getCommentOnline(request : GetCommentOnlineRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.getCommentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getComments method
    // Reads comments from the document.
    public func getComments(request : GetCommentsRequest, callback : @escaping (_ response : CommentsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CommentsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getComments method
    // Reads comments from the document.
    public func getComments(request : GetCommentsRequest) throws -> CommentsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentsResponse? = nil;
        var responseError : Error? = nil;
        self.getComments(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getCommentsOnline method
    // Reads comments from the document.
    public func getCommentsOnline(request : GetCommentsOnlineRequest, callback : @escaping (_ response : CommentsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CommentsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getCommentsOnline method
    // Reads comments from the document.
    public func getCommentsOnline(request : GetCommentsOnlineRequest) throws -> CommentsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentsResponse? = nil;
        var responseError : Error? = nil;
        self.getCommentsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getCustomXmlPart method
    // Reads the custom xml part from the document.
    public func getCustomXmlPart(request : GetCustomXmlPartRequest, callback : @escaping (_ response : CustomXmlPartResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CustomXmlPartResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getCustomXmlPart method
    // Reads the custom xml part from the document.
    public func getCustomXmlPart(request : GetCustomXmlPartRequest) throws -> CustomXmlPartResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CustomXmlPartResponse? = nil;
        var responseError : Error? = nil;
        self.getCustomXmlPart(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getCustomXmlPartOnline method
    // Reads the custom xml part from the document.
    public func getCustomXmlPartOnline(request : GetCustomXmlPartOnlineRequest, callback : @escaping (_ response : CustomXmlPartResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CustomXmlPartResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getCustomXmlPartOnline method
    // Reads the custom xml part from the document.
    public func getCustomXmlPartOnline(request : GetCustomXmlPartOnlineRequest) throws -> CustomXmlPartResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CustomXmlPartResponse? = nil;
        var responseError : Error? = nil;
        self.getCustomXmlPartOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getCustomXmlParts method
    // Reads custom xml parts from the document.
    public func getCustomXmlParts(request : GetCustomXmlPartsRequest, callback : @escaping (_ response : CustomXmlPartsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CustomXmlPartsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getCustomXmlParts method
    // Reads custom xml parts from the document.
    public func getCustomXmlParts(request : GetCustomXmlPartsRequest) throws -> CustomXmlPartsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CustomXmlPartsResponse? = nil;
        var responseError : Error? = nil;
        self.getCustomXmlParts(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getCustomXmlPartsOnline method
    // Reads custom xml parts from the document.
    public func getCustomXmlPartsOnline(request : GetCustomXmlPartsOnlineRequest, callback : @escaping (_ response : CustomXmlPartsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CustomXmlPartsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getCustomXmlPartsOnline method
    // Reads custom xml parts from the document.
    public func getCustomXmlPartsOnline(request : GetCustomXmlPartsOnlineRequest) throws -> CustomXmlPartsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CustomXmlPartsResponse? = nil;
        var responseError : Error? = nil;
        self.getCustomXmlPartsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocument method
    // Reads common information from the document.
    public func getDocument(request : GetDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocument method
    // Reads common information from the document.
    public func getDocument(request : GetDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.getDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectByIndex method
    // Reads a DrawingObject from the document node.
    public func getDocumentDrawingObjectByIndex(request : GetDocumentDrawingObjectByIndexRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DrawingObjectResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectByIndex method
    // Reads a DrawingObject from the document node.
    public func getDocumentDrawingObjectByIndex(request : GetDocumentDrawingObjectByIndexRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectByIndex(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectByIndexOnline method
    // Reads a DrawingObject from the document node.
    public func getDocumentDrawingObjectByIndexOnline(request : GetDocumentDrawingObjectByIndexOnlineRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DrawingObjectResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectByIndexOnline method
    // Reads a DrawingObject from the document node.
    public func getDocumentDrawingObjectByIndexOnline(request : GetDocumentDrawingObjectByIndexOnlineRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectByIndexOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectImageData method
    // Reads image data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectImageData(request : GetDocumentDrawingObjectImageDataRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectImageData method
    // Reads image data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectImageData(request : GetDocumentDrawingObjectImageDataRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectImageData(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectImageDataOnline method
    // Reads image data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectImageDataOnline(request : GetDocumentDrawingObjectImageDataOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectImageDataOnline method
    // Reads image data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectImageDataOnline(request : GetDocumentDrawingObjectImageDataOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectImageDataOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectOleData method
    // Reads OLE data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectOleData(request : GetDocumentDrawingObjectOleDataRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectOleData method
    // Reads OLE data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectOleData(request : GetDocumentDrawingObjectOleDataRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectOleData(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectOleDataOnline method
    // Reads OLE data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectOleDataOnline(request : GetDocumentDrawingObjectOleDataOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectOleDataOnline method
    // Reads OLE data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectOleDataOnline(request : GetDocumentDrawingObjectOleDataOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectOleDataOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjects method
    // Reads DrawingObjects from the document node.
    public func getDocumentDrawingObjects(request : GetDocumentDrawingObjectsRequest, callback : @escaping (_ response : DrawingObjectsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DrawingObjectsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjects method
    // Reads DrawingObjects from the document node.
    public func getDocumentDrawingObjects(request : GetDocumentDrawingObjectsRequest) throws -> DrawingObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjects(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectsOnline method
    // Reads DrawingObjects from the document node.
    public func getDocumentDrawingObjectsOnline(request : GetDocumentDrawingObjectsOnlineRequest, callback : @escaping (_ response : DrawingObjectsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DrawingObjectsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectsOnline method
    // Reads DrawingObjects from the document node.
    public func getDocumentDrawingObjectsOnline(request : GetDocumentDrawingObjectsOnlineRequest) throws -> DrawingObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentFieldNames method
    // Reads merge field names from the document.
    public func getDocumentFieldNames(request : GetDocumentFieldNamesRequest, callback : @escaping (_ response : FieldNamesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FieldNamesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentFieldNames method
    // Reads merge field names from the document.
    public func getDocumentFieldNames(request : GetDocumentFieldNamesRequest) throws -> FieldNamesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldNamesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentFieldNames(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentFieldNamesOnline method
    // Reads merge field names from the document.
    public func getDocumentFieldNamesOnline(request : GetDocumentFieldNamesOnlineRequest, callback : @escaping (_ response : FieldNamesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FieldNamesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentFieldNamesOnline method
    // Reads merge field names from the document.
    public func getDocumentFieldNamesOnline(request : GetDocumentFieldNamesOnlineRequest) throws -> FieldNamesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldNamesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentFieldNamesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentHyperlinkByIndex method
    // Reads a hyperlink from the document.
    public func getDocumentHyperlinkByIndex(request : GetDocumentHyperlinkByIndexRequest, callback : @escaping (_ response : HyperlinkResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HyperlinkResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentHyperlinkByIndex method
    // Reads a hyperlink from the document.
    public func getDocumentHyperlinkByIndex(request : GetDocumentHyperlinkByIndexRequest) throws -> HyperlinkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HyperlinkResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentHyperlinkByIndex(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentHyperlinkByIndexOnline method
    // Reads a hyperlink from the document.
    public func getDocumentHyperlinkByIndexOnline(request : GetDocumentHyperlinkByIndexOnlineRequest, callback : @escaping (_ response : HyperlinkResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HyperlinkResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentHyperlinkByIndexOnline method
    // Reads a hyperlink from the document.
    public func getDocumentHyperlinkByIndexOnline(request : GetDocumentHyperlinkByIndexOnlineRequest) throws -> HyperlinkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HyperlinkResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentHyperlinkByIndexOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentHyperlinks method
    // Reads hyperlinks from the document.
    public func getDocumentHyperlinks(request : GetDocumentHyperlinksRequest, callback : @escaping (_ response : HyperlinksResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HyperlinksResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentHyperlinks method
    // Reads hyperlinks from the document.
    public func getDocumentHyperlinks(request : GetDocumentHyperlinksRequest) throws -> HyperlinksResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HyperlinksResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentHyperlinks(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentHyperlinksOnline method
    // Reads hyperlinks from the document.
    public func getDocumentHyperlinksOnline(request : GetDocumentHyperlinksOnlineRequest, callback : @escaping (_ response : HyperlinksResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HyperlinksResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentHyperlinksOnline method
    // Reads hyperlinks from the document.
    public func getDocumentHyperlinksOnline(request : GetDocumentHyperlinksOnlineRequest) throws -> HyperlinksResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HyperlinksResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentHyperlinksOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentProperties method
    // Reads document properties.
    public func getDocumentProperties(request : GetDocumentPropertiesRequest, callback : @escaping (_ response : DocumentPropertiesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentPropertiesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentProperties method
    // Reads document properties.
    public func getDocumentProperties(request : GetDocumentPropertiesRequest) throws -> DocumentPropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProperties(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentPropertiesOnline method
    // Reads document properties.
    public func getDocumentPropertiesOnline(request : GetDocumentPropertiesOnlineRequest, callback : @escaping (_ response : DocumentPropertiesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentPropertiesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentPropertiesOnline method
    // Reads document properties.
    public func getDocumentPropertiesOnline(request : GetDocumentPropertiesOnlineRequest) throws -> DocumentPropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentPropertiesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentProperty method
    // Reads a document property.
    public func getDocumentProperty(request : GetDocumentPropertyRequest, callback : @escaping (_ response : DocumentPropertyResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentPropertyResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentProperty method
    // Reads a document property.
    public func getDocumentProperty(request : GetDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertyResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProperty(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentPropertyOnline method
    // Reads a document property.
    public func getDocumentPropertyOnline(request : GetDocumentPropertyOnlineRequest, callback : @escaping (_ response : DocumentPropertyResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentPropertyResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentPropertyOnline method
    // Reads a document property.
    public func getDocumentPropertyOnline(request : GetDocumentPropertyOnlineRequest) throws -> DocumentPropertyResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertyResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentPropertyOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentProtection method
    // Reads protection properties from the document.
    public func getDocumentProtection(request : GetDocumentProtectionRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ProtectionDataResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentProtection method
    // Reads protection properties from the document.
    public func getDocumentProtection(request : GetDocumentProtectionRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProtection(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentProtectionOnline method
    // Reads protection properties from the document.
    public func getDocumentProtectionOnline(request : GetDocumentProtectionOnlineRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ProtectionDataResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentProtectionOnline method
    // Reads protection properties from the document.
    public func getDocumentProtectionOnline(request : GetDocumentProtectionOnlineRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProtectionOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentStatistics method
    // Reads document statistics.
    public func getDocumentStatistics(request : GetDocumentStatisticsRequest, callback : @escaping (_ response : StatDataResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StatDataResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentStatistics method
    // Reads document statistics.
    public func getDocumentStatistics(request : GetDocumentStatisticsRequest) throws -> StatDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StatDataResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentStatistics(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentStatisticsOnline method
    // Reads document statistics.
    public func getDocumentStatisticsOnline(request : GetDocumentStatisticsOnlineRequest, callback : @escaping (_ response : StatDataResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StatDataResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentStatisticsOnline method
    // Reads document statistics.
    public func getDocumentStatisticsOnline(request : GetDocumentStatisticsOnlineRequest) throws -> StatDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StatDataResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentStatisticsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentWithFormat method
    // Converts a document in cloud storage to the specified format.
    public func getDocumentWithFormat(request : GetDocumentWithFormatRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentWithFormat method
    // Converts a document in cloud storage to the specified format.
    public func getDocumentWithFormat(request : GetDocumentWithFormatRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentWithFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getField method
    // Reads a field from the document node.
    public func getField(request : GetFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FieldResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getField method
    // Reads a field from the document node.
    public func getField(request : GetFieldRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.getField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFieldOnline method
    // Reads a field from the document node.
    public func getFieldOnline(request : GetFieldOnlineRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FieldResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFieldOnline method
    // Reads a field from the document node.
    public func getFieldOnline(request : GetFieldOnlineRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.getFieldOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFields method
    // Reads fields from the document node.
    public func getFields(request : GetFieldsRequest, callback : @escaping (_ response : FieldsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FieldsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFields method
    // Reads fields from the document node.
    public func getFields(request : GetFieldsRequest) throws -> FieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFields(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFieldsOnline method
    // Reads fields from the document node.
    public func getFieldsOnline(request : GetFieldsOnlineRequest, callback : @escaping (_ response : FieldsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FieldsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFieldsOnline method
    // Reads fields from the document node.
    public func getFieldsOnline(request : GetFieldsOnlineRequest) throws -> FieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFieldsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFilesList method
    // Get all files and folders within a folder.
    public func getFilesList(request : GetFilesListRequest, callback : @escaping (_ response : FilesList?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FilesList, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFilesList method
    // Get all files and folders within a folder.
    public func getFilesList(request : GetFilesListRequest) throws -> FilesList {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FilesList? = nil;
        var responseError : Error? = nil;
        self.getFilesList(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFootnote method
    // Reads a footnote from the document node.
    public func getFootnote(request : GetFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FootnoteResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFootnote method
    // Reads a footnote from the document node.
    public func getFootnote(request : GetFootnoteRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnote(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFootnoteOnline method
    // Reads a footnote from the document node.
    public func getFootnoteOnline(request : GetFootnoteOnlineRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FootnoteResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFootnoteOnline method
    // Reads a footnote from the document node.
    public func getFootnoteOnline(request : GetFootnoteOnlineRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnoteOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFootnotes method
    // Reads footnotes from the document node.
    public func getFootnotes(request : GetFootnotesRequest, callback : @escaping (_ response : FootnotesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FootnotesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFootnotes method
    // Reads footnotes from the document node.
    public func getFootnotes(request : GetFootnotesRequest) throws -> FootnotesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnotesResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnotes(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFootnotesOnline method
    // Reads footnotes from the document node.
    public func getFootnotesOnline(request : GetFootnotesOnlineRequest, callback : @escaping (_ response : FootnotesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FootnotesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFootnotesOnline method
    // Reads footnotes from the document node.
    public func getFootnotesOnline(request : GetFootnotesOnlineRequest) throws -> FootnotesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnotesResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnotesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFormField method
    // Reads a form field from the document node.
    public func getFormField(request : GetFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FormFieldResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFormField method
    // Reads a form field from the document node.
    public func getFormField(request : GetFormFieldRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.getFormField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFormFieldOnline method
    // Reads a form field from the document node.
    public func getFormFieldOnline(request : GetFormFieldOnlineRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FormFieldResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFormFieldOnline method
    // Reads a form field from the document node.
    public func getFormFieldOnline(request : GetFormFieldOnlineRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.getFormFieldOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFormFields method
    // Reads form fields from the document node.
    public func getFormFields(request : GetFormFieldsRequest, callback : @escaping (_ response : FormFieldsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FormFieldsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFormFields method
    // Reads form fields from the document node.
    public func getFormFields(request : GetFormFieldsRequest) throws -> FormFieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFormFields(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFormFieldsOnline method
    // Reads form fields from the document node.
    public func getFormFieldsOnline(request : GetFormFieldsOnlineRequest, callback : @escaping (_ response : FormFieldsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FormFieldsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFormFieldsOnline method
    // Reads form fields from the document node.
    public func getFormFieldsOnline(request : GetFormFieldsOnlineRequest) throws -> FormFieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFormFieldsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getHeaderFooter method
    // Reads a HeaderFooter object from the document.
    public func getHeaderFooter(request : GetHeaderFooterRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HeaderFooterResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getHeaderFooter method
    // Reads a HeaderFooter object from the document.
    public func getHeaderFooter(request : GetHeaderFooterRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooter(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getHeaderFooterOfSection method
    // Reads a HeaderFooter object from the document section.
    public func getHeaderFooterOfSection(request : GetHeaderFooterOfSectionRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HeaderFooterResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getHeaderFooterOfSection method
    // Reads a HeaderFooter object from the document section.
    public func getHeaderFooterOfSection(request : GetHeaderFooterOfSectionRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooterOfSection(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getHeaderFooterOfSectionOnline method
    // Reads a HeaderFooter object from the document section.
    public func getHeaderFooterOfSectionOnline(request : GetHeaderFooterOfSectionOnlineRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HeaderFooterResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getHeaderFooterOfSectionOnline method
    // Reads a HeaderFooter object from the document section.
    public func getHeaderFooterOfSectionOnline(request : GetHeaderFooterOfSectionOnlineRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooterOfSectionOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getHeaderFooterOnline method
    // Reads a HeaderFooter object from the document.
    public func getHeaderFooterOnline(request : GetHeaderFooterOnlineRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HeaderFooterResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getHeaderFooterOnline method
    // Reads a HeaderFooter object from the document.
    public func getHeaderFooterOnline(request : GetHeaderFooterOnlineRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooterOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getHeaderFooters method
    // Reads HeaderFooter objects from the document section.
    public func getHeaderFooters(request : GetHeaderFootersRequest, callback : @escaping (_ response : HeaderFootersResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HeaderFootersResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getHeaderFooters method
    // Reads HeaderFooter objects from the document section.
    public func getHeaderFooters(request : GetHeaderFootersRequest) throws -> HeaderFootersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFootersResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooters(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getHeaderFootersOnline method
    // Reads HeaderFooter objects from the document section.
    public func getHeaderFootersOnline(request : GetHeaderFootersOnlineRequest, callback : @escaping (_ response : HeaderFootersResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HeaderFootersResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getHeaderFootersOnline method
    // Reads HeaderFooter objects from the document section.
    public func getHeaderFootersOnline(request : GetHeaderFootersOnlineRequest) throws -> HeaderFootersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFootersResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFootersOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getInfo method
    // Returns application info.
    public func getInfo(request : GetInfoRequest, callback : @escaping (_ response : InfoResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InfoResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getInfo method
    // Returns application info.
    public func getInfo(request : GetInfoRequest) throws -> InfoResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InfoResponse? = nil;
        var responseError : Error? = nil;
        self.getInfo(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getList method
    // Reads a list from the document.
    public func getList(request : GetListRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ListResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getList method
    // Reads a list from the document.
    public func getList(request : GetListRequest) throws -> ListResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListResponse? = nil;
        var responseError : Error? = nil;
        self.getList(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getListOnline method
    // Reads a list from the document.
    public func getListOnline(request : GetListOnlineRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ListResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getListOnline method
    // Reads a list from the document.
    public func getListOnline(request : GetListOnlineRequest) throws -> ListResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListResponse? = nil;
        var responseError : Error? = nil;
        self.getListOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getLists method
    // Reads lists from the document.
    public func getLists(request : GetListsRequest, callback : @escaping (_ response : ListsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ListsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getLists method
    // Reads lists from the document.
    public func getLists(request : GetListsRequest) throws -> ListsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListsResponse? = nil;
        var responseError : Error? = nil;
        self.getLists(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getListsOnline method
    // Reads lists from the document.
    public func getListsOnline(request : GetListsOnlineRequest, callback : @escaping (_ response : ListsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ListsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getListsOnline method
    // Reads lists from the document.
    public func getListsOnline(request : GetListsOnlineRequest) throws -> ListsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListsResponse? = nil;
        var responseError : Error? = nil;
        self.getListsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getOfficeMathObject method
    // Reads an OfficeMath object from the document node.
    public func getOfficeMathObject(request : GetOfficeMathObjectRequest, callback : @escaping (_ response : OfficeMathObjectResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? OfficeMathObjectResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getOfficeMathObject method
    // Reads an OfficeMath object from the document node.
    public func getOfficeMathObject(request : GetOfficeMathObjectRequest) throws -> OfficeMathObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getOfficeMathObjectOnline method
    // Reads an OfficeMath object from the document node.
    public func getOfficeMathObjectOnline(request : GetOfficeMathObjectOnlineRequest, callback : @escaping (_ response : OfficeMathObjectResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? OfficeMathObjectResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getOfficeMathObjectOnline method
    // Reads an OfficeMath object from the document node.
    public func getOfficeMathObjectOnline(request : GetOfficeMathObjectOnlineRequest) throws -> OfficeMathObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObjectOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getOfficeMathObjects method
    // Reads OfficeMath objects from the document node.
    public func getOfficeMathObjects(request : GetOfficeMathObjectsRequest, callback : @escaping (_ response : OfficeMathObjectsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? OfficeMathObjectsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getOfficeMathObjects method
    // Reads OfficeMath objects from the document node.
    public func getOfficeMathObjects(request : GetOfficeMathObjectsRequest) throws -> OfficeMathObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObjects(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getOfficeMathObjectsOnline method
    // Reads OfficeMath objects from the document node.
    public func getOfficeMathObjectsOnline(request : GetOfficeMathObjectsOnlineRequest, callback : @escaping (_ response : OfficeMathObjectsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? OfficeMathObjectsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getOfficeMathObjectsOnline method
    // Reads OfficeMath objects from the document node.
    public func getOfficeMathObjectsOnline(request : GetOfficeMathObjectsOnlineRequest) throws -> OfficeMathObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObjectsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraph method
    // Reads a paragraph from the document node.
    public func getParagraph(request : GetParagraphRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraph method
    // Reads a paragraph from the document node.
    public func getParagraph(request : GetParagraphRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraph(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphFormat method
    // Reads the formatting properties of a paragraph from the document node.
    public func getParagraphFormat(request : GetParagraphFormatRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphFormat method
    // Reads the formatting properties of a paragraph from the document node.
    public func getParagraphFormat(request : GetParagraphFormatRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphFormatOnline method
    // Reads the formatting properties of a paragraph from the document node.
    public func getParagraphFormatOnline(request : GetParagraphFormatOnlineRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphFormatOnline method
    // Reads the formatting properties of a paragraph from the document node.
    public func getParagraphFormatOnline(request : GetParagraphFormatOnlineRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphFormatOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphListFormat method
    // Reads the formatting properties of a paragraph list from the document node.
    public func getParagraphListFormat(request : GetParagraphListFormatRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphListFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphListFormat method
    // Reads the formatting properties of a paragraph list from the document node.
    public func getParagraphListFormat(request : GetParagraphListFormatRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphListFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphListFormatOnline method
    // Reads the formatting properties of a paragraph list from the document node.
    public func getParagraphListFormatOnline(request : GetParagraphListFormatOnlineRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphListFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphListFormatOnline method
    // Reads the formatting properties of a paragraph list from the document node.
    public func getParagraphListFormatOnline(request : GetParagraphListFormatOnlineRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphListFormatOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphOnline method
    // Reads a paragraph from the document node.
    public func getParagraphOnline(request : GetParagraphOnlineRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphOnline method
    // Reads a paragraph from the document node.
    public func getParagraphOnline(request : GetParagraphOnlineRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphs method
    // Reads paragraphs from the document node.
    public func getParagraphs(request : GetParagraphsRequest, callback : @escaping (_ response : ParagraphLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphLinkCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphs method
    // Reads paragraphs from the document node.
    public func getParagraphs(request : GetParagraphsRequest) throws -> ParagraphLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphs(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphsOnline method
    // Reads paragraphs from the document node.
    public func getParagraphsOnline(request : GetParagraphsOnlineRequest, callback : @escaping (_ response : ParagraphLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphLinkCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphsOnline method
    // Reads paragraphs from the document node.
    public func getParagraphsOnline(request : GetParagraphsOnlineRequest) throws -> ParagraphLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphTabStops method
    // Reads paragraph tab stops from the document node.
    public func getParagraphTabStops(request : GetParagraphTabStopsRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TabStopsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphTabStops method
    // Reads paragraph tab stops from the document node.
    public func getParagraphTabStops(request : GetParagraphTabStopsRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphTabStops(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphTabStopsOnline method
    // Reads paragraph tab stops from the document node.
    public func getParagraphTabStopsOnline(request : GetParagraphTabStopsOnlineRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TabStopsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphTabStopsOnline method
    // Reads paragraph tab stops from the document node.
    public func getParagraphTabStopsOnline(request : GetParagraphTabStopsOnlineRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphTabStopsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getPublicKey method
    // Get asymmetric public key.
    public func getPublicKey(request : GetPublicKeyRequest, callback : @escaping (_ response : PublicKeyResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? PublicKeyResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getPublicKey method
    // Get asymmetric public key.
    public func getPublicKey(request : GetPublicKeyRequest) throws -> PublicKeyResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : PublicKeyResponse? = nil;
        var responseError : Error? = nil;
        self.getPublicKey(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRangeText method
    // Reads range text from the document.
    public func getRangeText(request : GetRangeTextRequest, callback : @escaping (_ response : RangeTextResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RangeTextResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRangeText method
    // Reads range text from the document.
    public func getRangeText(request : GetRangeTextRequest) throws -> RangeTextResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RangeTextResponse? = nil;
        var responseError : Error? = nil;
        self.getRangeText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRangeTextOnline method
    // Reads range text from the document.
    public func getRangeTextOnline(request : GetRangeTextOnlineRequest, callback : @escaping (_ response : RangeTextResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RangeTextResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRangeTextOnline method
    // Reads range text from the document.
    public func getRangeTextOnline(request : GetRangeTextOnlineRequest) throws -> RangeTextResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RangeTextResponse? = nil;
        var responseError : Error? = nil;
        self.getRangeTextOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRun method
    // Reads a Run object from the paragraph.
    public func getRun(request : GetRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RunResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRun method
    // Reads a Run object from the paragraph.
    public func getRun(request : GetRunRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.getRun(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRunFont method
    // Reads the font properties of a Run object from the paragraph.
    public func getRunFont(request : GetRunFontRequest, callback : @escaping (_ response : FontResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FontResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRunFont method
    // Reads the font properties of a Run object from the paragraph.
    public func getRunFont(request : GetRunFontRequest) throws -> FontResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FontResponse? = nil;
        var responseError : Error? = nil;
        self.getRunFont(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRunFontOnline method
    // Reads the font properties of a Run object from the paragraph.
    public func getRunFontOnline(request : GetRunFontOnlineRequest, callback : @escaping (_ response : FontResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FontResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRunFontOnline method
    // Reads the font properties of a Run object from the paragraph.
    public func getRunFontOnline(request : GetRunFontOnlineRequest) throws -> FontResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FontResponse? = nil;
        var responseError : Error? = nil;
        self.getRunFontOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRunOnline method
    // Reads a Run object from the paragraph.
    public func getRunOnline(request : GetRunOnlineRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RunResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRunOnline method
    // Reads a Run object from the paragraph.
    public func getRunOnline(request : GetRunOnlineRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.getRunOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRuns method
    // Reads Run objects from the paragraph.
    public func getRuns(request : GetRunsRequest, callback : @escaping (_ response : RunsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RunsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRuns method
    // Reads Run objects from the paragraph.
    public func getRuns(request : GetRunsRequest) throws -> RunsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunsResponse? = nil;
        var responseError : Error? = nil;
        self.getRuns(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRunsOnline method
    // Reads Run objects from the paragraph.
    public func getRunsOnline(request : GetRunsOnlineRequest, callback : @escaping (_ response : RunsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RunsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRunsOnline method
    // Reads Run objects from the paragraph.
    public func getRunsOnline(request : GetRunsOnlineRequest) throws -> RunsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunsResponse? = nil;
        var responseError : Error? = nil;
        self.getRunsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSection method
    // Reads a section from the document.
    public func getSection(request : GetSectionRequest, callback : @escaping (_ response : SectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSection method
    // Reads a section from the document.
    public func getSection(request : GetSectionRequest) throws -> SectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSection(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSectionOnline method
    // Reads a section from the document.
    public func getSectionOnline(request : GetSectionOnlineRequest, callback : @escaping (_ response : SectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSectionOnline method
    // Reads a section from the document.
    public func getSectionOnline(request : GetSectionOnlineRequest) throws -> SectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSectionOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSectionPageSetup method
    // Reads the page setup of a section from the document.
    public func getSectionPageSetup(request : GetSectionPageSetupRequest, callback : @escaping (_ response : SectionPageSetupResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SectionPageSetupResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSectionPageSetup method
    // Reads the page setup of a section from the document.
    public func getSectionPageSetup(request : GetSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionPageSetupResponse? = nil;
        var responseError : Error? = nil;
        self.getSectionPageSetup(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSectionPageSetupOnline method
    // Reads the page setup of a section from the document.
    public func getSectionPageSetupOnline(request : GetSectionPageSetupOnlineRequest, callback : @escaping (_ response : SectionPageSetupResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SectionPageSetupResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSectionPageSetupOnline method
    // Reads the page setup of a section from the document.
    public func getSectionPageSetupOnline(request : GetSectionPageSetupOnlineRequest) throws -> SectionPageSetupResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionPageSetupResponse? = nil;
        var responseError : Error? = nil;
        self.getSectionPageSetupOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSections method
    // Reads sections from the document.
    public func getSections(request : GetSectionsRequest, callback : @escaping (_ response : SectionLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SectionLinkCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSections method
    // Reads sections from the document.
    public func getSections(request : GetSectionsRequest) throws -> SectionLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSections(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSectionsOnline method
    // Reads sections from the document.
    public func getSectionsOnline(request : GetSectionsOnlineRequest, callback : @escaping (_ response : SectionLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SectionLinkCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSectionsOnline method
    // Reads sections from the document.
    public func getSectionsOnline(request : GetSectionsOnlineRequest) throws -> SectionLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSectionsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSignatures method
    // Gets signatures from the document.
    public func getSignatures(request : GetSignaturesRequest, callback : @escaping (_ response : SignatureCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SignatureCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSignatures method
    // Gets signatures from the document.
    public func getSignatures(request : GetSignaturesRequest) throws -> SignatureCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SignatureCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSignatures(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSignaturesOnline method
    // Gets signatures from the document.
    public func getSignaturesOnline(request : GetSignaturesOnlineRequest, callback : @escaping (_ response : SignatureCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SignatureCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSignaturesOnline method
    // Gets signatures from the document.
    public func getSignaturesOnline(request : GetSignaturesOnlineRequest) throws -> SignatureCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SignatureCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSignaturesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStructuredDocumentTag method
    // Reads a StructuredDocumentTag (SDT) from the document node.
    public func getStructuredDocumentTag(request : GetStructuredDocumentTagRequest, callback : @escaping (_ response : StructuredDocumentTagResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StructuredDocumentTagResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStructuredDocumentTag method
    // Reads a StructuredDocumentTag (SDT) from the document node.
    public func getStructuredDocumentTag(request : GetStructuredDocumentTagRequest) throws -> StructuredDocumentTagResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StructuredDocumentTagResponse? = nil;
        var responseError : Error? = nil;
        self.getStructuredDocumentTag(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStructuredDocumentTagOnline method
    // Reads a StructuredDocumentTag (SDT) from the document node.
    public func getStructuredDocumentTagOnline(request : GetStructuredDocumentTagOnlineRequest, callback : @escaping (_ response : StructuredDocumentTagResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StructuredDocumentTagResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStructuredDocumentTagOnline method
    // Reads a StructuredDocumentTag (SDT) from the document node.
    public func getStructuredDocumentTagOnline(request : GetStructuredDocumentTagOnlineRequest) throws -> StructuredDocumentTagResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StructuredDocumentTagResponse? = nil;
        var responseError : Error? = nil;
        self.getStructuredDocumentTagOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStructuredDocumentTags method
    // Reads StructuredDocumentTags (SDT) from the document node.
    public func getStructuredDocumentTags(request : GetStructuredDocumentTagsRequest, callback : @escaping (_ response : StructuredDocumentTagsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StructuredDocumentTagsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStructuredDocumentTags method
    // Reads StructuredDocumentTags (SDT) from the document node.
    public func getStructuredDocumentTags(request : GetStructuredDocumentTagsRequest) throws -> StructuredDocumentTagsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StructuredDocumentTagsResponse? = nil;
        var responseError : Error? = nil;
        self.getStructuredDocumentTags(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStructuredDocumentTagsOnline method
    // Reads StructuredDocumentTags (SDT) from the document node.
    public func getStructuredDocumentTagsOnline(request : GetStructuredDocumentTagsOnlineRequest, callback : @escaping (_ response : StructuredDocumentTagsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StructuredDocumentTagsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStructuredDocumentTagsOnline method
    // Reads StructuredDocumentTags (SDT) from the document node.
    public func getStructuredDocumentTagsOnline(request : GetStructuredDocumentTagsOnlineRequest) throws -> StructuredDocumentTagsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StructuredDocumentTagsResponse? = nil;
        var responseError : Error? = nil;
        self.getStructuredDocumentTagsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStyle method
    // Reads a style from the document.
    public func getStyle(request : GetStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StyleResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStyle method
    // Reads a style from the document.
    public func getStyle(request : GetStyleRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.getStyle(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStyleFromDocumentElement method
    // Reads a style from the document node.
    public func getStyleFromDocumentElement(request : GetStyleFromDocumentElementRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StyleResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStyleFromDocumentElement method
    // Reads a style from the document node.
    public func getStyleFromDocumentElement(request : GetStyleFromDocumentElementRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.getStyleFromDocumentElement(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStyleFromDocumentElementOnline method
    // Reads a style from the document node.
    public func getStyleFromDocumentElementOnline(request : GetStyleFromDocumentElementOnlineRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StyleResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStyleFromDocumentElementOnline method
    // Reads a style from the document node.
    public func getStyleFromDocumentElementOnline(request : GetStyleFromDocumentElementOnlineRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.getStyleFromDocumentElementOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStyleOnline method
    // Reads a style from the document.
    public func getStyleOnline(request : GetStyleOnlineRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StyleResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStyleOnline method
    // Reads a style from the document.
    public func getStyleOnline(request : GetStyleOnlineRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.getStyleOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStyles method
    // Reads styles from the document.
    public func getStyles(request : GetStylesRequest, callback : @escaping (_ response : StylesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StylesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStyles method
    // Reads styles from the document.
    public func getStyles(request : GetStylesRequest) throws -> StylesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StylesResponse? = nil;
        var responseError : Error? = nil;
        self.getStyles(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStylesOnline method
    // Reads styles from the document.
    public func getStylesOnline(request : GetStylesOnlineRequest, callback : @escaping (_ response : StylesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StylesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStylesOnline method
    // Reads styles from the document.
    public func getStylesOnline(request : GetStylesOnlineRequest) throws -> StylesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StylesResponse? = nil;
        var responseError : Error? = nil;
        self.getStylesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTable method
    // Reads a table from the document node.
    public func getTable(request : GetTableRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTable method
    // Reads a table from the document node.
    public func getTable(request : GetTableRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.getTable(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableCell method
    // Reads a cell from the table row.
    public func getTableCell(request : GetTableCellRequest, callback : @escaping (_ response : TableCellResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableCellResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableCell method
    // Reads a cell from the table row.
    public func getTableCell(request : GetTableCellRequest) throws -> TableCellResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellResponse? = nil;
        var responseError : Error? = nil;
        self.getTableCell(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableCellFormat method
    // Reads the formatting properties of a table cell.
    public func getTableCellFormat(request : GetTableCellFormatRequest, callback : @escaping (_ response : TableCellFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableCellFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableCellFormat method
    // Reads the formatting properties of a table cell.
    public func getTableCellFormat(request : GetTableCellFormatRequest) throws -> TableCellFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getTableCellFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableCellFormatOnline method
    // Reads the formatting properties of a table cell.
    public func getTableCellFormatOnline(request : GetTableCellFormatOnlineRequest, callback : @escaping (_ response : TableCellFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableCellFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableCellFormatOnline method
    // Reads the formatting properties of a table cell.
    public func getTableCellFormatOnline(request : GetTableCellFormatOnlineRequest) throws -> TableCellFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getTableCellFormatOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableCellOnline method
    // Reads a cell from the table row.
    public func getTableCellOnline(request : GetTableCellOnlineRequest, callback : @escaping (_ response : TableCellResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableCellResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableCellOnline method
    // Reads a cell from the table row.
    public func getTableCellOnline(request : GetTableCellOnlineRequest) throws -> TableCellResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellResponse? = nil;
        var responseError : Error? = nil;
        self.getTableCellOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableOnline method
    // Reads a table from the document node.
    public func getTableOnline(request : GetTableOnlineRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableOnline method
    // Reads a table from the document node.
    public func getTableOnline(request : GetTableOnlineRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.getTableOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableProperties method
    // Reads properties of a table from the document node.
    public func getTableProperties(request : GetTablePropertiesRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TablePropertiesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableProperties method
    // Reads properties of a table from the document node.
    public func getTableProperties(request : GetTablePropertiesRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getTableProperties(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTablePropertiesOnline method
    // Reads properties of a table from the document node.
    public func getTablePropertiesOnline(request : GetTablePropertiesOnlineRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TablePropertiesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTablePropertiesOnline method
    // Reads properties of a table from the document node.
    public func getTablePropertiesOnline(request : GetTablePropertiesOnlineRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getTablePropertiesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableRow method
    // Reads a row from the table.
    public func getTableRow(request : GetTableRowRequest, callback : @escaping (_ response : TableRowResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableRowResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableRow method
    // Reads a row from the table.
    public func getTableRow(request : GetTableRowRequest) throws -> TableRowResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowResponse? = nil;
        var responseError : Error? = nil;
        self.getTableRow(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableRowFormat method
    // Reads the formatting properties of a table row.
    public func getTableRowFormat(request : GetTableRowFormatRequest, callback : @escaping (_ response : TableRowFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableRowFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableRowFormat method
    // Reads the formatting properties of a table row.
    public func getTableRowFormat(request : GetTableRowFormatRequest) throws -> TableRowFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getTableRowFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableRowFormatOnline method
    // Reads the formatting properties of a table row.
    public func getTableRowFormatOnline(request : GetTableRowFormatOnlineRequest, callback : @escaping (_ response : TableRowFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableRowFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableRowFormatOnline method
    // Reads the formatting properties of a table row.
    public func getTableRowFormatOnline(request : GetTableRowFormatOnlineRequest) throws -> TableRowFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getTableRowFormatOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableRowOnline method
    // Reads a row from the table.
    public func getTableRowOnline(request : GetTableRowOnlineRequest, callback : @escaping (_ response : TableRowResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableRowResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableRowOnline method
    // Reads a row from the table.
    public func getTableRowOnline(request : GetTableRowOnlineRequest) throws -> TableRowResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowResponse? = nil;
        var responseError : Error? = nil;
        self.getTableRowOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTables method
    // Reads tables from the document node.
    public func getTables(request : GetTablesRequest, callback : @escaping (_ response : TableLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableLinkCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTables method
    // Reads tables from the document node.
    public func getTables(request : GetTablesRequest) throws -> TableLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getTables(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTablesOnline method
    // Reads tables from the document node.
    public func getTablesOnline(request : GetTablesOnlineRequest, callback : @escaping (_ response : TableLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableLinkCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTablesOnline method
    // Reads tables from the document node.
    public func getTablesOnline(request : GetTablesOnlineRequest) throws -> TableLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getTablesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertBookmark method
    // Inserts a new bookmark to the document.
    public func insertBookmark(request : InsertBookmarkRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BookmarkResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertBookmark method
    // Inserts a new bookmark to the document.
    public func insertBookmark(request : InsertBookmarkRequest) throws -> BookmarkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarkResponse? = nil;
        var responseError : Error? = nil;
        self.insertBookmark(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertBookmarkOnline method
    // Inserts a new bookmark to the document.
    public func insertBookmarkOnline(request : InsertBookmarkOnlineRequest, callback : @escaping (_ response : InsertBookmarkOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertBookmarkOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertBookmarkOnline method
    // Inserts a new bookmark to the document.
    public func insertBookmarkOnline(request : InsertBookmarkOnlineRequest) throws -> InsertBookmarkOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertBookmarkOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertBookmarkOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertComment method
    // Inserts a new comment to the document.
    public func insertComment(request : InsertCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CommentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertComment method
    // Inserts a new comment to the document.
    public func insertComment(request : InsertCommentRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.insertComment(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertCommentOnline method
    // Inserts a new comment to the document.
    public func insertCommentOnline(request : InsertCommentOnlineRequest, callback : @escaping (_ response : InsertCommentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertCommentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertCommentOnline method
    // Inserts a new comment to the document.
    public func insertCommentOnline(request : InsertCommentOnlineRequest) throws -> InsertCommentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertCommentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertCommentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertCustomXmlPart method
    // Inserts a new custom xml part to the document.
    public func insertCustomXmlPart(request : InsertCustomXmlPartRequest, callback : @escaping (_ response : CustomXmlPartResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CustomXmlPartResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertCustomXmlPart method
    // Inserts a new custom xml part to the document.
    public func insertCustomXmlPart(request : InsertCustomXmlPartRequest) throws -> CustomXmlPartResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CustomXmlPartResponse? = nil;
        var responseError : Error? = nil;
        self.insertCustomXmlPart(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertCustomXmlPartOnline method
    // Inserts a new custom xml part to the document.
    public func insertCustomXmlPartOnline(request : InsertCustomXmlPartOnlineRequest, callback : @escaping (_ response : InsertCustomXmlPartOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertCustomXmlPartOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertCustomXmlPartOnline method
    // Inserts a new custom xml part to the document.
    public func insertCustomXmlPartOnline(request : InsertCustomXmlPartOnlineRequest) throws -> InsertCustomXmlPartOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertCustomXmlPartOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertCustomXmlPartOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertDrawingObject method
    // Inserts a new DrawingObject to the document node.
    public func insertDrawingObject(request : InsertDrawingObjectRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DrawingObjectResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertDrawingObject method
    // Inserts a new DrawingObject to the document node.
    public func insertDrawingObject(request : InsertDrawingObjectRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.insertDrawingObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertDrawingObjectOnline method
    // Inserts a new DrawingObject to the document node.
    public func insertDrawingObjectOnline(request : InsertDrawingObjectOnlineRequest, callback : @escaping (_ response : InsertDrawingObjectOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertDrawingObjectOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertDrawingObjectOnline method
    // Inserts a new DrawingObject to the document node.
    public func insertDrawingObjectOnline(request : InsertDrawingObjectOnlineRequest) throws -> InsertDrawingObjectOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertDrawingObjectOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertDrawingObjectOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertField method
    // Inserts a new field to the document node.
    public func insertField(request : InsertFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FieldResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertField method
    // Inserts a new field to the document node.
    public func insertField(request : InsertFieldRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFieldOnline method
    // Inserts a new field to the document node.
    public func insertFieldOnline(request : InsertFieldOnlineRequest, callback : @escaping (_ response : InsertFieldOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertFieldOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFieldOnline method
    // Inserts a new field to the document node.
    public func insertFieldOnline(request : InsertFieldOnlineRequest) throws -> InsertFieldOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertFieldOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertFieldOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFootnote method
    // Inserts a new footnote to the document node.
    public func insertFootnote(request : InsertFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FootnoteResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFootnote method
    // Inserts a new footnote to the document node.
    public func insertFootnote(request : InsertFootnoteRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.insertFootnote(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFootnoteOnline method
    // Inserts a new footnote to the document node.
    public func insertFootnoteOnline(request : InsertFootnoteOnlineRequest, callback : @escaping (_ response : InsertFootnoteOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertFootnoteOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFootnoteOnline method
    // Inserts a new footnote to the document node.
    public func insertFootnoteOnline(request : InsertFootnoteOnlineRequest) throws -> InsertFootnoteOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertFootnoteOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertFootnoteOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFormField method
    // Inserts a new form field to the document node.
    public func insertFormField(request : InsertFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FormFieldResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFormField method
    // Inserts a new form field to the document node.
    public func insertFormField(request : InsertFormFieldRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertFormField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFormFieldOnline method
    // Inserts a new form field to the document node.
    public func insertFormFieldOnline(request : InsertFormFieldOnlineRequest, callback : @escaping (_ response : InsertFormFieldOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertFormFieldOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFormFieldOnline method
    // Inserts a new form field to the document node.
    public func insertFormFieldOnline(request : InsertFormFieldOnlineRequest) throws -> InsertFormFieldOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertFormFieldOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertFormFieldOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertHeaderFooter method
    // Inserts a new HeaderFooter object to the document section.
    public func insertHeaderFooter(request : InsertHeaderFooterRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? HeaderFooterResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertHeaderFooter method
    // Inserts a new HeaderFooter object to the document section.
    public func insertHeaderFooter(request : InsertHeaderFooterRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.insertHeaderFooter(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertHeaderFooterOnline method
    // Inserts a new HeaderFooter object to the document section.
    public func insertHeaderFooterOnline(request : InsertHeaderFooterOnlineRequest, callback : @escaping (_ response : InsertHeaderFooterOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertHeaderFooterOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertHeaderFooterOnline method
    // Inserts a new HeaderFooter object to the document section.
    public func insertHeaderFooterOnline(request : InsertHeaderFooterOnlineRequest) throws -> InsertHeaderFooterOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertHeaderFooterOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertHeaderFooterOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertList method
    // Inserts a new list to the document.
    public func insertList(request : InsertListRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ListResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertList method
    // Inserts a new list to the document.
    public func insertList(request : InsertListRequest) throws -> ListResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListResponse? = nil;
        var responseError : Error? = nil;
        self.insertList(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertListOnline method
    // Inserts a new list to the document.
    public func insertListOnline(request : InsertListOnlineRequest, callback : @escaping (_ response : InsertListOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertListOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertListOnline method
    // Inserts a new list to the document.
    public func insertListOnline(request : InsertListOnlineRequest) throws -> InsertListOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertListOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertListOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertOrUpdateParagraphTabStop method
    // Inserts a new or updates an existing paragraph tab stop in the document node.
    public func insertOrUpdateParagraphTabStop(request : InsertOrUpdateParagraphTabStopRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TabStopsResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertOrUpdateParagraphTabStop method
    // Inserts a new or updates an existing paragraph tab stop in the document node.
    public func insertOrUpdateParagraphTabStop(request : InsertOrUpdateParagraphTabStopRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.insertOrUpdateParagraphTabStop(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertOrUpdateParagraphTabStopOnline method
    // Inserts a new or updates an existing paragraph tab stop in the document node.
    public func insertOrUpdateParagraphTabStopOnline(request : InsertOrUpdateParagraphTabStopOnlineRequest, callback : @escaping (_ response : InsertOrUpdateParagraphTabStopOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertOrUpdateParagraphTabStopOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertOrUpdateParagraphTabStopOnline method
    // Inserts a new or updates an existing paragraph tab stop in the document node.
    public func insertOrUpdateParagraphTabStopOnline(request : InsertOrUpdateParagraphTabStopOnlineRequest) throws -> InsertOrUpdateParagraphTabStopOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertOrUpdateParagraphTabStopOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertOrUpdateParagraphTabStopOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertPageNumbers method
    // Inserts page numbers to the document.
    public func insertPageNumbers(request : InsertPageNumbersRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertPageNumbers method
    // Inserts page numbers to the document.
    public func insertPageNumbers(request : InsertPageNumbersRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertPageNumbers(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertPageNumbersOnline method
    // Inserts page numbers to the document.
    public func insertPageNumbersOnline(request : InsertPageNumbersOnlineRequest, callback : @escaping (_ response : InsertPageNumbersOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertPageNumbersOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertPageNumbersOnline method
    // Inserts page numbers to the document.
    public func insertPageNumbersOnline(request : InsertPageNumbersOnlineRequest) throws -> InsertPageNumbersOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertPageNumbersOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertPageNumbersOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertParagraph method
    // Inserts a new paragraph to the document node.
    public func insertParagraph(request : InsertParagraphRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertParagraph method
    // Inserts a new paragraph to the document node.
    public func insertParagraph(request : InsertParagraphRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.insertParagraph(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertParagraphOnline method
    // Inserts a new paragraph to the document node.
    public func insertParagraphOnline(request : InsertParagraphOnlineRequest, callback : @escaping (_ response : InsertParagraphOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertParagraphOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertParagraphOnline method
    // Inserts a new paragraph to the document node.
    public func insertParagraphOnline(request : InsertParagraphOnlineRequest) throws -> InsertParagraphOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertParagraphOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertParagraphOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertRun method
    // Inserts a new Run object to the paragraph.
    public func insertRun(request : InsertRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RunResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertRun method
    // Inserts a new Run object to the paragraph.
    public func insertRun(request : InsertRunRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.insertRun(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertRunOnline method
    // Inserts a new Run object to the paragraph.
    public func insertRunOnline(request : InsertRunOnlineRequest, callback : @escaping (_ response : InsertRunOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertRunOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertRunOnline method
    // Inserts a new Run object to the paragraph.
    public func insertRunOnline(request : InsertRunOnlineRequest) throws -> InsertRunOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertRunOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertRunOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertSection method
    // Inserts a section to the document.
    public func insertSection(request : InsertSectionRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of insertSection method
    // Inserts a section to the document.
    public func insertSection(request : InsertSectionRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.insertSection(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of insertSectionOnline method
    // Inserts a section to the document.
    public func insertSectionOnline(request : InsertSectionOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertSectionOnline method
    // Inserts a section to the document.
    public func insertSectionOnline(request : InsertSectionOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.insertSectionOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertStructuredDocumentTag method
    // Inserts a new StructuredDocumentTag (SDT) to the document node.
    public func insertStructuredDocumentTag(request : InsertStructuredDocumentTagRequest, callback : @escaping (_ response : StructuredDocumentTagResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StructuredDocumentTagResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertStructuredDocumentTag method
    // Inserts a new StructuredDocumentTag (SDT) to the document node.
    public func insertStructuredDocumentTag(request : InsertStructuredDocumentTagRequest) throws -> StructuredDocumentTagResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StructuredDocumentTagResponse? = nil;
        var responseError : Error? = nil;
        self.insertStructuredDocumentTag(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertStructuredDocumentTagOnline method
    // Inserts a new StructuredDocumentTag (SDT) to the document node.
    public func insertStructuredDocumentTagOnline(request : InsertStructuredDocumentTagOnlineRequest, callback : @escaping (_ response : InsertStructuredDocumentTagOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertStructuredDocumentTagOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertStructuredDocumentTagOnline method
    // Inserts a new StructuredDocumentTag (SDT) to the document node.
    public func insertStructuredDocumentTagOnline(request : InsertStructuredDocumentTagOnlineRequest) throws -> InsertStructuredDocumentTagOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertStructuredDocumentTagOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertStructuredDocumentTagOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertStyle method
    // Inserts a new style to the document.
    public func insertStyle(request : InsertStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StyleResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertStyle method
    // Inserts a new style to the document.
    public func insertStyle(request : InsertStyleRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.insertStyle(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertStyleOnline method
    // Inserts a new style to the document.
    public func insertStyleOnline(request : InsertStyleOnlineRequest, callback : @escaping (_ response : InsertStyleOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertStyleOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertStyleOnline method
    // Inserts a new style to the document.
    public func insertStyleOnline(request : InsertStyleOnlineRequest) throws -> InsertStyleOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertStyleOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertStyleOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTable method
    // Inserts a new table to the document node.
    public func insertTable(request : InsertTableRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTable method
    // Inserts a new table to the document node.
    public func insertTable(request : InsertTableRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.insertTable(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTableCell method
    // Inserts a new cell to the table row.
    public func insertTableCell(request : InsertTableCellRequest, callback : @escaping (_ response : TableCellResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableCellResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTableCell method
    // Inserts a new cell to the table row.
    public func insertTableCell(request : InsertTableCellRequest) throws -> TableCellResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableCell(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTableCellOnline method
    // Inserts a new cell to the table row.
    public func insertTableCellOnline(request : InsertTableCellOnlineRequest, callback : @escaping (_ response : InsertTableCellOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertTableCellOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTableCellOnline method
    // Inserts a new cell to the table row.
    public func insertTableCellOnline(request : InsertTableCellOnlineRequest) throws -> InsertTableCellOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertTableCellOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableCellOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTableOnline method
    // Inserts a new table to the document node.
    public func insertTableOnline(request : InsertTableOnlineRequest, callback : @escaping (_ response : InsertTableOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertTableOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTableOnline method
    // Inserts a new table to the document node.
    public func insertTableOnline(request : InsertTableOnlineRequest) throws -> InsertTableOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertTableOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTableRow method
    // Inserts a new row to the table.
    public func insertTableRow(request : InsertTableRowRequest, callback : @escaping (_ response : TableRowResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableRowResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTableRow method
    // Inserts a new row to the table.
    public func insertTableRow(request : InsertTableRowRequest) throws -> TableRowResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableRow(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTableRowOnline method
    // Inserts a new row to the table.
    public func insertTableRowOnline(request : InsertTableRowOnlineRequest, callback : @escaping (_ response : InsertTableRowOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertTableRowOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTableRowOnline method
    // Inserts a new row to the table.
    public func insertTableRowOnline(request : InsertTableRowOnlineRequest) throws -> InsertTableRowOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertTableRowOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableRowOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertWatermark method
    // Insert a watermark to the document.
    public func insertWatermark(request : InsertWatermarkRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertWatermark method
    // Insert a watermark to the document.
    public func insertWatermark(request : InsertWatermarkRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermark(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertWatermarkImage method
    // Inserts a new watermark image to the document.
    @available(*, deprecated, message: "This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
    public func insertWatermarkImage(request : InsertWatermarkImageRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertWatermarkImage method
    // Inserts a new watermark image to the document.
    @available(*, deprecated, message: "This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
    public func insertWatermarkImage(request : InsertWatermarkImageRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermarkImage(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertWatermarkImageOnline method
    // Inserts a new watermark image to the document.
    @available(*, deprecated, message: "This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
    public func insertWatermarkImageOnline(request : InsertWatermarkImageOnlineRequest, callback : @escaping (_ response : InsertWatermarkImageOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertWatermarkImageOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertWatermarkImageOnline method
    // Inserts a new watermark image to the document.
    @available(*, deprecated, message: "This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
    public func insertWatermarkImageOnline(request : InsertWatermarkImageOnlineRequest) throws -> InsertWatermarkImageOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertWatermarkImageOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermarkImageOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertWatermarkOnline method
    // Insert a watermark to the document.
    public func insertWatermarkOnline(request : InsertWatermarkOnlineRequest, callback : @escaping (_ response : InsertWatermarkOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertWatermarkOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertWatermarkOnline method
    // Insert a watermark to the document.
    public func insertWatermarkOnline(request : InsertWatermarkOnlineRequest) throws -> InsertWatermarkOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertWatermarkOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermarkOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertWatermarkText method
    // Inserts a new watermark text to the document.
    @available(*, deprecated, message: "This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
    public func insertWatermarkText(request : InsertWatermarkTextRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertWatermarkText method
    // Inserts a new watermark text to the document.
    @available(*, deprecated, message: "This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
    public func insertWatermarkText(request : InsertWatermarkTextRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermarkText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertWatermarkTextOnline method
    // Inserts a new watermark text to the document.
    @available(*, deprecated, message: "This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
    public func insertWatermarkTextOnline(request : InsertWatermarkTextOnlineRequest, callback : @escaping (_ response : InsertWatermarkTextOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? InsertWatermarkTextOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertWatermarkTextOnline method
    // Inserts a new watermark text to the document.
    @available(*, deprecated, message: "This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
    public func insertWatermarkTextOnline(request : InsertWatermarkTextOnlineRequest) throws -> InsertWatermarkTextOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : InsertWatermarkTextOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermarkTextOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of linkHeaderFootersToPrevious method
    // Links headers / footers of the section to the previous one.
    public func linkHeaderFootersToPrevious(request : LinkHeaderFootersToPreviousRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of linkHeaderFootersToPrevious method
    // Links headers / footers of the section to the previous one.
    public func linkHeaderFootersToPrevious(request : LinkHeaderFootersToPreviousRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.linkHeaderFootersToPrevious(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of loadWebDocument method
    // Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
    public func loadWebDocument(request : LoadWebDocumentRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SaveResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of loadWebDocument method
    // Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
    public func loadWebDocument(request : LoadWebDocumentRequest) throws -> SaveResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveResponse? = nil;
        var responseError : Error? = nil;
        self.loadWebDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of loadWebDocumentOnline method
    // Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
    public func loadWebDocumentOnline(request : LoadWebDocumentOnlineRequest, callback : @escaping (_ response : LoadWebDocumentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? LoadWebDocumentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of loadWebDocumentOnline method
    // Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
    public func loadWebDocumentOnline(request : LoadWebDocumentOnlineRequest) throws -> LoadWebDocumentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : LoadWebDocumentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.loadWebDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of mergeWithNext method
    // Merge the section with the next one.
    public func mergeWithNext(request : MergeWithNextRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of mergeWithNext method
    // Merge the section with the next one.
    public func mergeWithNext(request : MergeWithNextRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.mergeWithNext(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of mergeWithNextOnline method
    // Merge the section with the next one.
    public func mergeWithNextOnline(request : MergeWithNextOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of mergeWithNextOnline method
    // Merge the section with the next one.
    public func mergeWithNextOnline(request : MergeWithNextOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.mergeWithNextOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of moveFile method
    // Move file.
    public func moveFile(request : MoveFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of moveFile method
    // Move file.
    public func moveFile(request : MoveFileRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.moveFile(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of moveFolder method
    // Move folder.
    public func moveFolder(request : MoveFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of moveFolder method
    // Move folder.
    public func moveFolder(request : MoveFolderRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.moveFolder(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of optimizeDocument method
    // Applies document content optimization options, specific to a particular versions of Microsoft Word.
    public func optimizeDocument(request : OptimizeDocumentRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of optimizeDocument method
    // Applies document content optimization options, specific to a particular versions of Microsoft Word.
    public func optimizeDocument(request : OptimizeDocumentRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.optimizeDocument(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of optimizeDocumentOnline method
    // Applies document content optimization options, specific to a particular versions of Microsoft Word.
    public func optimizeDocumentOnline(request : OptimizeDocumentOnlineRequest, callback : @escaping (_ response : [String: Data]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? [String: Data], nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of optimizeDocumentOnline method
    // Applies document content optimization options, specific to a particular versions of Microsoft Word.
    public func optimizeDocumentOnline(request : OptimizeDocumentOnlineRequest) throws -> [String: Data] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [String: Data]? = nil;
        var responseError : Error? = nil;
        self.optimizeDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of protectDocument method
    // Changes the document protection. The previous protection will be overwritten if it exist.
    public func protectDocument(request : ProtectDocumentRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ProtectionDataResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of protectDocument method
    // Changes the document protection. The previous protection will be overwritten if it exist.
    public func protectDocument(request : ProtectDocumentRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.protectDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of protectDocumentOnline method
    // Changes the document protection. The previous protection will be overwritten if it exist.
    public func protectDocumentOnline(request : ProtectDocumentOnlineRequest, callback : @escaping (_ response : ProtectDocumentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ProtectDocumentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of protectDocumentOnline method
    // Changes the document protection. The previous protection will be overwritten if it exist.
    public func protectDocumentOnline(request : ProtectDocumentOnlineRequest) throws -> ProtectDocumentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectDocumentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.protectDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of rejectAllRevisions method
    // Rejects all revisions in the document.
    public func rejectAllRevisions(request : RejectAllRevisionsRequest, callback : @escaping (_ response : RevisionsModificationResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RevisionsModificationResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of rejectAllRevisions method
    // Rejects all revisions in the document.
    public func rejectAllRevisions(request : RejectAllRevisionsRequest) throws -> RevisionsModificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RevisionsModificationResponse? = nil;
        var responseError : Error? = nil;
        self.rejectAllRevisions(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of rejectAllRevisionsOnline method
    // Rejects all revisions in the document.
    public func rejectAllRevisionsOnline(request : RejectAllRevisionsOnlineRequest, callback : @escaping (_ response : RejectAllRevisionsOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RejectAllRevisionsOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of rejectAllRevisionsOnline method
    // Rejects all revisions in the document.
    public func rejectAllRevisionsOnline(request : RejectAllRevisionsOnlineRequest) throws -> RejectAllRevisionsOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RejectAllRevisionsOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.rejectAllRevisionsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of removeAllSignatures method
    // Removes all signatures of the document.
    public func removeAllSignatures(request : RemoveAllSignaturesRequest, callback : @escaping (_ response : SignatureCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SignatureCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of removeAllSignatures method
    // Removes all signatures of the document.
    public func removeAllSignatures(request : RemoveAllSignaturesRequest) throws -> SignatureCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SignatureCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.removeAllSignatures(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of removeAllSignaturesOnline method
    // Removes all signatures of the document.
    public func removeAllSignaturesOnline(request : RemoveAllSignaturesOnlineRequest, callback : @escaping (_ response : RemoveAllSignaturesOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RemoveAllSignaturesOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of removeAllSignaturesOnline method
    // Removes all signatures of the document.
    public func removeAllSignaturesOnline(request : RemoveAllSignaturesOnlineRequest) throws -> RemoveAllSignaturesOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RemoveAllSignaturesOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.removeAllSignaturesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of removeRange method
    // Removes a range from the document.
    public func removeRange(request : RemoveRangeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of removeRange method
    // Removes a range from the document.
    public func removeRange(request : RemoveRangeRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.removeRange(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of removeRangeOnline method
    // Removes a range from the document.
    public func removeRangeOnline(request : RemoveRangeOnlineRequest, callback : @escaping (_ response : RemoveRangeOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RemoveRangeOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of removeRangeOnline method
    // Removes a range from the document.
    public func removeRangeOnline(request : RemoveRangeOnlineRequest) throws -> RemoveRangeOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RemoveRangeOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.removeRangeOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderDrawingObject method
    // Renders a DrawingObject to the specified format.
    public func renderDrawingObject(request : RenderDrawingObjectRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderDrawingObject method
    // Renders a DrawingObject to the specified format.
    public func renderDrawingObject(request : RenderDrawingObjectRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderDrawingObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderDrawingObjectOnline method
    // Renders a DrawingObject to the specified format.
    public func renderDrawingObjectOnline(request : RenderDrawingObjectOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderDrawingObjectOnline method
    // Renders a DrawingObject to the specified format.
    public func renderDrawingObjectOnline(request : RenderDrawingObjectOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderDrawingObjectOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderMathObject method
    // Renders an OfficeMath object to the specified format.
    public func renderMathObject(request : RenderMathObjectRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderMathObject method
    // Renders an OfficeMath object to the specified format.
    public func renderMathObject(request : RenderMathObjectRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderMathObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderMathObjectOnline method
    // Renders an OfficeMath object to the specified format.
    public func renderMathObjectOnline(request : RenderMathObjectOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderMathObjectOnline method
    // Renders an OfficeMath object to the specified format.
    public func renderMathObjectOnline(request : RenderMathObjectOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderMathObjectOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderPage method
    // Renders a page to the specified format.
    public func renderPage(request : RenderPageRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderPage method
    // Renders a page to the specified format.
    public func renderPage(request : RenderPageRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderPage(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderPageOnline method
    // Renders a page to the specified format.
    public func renderPageOnline(request : RenderPageOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderPageOnline method
    // Renders a page to the specified format.
    public func renderPageOnline(request : RenderPageOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderPageOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderParagraph method
    // Renders a paragraph to the specified format.
    public func renderParagraph(request : RenderParagraphRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderParagraph method
    // Renders a paragraph to the specified format.
    public func renderParagraph(request : RenderParagraphRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderParagraph(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderParagraphOnline method
    // Renders a paragraph to the specified format.
    public func renderParagraphOnline(request : RenderParagraphOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderParagraphOnline method
    // Renders a paragraph to the specified format.
    public func renderParagraphOnline(request : RenderParagraphOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderParagraphOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderTable method
    // Renders a table to the specified format.
    public func renderTable(request : RenderTableRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderTable method
    // Renders a table to the specified format.
    public func renderTable(request : RenderTableRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderTable(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderTableOnline method
    // Renders a table to the specified format.
    public func renderTableOnline(request : RenderTableOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? Data, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderTableOnline method
    // Renders a table to the specified format.
    public func renderTableOnline(request : RenderTableOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderTableOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of replaceText method
    // Replaces text in the document.
    public func replaceText(request : ReplaceTextRequest, callback : @escaping (_ response : ReplaceTextResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ReplaceTextResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of replaceText method
    // Replaces text in the document.
    public func replaceText(request : ReplaceTextRequest) throws -> ReplaceTextResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ReplaceTextResponse? = nil;
        var responseError : Error? = nil;
        self.replaceText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of replaceTextOnline method
    // Replaces text in the document.
    public func replaceTextOnline(request : ReplaceTextOnlineRequest, callback : @escaping (_ response : ReplaceTextOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ReplaceTextOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of replaceTextOnline method
    // Replaces text in the document.
    public func replaceTextOnline(request : ReplaceTextOnlineRequest) throws -> ReplaceTextOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ReplaceTextOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.replaceTextOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of replaceWithText method
    // Replaces a range with text in the document.
    public func replaceWithText(request : ReplaceWithTextRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of replaceWithText method
    // Replaces a range with text in the document.
    public func replaceWithText(request : ReplaceWithTextRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.replaceWithText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of replaceWithTextOnline method
    // Replaces a range with text in the document.
    public func replaceWithTextOnline(request : ReplaceWithTextOnlineRequest, callback : @escaping (_ response : ReplaceWithTextOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ReplaceWithTextOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of replaceWithTextOnline method
    // Replaces a range with text in the document.
    public func replaceWithTextOnline(request : ReplaceWithTextOnlineRequest) throws -> ReplaceWithTextOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ReplaceWithTextOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.replaceWithTextOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of resetCache method
    // Clears the font cache.
    public func resetCache(request : ResetCacheRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of resetCache method
    // Clears the font cache.
    public func resetCache(request : ResetCacheRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.resetCache(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of saveAs method
    // Converts a document in cloud storage to the specified format.
    public func saveAs(request : SaveAsRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SaveResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of saveAs method
    // Converts a document in cloud storage to the specified format.
    public func saveAs(request : SaveAsRequest) throws -> SaveResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveResponse? = nil;
        var responseError : Error? = nil;
        self.saveAs(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of saveAsOnline method
    // Converts a document in cloud storage to the specified format.
    public func saveAsOnline(request : SaveAsOnlineRequest, callback : @escaping (_ response : SaveAsOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SaveAsOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of saveAsOnline method
    // Converts a document in cloud storage to the specified format.
    public func saveAsOnline(request : SaveAsOnlineRequest) throws -> SaveAsOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveAsOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.saveAsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of saveAsRange method
    // Saves a range as a new document.
    public func saveAsRange(request : SaveAsRangeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of saveAsRange method
    // Saves a range as a new document.
    public func saveAsRange(request : SaveAsRangeRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.saveAsRange(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of saveAsRangeOnline method
    // Saves a range as a new document.
    public func saveAsRangeOnline(request : SaveAsRangeOnlineRequest, callback : @escaping (_ response : SaveAsRangeOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SaveAsRangeOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of saveAsRangeOnline method
    // Saves a range as a new document.
    public func saveAsRangeOnline(request : SaveAsRangeOnlineRequest) throws -> SaveAsRangeOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveAsRangeOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.saveAsRangeOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of saveAsTiff method
    // Converts a document in cloud storage to TIFF format using detailed conversion settings.
    @available(*, deprecated, message: "This operation will be removed in the future.")
    public func saveAsTiff(request : SaveAsTiffRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SaveResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of saveAsTiff method
    // Converts a document in cloud storage to TIFF format using detailed conversion settings.
    @available(*, deprecated, message: "This operation will be removed in the future.")
    public func saveAsTiff(request : SaveAsTiffRequest) throws -> SaveResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveResponse? = nil;
        var responseError : Error? = nil;
        self.saveAsTiff(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of saveAsTiffOnline method
    // Converts a document in cloud storage to TIFF format using detailed conversion settings.
    @available(*, deprecated, message: "This operation will be removed in the future.")
    public func saveAsTiffOnline(request : SaveAsTiffOnlineRequest, callback : @escaping (_ response : SaveAsTiffOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SaveAsTiffOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of saveAsTiffOnline method
    // Converts a document in cloud storage to TIFF format using detailed conversion settings.
    @available(*, deprecated, message: "This operation will be removed in the future.")
    public func saveAsTiffOnline(request : SaveAsTiffOnlineRequest) throws -> SaveAsTiffOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveAsTiffOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.saveAsTiffOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of search method
    // Searches text, specified by the regular expression, in the document.
    public func search(request : SearchRequest, callback : @escaping (_ response : SearchResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SearchResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of search method
    // Searches text, specified by the regular expression, in the document.
    public func search(request : SearchRequest) throws -> SearchResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SearchResponse? = nil;
        var responseError : Error? = nil;
        self.search(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of searchOnline method
    // Searches text, specified by the regular expression, in the document.
    public func searchOnline(request : SearchOnlineRequest, callback : @escaping (_ response : SearchResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SearchResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of searchOnline method
    // Searches text, specified by the regular expression, in the document.
    public func searchOnline(request : SearchOnlineRequest) throws -> SearchResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SearchResponse? = nil;
        var responseError : Error? = nil;
        self.searchOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of signDocument method
    // Signs the document with given certificate.
    public func signDocument(request : SignDocumentRequest, callback : @escaping (_ response : SignatureCollectionResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SignatureCollectionResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of signDocument method
    // Signs the document with given certificate.
    public func signDocument(request : SignDocumentRequest) throws -> SignatureCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SignatureCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.signDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of signDocumentOnline method
    // Signs the document with given certificate.
    public func signDocumentOnline(request : SignDocumentOnlineRequest, callback : @escaping (_ response : SignDocumentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SignDocumentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of signDocumentOnline method
    // Signs the document with given certificate.
    public func signDocumentOnline(request : SignDocumentOnlineRequest) throws -> SignDocumentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SignDocumentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.signDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of splitDocument method
    // Splits a document into parts and saves them in the specified format.
    public func splitDocument(request : SplitDocumentRequest, callback : @escaping (_ response : SplitDocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SplitDocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of splitDocument method
    // Splits a document into parts and saves them in the specified format.
    public func splitDocument(request : SplitDocumentRequest) throws -> SplitDocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SplitDocumentResponse? = nil;
        var responseError : Error? = nil;
        self.splitDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of splitDocumentOnline method
    // Splits a document into parts and saves them in the specified format.
    public func splitDocumentOnline(request : SplitDocumentOnlineRequest, callback : @escaping (_ response : SplitDocumentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SplitDocumentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of splitDocumentOnline method
    // Splits a document into parts and saves them in the specified format.
    public func splitDocumentOnline(request : SplitDocumentOnlineRequest) throws -> SplitDocumentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SplitDocumentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.splitDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of translateNodeId method
    // Translate a node id to a node path.
    public func translateNodeId(request : TranslateNodeIdRequest, callback : @escaping (_ response : TranslateNodeIdResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TranslateNodeIdResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of translateNodeId method
    // Translate a node id to a node path.
    public func translateNodeId(request : TranslateNodeIdRequest) throws -> TranslateNodeIdResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TranslateNodeIdResponse? = nil;
        var responseError : Error? = nil;
        self.translateNodeId(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of translateNodeIdOnline method
    // Translate a node id to a node path.
    public func translateNodeIdOnline(request : TranslateNodeIdOnlineRequest, callback : @escaping (_ response : TranslateNodeIdResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TranslateNodeIdResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of translateNodeIdOnline method
    // Translate a node id to a node path.
    public func translateNodeIdOnline(request : TranslateNodeIdOnlineRequest) throws -> TranslateNodeIdResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TranslateNodeIdResponse? = nil;
        var responseError : Error? = nil;
        self.translateNodeIdOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of unprotectDocument method
    // Removes protection from the document.
    public func unprotectDocument(request : UnprotectDocumentRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ProtectionDataResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of unprotectDocument method
    // Removes protection from the document.
    public func unprotectDocument(request : UnprotectDocumentRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.unprotectDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of unprotectDocumentOnline method
    // Removes protection from the document.
    public func unprotectDocumentOnline(request : UnprotectDocumentOnlineRequest, callback : @escaping (_ response : UnprotectDocumentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UnprotectDocumentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of unprotectDocumentOnline method
    // Removes protection from the document.
    public func unprotectDocumentOnline(request : UnprotectDocumentOnlineRequest) throws -> UnprotectDocumentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UnprotectDocumentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.unprotectDocumentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateBookmark method
    // Updates a bookmark in the document.
    public func updateBookmark(request : UpdateBookmarkRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BookmarkResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateBookmark method
    // Updates a bookmark in the document.
    public func updateBookmark(request : UpdateBookmarkRequest) throws -> BookmarkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarkResponse? = nil;
        var responseError : Error? = nil;
        self.updateBookmark(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateBookmarkOnline method
    // Updates a bookmark in the document.
    public func updateBookmarkOnline(request : UpdateBookmarkOnlineRequest, callback : @escaping (_ response : UpdateBookmarkOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateBookmarkOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateBookmarkOnline method
    // Updates a bookmark in the document.
    public func updateBookmarkOnline(request : UpdateBookmarkOnlineRequest) throws -> UpdateBookmarkOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateBookmarkOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateBookmarkOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateBorder method
    // Updates a border in the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func updateBorder(request : UpdateBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? BorderResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateBorder method
    // Updates a border in the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func updateBorder(request : UpdateBorderRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.updateBorder(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateBorderOnline method
    // Updates a border in the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func updateBorderOnline(request : UpdateBorderOnlineRequest, callback : @escaping (_ response : UpdateBorderOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateBorderOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateBorderOnline method
    // Updates a border in the document node.
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func updateBorderOnline(request : UpdateBorderOnlineRequest) throws -> UpdateBorderOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateBorderOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateBorderOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateComment method
    // Updates a comment in the document.
    public func updateComment(request : UpdateCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CommentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateComment method
    // Updates a comment in the document.
    public func updateComment(request : UpdateCommentRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.updateComment(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateCommentOnline method
    // Updates a comment in the document.
    public func updateCommentOnline(request : UpdateCommentOnlineRequest, callback : @escaping (_ response : UpdateCommentOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateCommentOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateCommentOnline method
    // Updates a comment in the document.
    public func updateCommentOnline(request : UpdateCommentOnlineRequest) throws -> UpdateCommentOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateCommentOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateCommentOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateCustomXmlPart method
    // Updates the custom xml part in the document.
    public func updateCustomXmlPart(request : UpdateCustomXmlPartRequest, callback : @escaping (_ response : CustomXmlPartResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? CustomXmlPartResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateCustomXmlPart method
    // Updates the custom xml part in the document.
    public func updateCustomXmlPart(request : UpdateCustomXmlPartRequest) throws -> CustomXmlPartResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CustomXmlPartResponse? = nil;
        var responseError : Error? = nil;
        self.updateCustomXmlPart(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateCustomXmlPartOnline method
    // Updates the custom xml part in the document.
    public func updateCustomXmlPartOnline(request : UpdateCustomXmlPartOnlineRequest, callback : @escaping (_ response : UpdateCustomXmlPartOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateCustomXmlPartOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateCustomXmlPartOnline method
    // Updates the custom xml part in the document.
    public func updateCustomXmlPartOnline(request : UpdateCustomXmlPartOnlineRequest) throws -> UpdateCustomXmlPartOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateCustomXmlPartOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateCustomXmlPartOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateDrawingObject method
    // Updates a DrawingObject in the document node.
    public func updateDrawingObject(request : UpdateDrawingObjectRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DrawingObjectResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateDrawingObject method
    // Updates a DrawingObject in the document node.
    public func updateDrawingObject(request : UpdateDrawingObjectRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.updateDrawingObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateDrawingObjectOnline method
    // Updates a DrawingObject in the document node.
    public func updateDrawingObjectOnline(request : UpdateDrawingObjectOnlineRequest, callback : @escaping (_ response : UpdateDrawingObjectOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateDrawingObjectOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateDrawingObjectOnline method
    // Updates a DrawingObject in the document node.
    public func updateDrawingObjectOnline(request : UpdateDrawingObjectOnlineRequest) throws -> UpdateDrawingObjectOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateDrawingObjectOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateDrawingObjectOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateField method
    // Updates a field in the document node.
    public func updateField(request : UpdateFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FieldResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateField method
    // Updates a field in the document node.
    public func updateField(request : UpdateFieldRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.updateField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFieldOnline method
    // Updates a field in the document node.
    public func updateFieldOnline(request : UpdateFieldOnlineRequest, callback : @escaping (_ response : UpdateFieldOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateFieldOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFieldOnline method
    // Updates a field in the document node.
    public func updateFieldOnline(request : UpdateFieldOnlineRequest) throws -> UpdateFieldOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateFieldOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateFieldOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFields method
    // Reevaluates field values in the document.
    public func updateFields(request : UpdateFieldsRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? DocumentResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFields method
    // Reevaluates field values in the document.
    public func updateFields(request : UpdateFieldsRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.updateFields(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFieldsOnline method
    // Reevaluates field values in the document.
    public func updateFieldsOnline(request : UpdateFieldsOnlineRequest, callback : @escaping (_ response : UpdateFieldsOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateFieldsOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFieldsOnline method
    // Reevaluates field values in the document.
    public func updateFieldsOnline(request : UpdateFieldsOnlineRequest) throws -> UpdateFieldsOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateFieldsOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateFieldsOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFootnote method
    // Updates a footnote in the document node.
    public func updateFootnote(request : UpdateFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FootnoteResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFootnote method
    // Updates a footnote in the document node.
    public func updateFootnote(request : UpdateFootnoteRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.updateFootnote(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFootnoteOnline method
    // Updates a footnote in the document node.
    public func updateFootnoteOnline(request : UpdateFootnoteOnlineRequest, callback : @escaping (_ response : UpdateFootnoteOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateFootnoteOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFootnoteOnline method
    // Updates a footnote in the document node.
    public func updateFootnoteOnline(request : UpdateFootnoteOnlineRequest) throws -> UpdateFootnoteOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateFootnoteOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateFootnoteOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFormField method
    // Updates a form field in the document node.
    public func updateFormField(request : UpdateFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FormFieldResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFormField method
    // Updates a form field in the document node.
    public func updateFormField(request : UpdateFormFieldRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.updateFormField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFormFieldOnline method
    // Updates a form field in the document node.
    public func updateFormFieldOnline(request : UpdateFormFieldOnlineRequest, callback : @escaping (_ response : UpdateFormFieldOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateFormFieldOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFormFieldOnline method
    // Updates a form field in the document node.
    public func updateFormFieldOnline(request : UpdateFormFieldOnlineRequest) throws -> UpdateFormFieldOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateFormFieldOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateFormFieldOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateList method
    // Updates a list in the document.
    public func updateList(request : UpdateListRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ListResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateList method
    // Updates a list in the document.
    public func updateList(request : UpdateListRequest) throws -> ListResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListResponse? = nil;
        var responseError : Error? = nil;
        self.updateList(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateListLevel method
    // Updates the level of a List element in the document.
    public func updateListLevel(request : UpdateListLevelRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ListResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateListLevel method
    // Updates the level of a List element in the document.
    public func updateListLevel(request : UpdateListLevelRequest) throws -> ListResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListResponse? = nil;
        var responseError : Error? = nil;
        self.updateListLevel(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateListLevelOnline method
    // Updates the level of a List element in the document.
    public func updateListLevelOnline(request : UpdateListLevelOnlineRequest, callback : @escaping (_ response : UpdateListLevelOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateListLevelOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateListLevelOnline method
    // Updates the level of a List element in the document.
    public func updateListLevelOnline(request : UpdateListLevelOnlineRequest) throws -> UpdateListLevelOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateListLevelOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateListLevelOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateListOnline method
    // Updates a list in the document.
    public func updateListOnline(request : UpdateListOnlineRequest, callback : @escaping (_ response : UpdateListOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateListOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateListOnline method
    // Updates a list in the document.
    public func updateListOnline(request : UpdateListOnlineRequest) throws -> UpdateListOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateListOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateListOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateParagraphFormat method
    // Updates the formatting properties of a paragraph in the document node.
    public func updateParagraphFormat(request : UpdateParagraphFormatRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateParagraphFormat method
    // Updates the formatting properties of a paragraph in the document node.
    public func updateParagraphFormat(request : UpdateParagraphFormatRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateParagraphFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateParagraphFormatOnline method
    // Updates the formatting properties of a paragraph in the document node.
    public func updateParagraphFormatOnline(request : UpdateParagraphFormatOnlineRequest, callback : @escaping (_ response : UpdateParagraphFormatOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateParagraphFormatOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateParagraphFormatOnline method
    // Updates the formatting properties of a paragraph in the document node.
    public func updateParagraphFormatOnline(request : UpdateParagraphFormatOnlineRequest) throws -> UpdateParagraphFormatOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateParagraphFormatOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateParagraphFormatOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateParagraphListFormat method
    // Updates the formatting properties of a paragraph list in the document node.
    public func updateParagraphListFormat(request : UpdateParagraphListFormatRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? ParagraphListFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateParagraphListFormat method
    // Updates the formatting properties of a paragraph list in the document node.
    public func updateParagraphListFormat(request : UpdateParagraphListFormatRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateParagraphListFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateParagraphListFormatOnline method
    // Updates the formatting properties of a paragraph list in the document node.
    public func updateParagraphListFormatOnline(request : UpdateParagraphListFormatOnlineRequest, callback : @escaping (_ response : UpdateParagraphListFormatOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateParagraphListFormatOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateParagraphListFormatOnline method
    // Updates the formatting properties of a paragraph list in the document node.
    public func updateParagraphListFormatOnline(request : UpdateParagraphListFormatOnlineRequest) throws -> UpdateParagraphListFormatOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateParagraphListFormatOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateParagraphListFormatOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateRun method
    // Updates a Run object in the paragraph.
    public func updateRun(request : UpdateRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? RunResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateRun method
    // Updates a Run object in the paragraph.
    public func updateRun(request : UpdateRunRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.updateRun(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateRunFont method
    // Updates the font properties of a Run object in the paragraph.
    public func updateRunFont(request : UpdateRunFontRequest, callback : @escaping (_ response : FontResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FontResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateRunFont method
    // Updates the font properties of a Run object in the paragraph.
    public func updateRunFont(request : UpdateRunFontRequest) throws -> FontResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FontResponse? = nil;
        var responseError : Error? = nil;
        self.updateRunFont(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateRunFontOnline method
    // Updates the font properties of a Run object in the paragraph.
    public func updateRunFontOnline(request : UpdateRunFontOnlineRequest, callback : @escaping (_ response : UpdateRunFontOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateRunFontOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateRunFontOnline method
    // Updates the font properties of a Run object in the paragraph.
    public func updateRunFontOnline(request : UpdateRunFontOnlineRequest) throws -> UpdateRunFontOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateRunFontOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateRunFontOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateRunOnline method
    // Updates a Run object in the paragraph.
    public func updateRunOnline(request : UpdateRunOnlineRequest, callback : @escaping (_ response : UpdateRunOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateRunOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateRunOnline method
    // Updates a Run object in the paragraph.
    public func updateRunOnline(request : UpdateRunOnlineRequest) throws -> UpdateRunOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateRunOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateRunOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateSectionPageSetup method
    // Updates the page setup of a section in the document.
    public func updateSectionPageSetup(request : UpdateSectionPageSetupRequest, callback : @escaping (_ response : SectionPageSetupResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? SectionPageSetupResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateSectionPageSetup method
    // Updates the page setup of a section in the document.
    public func updateSectionPageSetup(request : UpdateSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionPageSetupResponse? = nil;
        var responseError : Error? = nil;
        self.updateSectionPageSetup(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateSectionPageSetupOnline method
    // Updates the page setup of a section in the document.
    public func updateSectionPageSetupOnline(request : UpdateSectionPageSetupOnlineRequest, callback : @escaping (_ response : UpdateSectionPageSetupOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateSectionPageSetupOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateSectionPageSetupOnline method
    // Updates the page setup of a section in the document.
    public func updateSectionPageSetupOnline(request : UpdateSectionPageSetupOnlineRequest) throws -> UpdateSectionPageSetupOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateSectionPageSetupOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateSectionPageSetupOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateStructuredDocumentTag method
    // Updates a StructuredDocumentTag (SDT) in the document node.
    public func updateStructuredDocumentTag(request : UpdateStructuredDocumentTagRequest, callback : @escaping (_ response : StructuredDocumentTagResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StructuredDocumentTagResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateStructuredDocumentTag method
    // Updates a StructuredDocumentTag (SDT) in the document node.
    public func updateStructuredDocumentTag(request : UpdateStructuredDocumentTagRequest) throws -> StructuredDocumentTagResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StructuredDocumentTagResponse? = nil;
        var responseError : Error? = nil;
        self.updateStructuredDocumentTag(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateStructuredDocumentTagOnline method
    // Updates a StructuredDocumentTag (SDT) in the document node.
    public func updateStructuredDocumentTagOnline(request : UpdateStructuredDocumentTagOnlineRequest, callback : @escaping (_ response : UpdateStructuredDocumentTagOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateStructuredDocumentTagOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateStructuredDocumentTagOnline method
    // Updates a StructuredDocumentTag (SDT) in the document node.
    public func updateStructuredDocumentTagOnline(request : UpdateStructuredDocumentTagOnlineRequest) throws -> UpdateStructuredDocumentTagOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateStructuredDocumentTagOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateStructuredDocumentTagOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateStyle method
    // Updates a style in the document.
    public func updateStyle(request : UpdateStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? StyleResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateStyle method
    // Updates a style in the document.
    public func updateStyle(request : UpdateStyleRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.updateStyle(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateStyleOnline method
    // Updates a style in the document.
    public func updateStyleOnline(request : UpdateStyleOnlineRequest, callback : @escaping (_ response : UpdateStyleOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateStyleOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateStyleOnline method
    // Updates a style in the document.
    public func updateStyleOnline(request : UpdateStyleOnlineRequest) throws -> UpdateStyleOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateStyleOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateStyleOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTableCellFormat method
    // Updates the formatting properties of a cell in the table row.
    public func updateTableCellFormat(request : UpdateTableCellFormatRequest, callback : @escaping (_ response : TableCellFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableCellFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTableCellFormat method
    // Updates the formatting properties of a cell in the table row.
    public func updateTableCellFormat(request : UpdateTableCellFormatRequest) throws -> TableCellFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableCellFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTableCellFormatOnline method
    // Updates the formatting properties of a cell in the table row.
    public func updateTableCellFormatOnline(request : UpdateTableCellFormatOnlineRequest, callback : @escaping (_ response : UpdateTableCellFormatOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateTableCellFormatOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTableCellFormatOnline method
    // Updates the formatting properties of a cell in the table row.
    public func updateTableCellFormatOnline(request : UpdateTableCellFormatOnlineRequest) throws -> UpdateTableCellFormatOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateTableCellFormatOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableCellFormatOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTableProperties method
    // Updates properties of a table in the document node.
    public func updateTableProperties(request : UpdateTablePropertiesRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TablePropertiesResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTableProperties method
    // Updates properties of a table in the document node.
    public func updateTableProperties(request : UpdateTablePropertiesRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableProperties(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTablePropertiesOnline method
    // Updates properties of a table in the document node.
    public func updateTablePropertiesOnline(request : UpdateTablePropertiesOnlineRequest, callback : @escaping (_ response : UpdateTablePropertiesOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateTablePropertiesOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTablePropertiesOnline method
    // Updates properties of a table in the document node.
    public func updateTablePropertiesOnline(request : UpdateTablePropertiesOnlineRequest) throws -> UpdateTablePropertiesOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateTablePropertiesOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateTablePropertiesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTableRowFormat method
    // Updates the formatting properties of a table row.
    public func updateTableRowFormat(request : UpdateTableRowFormatRequest, callback : @escaping (_ response : TableRowFormatResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? TableRowFormatResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTableRowFormat method
    // Updates the formatting properties of a table row.
    public func updateTableRowFormat(request : UpdateTableRowFormatRequest) throws -> TableRowFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableRowFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTableRowFormatOnline method
    // Updates the formatting properties of a table row.
    public func updateTableRowFormatOnline(request : UpdateTableRowFormatOnlineRequest, callback : @escaping (_ response : UpdateTableRowFormatOnlineResponse?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? UpdateTableRowFormatOnlineResponse, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTableRowFormatOnline method
    // Updates the formatting properties of a table row.
    public func updateTableRowFormatOnline(request : UpdateTableRowFormatOnlineRequest) throws -> UpdateTableRowFormatOnlineResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : UpdateTableRowFormatOnlineResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableRowFormatOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of uploadFile method
    // Upload file.
    public func uploadFile(request : UploadFileRequest, callback : @escaping (_ response : FilesUploadResult?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
    #if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
    #else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
    #endif
            }

            apiInvoker!.invoke(
                apiRequestData: try request.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration),
                callback: { response, headers, error in
                    if (error != nil) {
                        callback(nil, error);
                    }
                    else {
                        do {
                            callback(try request.deserializeResponse(data: response!, headers: headers) as? FilesUploadResult, nil);
                        }
                        catch let deserializeError {
                            callback(nil, deserializeError);
                        }
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of uploadFile method
    // Upload file.
    public func uploadFile(request : UploadFileRequest) throws -> FilesUploadResult {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FilesUploadResult? = nil;
        var responseError : Error? = nil;
        self.uploadFile(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of batch method
    public func batch(requests : [BatchRequest], displayIntermediateResults : Bool = true, callback : @escaping (_ response : [Any?]?, _ error : Error?) -> ()) {
        do {
            if (self.apiInvoker == nil) {
#if os(Linux)
                self.apiInvoker = ApiInvoker(configuration: configuration);
#else
                self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
#endif
            }

            let apiRequestData = try requests.map { try $0.createApiRequestData(apiInvoker: self.apiInvoker!, configuration: self.configuration) };
            let formParams = try apiRequestData.map { RequestFormParam(name: nil, body: try $0.toBatchPart(configuration: self.configuration), contentType: "application/http; msgtype=request") };
            let apiBatchUrl = (try self.configuration.getApiRootUrl()).appendingPathComponent("/words/batch");
            var urlBuilder = URLComponents(url: apiBatchUrl, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "displayIntermediateResults", value: try ObjectSerializer.serializeToString(value: displayIntermediateResults)));
            urlBuilder.queryItems = queryItems;

            var apiBatchRequestData = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
            apiBatchRequestData.setBody(formParams: formParams);
            apiInvoker!.invoke(
                apiRequestData: apiBatchRequestData,
                callback: { response, headers, error in
                    if (response != nil) {
                        do {
                            let parts = try ObjectSerializer.parseMultipart(data: response!);
                            let sortedRequests = requests.reduce(into: [String: WordsApiRequest]()) {
                                $0[$1.getRequestId()] = $1.getRequest()
                            }

                            var result = [Any?]();
                            for partData in parts {
                                let requestId = partData.getHeaders()["RequestId"];
                                if (requestId == nil || sortedRequests[requestId!] == nil) {
                                    throw WordsApiError.invalidMultipartResponse(message: "Failed to parse batch response.");
                                }

                                result.append(try ObjectSerializer.deserializeBatchPart(request: sortedRequests[requestId!]!, partData: partData));
                            }

                            callback(result, nil);
                        }
                        catch let error {
                            callback(nil, error);
                        }
                    }
                    else {
                        callback(nil, error);
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    public func batch(requests : [BatchRequest], displayIntermediateResults : Bool = true) throws -> [Any?] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [Any?]? = nil;
        var responseError : Error? = nil;
        self.batch(requests : requests, displayIntermediateResults : displayIntermediateResults, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }

        return responseObject!;
    }

#if os(Linux)    
    public func encrypt(data : String) throws -> String {
        throw WordsApiError.notSupportedMethod(methodName: "encrypt");
    }
#else    
    // Encrypt string data
    public func encrypt(data : String) throws -> String {
        if (encryptionKey == nil) {

            var modulus = self.configuration.getRsaModulus();
            var exponent = self.configuration.getRsaExponent();

            if (modulus == nil || exponent == nil) {
                let response = try getPublicKey(request: GetPublicKeyRequest());
                exponent = response.getExponent();
                modulus = response.getModulus();
            }

            try setEncryptionData(exponent: exponent!, modulus: modulus!);
        }

        let buffer = data.data(using: .utf8)!;
        var error: Unmanaged<CFError>? = nil;

        // Encryptor should less than key length
        let secData = SecKeyCreateEncryptedData(encryptionKey!, .rsaEncryptionPKCS1, buffer as CFData, &error)!;
        var secBuffer = [UInt8](repeating: 0, count: CFDataGetLength(secData));
        CFDataGetBytes(secData, CFRangeMake(0, CFDataGetLength(secData)), &secBuffer);
        return Data(bytes: secBuffer).base64EncodedString().replacingOccurrences(of: "+", with: "%2B").replacingOccurrences(of: "/", with: "%2F");      
    }

    private func setEncryptionData(exponent: String, modulus: String) throws {
        if (self.apiInvoker == nil) {
#if os(Linux)
            self.apiInvoker = ApiInvoker(configuration: configuration);
#else
            self.apiInvoker = ApiInvoker(configuration: configuration, encryptor: self);
#endif
        }

        let exponent = Data(base64Encoded: exponent)!;
        let modulus = Data(base64Encoded: modulus)!;
        let exponentBytes = [UInt8](exponent);
        var modulusBytes = [UInt8](modulus);
        modulusBytes.insert(0x00, at: 0);

        var modulusEncoded: [UInt8] = [];
        modulusEncoded.append(0x02);
        modulusEncoded.append(contentsOf: apiInvoker!.lengthField(of: modulusBytes));
        modulusEncoded.append(contentsOf: modulusBytes);

        var exponentEncoded: [UInt8] = [];
        exponentEncoded.append(0x02);
        exponentEncoded.append(contentsOf: apiInvoker!.lengthField(of: exponentBytes));
        exponentEncoded.append(contentsOf: exponentBytes);

        var sequenceEncoded: [UInt8] = [];
        sequenceEncoded.append(0x30);
        sequenceEncoded.append(contentsOf: apiInvoker!.lengthField(of: (modulusEncoded + exponentEncoded)));
        sequenceEncoded.append(contentsOf: (modulusEncoded + exponentEncoded));

        let keyData = Data(bytes: sequenceEncoded);
        let keySize = (modulusBytes.count * 8);

        let attributes: [String: Any] = [
            kSecAttrKeyType as String: kSecAttrKeyTypeRSA,
            kSecAttrKeyClass as String: kSecAttrKeyClassPublic,
            kSecAttrKeySizeInBits as String: keySize
        ];

        encryptionKey = SecKeyCreateWithData(keyData as CFData, attributes as CFDictionary, nil);
    }
#endif

    public func isEncryptionAllowed() -> Bool {
#if os(Linux)
        return false;
#else
        return true;
#endif
    }
}
