/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StructuredDocumentTagListItem.swift">
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

// DTO container with a SdtListItem for StructuredDocumentTag.
public class StructuredDocumentTagListItem : Codable, WordsApiModel {
    // Field of displayText. DTO container with a SdtListItem for StructuredDocumentTag.
    private var _displayText : String? = nil;

    public var displayText : String? {
        get {
            return self._displayText;
        }
        set {
            self._displayText = newValue;
        }
    }

    // Field of value. DTO container with a SdtListItem for StructuredDocumentTag.
    private var _value : String? = nil;

    public var value : String? {
        get {
            return self._value;
        }
        set {
            self._value = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case displayText = "DisplayText";
        case value = "Value";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.displayText = json["DisplayText"] as? String;
        self.value = json["Value"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.displayText = try container.decodeIfPresent(String.self, forKey: .displayText);
        self.value = try container.decodeIfPresent(String.self, forKey: .value);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.displayText != nil) {
            try container.encode(self.displayText, forKey: .displayText);
        }
        if (self.value != nil) {
            try container.encode(self.value, forKey: .value);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets displayText. Gets or sets the text to display in the run content in place of the Aspose.Words.Markup.SdtListItem.Value attribute contents for this list item. Cannot be null and cannot be an empty string.
    public func setDisplayText(displayText : String?) -> StructuredDocumentTagListItem {
        self.displayText = displayText;
        return self;
    }

    // Gets displayText. Gets or sets the text to display in the run content in place of the Aspose.Words.Markup.SdtListItem.Value attribute contents for this list item. Cannot be null and cannot be an empty string.
    public func getDisplayText() -> String? {
        return self.displayText;
    }


    // Sets value. Gets or sets the value of this list item. Cannot be null and cannot be an empty string.
    public func setValue(value : String?) -> StructuredDocumentTagListItem {
        self.value = value;
        return self;
    }

    // Gets value. Gets or sets the value of this list item. Cannot be null and cannot be an empty string.
    public func getValue() -> String? {
        return self.value;
    }
}
