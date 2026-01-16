/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Paragraph.swift">
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

// DTO container with a paragraph element.
public class Paragraph : NodeLink {
    // Field of childNodes. DTO container with a paragraph element.
    private var _childNodes : [NodeLink]? = nil;

    public var childNodes : [NodeLink]? {
        get {
            return self._childNodes;
        }
        set {
            self._childNodes = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case childNodes = "ChildNodes";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_childNodes = json["ChildNodes"] as? [Any] {
            self.childNodes = try raw_childNodes.map {
                if let element_childNodes = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: NodeLink.self, from: element_childNodes);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "NodeLink");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.childNodes = try container.decodeIfPresent([NodeLink].self, forKey: .childNodes);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.childNodes != nil) {
            try container.encode(self.childNodes, forKey: .childNodes);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.childNodes != nil) {
            for elementChildNodes in self.childNodes! {
                try elementChildNodes.validate();
            }
        }

    }

    // Sets childNodes. Gets or sets the list of child nodes.
    public func setChildNodes(childNodes : [NodeLink]?) -> Paragraph {
        self.childNodes = childNodes;
        return self;
    }

    // Gets childNodes. Gets or sets the list of child nodes.
    public func getChildNodes() -> [NodeLink]? {
        return self.childNodes;
    }
}
