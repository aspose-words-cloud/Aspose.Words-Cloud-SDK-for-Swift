/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StructuredDocumentTagResponse.swift">
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

// The REST response with a StructuredDocumentTag.
public class StructuredDocumentTagResponse : WordsResponse {
    // Field of structuredDocumentTag. The REST response with a StructuredDocumentTag.
    private var _structuredDocumentTag : StructuredDocumentTag? = nil;

    public var structuredDocumentTag : StructuredDocumentTag? {
        get {
            return self._structuredDocumentTag;
        }
        set {
            self._structuredDocumentTag = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case structuredDocumentTag = "StructuredDocumentTag";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_structuredDocumentTag = json["StructuredDocumentTag"] as? [String: Any] {
            self.structuredDocumentTag = try ObjectSerializer.deserialize(type: StructuredDocumentTag.self, from: raw_structuredDocumentTag);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.structuredDocumentTag = try container.decodeIfPresent(StructuredDocumentTag.self, forKey: .structuredDocumentTag);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.structuredDocumentTag != nil) {
            try container.encode(self.structuredDocumentTag, forKey: .structuredDocumentTag);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.structuredDocumentTag?.validate();

    }

    // Sets structuredDocumentTag. Gets or sets the StructuredDocumentTag.
    public func setStructuredDocumentTag(structuredDocumentTag : StructuredDocumentTag?) -> StructuredDocumentTagResponse {
        self.structuredDocumentTag = structuredDocumentTag;
        return self;
    }

    // Gets structuredDocumentTag. Gets or sets the StructuredDocumentTag.
    public func getStructuredDocumentTag() -> StructuredDocumentTag? {
        return self.structuredDocumentTag;
    }
}
