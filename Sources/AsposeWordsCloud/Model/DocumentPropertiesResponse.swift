/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentPropertiesResponse.swift">
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

// The REST response with a collection of document properties.
// This response should be returned by the service when handling: GET /documentProperties.
public class DocumentPropertiesResponse : WordsResponse {
    // Field of documentProperties. The REST response with a collection of document properties. This response should be returned by the service when handling: GET /documentProperties.
    private var _documentProperties : DocumentProperties? = nil;

    public var documentProperties : DocumentProperties? {
        get {
            return self._documentProperties;
        }
        set {
            self._documentProperties = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case documentProperties = "DocumentProperties";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_documentProperties = json["DocumentProperties"] as? [String: Any] {
            self.documentProperties = try ObjectSerializer.deserialize(type: DocumentProperties.self, from: raw_documentProperties);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.documentProperties = try container.decodeIfPresent(DocumentProperties.self, forKey: .documentProperties);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.documentProperties != nil) {
            try container.encode(self.documentProperties, forKey: .documentProperties);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.documentProperties?.validate();

    }

    // Sets documentProperties. Gets or sets the collection of document properties.
    public func setDocumentProperties(documentProperties : DocumentProperties?) -> DocumentPropertiesResponse {
        self.documentProperties = documentProperties;
        return self;
    }

    // Gets documentProperties. Gets or sets the collection of document properties.
    public func getDocumentProperties() -> DocumentProperties? {
        return self.documentProperties;
    }
}
