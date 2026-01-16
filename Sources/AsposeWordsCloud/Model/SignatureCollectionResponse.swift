/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SignatureCollectionResponse.swift">
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

// The REST response with a document signature collection.
// This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
public class SignatureCollectionResponse : WordsResponse {
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

    // Field of signatures. The REST response with a document signature collection. This response is returned by the Service when handling any "https://api.aspose.cloud/v4.0/words/Test.doc/signatures" REST API requests.
    private var _signatures : [Signature]? = nil;

    public var signatures : [Signature]? {
        get {
            return self._signatures;
        }
        set {
            self._signatures = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case isValid = "IsValid";
        case signatures = "Signatures";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.isValid = json["IsValid"] as? Bool;
        if let raw_signatures = json["Signatures"] as? [Any] {
            self.signatures = try raw_signatures.map {
                if let element_signatures = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: Signature.self, from: element_signatures);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "Signature");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isValid = try container.decodeIfPresent(Bool.self, forKey: .isValid);
        self.signatures = try container.decodeIfPresent([Signature].self, forKey: .signatures);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isValid != nil) {
            try container.encode(self.isValid, forKey: .isValid);
        }
        if (self.signatures != nil) {
            try container.encode(self.signatures, forKey: .signatures);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.isValid == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isValid");
        }
        if (self.signatures != nil) {
            for elementSignatures in self.signatures! {
                try elementSignatures.validate();
            }
        }

    }

    // Sets isValid. Gets or sets a value indicating whether all signatures are valid. Returns true if there is no signatures.
    public func setIsValid(isValid : Bool?) -> SignatureCollectionResponse {
        self.isValid = isValid;
        return self;
    }

    // Gets isValid. Gets or sets a value indicating whether all signatures are valid. Returns true if there is no signatures.
    public func getIsValid() -> Bool? {
        return self.isValid;
    }


    // Sets signatures. Gets or sets signatures.
    public func setSignatures(signatures : [Signature]?) -> SignatureCollectionResponse {
        self.signatures = signatures;
        return self;
    }

    // Gets signatures. Gets or sets signatures.
    public func getSignatures() -> [Signature]? {
        return self.signatures;
    }
}
