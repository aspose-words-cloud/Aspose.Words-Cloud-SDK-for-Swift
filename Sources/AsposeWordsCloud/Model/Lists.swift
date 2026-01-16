/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Lists.swift">
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

// DTO container with an array of document lists.
public class Lists : LinkElement {
    // Field of listInfo. DTO container with an array of document lists.
    private var _listInfo : [ListInfo]? = nil;

    public var listInfo : [ListInfo]? {
        get {
            return self._listInfo;
        }
        set {
            self._listInfo = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case listInfo = "ListInfo";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_listInfo = json["ListInfo"] as? [Any] {
            self.listInfo = try raw_listInfo.map {
                if let element_listInfo = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: ListInfo.self, from: element_listInfo);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "ListInfo");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.listInfo = try container.decodeIfPresent([ListInfo].self, forKey: .listInfo);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.listInfo != nil) {
            try container.encode(self.listInfo, forKey: .listInfo);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.listInfo != nil) {
            for elementListInfo in self.listInfo! {
                try elementListInfo.validate();
            }
        }

    }

    // Sets listInfo. Gets or sets the array of document lists.
    public func setListInfo(listInfo : [ListInfo]?) -> Lists {
        self.listInfo = listInfo;
        return self;
    }

    // Gets listInfo. Gets or sets the array of document lists.
    public func getListInfo() -> [ListInfo]? {
        return self.listInfo;
    }
}
