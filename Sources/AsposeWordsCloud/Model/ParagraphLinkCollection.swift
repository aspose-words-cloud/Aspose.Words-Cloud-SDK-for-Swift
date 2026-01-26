/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphLinkCollection.swift">
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

// The collection of paragraph's links.
public class ParagraphLinkCollection : LinkElement {
    // Field of paragraphLinkList. The collection of paragraph's links.
    private var _paragraphLinkList : [ParagraphLink]? = nil;

    public var paragraphLinkList : [ParagraphLink]? {
        get {
            return self._paragraphLinkList;
        }
        set {
            self._paragraphLinkList = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case paragraphLinkList = "ParagraphLinkList";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_paragraphLinkList = json["ParagraphLinkList"] as? [Any] {
            self.paragraphLinkList = try raw_paragraphLinkList.map {
                if let element_paragraphLinkList = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: ParagraphLink.self, from: element_paragraphLinkList);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "ParagraphLink");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.paragraphLinkList = try container.decodeIfPresent([ParagraphLink].self, forKey: .paragraphLinkList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.paragraphLinkList != nil) {
            try container.encode(self.paragraphLinkList, forKey: .paragraphLinkList);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.paragraphLinkList != nil) {
            for elementParagraphLinkList in self.paragraphLinkList! {
                try elementParagraphLinkList.validate();
            }
        }

    }

    // Sets paragraphLinkList. Gets or sets the collection of paragraph's links.
    public func setParagraphLinkList(paragraphLinkList : [ParagraphLink]?) -> ParagraphLinkCollection {
        self.paragraphLinkList = paragraphLinkList;
        return self;
    }

    // Gets paragraphLinkList. Gets or sets the collection of paragraph's links.
    public func getParagraphLinkList() -> [ParagraphLink]? {
        return self.paragraphLinkList;
    }
}
