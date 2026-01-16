/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphInsert.swift">
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

// DTO container with a paragraph's text.
public class ParagraphInsert : Codable, WordsApiModel {
    // Field of text. DTO container with a paragraph's text.
    private var _text : String? = nil;

    public var text : String? {
        get {
            return self._text;
        }
        set {
            self._text = newValue;
        }
    }

    // Field of position. DTO container with a paragraph's text.
    private var _position : Position? = nil;

    public var position : Position? {
        get {
            return self._position;
        }
        set {
            self._position = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case text = "Text";
        case position = "Position";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.text = json["Text"] as? String;
        if let raw_position = json["Position"] as? [String: Any] {
            self.position = try ObjectSerializer.deserialize(type: Position.self, from: raw_position);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
        self.position = try container.decodeIfPresent(Position.self, forKey: .position);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.text == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "text");
        }
        try self.position?.validate();

    }

    // Sets text. Gets or sets the paragraph's text.
    public func setText(text : String?) -> ParagraphInsert {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets the paragraph's text.
    public func getText() -> String? {
        return self.text;
    }


    // Sets position. Gets or sets the position of the node that will be used to determine the placement of a new paragraph.
    public func setPosition(position : Position?) -> ParagraphInsert {
        self.position = position;
        return self;
    }

    // Gets position. Gets or sets the position of the node that will be used to determine the placement of a new paragraph.
    public func getPosition() -> Position? {
        return self.position;
    }
}
