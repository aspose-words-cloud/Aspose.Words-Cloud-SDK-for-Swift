/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InfoAdditionalItem.swift">
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

// Info additional item.
public class InfoAdditionalItem : Codable, WordsApiModel {
    // Field of key. Info additional item.
    private var _key : String? = nil;

    public var key : String? {
        get {
            return self._key;
        }
        set {
            self._key = newValue;
        }
    }

    // Field of value. Info additional item.
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
        case key = "Key";
        case value = "Value";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.key = json["Key"] as? String;
        self.value = json["Value"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.key = try container.decodeIfPresent(String.self, forKey: .key);
        self.value = try container.decodeIfPresent(String.self, forKey: .value);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.key != nil) {
            try container.encode(self.key, forKey: .key);
        }
        if (self.value != nil) {
            try container.encode(self.value, forKey: .value);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets key. Gets or sets Key.
    public func setKey(key : String?) -> InfoAdditionalItem {
        self.key = key;
        return self;
    }

    // Gets key. Gets or sets Key.
    public func getKey() -> String? {
        return self.key;
    }


    // Sets value. Gets or sets Value.
    public func setValue(value : String?) -> InfoAdditionalItem {
        self.value = value;
        return self;
    }

    // Gets value. Gets or sets Value.
    public func getValue() -> String? {
        return self.value;
    }
}
