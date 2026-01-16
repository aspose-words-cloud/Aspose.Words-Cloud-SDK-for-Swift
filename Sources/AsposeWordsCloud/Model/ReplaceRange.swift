/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReplaceRange.swift">
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

// DTO container with a range element.
public class ReplaceRange : Codable, WordsApiModel {
    // Gets or sets the range's text type.
    public enum TextType : String, Codable
    {
        // Enum value "text"
        case text = "Text"

        // Enum value "html"
        case html = "Html"
    }

    // Field of text. DTO container with a range element.
    private var _text : String? = nil;

    public var text : String? {
        get {
            return self._text;
        }
        set {
            self._text = newValue;
        }
    }

    // Field of textType. DTO container with a range element.
    private var _textType : TextType? = nil;

    public var textType : TextType? {
        get {
            return self._textType;
        }
        set {
            self._textType = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case text = "Text";
        case textType = "TextType";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.text = json["Text"] as? String;
        if let raw_textType = json["TextType"] as? String {
            self.textType = TextType(rawValue: raw_textType);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
        self.textType = try container.decodeIfPresent(TextType.self, forKey: .textType);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
        if (self.textType != nil) {
            try container.encode(self.textType, forKey: .textType);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.text == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "text");
        }
    }

    // Sets text. Gets or sets the range's text.
    public func setText(text : String?) -> ReplaceRange {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets the range's text.
    public func getText() -> String? {
        return self.text;
    }


    // Sets textType. Gets or sets the range's text type.
    public func setTextType(textType : TextType?) -> ReplaceRange {
        self.textType = textType;
        return self;
    }

    // Gets textType. Gets or sets the range's text type.
    public func getTextType() -> TextType? {
        return self.textType;
    }
}
