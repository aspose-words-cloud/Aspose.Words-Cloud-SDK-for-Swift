/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListLevels.swift">
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

// DTO container with a single document list.
public class ListLevels : LinkElement {
    // Field of listLevel. DTO container with a single document list.
    private var _listLevel : [ListLevel]? = nil;

    public var listLevel : [ListLevel]? {
        get {
            return self._listLevel;
        }
        set {
            self._listLevel = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case listLevel = "ListLevel";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_listLevel = json["ListLevel"] as? [Any] {
            self.listLevel = try raw_listLevel.map {
                if let element_listLevel = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: ListLevel.self, from: element_listLevel);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "ListLevel");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.listLevel = try container.decodeIfPresent([ListLevel].self, forKey: .listLevel);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.listLevel != nil) {
            try container.encode(self.listLevel, forKey: .listLevel);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.listLevel != nil) {
            for elementListLevel in self.listLevel! {
                try elementListLevel.validate();
            }
        }

    }

    // Sets listLevel. Gets or sets the collection of list levels for this list. Use this property to access and modify formatting individual to each level of the list.
    public func setListLevel(listLevel : [ListLevel]?) -> ListLevels {
        self.listLevel = listLevel;
        return self;
    }

    // Gets listLevel. Gets or sets the collection of list levels for this list. Use this property to access and modify formatting individual to each level of the list.
    public func getListLevel() -> [ListLevel]? {
        return self.listLevel;
    }
}
