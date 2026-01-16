/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Field.swift">
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

// DTO container with a field.
public class Field : FieldLink {
    // Field of localeId. DTO container with a field.
    private var _localeId : String? = nil;

    public var localeId : String? {
        get {
            return self._localeId;
        }
        set {
            self._localeId = newValue;
        }
    }

    // Field of result. DTO container with a field.
    private var _result : String? = nil;

    public var result : String? {
        get {
            return self._result;
        }
        set {
            self._result = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case localeId = "LocaleId";
        case result = "Result";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.localeId = json["LocaleId"] as? String;
        self.result = json["Result"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.localeId = try container.decodeIfPresent(String.self, forKey: .localeId);
        self.result = try container.decodeIfPresent(String.self, forKey: .result);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.localeId != nil) {
            try container.encode(self.localeId, forKey: .localeId);
        }
        if (self.result != nil) {
            try container.encode(self.result, forKey: .result);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets localeId. Gets or sets the LCID of the field.
    public func setLocaleId(localeId : String?) -> Field {
        self.localeId = localeId;
        return self;
    }

    // Gets localeId. Gets or sets the LCID of the field.
    public func getLocaleId() -> String? {
        return self.localeId;
    }


    // Sets result. Gets or sets the field result.
    public func setResult(result : String?) -> Field {
        self.result = result;
        return self;
    }

    // Gets result. Gets or sets the field result.
    public func getResult() -> String? {
        return self.result;
    }
}
