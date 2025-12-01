/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListLevelUpdate.swift">
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

// Represents a document list levels.
public class ListLevelUpdate : Codable, WordsApiModel {
    // Gets or sets the number style for this list level.
    public enum NumberStyle : String, Codable
    {
        // Enum value "arabic"
        case arabic = "Arabic"

        // Enum value "uppercaseRoman"
        case uppercaseRoman = "UppercaseRoman"

        // Enum value "lowercaseRoman"
        case lowercaseRoman = "LowercaseRoman"

        // Enum value "uppercaseLetter"
        case uppercaseLetter = "UppercaseLetter"

        // Enum value "lowercaseLetter"
        case lowercaseLetter = "LowercaseLetter"

        // Enum value "ordinal"
        case ordinal = "Ordinal"

        // Enum value "number"
        case number = "Number"

        // Enum value "ordinalText"
        case ordinalText = "OrdinalText"

        // Enum value "hex"
        case hex = "Hex"

        // Enum value "chicagoManual"
        case chicagoManual = "ChicagoManual"

        // Enum value "kanji"
        case kanji = "Kanji"

        // Enum value "kanjiDigit"
        case kanjiDigit = "KanjiDigit"

        // Enum value "aiueoHalfWidth"
        case aiueoHalfWidth = "AiueoHalfWidth"

        // Enum value "irohaHalfWidth"
        case irohaHalfWidth = "IrohaHalfWidth"

        // Enum value "arabicFullWidth"
        case arabicFullWidth = "ArabicFullWidth"

        // Enum value "arabicHalfWidth"
        case arabicHalfWidth = "ArabicHalfWidth"

        // Enum value "kanjiTraditional"
        case kanjiTraditional = "KanjiTraditional"

        // Enum value "kanjiTraditional2"
        case kanjiTraditional2 = "KanjiTraditional2"

        // Enum value "numberInCircle"
        case numberInCircle = "NumberInCircle"

        // Enum value "decimalFullWidth"
        case decimalFullWidth = "DecimalFullWidth"

        // Enum value "aiueo"
        case aiueo = "Aiueo"

        // Enum value "iroha"
        case iroha = "Iroha"

        // Enum value "leadingZero"
        case leadingZero = "LeadingZero"

        // Enum value "bullet"
        case bullet = "Bullet"

        // Enum value "ganada"
        case ganada = "Ganada"

        // Enum value "chosung"
        case chosung = "Chosung"

        // Enum value "gB1"
        case gB1 = "GB1"

        // Enum value "gB2"
        case gB2 = "GB2"

        // Enum value "gB3"
        case gB3 = "GB3"

        // Enum value "gB4"
        case gB4 = "GB4"

        // Enum value "zodiac1"
        case zodiac1 = "Zodiac1"

        // Enum value "zodiac2"
        case zodiac2 = "Zodiac2"

        // Enum value "zodiac3"
        case zodiac3 = "Zodiac3"

        // Enum value "tradChinNum1"
        case tradChinNum1 = "TradChinNum1"

        // Enum value "tradChinNum2"
        case tradChinNum2 = "TradChinNum2"

        // Enum value "tradChinNum3"
        case tradChinNum3 = "TradChinNum3"

        // Enum value "tradChinNum4"
        case tradChinNum4 = "TradChinNum4"

        // Enum value "simpChinNum1"
        case simpChinNum1 = "SimpChinNum1"

        // Enum value "simpChinNum2"
        case simpChinNum2 = "SimpChinNum2"

        // Enum value "simpChinNum3"
        case simpChinNum3 = "SimpChinNum3"

        // Enum value "simpChinNum4"
        case simpChinNum4 = "SimpChinNum4"

        // Enum value "hanjaRead"
        case hanjaRead = "HanjaRead"

        // Enum value "hanjaReadDigit"
        case hanjaReadDigit = "HanjaReadDigit"

        // Enum value "hangul"
        case hangul = "Hangul"

        // Enum value "hanja"
        case hanja = "Hanja"

        // Enum value "hebrew1"
        case hebrew1 = "Hebrew1"

        // Enum value "arabic1"
        case arabic1 = "Arabic1"

        // Enum value "hebrew2"
        case hebrew2 = "Hebrew2"

        // Enum value "arabic2"
        case arabic2 = "Arabic2"

        // Enum value "hindiLetter1"
        case hindiLetter1 = "HindiLetter1"

        // Enum value "hindiLetter2"
        case hindiLetter2 = "HindiLetter2"

        // Enum value "hindiArabic"
        case hindiArabic = "HindiArabic"

        // Enum value "hindiCardinalText"
        case hindiCardinalText = "HindiCardinalText"

        // Enum value "thaiLetter"
        case thaiLetter = "ThaiLetter"

        // Enum value "thaiArabic"
        case thaiArabic = "ThaiArabic"

        // Enum value "thaiCardinalText"
        case thaiCardinalText = "ThaiCardinalText"

        // Enum value "vietCardinalText"
        case vietCardinalText = "VietCardinalText"

        // Enum value "numberInDash"
        case numberInDash = "NumberInDash"

        // Enum value "lowercaseRussian"
        case lowercaseRussian = "LowercaseRussian"

        // Enum value "uppercaseRussian"
        case uppercaseRussian = "UppercaseRussian"

        // Enum value "_none"
        case _none = "None"

        // Enum value "custom"
        case custom = "Custom"
    }

    // Gets or sets the justification of the actual number of the list item.
    // The list label is justified relative to the Aspose.Words.Lists.ListLevel.NumberPosition
    // property.
    public enum Alignment : String, Codable
    {
        // Enum value "_left"
        case _left = "Left"

        // Enum value "center"
        case center = "Center"

        // Enum value "_right"
        case _right = "Right"
    }

    // Gets or sets the character to be inserted after the number for the list level.
    public enum TrailingCharacter : String, Codable
    {
        // Enum value "tab"
        case tab = "Tab"

        // Enum value "space"
        case space = "Space"

        // Enum value "nothing"
        case nothing = "Nothing"
    }

    // Field of startAt. Represents a document list levels.
    private var _startAt : Int? = nil;

    public var startAt : Int? {
        get {
            return self._startAt;
        }
        set {
            self._startAt = newValue;
        }
    }

    // Field of numberStyle. Represents a document list levels.
    private var _numberStyle : NumberStyle? = nil;

    public var numberStyle : NumberStyle? {
        get {
            return self._numberStyle;
        }
        set {
            self._numberStyle = newValue;
        }
    }

    // Field of numberFormat. Represents a document list levels.
    private var _numberFormat : String? = nil;

    public var numberFormat : String? {
        get {
            return self._numberFormat;
        }
        set {
            self._numberFormat = newValue;
        }
    }

    // Field of alignment. Represents a document list levels.
    private var _alignment : Alignment? = nil;

    public var alignment : Alignment? {
        get {
            return self._alignment;
        }
        set {
            self._alignment = newValue;
        }
    }

    // Field of isLegal. Represents a document list levels.
    private var _isLegal : Bool? = nil;

    public var isLegal : Bool? {
        get {
            return self._isLegal;
        }
        set {
            self._isLegal = newValue;
        }
    }

    // Field of restartAfterLevel. Represents a document list levels.
    private var _restartAfterLevel : Int? = nil;

    public var restartAfterLevel : Int? {
        get {
            return self._restartAfterLevel;
        }
        set {
            self._restartAfterLevel = newValue;
        }
    }

    // Field of trailingCharacter. Represents a document list levels.
    private var _trailingCharacter : TrailingCharacter? = nil;

    public var trailingCharacter : TrailingCharacter? {
        get {
            return self._trailingCharacter;
        }
        set {
            self._trailingCharacter = newValue;
        }
    }

    // Field of tabPosition. Represents a document list levels.
    private var _tabPosition : Double? = nil;

    public var tabPosition : Double? {
        get {
            return self._tabPosition;
        }
        set {
            self._tabPosition = newValue;
        }
    }

    // Field of numberPosition. Represents a document list levels.
    private var _numberPosition : Double? = nil;

    public var numberPosition : Double? {
        get {
            return self._numberPosition;
        }
        set {
            self._numberPosition = newValue;
        }
    }

    // Field of textPosition. Represents a document list levels.
    private var _textPosition : Double? = nil;

    public var textPosition : Double? {
        get {
            return self._textPosition;
        }
        set {
            self._textPosition = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case startAt = "StartAt";
        case numberStyle = "NumberStyle";
        case numberFormat = "NumberFormat";
        case alignment = "Alignment";
        case isLegal = "IsLegal";
        case restartAfterLevel = "RestartAfterLevel";
        case trailingCharacter = "TrailingCharacter";
        case tabPosition = "TabPosition";
        case numberPosition = "NumberPosition";
        case textPosition = "TextPosition";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.startAt = json["StartAt"] as? Int;
        if let raw_numberStyle = json["NumberStyle"] as? String {
            self.numberStyle = NumberStyle(rawValue: raw_numberStyle);
        }

        self.numberFormat = json["NumberFormat"] as? String;
        if let raw_alignment = json["Alignment"] as? String {
            self.alignment = Alignment(rawValue: raw_alignment);
        }

        self.isLegal = json["IsLegal"] as? Bool;
        self.restartAfterLevel = json["RestartAfterLevel"] as? Int;
        if let raw_trailingCharacter = json["TrailingCharacter"] as? String {
            self.trailingCharacter = TrailingCharacter(rawValue: raw_trailingCharacter);
        }

        self.tabPosition = json["TabPosition"] as? Double;
        self.numberPosition = json["NumberPosition"] as? Double;
        self.textPosition = json["TextPosition"] as? Double;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.startAt = try container.decodeIfPresent(Int.self, forKey: .startAt);
        self.numberStyle = try container.decodeIfPresent(NumberStyle.self, forKey: .numberStyle);
        self.numberFormat = try container.decodeIfPresent(String.self, forKey: .numberFormat);
        self.alignment = try container.decodeIfPresent(Alignment.self, forKey: .alignment);
        self.isLegal = try container.decodeIfPresent(Bool.self, forKey: .isLegal);
        self.restartAfterLevel = try container.decodeIfPresent(Int.self, forKey: .restartAfterLevel);
        self.trailingCharacter = try container.decodeIfPresent(TrailingCharacter.self, forKey: .trailingCharacter);
        self.tabPosition = try container.decodeIfPresent(Double.self, forKey: .tabPosition);
        self.numberPosition = try container.decodeIfPresent(Double.self, forKey: .numberPosition);
        self.textPosition = try container.decodeIfPresent(Double.self, forKey: .textPosition);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.startAt != nil) {
            try container.encode(self.startAt, forKey: .startAt);
        }
        if (self.numberStyle != nil) {
            try container.encode(self.numberStyle, forKey: .numberStyle);
        }
        if (self.numberFormat != nil) {
            try container.encode(self.numberFormat, forKey: .numberFormat);
        }
        if (self.alignment != nil) {
            try container.encode(self.alignment, forKey: .alignment);
        }
        if (self.isLegal != nil) {
            try container.encode(self.isLegal, forKey: .isLegal);
        }
        if (self.restartAfterLevel != nil) {
            try container.encode(self.restartAfterLevel, forKey: .restartAfterLevel);
        }
        if (self.trailingCharacter != nil) {
            try container.encode(self.trailingCharacter, forKey: .trailingCharacter);
        }
        if (self.tabPosition != nil) {
            try container.encode(self.tabPosition, forKey: .tabPosition);
        }
        if (self.numberPosition != nil) {
            try container.encode(self.numberPosition, forKey: .numberPosition);
        }
        if (self.textPosition != nil) {
            try container.encode(self.textPosition, forKey: .textPosition);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets startAt. Gets or sets the starting number for this list level. The default value is 1.
    public func setStartAt(startAt : Int?) -> ListLevelUpdate {
        self.startAt = startAt;
        return self;
    }

    // Gets startAt. Gets or sets the starting number for this list level. The default value is 1.
    public func getStartAt() -> Int? {
        return self.startAt;
    }


    // Sets numberStyle. Gets or sets the number style for this list level.
    public func setNumberStyle(numberStyle : NumberStyle?) -> ListLevelUpdate {
        self.numberStyle = numberStyle;
        return self;
    }

    // Gets numberStyle. Gets or sets the number style for this list level.
    public func getNumberStyle() -> NumberStyle? {
        return self.numberStyle;
    }


    // Sets numberFormat. Gets or sets the number format for the list level. Among normal text characters, the string can contain placeholder characters \\x0000 to \\x0008 representing the numbers from the corresponding list levels. For example, the string "\\x0000.\\x0001)" will generate a list label that looks something like "1.5)". The number "1" is the current number from the 1st list level, the number "5" is the current number from the 2nd list level. Null is not allowed, but an empty string meaning no number is valid.
    public func setNumberFormat(numberFormat : String?) -> ListLevelUpdate {
        self.numberFormat = numberFormat;
        return self;
    }

    // Gets numberFormat. Gets or sets the number format for the list level. Among normal text characters, the string can contain placeholder characters \\x0000 to \\x0008 representing the numbers from the corresponding list levels. For example, the string "\\x0000.\\x0001)" will generate a list label that looks something like "1.5)". The number "1" is the current number from the 1st list level, the number "5" is the current number from the 2nd list level. Null is not allowed, but an empty string meaning no number is valid.
    public func getNumberFormat() -> String? {
        return self.numberFormat;
    }


    // Sets alignment. Gets or sets the justification of the actual number of the list item. The list label is justified relative to the Aspose.Words.Lists.ListLevel.NumberPosition property.
    public func setAlignment(alignment : Alignment?) -> ListLevelUpdate {
        self.alignment = alignment;
        return self;
    }

    // Gets alignment. Gets or sets the justification of the actual number of the list item. The list label is justified relative to the Aspose.Words.Lists.ListLevel.NumberPosition property.
    public func getAlignment() -> Alignment? {
        return self.alignment;
    }


    // Sets isLegal. Gets or sets a value indicating whether the level turns all inherited numbers to Arabic, false if it preserves their number style.
    public func setIsLegal(isLegal : Bool?) -> ListLevelUpdate {
        self.isLegal = isLegal;
        return self;
    }

    // Gets isLegal. Gets or sets a value indicating whether the level turns all inherited numbers to Arabic, false if it preserves their number style.
    public func getIsLegal() -> Bool? {
        return self.isLegal;
    }


    // Sets restartAfterLevel. Gets or sets the list level that must appear before the specified list level restarts numbering. The value of -1 means the numbering will continue.
    public func setRestartAfterLevel(restartAfterLevel : Int?) -> ListLevelUpdate {
        self.restartAfterLevel = restartAfterLevel;
        return self;
    }

    // Gets restartAfterLevel. Gets or sets the list level that must appear before the specified list level restarts numbering. The value of -1 means the numbering will continue.
    public func getRestartAfterLevel() -> Int? {
        return self.restartAfterLevel;
    }


    // Sets trailingCharacter. Gets or sets the character to be inserted after the number for the list level.
    public func setTrailingCharacter(trailingCharacter : TrailingCharacter?) -> ListLevelUpdate {
        self.trailingCharacter = trailingCharacter;
        return self;
    }

    // Gets trailingCharacter. Gets or sets the character to be inserted after the number for the list level.
    public func getTrailingCharacter() -> TrailingCharacter? {
        return self.trailingCharacter;
    }


    // Sets tabPosition. Gets or sets the tab position (in points) for the list level. Has effect only when Aspose.Words.Lists.ListLevel.TrailingCharacter is a tab. Aspose.Words.Lists.ListLevel.NumberPosition Aspose.Words.Lists.ListLevel.TextPosition.
    public func setTabPosition(tabPosition : Double?) -> ListLevelUpdate {
        self.tabPosition = tabPosition;
        return self;
    }

    // Gets tabPosition. Gets or sets the tab position (in points) for the list level. Has effect only when Aspose.Words.Lists.ListLevel.TrailingCharacter is a tab. Aspose.Words.Lists.ListLevel.NumberPosition Aspose.Words.Lists.ListLevel.TextPosition.
    public func getTabPosition() -> Double? {
        return self.tabPosition;
    }


    // Sets numberPosition. Gets or sets the position (in points) of the number or bullet for the list level. Aspose.Words.Lists.ListLevel.NumberPosition corresponds to LeftIndent plus FirstLineIndent of the paragraph. Aspose.Words.Lists.ListLevel.TextPosition Aspose.Words.Lists.ListLevel.TabPosition.
    public func setNumberPosition(numberPosition : Double?) -> ListLevelUpdate {
        self.numberPosition = numberPosition;
        return self;
    }

    // Gets numberPosition. Gets or sets the position (in points) of the number or bullet for the list level. Aspose.Words.Lists.ListLevel.NumberPosition corresponds to LeftIndent plus FirstLineIndent of the paragraph. Aspose.Words.Lists.ListLevel.TextPosition Aspose.Words.Lists.ListLevel.TabPosition.
    public func getNumberPosition() -> Double? {
        return self.numberPosition;
    }


    // Sets textPosition. Gets or sets the position (in points) for the second line of wrapping text for the list level. Aspose.Words.Lists.ListLevel.TextPosition corresponds to LeftIndent of the paragraph. Aspose.Words.Lists.ListLevel.NumberPosition Aspose.Words.Lists.ListLevel.TabPosition.
    public func setTextPosition(textPosition : Double?) -> ListLevelUpdate {
        self.textPosition = textPosition;
        return self;
    }

    // Gets textPosition. Gets or sets the position (in points) for the second line of wrapping text for the list level. Aspose.Words.Lists.ListLevel.TextPosition corresponds to LeftIndent of the paragraph. Aspose.Words.Lists.ListLevel.NumberPosition Aspose.Words.Lists.ListLevel.TabPosition.
    public func getTextPosition() -> Double? {
        return self.textPosition;
    }
}
