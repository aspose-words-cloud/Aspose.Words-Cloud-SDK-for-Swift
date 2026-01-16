/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FontResponse.swift">
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

// The REST response with a font.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs/{0}/runs/{1}/font" REST API requests.
public class FontResponse : WordsResponse {
    // Field of font. The REST response with a font. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs/{0}/runs/{1}/font" REST API requests.
    private var _font : Font? = nil;

    public var font : Font? {
        get {
            return self._font;
        }
        set {
            self._font = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case font = "Font";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_font = json["Font"] as? [String: Any] {
            self.font = try ObjectSerializer.deserialize(type: Font.self, from: raw_font);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.font = try container.decodeIfPresent(Font.self, forKey: .font);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.font != nil) {
            try container.encode(self.font, forKey: .font);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.font?.validate();

    }

    // Sets font. Gets or sets the font.
    public func setFont(font : Font?) -> FontResponse {
        self.font = font;
        return self;
    }

    // Gets font. Gets or sets the font.
    public func getFont() -> Font? {
        return self.font;
    }
}
