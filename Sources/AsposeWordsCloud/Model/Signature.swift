/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Signature.swift">
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

// The REST response with a document signature collection.
// This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
public class Signature : Codable, WordsApiModel {
    // Field of comments. The REST response with a document signature collection. This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
    private var _comments : String? = nil;

    public var comments : String? {
        get {
            return self._comments;
        }
        set {
            self._comments = newValue;
        }
    }

    // Field of issuerName. The REST response with a document signature collection. This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
    private var _issuerName : String? = nil;

    public var issuerName : String? {
        get {
            return self._issuerName;
        }
        set {
            self._issuerName = newValue;
        }
    }

    // Field of isValid. The REST response with a document signature collection. This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
    private var _isValid : Bool? = nil;

    public var isValid : Bool? {
        get {
            return self._isValid;
        }
        set {
            self._isValid = newValue;
        }
    }

    // Field of signatureType. The REST response with a document signature collection. This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
    private var _signatureType : String? = nil;

    public var signatureType : String? {
        get {
            return self._signatureType;
        }
        set {
            self._signatureType = newValue;
        }
    }

    // Field of signatureValue. The REST response with a document signature collection. This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
    private var _signatureValue : String? = nil;

    public var signatureValue : String? {
        get {
            return self._signatureValue;
        }
        set {
            self._signatureValue = newValue;
        }
    }

    // Field of signTime. The REST response with a document signature collection. This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
    private var _signTime : Date? = nil;

    public var signTime : Date? {
        get {
            return self._signTime;
        }
        set {
            self._signTime = newValue;
        }
    }

    // Field of subjectName. The REST response with a document signature collection. This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
    private var _subjectName : String? = nil;

    public var subjectName : String? {
        get {
            return self._subjectName;
        }
        set {
            self._subjectName = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case comments = "Comments";
        case issuerName = "IssuerName";
        case isValid = "IsValid";
        case signatureType = "SignatureType";
        case signatureValue = "SignatureValue";
        case signTime = "SignTime";
        case subjectName = "SubjectName";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.comments = json["Comments"] as? String;
        self.issuerName = json["IssuerName"] as? String;
        self.isValid = json["IsValid"] as? Bool;
        self.signatureType = json["SignatureType"] as? String;
        self.signatureValue = json["SignatureValue"] as? String;
        if let raw_signTime = json["SignTime"] as? String {
            self.signTime = ObjectSerializer.customIso8601.date(from: raw_signTime);
        }

        self.subjectName = json["SubjectName"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments);
        self.issuerName = try container.decodeIfPresent(String.self, forKey: .issuerName);
        self.isValid = try container.decodeIfPresent(Bool.self, forKey: .isValid);
        self.signatureType = try container.decodeIfPresent(String.self, forKey: .signatureType);
        self.signatureValue = try container.decodeIfPresent(String.self, forKey: .signatureValue);
        var raw_signTime = try container.decodeIfPresent(String.self, forKey: .signTime);
        if (raw_signTime != nil) {
            raw_signTime = raw_signTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.signTime = ObjectSerializer.customIso8601.date(from: raw_signTime!)!;
        }

        self.subjectName = try container.decodeIfPresent(String.self, forKey: .subjectName);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.comments != nil) {
            try container.encode(self.comments, forKey: .comments);
        }
        if (self.issuerName != nil) {
            try container.encode(self.issuerName, forKey: .issuerName);
        }
        if (self.isValid != nil) {
            try container.encode(self.isValid, forKey: .isValid);
        }
        if (self.signatureType != nil) {
            try container.encode(self.signatureType, forKey: .signatureType);
        }
        if (self.signatureValue != nil) {
            try container.encode(self.signatureValue, forKey: .signatureValue);
        }
        if (self.signTime != nil) {
            try container.encode(self.signTime, forKey: .signTime);
        }
        if (self.subjectName != nil) {
            try container.encode(self.subjectName, forKey: .subjectName);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.isValid == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isValid");
        }
        if (self.signTime == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "signTime");
        }
    }

    // Sets comments. Gets or sets the signing purpose comment.
    public func setComments(comments : String?) -> Signature {
        self.comments = comments;
        return self;
    }

    // Gets comments. Gets or sets the signing purpose comment.
    public func getComments() -> String? {
        return self.comments;
    }


    // Sets issuerName. Gets or sets the subject distinguished name of the certificate issuer.
    public func setIssuerName(issuerName : String?) -> Signature {
        self.issuerName = issuerName;
        return self;
    }

    // Gets issuerName. Gets or sets the subject distinguished name of the certificate issuer.
    public func getIssuerName() -> String? {
        return self.issuerName;
    }


    // Sets isValid. Gets or sets a value indicating whether this digital signature is valid.
    public func setIsValid(isValid : Bool?) -> Signature {
        self.isValid = isValid;
        return self;
    }

    // Gets isValid. Gets or sets a value indicating whether this digital signature is valid.
    public func getIsValid() -> Bool? {
        return self.isValid;
    }


    // Sets signatureType. Gets or sets the type of the digital signature.
    public func setSignatureType(signatureType : String?) -> Signature {
        self.signatureType = signatureType;
        return self;
    }

    // Gets signatureType. Gets or sets the type of the digital signature.
    public func getSignatureType() -> String? {
        return self.signatureType;
    }


    // Sets signatureValue. Gets or sets an array of bytes representing a signature value as base64 string.
    public func setSignatureValue(signatureValue : String?) -> Signature {
        self.signatureValue = signatureValue;
        return self;
    }

    // Gets signatureValue. Gets or sets an array of bytes representing a signature value as base64 string.
    public func getSignatureValue() -> String? {
        return self.signatureValue;
    }


    // Sets signTime. Gets or sets the time the document was signed.
    public func setSignTime(signTime : Date?) -> Signature {
        self.signTime = signTime;
        return self;
    }

    // Gets signTime. Gets or sets the time the document was signed.
    public func getSignTime() -> Date? {
        return self.signTime;
    }


    // Sets subjectName. Gets or sets the subject distinguished name of the certificate that was used to sign the document.
    public func setSubjectName(subjectName : String?) -> Signature {
        self.subjectName = subjectName;
        return self;
    }

    // Gets subjectName. Gets or sets the subject distinguished name of the certificate that was used to sign the document.
    public func getSubjectName() -> String? {
        return self.subjectName;
    }
}
