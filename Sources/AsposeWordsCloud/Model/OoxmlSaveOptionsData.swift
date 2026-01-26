/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OoxmlSaveOptionsData.swift">
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

// Container class for docx/docm/dotx/dotm/flatopc save options.
public class OoxmlSaveOptionsData : SaveOptionsData {
    // Gets or sets the oOXML version for the output document.
    public enum Compliance : String, Codable
    {
        // Enum value "ecma376_2006"
        case ecma376_2006 = "Ecma376_2006"

        // Enum value "iso29500_2008_Transitional"
        case iso29500_2008_Transitional = "Iso29500_2008_Transitional"

        // Enum value "iso29500_2008_Strict"
        case iso29500_2008_Strict = "Iso29500_2008_Strict"
    }

    // Gets or sets the compression level.
    public enum CompressionLevel : String, Codable
    {
        // Enum value "normal"
        case normal = "Normal"

        // Enum value "maximum"
        case maximum = "Maximum"

        // Enum value "fast"
        case fast = "Fast"

        // Enum value "superFast"
        case superFast = "SuperFast"
    }

    // Field of compliance. Container class for docx/docm/dotx/dotm/flatopc save options.
    private var _compliance : Compliance? = nil;

    public var compliance : Compliance? {
        get {
            return self._compliance;
        }
        set {
            self._compliance = newValue;
        }
    }

    // Field of compressionLevel. Container class for docx/docm/dotx/dotm/flatopc save options.
    private var _compressionLevel : CompressionLevel? = nil;

    public var compressionLevel : CompressionLevel? {
        get {
            return self._compressionLevel;
        }
        set {
            self._compressionLevel = newValue;
        }
    }

    // Field of password. Container class for docx/docm/dotx/dotm/flatopc save options.
    private var _password : String? = nil;

    public var password : String? {
        get {
            return self._password;
        }
        set {
            self._password = newValue;
        }
    }

    // Field of prettyFormat. Container class for docx/docm/dotx/dotm/flatopc save options.
    private var _prettyFormat : Bool? = nil;

    public var prettyFormat : Bool? {
        get {
            return self._prettyFormat;
        }
        set {
            self._prettyFormat = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case compliance = "Compliance";
        case compressionLevel = "CompressionLevel";
        case password = "Password";
        case prettyFormat = "PrettyFormat";
        case invalidCodingKey;
    }

    internal override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_compliance = json["Compliance"] as? String {
            self.compliance = Compliance(rawValue: raw_compliance);
        }

        if let raw_compressionLevel = json["CompressionLevel"] as? String {
            self.compressionLevel = CompressionLevel(rawValue: raw_compressionLevel);
        }

        self.password = json["Password"] as? String;
        self.prettyFormat = json["PrettyFormat"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.compliance = try container.decodeIfPresent(Compliance.self, forKey: .compliance);
        self.compressionLevel = try container.decodeIfPresent(CompressionLevel.self, forKey: .compressionLevel);
        self.password = try container.decodeIfPresent(String.self, forKey: .password);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.compliance != nil) {
            try container.encode(self.compliance, forKey: .compliance);
        }
        if (self.compressionLevel != nil) {
            try container.encode(self.compressionLevel, forKey: .compressionLevel);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets compliance. Gets or sets the oOXML version for the output document.
    public func setCompliance(compliance : Compliance?) -> OoxmlSaveOptionsData {
        self.compliance = compliance;
        return self;
    }

    // Gets compliance. Gets or sets the oOXML version for the output document.
    public func getCompliance() -> Compliance? {
        return self.compliance;
    }


    // Sets compressionLevel. Gets or sets the compression level.
    public func setCompressionLevel(compressionLevel : CompressionLevel?) -> OoxmlSaveOptionsData {
        self.compressionLevel = compressionLevel;
        return self;
    }

    // Gets compressionLevel. Gets or sets the compression level.
    public func getCompressionLevel() -> CompressionLevel? {
        return self.compressionLevel;
    }


    // Sets password. Gets or sets the password to encrypt document using ECMA376 Standard encryption algorithm.
    public func setPassword(password : String?) -> OoxmlSaveOptionsData {
        self.password = password;
        return self;
    }

    // Gets password. Gets or sets the password to encrypt document using ECMA376 Standard encryption algorithm.
    public func getPassword() -> String? {
        return self.password;
    }


    // Sets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func setPrettyFormat(prettyFormat : Bool?) -> OoxmlSaveOptionsData {
        self.prettyFormat = prettyFormat;
        return self;
    }

    // Gets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }
}
