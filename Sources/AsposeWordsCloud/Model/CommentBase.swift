/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CommentBase.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// Comment.
public class CommentBase : Codable, WordsApiModel {
    // Field of rangeStart. Comment.
    private var _rangeStart : PositionInsideNode? = nil;

    public var rangeStart : PositionInsideNode? {
        get {
            return self._rangeStart;
        }
        set {
            self._rangeStart = newValue;
        }
    }

    // Field of rangeEnd. Comment.
    private var _rangeEnd : PositionInsideNode? = nil;

    public var rangeEnd : PositionInsideNode? {
        get {
            return self._rangeEnd;
        }
        set {
            self._rangeEnd = newValue;
        }
    }

    // Field of author. Comment.
    private var _author : String? = nil;

    public var author : String? {
        get {
            return self._author;
        }
        set {
            self._author = newValue;
        }
    }

    // Field of initial. Comment.
    private var _initial : String? = nil;

    public var initial : String? {
        get {
            return self._initial;
        }
        set {
            self._initial = newValue;
        }
    }

    // Field of dateTime. Comment.
    private var _dateTime : Date? = nil;

    public var dateTime : Date? {
        get {
            return self._dateTime;
        }
        set {
            self._dateTime = newValue;
        }
    }

    // Field of text. Comment.
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
        case rangeStart = "RangeStart";
        case rangeEnd = "RangeEnd";
        case author = "Author";
        case initial = "Initial";
        case dateTime = "DateTime";
        case text = "Text";
        case invalidCodingKey;
    }

    internal init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_rangeStart = json["RangeStart"] as? [String: Any] {
            self.rangeStart = try ObjectSerializer.deserialize(type: PositionInsideNode.self, from: raw_rangeStart);
        }

        if let raw_rangeEnd = json["RangeEnd"] as? [String: Any] {
            self.rangeEnd = try ObjectSerializer.deserialize(type: PositionInsideNode.self, from: raw_rangeEnd);
        }

        self.author = json["Author"] as? String;
        self.initial = json["Initial"] as? String;
        if let raw_dateTime = json["DateTime"] as? String {
            self.dateTime = ObjectSerializer.customIso8601.date(from: raw_dateTime);
        }

        self.text = json["Text"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.rangeStart = try container.decodeIfPresent(PositionInsideNode.self, forKey: .rangeStart);
        self.rangeEnd = try container.decodeIfPresent(PositionInsideNode.self, forKey: .rangeEnd);
        self.author = try container.decodeIfPresent(String.self, forKey: .author);
        self.initial = try container.decodeIfPresent(String.self, forKey: .initial);
        var raw_dateTime = try container.decodeIfPresent(String.self, forKey: .dateTime);
        if (raw_dateTime != nil) {
            raw_dateTime = raw_dateTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.dateTime = ObjectSerializer.customIso8601.date(from: raw_dateTime!)!;
        }

        self.text = try container.decodeIfPresent(String.self, forKey: .text);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.rangeStart != nil) {
            try container.encode(self.rangeStart, forKey: .rangeStart);
        }
        if (self.rangeEnd != nil) {
            try container.encode(self.rangeEnd, forKey: .rangeEnd);
        }
        if (self.author != nil) {
            try container.encode(self.author, forKey: .author);
        }
        if (self.initial != nil) {
            try container.encode(self.initial, forKey: .initial);
        }
        if (self.dateTime != nil) {
            try container.encode(self.dateTime, forKey: .dateTime);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.rangeStart == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "rangeStart");
        }
        if (self.rangeEnd == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "rangeEnd");
        }
        if (self.author == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "author");
        }
        if (self.initial == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "initial");
        }
        if (self.text == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "text");
        }
        try self.rangeStart?.validate();
        try self.rangeEnd?.validate();

    }

    // Sets rangeStart. Gets or sets the link to comment range start node.
    public func setRangeStart(rangeStart : PositionInsideNode?) -> CommentBase {
        self.rangeStart = rangeStart;
        return self;
    }

    // Gets rangeStart. Gets or sets the link to comment range start node.
    public func getRangeStart() -> PositionInsideNode? {
        return self.rangeStart;
    }


    // Sets rangeEnd. Gets or sets the link to comment range end node.
    public func setRangeEnd(rangeEnd : PositionInsideNode?) -> CommentBase {
        self.rangeEnd = rangeEnd;
        return self;
    }

    // Gets rangeEnd. Gets or sets the link to comment range end node.
    public func getRangeEnd() -> PositionInsideNode? {
        return self.rangeEnd;
    }


    // Sets author. Gets or sets the author name for a comment. Cannot be null.Default is an empty string.
    public func setAuthor(author : String?) -> CommentBase {
        self.author = author;
        return self;
    }

    // Gets author. Gets or sets the author name for a comment. Cannot be null.Default is an empty string.
    public func getAuthor() -> String? {
        return self.author;
    }


    // Sets initial. Gets or sets the initials of the user associated with a specific comment. Cannot be null.Default is an empty string.
    public func setInitial(initial : String?) -> CommentBase {
        self.initial = initial;
        return self;
    }

    // Gets initial. Gets or sets the initials of the user associated with a specific comment. Cannot be null.Default is an empty string.
    public func getInitial() -> String? {
        return self.initial;
    }


    // Sets dateTime. Gets or sets the date and time that the comment was made. Default is MinValue03.01.0001.
    public func setDateTime(dateTime : Date?) -> CommentBase {
        self.dateTime = dateTime;
        return self;
    }

    // Gets dateTime. Gets or sets the date and time that the comment was made. Default is MinValue03.01.0001.
    public func getDateTime() -> Date? {
        return self.dateTime;
    }


    // Sets text. Gets or sets text of the comment. This method allows to quickly set text of a comment from a string. The string can contain paragraph breaks, this will create paragraphs of text in the comment accordingly.
    public func setText(text : String?) -> CommentBase {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets text of the comment. This method allows to quickly set text of a comment from a string. The string can contain paragraph breaks, this will create paragraphs of text in the comment accordingly.
    public func getText() -> String? {
        return self.text;
    }
}
