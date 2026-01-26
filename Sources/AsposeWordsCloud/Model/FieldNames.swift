/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FieldNames.swift">
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

// Represents a collection of merge fields within a document.
public class FieldNames : LinkElement {
    // Field of names. Represents a collection of merge fields within a document.
    private var _names : [String]? = nil;

    public var names : [String]? {
        get {
            return self._names;
        }
        set {
            self._names = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case names = "Names";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_names = json["Names"] as? [Any] {
            self.names = try raw_names.map {
                if let element_names = $0 as? String {
                    return element_names;
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "String");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.names = try container.decodeIfPresent([String].self, forKey: .names);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.names != nil) {
            try container.encode(self.names, forKey: .names);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets names. Gets or sets the collection of fields names.
    public func setNames(names : [String]?) -> FieldNames {
        self.names = names;
        return self;
    }

    // Gets names. Gets or sets the collection of fields names.
    public func getNames() -> [String]? {
        return self.names;
    }
}
