/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentPropertyResponse.swift">
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

// The REST response with a document property.
// This response should be returned by the service when handling: GET documentProperties/{propertyName}.
public class DocumentPropertyResponse : WordsResponse {
    // Field of documentProperty. The REST response with a document property. This response should be returned by the service when handling: GET documentProperties/{propertyName}.
    private var _documentProperty : DocumentProperty? = nil;

    public var documentProperty : DocumentProperty? {
        get {
            return self._documentProperty;
        }
        set {
            self._documentProperty = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case documentProperty = "DocumentProperty";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_documentProperty = json["DocumentProperty"] as? [String: Any] {
            self.documentProperty = try ObjectSerializer.deserialize(type: DocumentProperty.self, from: raw_documentProperty);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.documentProperty = try container.decodeIfPresent(DocumentProperty.self, forKey: .documentProperty);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.documentProperty != nil) {
            try container.encode(self.documentProperty, forKey: .documentProperty);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.documentProperty?.validate();

    }

    // Sets documentProperty. Gets or sets the document property.
    public func setDocumentProperty(documentProperty : DocumentProperty?) -> DocumentPropertyResponse {
        self.documentProperty = documentProperty;
        return self;
    }

    // Gets documentProperty. Gets or sets the document property.
    public func getDocumentProperty() -> DocumentProperty? {
        return self.documentProperty;
    }
}
