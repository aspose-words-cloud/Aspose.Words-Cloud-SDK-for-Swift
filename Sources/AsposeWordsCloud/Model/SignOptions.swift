/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SignOptions.swift">
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

// Container class for digital signature options.
public class SignOptions : Codable, WordsApiModel {
    // Field of comments. Container class for digital signature options.
    private var _comments : String? = nil;

    public var comments : String? {
        get {
            return self._comments;
        }
        set {
            self._comments = newValue;
        }
    }

    // Field of decryptionPassword. Container class for digital signature options.
    private var _decryptionPassword : String? = nil;

    public var decryptionPassword : String? {
        get {
            return self._decryptionPassword;
        }
        set {
            self._decryptionPassword = newValue;
        }
    }

    // Field of providerId. Container class for digital signature options.
    private var _providerId : String? = nil;

    public var providerId : String? {
        get {
            return self._providerId;
        }
        set {
            self._providerId = newValue;
        }
    }

    // Field of signatureLineId. Container class for digital signature options.
    private var _signatureLineId : String? = nil;

    public var signatureLineId : String? {
        get {
            return self._signatureLineId;
        }
        set {
            self._signatureLineId = newValue;
        }
    }

    // Field of signatureLineImageFilename. Container class for digital signature options.
    private var _signatureLineImageFilename : String? = nil;

    public var signatureLineImageFilename : String? {
        get {
            return self._signatureLineImageFilename;
        }
        set {
            self._signatureLineImageFilename = newValue;
        }
    }

    // Field of signTime. Container class for digital signature options.
    private var _signTime : Date? = nil;

    public var signTime : Date? {
        get {
            return self._signTime;
        }
        set {
            self._signTime = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case comments = "Comments";
        case decryptionPassword = "DecryptionPassword";
        case providerId = "ProviderId";
        case signatureLineId = "SignatureLineId";
        case signatureLineImageFilename = "SignatureLineImageFilename";
        case signTime = "SignTime";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.comments = json["Comments"] as? String;
        self.decryptionPassword = json["DecryptionPassword"] as? String;
        self.providerId = json["ProviderId"] as? String;
        self.signatureLineId = json["SignatureLineId"] as? String;
        self.signatureLineImageFilename = json["SignatureLineImageFilename"] as? String;
        if let raw_signTime = json["SignTime"] as? String {
            self.signTime = ObjectSerializer.customIso8601.date(from: raw_signTime);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments);
        self.decryptionPassword = try container.decodeIfPresent(String.self, forKey: .decryptionPassword);
        self.providerId = try container.decodeIfPresent(String.self, forKey: .providerId);
        self.signatureLineId = try container.decodeIfPresent(String.self, forKey: .signatureLineId);
        self.signatureLineImageFilename = try container.decodeIfPresent(String.self, forKey: .signatureLineImageFilename);
        var raw_signTime = try container.decodeIfPresent(String.self, forKey: .signTime);
        if (raw_signTime != nil) {
            raw_signTime = raw_signTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.signTime = ObjectSerializer.customIso8601.date(from: raw_signTime!)!;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.comments != nil) {
            try container.encode(self.comments, forKey: .comments);
        }
        if (self.decryptionPassword != nil) {
            try container.encode(self.decryptionPassword, forKey: .decryptionPassword);
        }
        if (self.providerId != nil) {
            try container.encode(self.providerId, forKey: .providerId);
        }
        if (self.signatureLineId != nil) {
            try container.encode(self.signatureLineId, forKey: .signatureLineId);
        }
        if (self.signatureLineImageFilename != nil) {
            try container.encode(self.signatureLineImageFilename, forKey: .signatureLineImageFilename);
        }
        if (self.signTime != nil) {
            try container.encode(self.signTime, forKey: .signTime);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets comments. Gets or sets comments on the digital signature. The default value is an empty string.
    public func setComments(comments : String?) -> SignOptions {
        self.comments = comments;
        return self;
    }

    // Gets comments. Gets or sets comments on the digital signature. The default value is an empty string.
    public func getComments() -> String? {
        return self.comments;
    }


    // Sets decryptionPassword. Gets or sets the password to decrypt source document. The default value is an empty string.
    public func setDecryptionPassword(decryptionPassword : String?) -> SignOptions {
        self.decryptionPassword = decryptionPassword;
        return self;
    }

    // Gets decryptionPassword. Gets or sets the password to decrypt source document. The default value is an empty string.
    public func getDecryptionPassword() -> String? {
        return self.decryptionPassword;
    }


    // Sets providerId. Gets or sets the class Guid of the signature cryptography provider. The default value is Empty (all zeroes) Guid.
    public func setProviderId(providerId : String?) -> SignOptions {
        self.providerId = providerId;
        return self;
    }

    // Gets providerId. Gets or sets the class Guid of the signature cryptography provider. The default value is Empty (all zeroes) Guid.
    public func getProviderId() -> String? {
        return self.providerId;
    }


    // Sets signatureLineId. Gets or sets user defined signature line Guid. The default value is Empty (all zeroes) Guid.
    public func setSignatureLineId(signatureLineId : String?) -> SignOptions {
        self.signatureLineId = signatureLineId;
        return self;
    }

    // Gets signatureLineId. Gets or sets user defined signature line Guid. The default value is Empty (all zeroes) Guid.
    public func getSignatureLineId() -> String? {
        return self.signatureLineId;
    }


    // Sets signatureLineImageFilename. Gets or sets the image that will be shown in associated SignatureLine. The default value is an empty string.
    public func setSignatureLineImageFilename(signatureLineImageFilename : String?) -> SignOptions {
        self.signatureLineImageFilename = signatureLineImageFilename;
        return self;
    }

    // Gets signatureLineImageFilename. Gets or sets the image that will be shown in associated SignatureLine. The default value is an empty string.
    public func getSignatureLineImageFilename() -> String? {
        return self.signatureLineImageFilename;
    }


    // Sets signTime. Gets or sets the date of signing. The default value is current time (Now).
    public func setSignTime(signTime : Date?) -> SignOptions {
        self.signTime = signTime;
        return self;
    }

    // Gets signTime. Gets or sets the date of signing. The default value is current time (Now).
    public func getSignTime() -> Date? {
        return self.signTime;
    }
}
