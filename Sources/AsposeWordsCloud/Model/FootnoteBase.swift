/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FootnoteBase.swift">
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

// Footnote base class.
public class FootnoteBase : Codable, WordsApiModel {
    // Gets or sets the option, that specifies whether this is a footnote or endnote.
    public enum FootnoteType : String, Codable
    {
        // Enum value "footnote"
        case footnote = "Footnote"

        // Enum value "endnote"
        case endnote = "Endnote"
    }

    // Field of position. Footnote base class.
    private var _position : Position? = nil;

    public var position : Position? {
        get {
            return self._position;
        }
        set {
            self._position = newValue;
        }
    }

    // Field of footnoteType. Footnote base class.
    private var _footnoteType : FootnoteType? = nil;

    public var footnoteType : FootnoteType? {
        get {
            return self._footnoteType;
        }
        set {
            self._footnoteType = newValue;
        }
    }

    // Field of referenceMark. Footnote base class.
    private var _referenceMark : String? = nil;

    public var referenceMark : String? {
        get {
            return self._referenceMark;
        }
        set {
            self._referenceMark = newValue;
        }
    }

    // Field of text. Footnote base class.
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
        case position = "Position";
        case footnoteType = "FootnoteType";
        case referenceMark = "ReferenceMark";
        case text = "Text";
        case invalidCodingKey;
    }

    internal init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_position = json["Position"] as? [String: Any] {
            self.position = try ObjectSerializer.deserialize(type: Position.self, from: raw_position);
        }

        if let raw_footnoteType = json["FootnoteType"] as? String {
            self.footnoteType = FootnoteType(rawValue: raw_footnoteType);
        }

        self.referenceMark = json["ReferenceMark"] as? String;
        self.text = json["Text"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.position = try container.decodeIfPresent(Position.self, forKey: .position);
        self.footnoteType = try container.decodeIfPresent(FootnoteType.self, forKey: .footnoteType);
        self.referenceMark = try container.decodeIfPresent(String.self, forKey: .referenceMark);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
    }

    public func encode(to encoder: Encoder) throws {
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
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.position?.validate();

    }

    // Sets position. Gets or sets the link to range start node.
    public func setPosition(position : Position?) -> FootnoteBase {
        self.position = position;
        return self;
    }

    // Gets position. Gets or sets the link to range start node.
    public func getPosition() -> Position? {
        return self.position;
    }


    // Sets footnoteType. Gets or sets the option, that specifies whether this is a footnote or endnote.
    public func setFootnoteType(footnoteType : FootnoteType?) -> FootnoteBase {
        self.footnoteType = footnoteType;
        return self;
    }

    // Gets footnoteType. Gets or sets the option, that specifies whether this is a footnote or endnote.
    public func getFootnoteType() -> FootnoteType? {
        return self.footnoteType;
    }


    // Sets referenceMark. Gets or sets the custom reference mark to be used for this footnote. The default value is Empty, meaning auto-numbered footnotes are used. RTF-format can only store 1 symbol as custom reference mark, so upon export only the first symbol will be written others will be discard.
    public func setReferenceMark(referenceMark : String?) -> FootnoteBase {
        self.referenceMark = referenceMark;
        return self;
    }

    // Gets referenceMark. Gets or sets the custom reference mark to be used for this footnote. The default value is Empty, meaning auto-numbered footnotes are used. RTF-format can only store 1 symbol as custom reference mark, so upon export only the first symbol will be written others will be discard.
    public func getReferenceMark() -> String? {
        return self.referenceMark;
    }


    // Sets text. Gets or sets text of the footnote. This method allows to quickly set text of a footnote from a string. The string can contain paragraph breaks, this will create paragraphs of text in the footnote accordingly.
    public func setText(text : String?) -> FootnoteBase {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets text of the footnote. This method allows to quickly set text of a footnote from a string. The string can contain paragraph breaks, this will create paragraphs of text in the footnote accordingly.
    public func getText() -> String? {
        return self.text;
    }
}
