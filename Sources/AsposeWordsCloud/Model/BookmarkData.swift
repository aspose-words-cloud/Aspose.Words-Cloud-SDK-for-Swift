/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BookmarkData.swift">
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

// DTO for bookmark updating.
public class BookmarkData : Codable, WordsApiModel {
    // Field of name. DTO for bookmark updating.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    // Field of text. DTO for bookmark updating.
    private var _text : String? = nil;

    public var text : String? {
        get {
            return self._text;
        }
        set {
            self._text = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case name = "Name";
        case text = "Text";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.name = json["Name"] as? String;
        self.text = json["Text"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets name. Gets or sets the name of the bookmark.
    public func setName(name : String?) -> BookmarkData {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the name of the bookmark.
    public func getName() -> String? {
        return self.name;
    }


    // Sets text. Gets or sets text, enclosed in the bookmark.
    public func setText(text : String?) -> BookmarkData {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets text, enclosed in the bookmark.
    public func getText() -> String? {
        return self.text;
    }
}
