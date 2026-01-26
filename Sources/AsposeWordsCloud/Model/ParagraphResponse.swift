/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphResponse.swift">
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

// The REST response with a paragraph.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs/{0}" REST API requests.
public class ParagraphResponse : WordsResponse {
    // Field of paragraph. The REST response with a paragraph. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs/{0}" REST API requests.
    private var _paragraph : Paragraph? = nil;

    public var paragraph : Paragraph? {
        get {
            return self._paragraph;
        }
        set {
            self._paragraph = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case paragraph = "Paragraph";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_paragraph = json["Paragraph"] as? [String: Any] {
            self.paragraph = try ObjectSerializer.deserialize(type: Paragraph.self, from: raw_paragraph);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.paragraph = try container.decodeIfPresent(Paragraph.self, forKey: .paragraph);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.paragraph != nil) {
            try container.encode(self.paragraph, forKey: .paragraph);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.paragraph?.validate();

    }

    // Sets paragraph. Gets or sets the paragraph.
    public func setParagraph(paragraph : Paragraph?) -> ParagraphResponse {
        self.paragraph = paragraph;
        return self;
    }

    // Gets paragraph. Gets or sets the paragraph.
    public func getParagraph() -> Paragraph? {
        return self.paragraph;
    }
}
