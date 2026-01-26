/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphFormat.swift">
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

// Paragraph format element.
public class ParagraphFormat : ParagraphFormatBase {
    // Field of isListItem. Paragraph format element.
    private var _isListItem : Bool? = nil;

    public var isListItem : Bool? {
        get {
            return self._isListItem;
        }
        set {
            self._isListItem = newValue;
        }
    }

    // Field of isHeading. Paragraph format element.
    private var _isHeading : Bool? = nil;

    public var isHeading : Bool? {
        get {
            return self._isHeading;
        }
        set {
            self._isHeading = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case isListItem = "IsListItem";
        case isHeading = "IsHeading";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.isListItem = json["IsListItem"] as? Bool;
        self.isHeading = json["IsHeading"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isListItem = try container.decodeIfPresent(Bool.self, forKey: .isListItem);
        self.isHeading = try container.decodeIfPresent(Bool.self, forKey: .isHeading);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isListItem != nil) {
            try container.encode(self.isListItem, forKey: .isListItem);
        }
        if (self.isHeading != nil) {
            try container.encode(self.isHeading, forKey: .isHeading);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets isListItem. Gets or sets a value indicating whether the paragraph is an item in a bulleted or numbered list.
    public func setIsListItem(isListItem : Bool?) -> ParagraphFormat {
        self.isListItem = isListItem;
        return self;
    }

    // Gets isListItem. Gets or sets a value indicating whether the paragraph is an item in a bulleted or numbered list.
    public func getIsListItem() -> Bool? {
        return self.isListItem;
    }


    // Sets isHeading. Gets or sets a value indicating whether the paragraph style is one of the built-in Heading styles.
    public func setIsHeading(isHeading : Bool?) -> ParagraphFormat {
        self.isHeading = isHeading;
        return self;
    }

    // Gets isHeading. Gets or sets a value indicating whether the paragraph style is one of the built-in Heading styles.
    public func getIsHeading() -> Bool? {
        return self.isHeading;
    }
}
