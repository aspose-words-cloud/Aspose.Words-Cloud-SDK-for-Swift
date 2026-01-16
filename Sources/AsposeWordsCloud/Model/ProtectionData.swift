/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ProtectionData.swift">
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

// Container for the data about protection of the document.
public class ProtectionData : Codable, WordsApiModel {
    // Gets or sets type of the protection.
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

    // Field of protectionType. Container for the data about protection of the document.
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
        case protectionType = "ProtectionType";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_protectionType = json["ProtectionType"] as? String {
            self.protectionType = ProtectionType(rawValue: raw_protectionType);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.protectionType = try container.decodeIfPresent(ProtectionType.self, forKey: .protectionType);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.protectionType != nil) {
            try container.encode(self.protectionType, forKey: .protectionType);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.protectionType == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "protectionType");
        }
    }

    // Sets protectionType. Gets or sets type of the protection.
    public func setProtectionType(protectionType : ProtectionType?) -> ProtectionData {
        self.protectionType = protectionType;
        return self;
    }

    // Gets protectionType. Gets or sets type of the protection.
    public func getProtectionType() -> ProtectionType? {
        return self.protectionType;
    }
}
