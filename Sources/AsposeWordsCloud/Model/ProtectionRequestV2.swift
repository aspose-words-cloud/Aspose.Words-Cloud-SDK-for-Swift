/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ProtectionRequestV2.swift">
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

// Request on changing of protection.
public class ProtectionRequestV2 : ProtectionRequestBase {
    // Gets or sets the new type of the document protection.
    public enum ProtectionType : String, Codable
    {
        // Enum value "allowOnlyRevisions"
        case allowOnlyRevisions = "AllowOnlyRevisions"

        // Enum value "allowOnlyComments"
        case allowOnlyComments = "AllowOnlyComments"

        // Enum value "allowOnlyFormFields"
        case allowOnlyFormFields = "AllowOnlyFormFields"

        // Enum value "readOnly"
        case readOnly = "ReadOnly"

        // Enum value "noProtection"
        case noProtection = "NoProtection"
    }

    // Field of protectionPassword. Request on changing of protection.
    private var _protectionPassword : String? = nil;

    public var protectionPassword : String? {
        get {
            return self._protectionPassword;
        }
        set {
            self._protectionPassword = newValue;
        }
    }

    // Field of protectionType. Request on changing of protection.
    private var _protectionType : ProtectionType? = nil;

    public var protectionType : ProtectionType? {
        get {
            return self._protectionType;
        }
        set {
            self._protectionType = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case protectionPassword = "ProtectionPassword";
        case protectionType = "ProtectionType";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.protectionPassword = json["ProtectionPassword"] as? String;
        if let raw_protectionType = json["ProtectionType"] as? String {
            self.protectionType = ProtectionType(rawValue: raw_protectionType);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.protectionPassword = try container.decodeIfPresent(String.self, forKey: .protectionPassword);
        self.protectionType = try container.decodeIfPresent(ProtectionType.self, forKey: .protectionType);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.protectionPassword != nil) {
            try container.encode(self.protectionPassword, forKey: .protectionPassword);
        }
        if (self.protectionType != nil) {
            try container.encode(self.protectionType, forKey: .protectionType);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.protectionPassword == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "protectionPassword");
        }
        if (self.protectionType == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "protectionType");
        }
    }

    // Sets protectionPassword. Gets or sets the new password for the document protection. This property is required, but empty value is allowed.
    public func setProtectionPassword(protectionPassword : String?) -> ProtectionRequestV2 {
        self.protectionPassword = protectionPassword;
        return self;
    }

    // Gets protectionPassword. Gets or sets the new password for the document protection. This property is required, but empty value is allowed.
    public func getProtectionPassword() -> String? {
        return self.protectionPassword;
    }


    // Sets protectionType. Gets or sets the new type of the document protection.
    public func setProtectionType(protectionType : ProtectionType?) -> ProtectionRequestV2 {
        self.protectionType = protectionType;
        return self;
    }

    // Gets protectionType. Gets or sets the new type of the document protection.
    public func getProtectionType() -> ProtectionType? {
        return self.protectionType;
    }
}
