/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldCheckbox.swift">
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

// FormField checkbox element.
public class FormFieldCheckbox : FormField {
    // Field of isCheckBoxExactSize. FormField checkbox element.
    private var _isCheckBoxExactSize : Bool? = nil;

    public var isCheckBoxExactSize : Bool? {
        get {
            return self._isCheckBoxExactSize;
        }
        set {
            self._isCheckBoxExactSize = newValue;
        }
    }

    // Field of checkBoxSize. FormField checkbox element.
    private var _checkBoxSize : Double? = nil;

    public var checkBoxSize : Double? {
        get {
            return self._checkBoxSize;
        }
        set {
            self._checkBoxSize = newValue;
        }
    }

    // Field of checked. FormField checkbox element.
    private var _checked : Bool? = nil;

    public var checked : Bool? {
        get {
            return self._checked;
        }
        set {
            self._checked = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case isCheckBoxExactSize = "IsCheckBoxExactSize";
        case checkBoxSize = "CheckBoxSize";
        case checked = "Checked";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.isCheckBoxExactSize = json["IsCheckBoxExactSize"] as? Bool;
        self.checkBoxSize = json["CheckBoxSize"] as? Double;
        self.checked = json["Checked"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isCheckBoxExactSize = try container.decodeIfPresent(Bool.self, forKey: .isCheckBoxExactSize);
        self.checkBoxSize = try container.decodeIfPresent(Double.self, forKey: .checkBoxSize);
        self.checked = try container.decodeIfPresent(Bool.self, forKey: .checked);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isCheckBoxExactSize != nil) {
            try container.encode(self.isCheckBoxExactSize, forKey: .isCheckBoxExactSize);
        }
        if (self.checkBoxSize != nil) {
            try container.encode(self.checkBoxSize, forKey: .checkBoxSize);
        }
        if (self.checked != nil) {
            try container.encode(self.checked, forKey: .checked);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.checked == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "checked");
        }
    }

    // Sets isCheckBoxExactSize. Gets or sets a value indicating whether the size of the textbox is automatic or specified explicitly.
    public func setIsCheckBoxExactSize(isCheckBoxExactSize : Bool?) -> FormFieldCheckbox {
        self.isCheckBoxExactSize = isCheckBoxExactSize;
        return self;
    }

    // Gets isCheckBoxExactSize. Gets or sets a value indicating whether the size of the textbox is automatic or specified explicitly.
    public func getIsCheckBoxExactSize() -> Bool? {
        return self.isCheckBoxExactSize;
    }


    // Sets checkBoxSize. Gets or sets the size of the checkbox in points. Has effect only when IsCheckBoxExactSize is true.
    public func setCheckBoxSize(checkBoxSize : Double?) -> FormFieldCheckbox {
        self.checkBoxSize = checkBoxSize;
        return self;
    }

    // Gets checkBoxSize. Gets or sets the size of the checkbox in points. Has effect only when IsCheckBoxExactSize is true.
    public func getCheckBoxSize() -> Double? {
        return self.checkBoxSize;
    }


    // Sets checked. Gets or sets the checked status of the check box form field.
    public func setChecked(checked : Bool?) -> FormFieldCheckbox {
        self.checked = checked;
        return self;
    }

    // Gets checked. Gets or sets the checked status of the check box form field.
    public func getChecked() -> Bool? {
        return self.checked;
    }
}
