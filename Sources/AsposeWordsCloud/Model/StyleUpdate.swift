/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StyleUpdate.swift">
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

// Represents a single document style properties to update.
public class StyleUpdate : Codable, WordsApiModel {
    // Field of nextParagraphStyleName. Represents a single document style properties to update.
    private var _nextParagraphStyleName : String? = nil;

    public var nextParagraphStyleName : String? {
        get {
            return self._nextParagraphStyleName;
        }
        set {
            self._nextParagraphStyleName = newValue;
        }
    }

    // Field of baseStyleName. Represents a single document style properties to update.
    private var _baseStyleName : String? = nil;

    public var baseStyleName : String? {
        get {
            return self._baseStyleName;
        }
        set {
            self._baseStyleName = newValue;
        }
    }

    // Field of isQuickStyle. Represents a single document style properties to update.
    private var _isQuickStyle : Bool? = nil;

    public var isQuickStyle : Bool? {
        get {
            return self._isQuickStyle;
        }
        set {
            self._isQuickStyle = newValue;
        }
    }

    // Field of name. Represents a single document style properties to update.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case nextParagraphStyleName = "NextParagraphStyleName";
        case baseStyleName = "BaseStyleName";
        case isQuickStyle = "IsQuickStyle";
        case name = "Name";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.nextParagraphStyleName = json["NextParagraphStyleName"] as? String;
        self.baseStyleName = json["BaseStyleName"] as? String;
        self.isQuickStyle = json["IsQuickStyle"] as? Bool;
        self.name = json["Name"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.nextParagraphStyleName = try container.decodeIfPresent(String.self, forKey: .nextParagraphStyleName);
        self.baseStyleName = try container.decodeIfPresent(String.self, forKey: .baseStyleName);
        self.isQuickStyle = try container.decodeIfPresent(Bool.self, forKey: .isQuickStyle);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.nextParagraphStyleName != nil) {
            try container.encode(self.nextParagraphStyleName, forKey: .nextParagraphStyleName);
        }
        if (self.baseStyleName != nil) {
            try container.encode(self.baseStyleName, forKey: .baseStyleName);
        }
        if (self.isQuickStyle != nil) {
            try container.encode(self.isQuickStyle, forKey: .isQuickStyle);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets nextParagraphStyleName. Gets or sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style. This property is not used by Aspose.Words. The next paragraph style will only be applied automatically when you edit the document in MS Word.
    public func setNextParagraphStyleName(nextParagraphStyleName : String?) -> StyleUpdate {
        self.nextParagraphStyleName = nextParagraphStyleName;
        return self;
    }

    // Gets nextParagraphStyleName. Gets or sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style. This property is not used by Aspose.Words. The next paragraph style will only be applied automatically when you edit the document in MS Word.
    public func getNextParagraphStyleName() -> String? {
        return self.nextParagraphStyleName;
    }


    // Sets baseStyleName. Gets or sets the name of the style this style is based on. This will be an empty string if the style is not based on any other style and it can be set to an empty string.
    public func setBaseStyleName(baseStyleName : String?) -> StyleUpdate {
        self.baseStyleName = baseStyleName;
        return self;
    }

    // Gets baseStyleName. Gets or sets the name of the style this style is based on. This will be an empty string if the style is not based on any other style and it can be set to an empty string.
    public func getBaseStyleName() -> String? {
        return self.baseStyleName;
    }


    // Sets isQuickStyle. Gets or sets a value indicating whether this style is shown in the Quick Style gallery inside MS Word UI.
    public func setIsQuickStyle(isQuickStyle : Bool?) -> StyleUpdate {
        self.isQuickStyle = isQuickStyle;
        return self;
    }

    // Gets isQuickStyle. Gets or sets a value indicating whether this style is shown in the Quick Style gallery inside MS Word UI.
    public func getIsQuickStyle() -> Bool? {
        return self.isQuickStyle;
    }


    // Sets name. Gets or sets the name of the style. Cannot be an empty string. If there already is a style with such name in the collection, than this style will override it. All affected nodes will reference new style.
    public func setName(name : String?) -> StyleUpdate {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the name of the style. Cannot be an empty string. If there already is a style with such name in the collection, than this style will override it. All affected nodes will reference new style.
    public func getName() -> String? {
        return self.name;
    }
}
