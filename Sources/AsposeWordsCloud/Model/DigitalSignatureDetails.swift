/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DigitalSignatureDetails.swift">
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

// Container class for details of digital signature.
public class DigitalSignatureDetails : Codable, WordsApiModel {
    // Field of certificateFilename. Container class for details of digital signature.
    private var _certificateFilename : String? = nil;

    public var certificateFilename : String? {
        get {
            return self._certificateFilename;
        }
        set {
            self._certificateFilename = newValue;
        }
    }

    // Field of signOptions. Container class for details of digital signature.
    private var _signOptions : SignOptions? = nil;

    public var signOptions : SignOptions? {
        get {
            return self._signOptions;
        }
        set {
            self._signOptions = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case certificateFilename = "CertificateFilename";
        case signOptions = "SignOptions";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.certificateFilename = json["CertificateFilename"] as? String;
        if let raw_signOptions = json["SignOptions"] as? [String: Any] {
            self.signOptions = try ObjectSerializer.deserialize(type: SignOptions.self, from: raw_signOptions);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.certificateFilename = try container.decodeIfPresent(String.self, forKey: .certificateFilename);
        self.signOptions = try container.decodeIfPresent(SignOptions.self, forKey: .signOptions);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.certificateFilename != nil) {
            try container.encode(self.certificateFilename, forKey: .certificateFilename);
        }
        if (self.signOptions != nil) {
            try container.encode(self.signOptions, forKey: .signOptions);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.signOptions?.validate();

    }

    // Sets certificateFilename. Gets or sets the certificate's filename using for signing.
    public func setCertificateFilename(certificateFilename : String?) -> DigitalSignatureDetails {
        self.certificateFilename = certificateFilename;
        return self;
    }

    // Gets certificateFilename. Gets or sets the certificate's filename using for signing.
    public func getCertificateFilename() -> String? {
        return self.certificateFilename;
    }


    // Sets signOptions. Gets or sets signing options.
    public func setSignOptions(signOptions : SignOptions?) -> DigitalSignatureDetails {
        self.signOptions = signOptions;
        return self;
    }

    // Gets signOptions. Gets or sets signing options.
    public func getSignOptions() -> SignOptions? {
        return self.signOptions;
    }
}
