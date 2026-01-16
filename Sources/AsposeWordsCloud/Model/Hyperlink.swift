/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Hyperlink.swift">
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

// Hyperlink element.
public class Hyperlink : LinkElement {
    // Field of displayText. Hyperlink element.
    private var _displayText : String? = nil;

    public var displayText : String? {
        get {
            return self._displayText;
        }
        set {
            self._displayText = newValue;
        }
    }

    // Field of value. Hyperlink element.
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

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.displayText = json["DisplayText"] as? String;
        self.value = json["Value"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.displayText = try container.decodeIfPresent(String.self, forKey: .displayText);
        self.value = try container.decodeIfPresent(String.self, forKey: .value);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.displayText != nil) {
            try container.encode(self.displayText, forKey: .displayText);
        }
        if (self.value != nil) {
            try container.encode(self.value, forKey: .value);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets displayText. Gets or sets the hypelink's display text.
    public func setDisplayText(displayText : String?) -> Hyperlink {
        self.displayText = displayText;
        return self;
    }

    // Gets displayText. Gets or sets the hypelink's display text.
    public func getDisplayText() -> String? {
        return self.displayText;
    }


    // Sets value. Gets or sets the value.
    public func setValue(value : String?) -> Hyperlink {
        self.value = value;
        return self;
    }

    // Gets value. Gets or sets the value.
    public func getValue() -> String? {
        return self.value;
    }
}
