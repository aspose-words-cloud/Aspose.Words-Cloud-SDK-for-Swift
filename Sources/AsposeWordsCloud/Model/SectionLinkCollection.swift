/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SectionLinkCollection.swift">
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

// The collection of section's links.
public class SectionLinkCollection : LinkElement {
    // Field of sectionLinkList. The collection of section's links.
    private var _sectionLinkList : [SectionLink]? = nil;

    public var sectionLinkList : [SectionLink]? {
        get {
            return self._sectionLinkList;
        }
        set {
            self._sectionLinkList = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case sectionLinkList = "SectionLinkList";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_sectionLinkList = json["SectionLinkList"] as? [Any] {
            self.sectionLinkList = try raw_sectionLinkList.map {
                if let element_sectionLinkList = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: SectionLink.self, from: element_sectionLinkList);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "SectionLink");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.sectionLinkList = try container.decodeIfPresent([SectionLink].self, forKey: .sectionLinkList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.sectionLinkList != nil) {
            try container.encode(self.sectionLinkList, forKey: .sectionLinkList);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.sectionLinkList != nil) {
            for elementSectionLinkList in self.sectionLinkList! {
                try elementSectionLinkList.validate();
            }
        }

    }

    // Sets sectionLinkList. Gets or sets the collection of section's links.
    public func setSectionLinkList(sectionLinkList : [SectionLink]?) -> SectionLinkCollection {
        self.sectionLinkList = sectionLinkList;
        return self;
    }

    // Gets sectionLinkList. Gets or sets the collection of section's links.
    public func getSectionLinkList() -> [SectionLink]? {
        return self.sectionLinkList;
    }
}
