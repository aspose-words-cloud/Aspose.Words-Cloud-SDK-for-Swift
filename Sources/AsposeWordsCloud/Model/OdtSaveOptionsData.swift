/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OdtSaveOptionsData.swift">
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

// Container class for odt/ott save options.
public class OdtSaveOptionsData : SaveOptionsData {
    // Gets or sets the units of measure to apply to document content. The default value is Aspose.Words.Saving.OdtSaveMeasureUnit.Centimeters.
    // Open Office uses centimeters when specifying lengths, widths and other measurable formatting and content properties in documents whereas MS Office uses inches.
    public enum MeasureUnit : String, Codable
    {
        // Enum value "centimeters"
        case centimeters = "Centimeters"

        // Enum value "inches"
        case inches = "Inches"
    }

    // Field of isStrictSchema11. Container class for odt/ott save options.
    private var _isStrictSchema11 : Bool? = nil;

    public var isStrictSchema11 : Bool? {
        get {
            return self._isStrictSchema11;
        }
        set {
            self._isStrictSchema11 = newValue;
        }
    }

    // Field of measureUnit. Container class for odt/ott save options.
    private var _measureUnit : MeasureUnit? = nil;

    public var measureUnit : MeasureUnit? {
        get {
            return self._measureUnit;
        }
        set {
            self._measureUnit = newValue;
        }
    }

    // Field of password. Container class for odt/ott save options.
    private var _password : String? = nil;

    public var password : String? {
        get {
            return self._password;
        }
        set {
            self._password = newValue;
        }
    }

    // Field of prettyFormat. Container class for odt/ott save options.
    private var _prettyFormat : Bool? = nil;

    public var prettyFormat : Bool? {
        get {
            return self._prettyFormat;
        }
        set {
            self._prettyFormat = newValue;
        }
    }

    // Field of saveFormat. Container class for odt/ott save options.
    private final let _saveFormat : String? = "odt";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case isStrictSchema11 = "IsStrictSchema11";
        case measureUnit = "MeasureUnit";
        case password = "Password";
        case prettyFormat = "PrettyFormat";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.isStrictSchema11 = json["IsStrictSchema11"] as? Bool;
        if let raw_measureUnit = json["MeasureUnit"] as? String {
            self.measureUnit = MeasureUnit(rawValue: raw_measureUnit);
        }

        self.password = json["Password"] as? String;
        self.prettyFormat = json["PrettyFormat"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isStrictSchema11 = try container.decodeIfPresent(Bool.self, forKey: .isStrictSchema11);
        self.measureUnit = try container.decodeIfPresent(MeasureUnit.self, forKey: .measureUnit);
        self.password = try container.decodeIfPresent(String.self, forKey: .password);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isStrictSchema11 != nil) {
            try container.encode(self.isStrictSchema11, forKey: .isStrictSchema11);
        }
        if (self.measureUnit != nil) {
            try container.encode(self.measureUnit, forKey: .measureUnit);
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

    // Sets isStrictSchema11. Gets or sets a value indicating whether export should correspond to ODT specification 1.1 strictly.
    public func setIsStrictSchema11(isStrictSchema11 : Bool?) -> OdtSaveOptionsData {
        self.isStrictSchema11 = isStrictSchema11;
        return self;
    }

    // Gets isStrictSchema11. Gets or sets a value indicating whether export should correspond to ODT specification 1.1 strictly.
    public func getIsStrictSchema11() -> Bool? {
        return self.isStrictSchema11;
    }


    // Sets measureUnit. Gets or sets the units of measure to apply to document content. The default value is Aspose.Words.Saving.OdtSaveMeasureUnit.Centimeters. Open Office uses centimeters when specifying lengths, widths and other measurable formatting and content properties in documents whereas MS Office uses inches.
    public func setMeasureUnit(measureUnit : MeasureUnit?) -> OdtSaveOptionsData {
        self.measureUnit = measureUnit;
        return self;
    }

    // Gets measureUnit. Gets or sets the units of measure to apply to document content. The default value is Aspose.Words.Saving.OdtSaveMeasureUnit.Centimeters. Open Office uses centimeters when specifying lengths, widths and other measurable formatting and content properties in documents whereas MS Office uses inches.
    public func getMeasureUnit() -> MeasureUnit? {
        return self.measureUnit;
    }


    // Sets password. Gets or sets the password to encrypt document. In order to save document without encryption this property should be null or empty string.
    public func setPassword(password : String?) -> OdtSaveOptionsData {
        self.password = password;
        return self;
    }

    // Gets password. Gets or sets the password to encrypt document. In order to save document without encryption this property should be null or empty string.
    public func getPassword() -> String? {
        return self.password;
    }


    // Sets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func setPrettyFormat(prettyFormat : Bool?) -> OdtSaveOptionsData {
        self.prettyFormat = prettyFormat;
        return self;
    }

    // Gets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }
}
