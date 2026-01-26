/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Bookmark.swift">
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

// Represents a single bookmark.
public class Bookmark : LinkElement {
    // Field of name. Represents a single bookmark.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    // Field of text. Represents a single bookmark.
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

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.name = json["Name"] as? String;
        self.text = json["Text"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets name. Gets or sets the name of the bookmark.
    public func setName(name : String?) -> Bookmark {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the name of the bookmark.
    public func getName() -> String? {
        return self.name;
    }


    // Sets text. Gets or sets text, enclosed in the bookmark.
    public func setText(text : String?) -> Bookmark {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets text, enclosed in the bookmark.
    public func getText() -> String? {
        return self.text;
    }
}
