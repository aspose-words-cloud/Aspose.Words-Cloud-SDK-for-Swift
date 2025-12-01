/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Comment.swift">
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

// DTO container with a comment.
public class Comment : CommentLink {
    // Field of rangeStart. DTO container with a comment.
    private var _rangeStart : DocumentPosition? = nil;

    public var rangeStart : DocumentPosition? {
        get {
            return self._rangeStart;
        }
        set {
            self._rangeStart = newValue;
        }
    }

    // Field of rangeEnd. DTO container with a comment.
    private var _rangeEnd : DocumentPosition? = nil;

    public var rangeEnd : DocumentPosition? {
        get {
            return self._rangeEnd;
        }
        set {
            self._rangeEnd = newValue;
        }
    }

    // Field of author. DTO container with a comment.
    private var _author : String? = nil;

    public var author : String? {
        get {
            return self._author;
        }
        set {
            self._author = newValue;
        }
    }

    // Field of initial. DTO container with a comment.
    private var _initial : String? = nil;

    public var initial : String? {
        get {
            return self._initial;
        }
        set {
            self._initial = newValue;
        }
    }

    // Field of dateTime. DTO container with a comment.
    private var _dateTime : Date? = nil;

    public var dateTime : Date? {
        get {
            return self._dateTime;
        }
        set {
            self._dateTime = newValue;
        }
    }

    // Field of text. DTO container with a comment.
    private var _text : String? = nil;

    public var text : String? {
        get {
            return self._text;
        }
        set {
            self._text = newValue;
        }
    }

    // Field of content. DTO container with a comment.
    private var _content : StoryChildNodes? = nil;

    public var content : StoryChildNodes? {
        get {
            return self._content;
        }
        set {
            self._content = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case rangeStart = "RangeStart";
        case rangeEnd = "RangeEnd";
        case author = "Author";
        case initial = "Initial";
        case dateTime = "DateTime";
        case text = "Text";
        case content = "Content";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_rangeStart = json["RangeStart"] as? [String: Any] {
            self.rangeStart = try ObjectSerializer.deserialize(type: DocumentPosition.self, from: raw_rangeStart);
        }

        if let raw_rangeEnd = json["RangeEnd"] as? [String: Any] {
            self.rangeEnd = try ObjectSerializer.deserialize(type: DocumentPosition.self, from: raw_rangeEnd);
        }

        self.author = json["Author"] as? String;
        self.initial = json["Initial"] as? String;
        if let raw_dateTime = json["DateTime"] as? String {
            self.dateTime = ObjectSerializer.customIso8601.date(from: raw_dateTime);
        }

        self.text = json["Text"] as? String;
        if let raw_content = json["Content"] as? [String: Any] {
            self.content = try ObjectSerializer.deserialize(type: StoryChildNodes.self, from: raw_content);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.rangeStart = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeStart);
        self.rangeEnd = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeEnd);
        self.author = try container.decodeIfPresent(String.self, forKey: .author);
        self.initial = try container.decodeIfPresent(String.self, forKey: .initial);
        var raw_dateTime = try container.decodeIfPresent(String.self, forKey: .dateTime);
        if (raw_dateTime != nil) {
            raw_dateTime = raw_dateTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.dateTime = ObjectSerializer.customIso8601.date(from: raw_dateTime!)!;
        }

        self.text = try container.decodeIfPresent(String.self, forKey: .text);
        self.content = try container.decodeIfPresent(StoryChildNodes.self, forKey: .content);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
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
        if (self.content != nil) {
            try container.encode(self.content, forKey: .content);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.rangeStart?.validate();
        try self.rangeEnd?.validate();
        try self.content?.validate();

    }

    // Sets rangeStart. Gets or sets the link to comment range start node.
    public func setRangeStart(rangeStart : DocumentPosition?) -> Comment {
        self.rangeStart = rangeStart;
        return self;
    }

    // Gets rangeStart. Gets or sets the link to comment range start node.
    public func getRangeStart() -> DocumentPosition? {
        return self.rangeStart;
    }


    // Sets rangeEnd. Gets or sets the link to comment range end node.
    public func setRangeEnd(rangeEnd : DocumentPosition?) -> Comment {
        self.rangeEnd = rangeEnd;
        return self;
    }

    // Gets rangeEnd. Gets or sets the link to comment range end node.
    public func getRangeEnd() -> DocumentPosition? {
        return self.rangeEnd;
    }


    // Sets author. Gets or sets the author name for a comment. Cannot be null.Default is an empty string.
    public func setAuthor(author : String?) -> Comment {
        self.author = author;
        return self;
    }

    // Gets author. Gets or sets the author name for a comment. Cannot be null.Default is an empty string.
    public func getAuthor() -> String? {
        return self.author;
    }


    // Sets initial. Gets or sets the initials of the user associated with a specific comment. Cannot be null.Default is an empty string.
    public func setInitial(initial : String?) -> Comment {
        self.initial = initial;
        return self;
    }

    // Gets initial. Gets or sets the initials of the user associated with a specific comment. Cannot be null.Default is an empty string.
    public func getInitial() -> String? {
        return self.initial;
    }


    // Sets dateTime. Gets or sets the date and time that the comment was made.
    public func setDateTime(dateTime : Date?) -> Comment {
        self.dateTime = dateTime;
        return self;
    }

    // Gets dateTime. Gets or sets the date and time that the comment was made.
    public func getDateTime() -> Date? {
        return self.dateTime;
    }


    // Sets text. Gets or sets text of the comment. This method allows to quickly set text of a comment from a string. The string can contain paragraph breaks, this will create paragraphs of text in the comment accordingly.
    public func setText(text : String?) -> Comment {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets text of the comment. This method allows to quickly set text of a comment from a string. The string can contain paragraph breaks, this will create paragraphs of text in the comment accordingly.
    public func getText() -> String? {
        return self.text;
    }


    // Sets content. Gets or sets the content of the comment.
    public func setContent(content : StoryChildNodes?) -> Comment {
        self.content = content;
        return self;
    }

    // Gets content. Gets or sets the content of the comment.
    public func getContent() -> StoryChildNodes? {
        return self.content;
    }
}
