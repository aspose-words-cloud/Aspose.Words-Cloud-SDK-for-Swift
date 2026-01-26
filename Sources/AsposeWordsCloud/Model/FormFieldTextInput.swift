/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldTextInput.swift">
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

// FormField text input element.
public class FormFieldTextInput : FormField {
    // Gets or sets the type of the text form field.
    public enum TextInputType : String, Codable
    {
        // Enum value "regular"
        case regular = "Regular"

        // Enum value "number"
        case number = "Number"

        // Enum value "date"
        case date = "Date"

        // Enum value "currentDate"
        case currentDate = "CurrentDate"

        // Enum value "currentTime"
        case currentTime = "CurrentTime"

        // Enum value "calculated"
        case calculated = "Calculated"
    }

    // Field of textInputFormat. FormField text input element.
    private var _textInputFormat : String? = nil;

    public var textInputFormat : String? {
        get {
            return self._textInputFormat;
        }
        set {
            self._textInputFormat = newValue;
        }
    }

    // Field of textInputType. FormField text input element.
    private var _textInputType : TextInputType? = nil;

    public var textInputType : TextInputType? {
        get {
            return self._textInputType;
        }
        set {
            self._textInputType = newValue;
        }
    }

    // Field of textInputDefault. FormField text input element.
    private var _textInputDefault : String? = nil;

    public var textInputDefault : String? {
        get {
            return self._textInputDefault;
        }
        set {
            self._textInputDefault = newValue;
        }
    }

    // Field of maxLength. FormField text input element.
    private var _maxLength : Int? = nil;

    public var maxLength : Int? {
        get {
            return self._maxLength;
        }
        set {
            self._maxLength = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case textInputFormat = "TextInputFormat";
        case textInputType = "TextInputType";
        case textInputDefault = "TextInputDefault";
        case maxLength = "MaxLength";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.textInputFormat = json["TextInputFormat"] as? String;
        if let raw_textInputType = json["TextInputType"] as? String {
            self.textInputType = TextInputType(rawValue: raw_textInputType);
        }

        self.textInputDefault = json["TextInputDefault"] as? String;
        self.maxLength = json["MaxLength"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.textInputFormat = try container.decodeIfPresent(String.self, forKey: .textInputFormat);
        self.textInputType = try container.decodeIfPresent(TextInputType.self, forKey: .textInputType);
        self.textInputDefault = try container.decodeIfPresent(String.self, forKey: .textInputDefault);
        self.maxLength = try container.decodeIfPresent(Int.self, forKey: .maxLength);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.textInputFormat != nil) {
            try container.encode(self.textInputFormat, forKey: .textInputFormat);
        }
        if (self.textInputType != nil) {
            try container.encode(self.textInputType, forKey: .textInputType);
        }
        if (self.textInputDefault != nil) {
            try container.encode(self.textInputDefault, forKey: .textInputDefault);
        }
        if (self.maxLength != nil) {
            try container.encode(self.maxLength, forKey: .maxLength);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.textInputFormat == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "textInputFormat");
        }
        if (self.textInputDefault == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "textInputDefault");
        }
    }

    // Sets textInputFormat. Gets or sets text formatting for the text form field. If the text form field contains regular text, then valid format strings are "", "UPPERCASE", "LOWERCASE", "FIRST CAPITAL" and "TITLE CASE". The strings are case-insensitive.If the text form field contains a number or a date/time value, then valid format strings are number or date and time format strings.
    public func setTextInputFormat(textInputFormat : String?) -> FormFieldTextInput {
        self.textInputFormat = textInputFormat;
        return self;
    }

    // Gets textInputFormat. Gets or sets text formatting for the text form field. If the text form field contains regular text, then valid format strings are "", "UPPERCASE", "LOWERCASE", "FIRST CAPITAL" and "TITLE CASE". The strings are case-insensitive.If the text form field contains a number or a date/time value, then valid format strings are number or date and time format strings.
    public func getTextInputFormat() -> String? {
        return self.textInputFormat;
    }


    // Sets textInputType. Gets or sets the type of the text form field.
    public func setTextInputType(textInputType : TextInputType?) -> FormFieldTextInput {
        self.textInputType = textInputType;
        return self;
    }

    // Gets textInputType. Gets or sets the type of the text form field.
    public func getTextInputType() -> TextInputType? {
        return self.textInputType;
    }


    // Sets textInputDefault. Gets or sets the default string or a calculation expression of the text form field. The meaning of this property depends on the value of the TextInputType property.When TextInputType is Regular or Number, this string specifies the default string for the text form field. This string is the content that Microsoft Word will display in the document when the form field is empty.When TextInputType is Calculated, then this string holds the expression to be calculated. The expression needs to be a formula valid according to Microsoft Word formula field requirements. When you set a new expression using this property, Aspose.Words calculates the formula result automatically and inserts it into the form field.
    public func setTextInputDefault(textInputDefault : String?) -> FormFieldTextInput {
        self.textInputDefault = textInputDefault;
        return self;
    }

    // Gets textInputDefault. Gets or sets the default string or a calculation expression of the text form field. The meaning of this property depends on the value of the TextInputType property.When TextInputType is Regular or Number, this string specifies the default string for the text form field. This string is the content that Microsoft Word will display in the document when the form field is empty.When TextInputType is Calculated, then this string holds the expression to be calculated. The expression needs to be a formula valid according to Microsoft Word formula field requirements. When you set a new expression using this property, Aspose.Words calculates the formula result automatically and inserts it into the form field.
    public func getTextInputDefault() -> String? {
        return self.textInputDefault;
    }


    // Sets maxLength. Gets or sets the maximum length for the text field. Zero when the length is not limited.
    public func setMaxLength(maxLength : Int?) -> FormFieldTextInput {
        self.maxLength = maxLength;
        return self;
    }

    // Gets maxLength. Gets or sets the maximum length for the text field. Zero when the length is not limited.
    public func getMaxLength() -> Int? {
        return self.maxLength;
    }
}
