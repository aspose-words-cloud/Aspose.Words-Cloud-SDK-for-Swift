/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldResponse.swift">
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

// The REST response with a form field.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs/{0}/form fields/{1}" REST API requests.
public class FormFieldResponse : WordsResponse {
    // Field of formField. The REST response with a form field. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs/{0}/form fields/{1}" REST API requests.
    private var _formField : FormField? = nil;

    public var formField : FormField? {
        get {
            return self._formField;
        }
        set {
            self._formField = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case formField = "FormField";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_formField = json["FormField"] as? [String: Any] {
            self.formField = try ObjectSerializer.deserialize(type: FormField.self, from: raw_formField);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.formField = try container.decodeIfPresent(FormField.self, forKey: .formField);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.formField != nil) {
            try container.encode(self.formField, forKey: .formField);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.formField?.validate();

    }

    // Sets formField. Gets or sets the form field.
    public func setFormField(formField : FormField?) -> FormFieldResponse {
        self.formField = formField;
        return self;
    }

    // Gets formField. Gets or sets the form field.
    public func getFormField() -> FormField? {
        return self.formField;
    }
}
