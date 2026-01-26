/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FieldBase.swift">
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

// Field.
public class FieldBase : Codable, WordsApiModel {
    // Field of localeId. Field.
    private var _localeId : String? = nil;

    public var localeId : String? {
        get {
            return self._localeId;
        }
        set {
            self._localeId = newValue;
        }
    }

    // Field of fieldCode. Field.
    private var _fieldCode : String? = nil;

    public var fieldCode : String? {
        get {
            return self._fieldCode;
        }
        set {
            self._fieldCode = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case localeId = "LocaleId";
        case fieldCode = "FieldCode";
        case invalidCodingKey;
    }

    internal init() {
    }

    public required init(from json: [String: Any]) throws {
        self.localeId = json["LocaleId"] as? String;
        self.fieldCode = json["FieldCode"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.localeId = try container.decodeIfPresent(String.self, forKey: .localeId);
        self.fieldCode = try container.decodeIfPresent(String.self, forKey: .fieldCode);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.localeId != nil) {
            try container.encode(self.localeId, forKey: .localeId);
        }
        if (self.fieldCode != nil) {
            try container.encode(self.fieldCode, forKey: .fieldCode);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.fieldCode == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "fieldCode");
        }
    }

    // Sets localeId. Gets or sets the LCID of the field.
    public func setLocaleId(localeId : String?) -> FieldBase {
        self.localeId = localeId;
        return self;
    }

    // Gets localeId. Gets or sets the LCID of the field.
    public func getLocaleId() -> String? {
        return self.localeId;
    }


    // Sets fieldCode. Gets or sets the field code.
    public func setFieldCode(fieldCode : String?) -> FieldBase {
        self.fieldCode = fieldCode;
        return self;
    }

    // Gets fieldCode. Gets or sets the field code.
    public func getFieldCode() -> String? {
        return self.fieldCode;
    }
}
