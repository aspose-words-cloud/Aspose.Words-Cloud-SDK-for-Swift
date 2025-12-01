/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Footnote.swift">
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

// DTO container with a footnote.
public class Footnote : FootnoteLink {
    // Gets or sets the value, that specifies whether this is a footnote or endnote.
    public enum FootnoteType : String, Codable
    {
        // Enum value "footnote"
        case footnote = "Footnote"

        // Enum value "endnote"
        case endnote = "Endnote"
    }

    // Field of position. DTO container with a footnote.
    private var _position : DocumentPosition? = nil;

    public var position : DocumentPosition? {
        get {
            return self._position;
        }
        set {
            self._position = newValue;
        }
    }

    // Field of footnoteType. DTO container with a footnote.
    private var _footnoteType : FootnoteType? = nil;

    public var footnoteType : FootnoteType? {
        get {
            return self._footnoteType;
        }
        set {
            self._footnoteType = newValue;
        }
    }

    // Field of referenceMark. DTO container with a footnote.
    private var _referenceMark : String? = nil;

    public var referenceMark : String? {
        get {
            return self._referenceMark;
        }
        set {
            self._referenceMark = newValue;
        }
    }

    // Field of text. DTO container with a footnote.
    private var _text : String? = nil;

    public var text : String? {
        get {
            return self._text;
        }
        set {
            self._text = newValue;
        }
    }

    // Field of content. DTO container with a footnote.
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
        case position = "Position";
        case footnoteType = "FootnoteType";
        case referenceMark = "ReferenceMark";
        case text = "Text";
        case content = "Content";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_position = json["Position"] as? [String: Any] {
            self.position = try ObjectSerializer.deserialize(type: DocumentPosition.self, from: raw_position);
        }

        if let raw_footnoteType = json["FootnoteType"] as? String {
            self.footnoteType = FootnoteType(rawValue: raw_footnoteType);
        }

        self.referenceMark = json["ReferenceMark"] as? String;
        self.text = json["Text"] as? String;
        if let raw_content = json["Content"] as? [String: Any] {
            self.content = try ObjectSerializer.deserialize(type: StoryChildNodes.self, from: raw_content);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.position = try container.decodeIfPresent(DocumentPosition.self, forKey: .position);
        self.footnoteType = try container.decodeIfPresent(FootnoteType.self, forKey: .footnoteType);
        self.referenceMark = try container.decodeIfPresent(String.self, forKey: .referenceMark);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
        self.content = try container.decodeIfPresent(StoryChildNodes.self, forKey: .content);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
        if (self.footnoteType != nil) {
            try container.encode(self.footnoteType, forKey: .footnoteType);
        }
        if (self.referenceMark != nil) {
            try container.encode(self.referenceMark, forKey: .referenceMark);
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
        try self.position?.validate();
        try self.content?.validate();

    }

    // Sets position. Gets or sets the link to comment range start node.
    public func setPosition(position : DocumentPosition?) -> Footnote {
        self.position = position;
        return self;
    }

    // Gets position. Gets or sets the link to comment range start node.
    public func getPosition() -> DocumentPosition? {
        return self.position;
    }


    // Sets footnoteType. Gets or sets the value, that specifies whether this is a footnote or endnote.
    public func setFootnoteType(footnoteType : FootnoteType?) -> Footnote {
        self.footnoteType = footnoteType;
        return self;
    }

    // Gets footnoteType. Gets or sets the value, that specifies whether this is a footnote or endnote.
    public func getFootnoteType() -> FootnoteType? {
        return self.footnoteType;
    }


    // Sets referenceMark. Gets or sets the custom reference mark to be used for this footnote. The default value is Empty, meaning auto-numbered footnotes are used. RTF-format can only store 1 symbol as custom reference mark, so upon export only the first symbol will be written others will be discard.
    public func setReferenceMark(referenceMark : String?) -> Footnote {
        self.referenceMark = referenceMark;
        return self;
    }

    // Gets referenceMark. Gets or sets the custom reference mark to be used for this footnote. The default value is Empty, meaning auto-numbered footnotes are used. RTF-format can only store 1 symbol as custom reference mark, so upon export only the first symbol will be written others will be discard.
    public func getReferenceMark() -> String? {
        return self.referenceMark;
    }


    // Sets text. Gets or sets text of the footnote. This method allows to quickly set text of a footnote from a string. The string can contain paragraph breaks, this will create paragraphs of text in the footnote accordingly.
    public func setText(text : String?) -> Footnote {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets text of the footnote. This method allows to quickly set text of a footnote from a string. The string can contain paragraph breaks, this will create paragraphs of text in the footnote accordingly.
    public func getText() -> String? {
        return self.text;
    }


    // Sets content. Gets or sets the content of the footnote.
    public func setContent(content : StoryChildNodes?) -> Footnote {
        self.content = content;
        return self;
    }

    // Gets content. Gets or sets the content of the footnote.
    public func getContent() -> StoryChildNodes? {
        return self.content;
    }
}
