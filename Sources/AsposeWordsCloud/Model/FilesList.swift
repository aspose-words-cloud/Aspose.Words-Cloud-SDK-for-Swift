/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FilesList.swift">
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

// Files list.
public class FilesList : Codable, WordsApiModel {
    // Field of value. Files list.
    private var _value : [StorageFile]? = nil;

    public var value : [StorageFile]? {
        get {
            return self._value;
        }
        set {
            self._value = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case value = "Value";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_value = json["Value"] as? [Any] {
            self.value = try raw_value.map {
                if let element_value = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: StorageFile.self, from: element_value);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "StorageFile");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.value = try container.decodeIfPresent([StorageFile].self, forKey: .value);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.value != nil) {
            try container.encode(self.value, forKey: .value);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.value != nil) {
            for elementValue in self.value! {
                try elementValue.validate();
            }
        }

    }

    // Sets value. Files and folders contained by folder StorageFile.
    public func setValue(value : [StorageFile]?) -> FilesList {
        self.value = value;
        return self;
    }

    // Gets value. Files and folders contained by folder StorageFile.
    public func getValue() -> [StorageFile]? {
        return self.value;
    }
}
