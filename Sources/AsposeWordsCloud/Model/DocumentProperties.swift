/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentProperties.swift">
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

// The collection of document properties.
public class DocumentProperties : LinkElement {
    // Field of list. The collection of document properties.
    private var _list : [DocumentProperty]? = nil;

    public var list : [DocumentProperty]? {
        get {
            return self._list;
        }
        set {
            self._list = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case list = "List";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_list = json["List"] as? [Any] {
            self.list = try raw_list.map {
                if let element_list = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: DocumentProperty.self, from: element_list);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "DocumentProperty");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.list = try container.decodeIfPresent([DocumentProperty].self, forKey: .list);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.list != nil) {
            try container.encode(self.list, forKey: .list);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.list != nil) {
            for elementList in self.list! {
                try elementList.validate();
            }
        }

    }

    // Sets list. Gets or sets the collection of document properties.
    public func setList(list : [DocumentProperty]?) -> DocumentProperties {
        self.list = list;
        return self;
    }

    // Gets list. Gets or sets the collection of document properties.
    public func getList() -> [DocumentProperty]? {
        return self.list;
    }
}
