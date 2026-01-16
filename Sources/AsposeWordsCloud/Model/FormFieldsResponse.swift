/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldsResponse.swift">
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

// The REST response with a collection of form fields.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/{nodePath}/form fields" REST API requests.
public class FormFieldsResponse : WordsResponse {
    // Field of formFields. The REST response with a collection of form fields. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/{nodePath}/form fields" REST API requests.
    private var _formFields : FormFieldCollection? = nil;

    public var formFields : FormFieldCollection? {
        get {
            return self._formFields;
        }
        set {
            self._formFields = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case formFields = "FormFields";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_formFields = json["FormFields"] as? [String: Any] {
            self.formFields = try ObjectSerializer.deserialize(type: FormFieldCollection.self, from: raw_formFields);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.formFields = try container.decodeIfPresent(FormFieldCollection.self, forKey: .formFields);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.formFields != nil) {
            try container.encode(self.formFields, forKey: .formFields);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.formFields?.validate();

    }

    // Sets formFields. Gets or sets the collection of form fields.
    public func setFormFields(formFields : FormFieldCollection?) -> FormFieldsResponse {
        self.formFields = formFields;
        return self;
    }

    // Gets formFields. Gets or sets the collection of form fields.
    public func getFormFields() -> FormFieldCollection? {
        return self.formFields;
    }
}
