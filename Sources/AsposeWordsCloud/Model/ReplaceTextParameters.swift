/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReplaceTextParameters.swift">
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

// Class for document replace text request building.
public class ReplaceTextParameters : Codable, WordsApiModel {
    // Field of applySuperscript. Class for document replace text request building.
    private var _applySuperscript : Bool? = nil;

    public var applySuperscript : Bool? {
        get {
            return self._applySuperscript;
        }
        set {
            self._applySuperscript = newValue;
        }
    }

    // Field of isMatchCase. Class for document replace text request building.
    private var _isMatchCase : Bool? = nil;

    public var isMatchCase : Bool? {
        get {
            return self._isMatchCase;
        }
        set {
            self._isMatchCase = newValue;
        }
    }

    // Field of isMatchWholeWord. Class for document replace text request building.
    private var _isMatchWholeWord : Bool? = nil;

    public var isMatchWholeWord : Bool? {
        get {
            return self._isMatchWholeWord;
        }
        set {
            self._isMatchWholeWord = newValue;
        }
    }

    // Field of isOldValueRegex. Class for document replace text request building.
    private var _isOldValueRegex : Bool? = nil;

    public var isOldValueRegex : Bool? {
        get {
            return self._isOldValueRegex;
        }
        set {
            self._isOldValueRegex = newValue;
        }
    }

    // Field of newValue. Class for document replace text request building.
    private var _newValue : String? = nil;

    public var newValue : String? {
        get {
            return self._newValue;
        }
        set {
            self._newValue = newValue;
        }
    }

    // Field of oldValue. Class for document replace text request building.
    private var _oldValue : String? = nil;

    public var oldValue : String? {
        get {
            return self._oldValue;
        }
        set {
            self._oldValue = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case applySuperscript = "ApplySuperscript";
        case isMatchCase = "IsMatchCase";
        case isMatchWholeWord = "IsMatchWholeWord";
        case isOldValueRegex = "IsOldValueRegex";
        case newValue = "NewValue";
        case oldValue = "OldValue";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.applySuperscript = json["ApplySuperscript"] as? Bool;
        self.isMatchCase = json["IsMatchCase"] as? Bool;
        self.isMatchWholeWord = json["IsMatchWholeWord"] as? Bool;
        self.isOldValueRegex = json["IsOldValueRegex"] as? Bool;
        self.newValue = json["NewValue"] as? String;
        self.oldValue = json["OldValue"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.applySuperscript = try container.decodeIfPresent(Bool.self, forKey: .applySuperscript);
        self.isMatchCase = try container.decodeIfPresent(Bool.self, forKey: .isMatchCase);
        self.isMatchWholeWord = try container.decodeIfPresent(Bool.self, forKey: .isMatchWholeWord);
        self.isOldValueRegex = try container.decodeIfPresent(Bool.self, forKey: .isOldValueRegex);
        self.newValue = try container.decodeIfPresent(String.self, forKey: .newValue);
        self.oldValue = try container.decodeIfPresent(String.self, forKey: .oldValue);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.applySuperscript != nil) {
            try container.encode(self.applySuperscript, forKey: .applySuperscript);
        }
        if (self.isMatchCase != nil) {
            try container.encode(self.isMatchCase, forKey: .isMatchCase);
        }
        if (self.isMatchWholeWord != nil) {
            try container.encode(self.isMatchWholeWord, forKey: .isMatchWholeWord);
        }
        if (self.isOldValueRegex != nil) {
            try container.encode(self.isOldValueRegex, forKey: .isOldValueRegex);
        }
        if (self.newValue != nil) {
            try container.encode(self.newValue, forKey: .newValue);
        }
        if (self.oldValue != nil) {
            try container.encode(self.oldValue, forKey: .oldValue);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.isMatchCase == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isMatchCase");
        }
        if (self.isMatchWholeWord == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isMatchWholeWord");
        }
        if (self.isOldValueRegex == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isOldValueRegex");
        }
        if (self.newValue == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "newValue");
        }
        if (self.oldValue == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "oldValue");
        }
    }

    // Sets applySuperscript. Gets or sets a value indicating whether apply superscript to font or not.
    public func setApplySuperscript(applySuperscript : Bool?) -> ReplaceTextParameters {
        self.applySuperscript = applySuperscript;
        return self;
    }

    // Gets applySuperscript. Gets or sets a value indicating whether apply superscript to font or not.
    public func getApplySuperscript() -> Bool? {
        return self.applySuperscript;
    }


    // Sets isMatchCase. Gets or sets a value indicating whether flag, true means the search is case-sensitive; false means the search is not case-sensitive.
    public func setIsMatchCase(isMatchCase : Bool?) -> ReplaceTextParameters {
        self.isMatchCase = isMatchCase;
        return self;
    }

    // Gets isMatchCase. Gets or sets a value indicating whether flag, true means the search is case-sensitive; false means the search is not case-sensitive.
    public func getIsMatchCase() -> Bool? {
        return self.isMatchCase;
    }


    // Sets isMatchWholeWord. Gets or sets a value indicating whether flag, means that only whole word matched are replaced.
    public func setIsMatchWholeWord(isMatchWholeWord : Bool?) -> ReplaceTextParameters {
        self.isMatchWholeWord = isMatchWholeWord;
        return self;
    }

    // Gets isMatchWholeWord. Gets or sets a value indicating whether flag, means that only whole word matched are replaced.
    public func getIsMatchWholeWord() -> Bool? {
        return self.isMatchWholeWord;
    }


    // Sets isOldValueRegex. Gets or sets a value indicating whether flag, means that OldValue contains regex expression.
    public func setIsOldValueRegex(isOldValueRegex : Bool?) -> ReplaceTextParameters {
        self.isOldValueRegex = isOldValueRegex;
        return self;
    }

    // Gets isOldValueRegex. Gets or sets a value indicating whether flag, means that OldValue contains regex expression.
    public func getIsOldValueRegex() -> Bool? {
        return self.isOldValueRegex;
    }


    // Sets newValue. Gets or sets the new text value to replace by.
    public func setNewValue(newValue : String?) -> ReplaceTextParameters {
        self.newValue = newValue;
        return self;
    }

    // Gets newValue. Gets or sets the new text value to replace by.
    public func getNewValue() -> String? {
        return self.newValue;
    }


    // Sets oldValue. Gets or sets the old text value (or regex pattern IsOldValueRegex) to replace.
    public func setOldValue(oldValue : String?) -> ReplaceTextParameters {
        self.oldValue = oldValue;
        return self;
    }

    // Gets oldValue. Gets or sets the old text value (or regex pattern IsOldValueRegex) to replace.
    public func getOldValue() -> String? {
        return self.oldValue;
    }
}
