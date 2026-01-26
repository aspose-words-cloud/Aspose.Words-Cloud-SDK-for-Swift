/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BookmarkInsert.swift">
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

// Represents a bookmark to insert.
public class BookmarkInsert : Codable, WordsApiModel {
    // Field of name. Represents a bookmark to insert.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    // Field of text. Represents a bookmark to insert.
    private var _text : String? = nil;

    public var text : String? {
        get {
            return self._text;
        }
        set {
            self._text = newValue;
        }
    }

    // Field of startRange. Represents a bookmark to insert.
    private var _startRange : Position? = nil;

    public var startRange : Position? {
        get {
            return self._startRange;
        }
        set {
            self._startRange = newValue;
        }
    }

    // Field of endRange. Represents a bookmark to insert.
    private var _endRange : Position? = nil;

    public var endRange : Position? {
        get {
            return self._endRange;
        }
        set {
            self._endRange = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case name = "Name";
        case text = "Text";
        case startRange = "StartRange";
        case endRange = "EndRange";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.name = json["Name"] as? String;
        self.text = json["Text"] as? String;
        if let raw_startRange = json["StartRange"] as? [String: Any] {
            self.startRange = try ObjectSerializer.deserialize(type: Position.self, from: raw_startRange);
        }

        if let raw_endRange = json["EndRange"] as? [String: Any] {
            self.endRange = try ObjectSerializer.deserialize(type: Position.self, from: raw_endRange);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
        self.startRange = try container.decodeIfPresent(Position.self, forKey: .startRange);
        self.endRange = try container.decodeIfPresent(Position.self, forKey: .endRange);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
        if (self.startRange != nil) {
            try container.encode(self.startRange, forKey: .startRange);
        }
        if (self.endRange != nil) {
            try container.encode(self.endRange, forKey: .endRange);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.name == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "name");
        }
        if (self.text == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "text");
        }
        if (self.startRange == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "startRange");
        }
        if (self.endRange == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "endRange");
        }
        try self.startRange?.validate();
        try self.endRange?.validate();

    }

    // Sets name. Gets or sets the name of the bookmark.
    public func setName(name : String?) -> BookmarkInsert {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the name of the bookmark.
    public func getName() -> String? {
        return self.name;
    }


    // Sets text. Gets or sets text, enclosed in the bookmark.
    public func setText(text : String?) -> BookmarkInsert {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets text, enclosed in the bookmark.
    public func getText() -> String? {
        return self.text;
    }


    // Sets startRange. Gets or sets the link to start bookmark node.
    public func setStartRange(startRange : Position?) -> BookmarkInsert {
        self.startRange = startRange;
        return self;
    }

    // Gets startRange. Gets or sets the link to start bookmark node.
    public func getStartRange() -> Position? {
        return self.startRange;
    }


    // Sets endRange. Gets or sets the link to end bookmark node.
    public func setEndRange(endRange : Position?) -> BookmarkInsert {
        self.endRange = endRange;
        return self;
    }

    // Gets endRange. Gets or sets the link to end bookmark node.
    public func getEndRange() -> Position? {
        return self.endRange;
    }
}
