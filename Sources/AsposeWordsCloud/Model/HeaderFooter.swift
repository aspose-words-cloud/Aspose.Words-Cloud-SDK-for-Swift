/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HeaderFooter.swift">
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

// DTO container with a section element.
public class HeaderFooter : HeaderFooterLink {
    // Field of childNodes. DTO container with a section element.
    private var _childNodes : [NodeLink]? = nil;

    public var childNodes : [NodeLink]? {
        get {
            return self._childNodes;
        }
        set {
            self._childNodes = newValue;
        }
    }

    // Field of paragraphs. DTO container with a section element.
    private var _paragraphs : LinkElement? = nil;

    public var paragraphs : LinkElement? {
        get {
            return self._paragraphs;
        }
        set {
            self._paragraphs = newValue;
        }
    }

    // Field of drawingObjects. DTO container with a section element.
    private var _drawingObjects : LinkElement? = nil;

    public var drawingObjects : LinkElement? {
        get {
            return self._drawingObjects;
        }
        set {
            self._drawingObjects = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case childNodes = "ChildNodes";
        case paragraphs = "Paragraphs";
        case drawingObjects = "DrawingObjects";
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

        if let raw_paragraphs = json["Paragraphs"] as? [String: Any] {
            self.paragraphs = try ObjectSerializer.deserialize(type: LinkElement.self, from: raw_paragraphs);
        }

        if let raw_drawingObjects = json["DrawingObjects"] as? [String: Any] {
            self.drawingObjects = try ObjectSerializer.deserialize(type: LinkElement.self, from: raw_drawingObjects);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.childNodes = try container.decodeIfPresent([NodeLink].self, forKey: .childNodes);
        self.paragraphs = try container.decodeIfPresent(LinkElement.self, forKey: .paragraphs);
        self.drawingObjects = try container.decodeIfPresent(LinkElement.self, forKey: .drawingObjects);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.childNodes != nil) {
            try container.encode(self.childNodes, forKey: .childNodes);
        }
        if (self.paragraphs != nil) {
            try container.encode(self.paragraphs, forKey: .paragraphs);
        }
        if (self.drawingObjects != nil) {
            try container.encode(self.drawingObjects, forKey: .drawingObjects);
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
        try self.paragraphs?.validate();
        try self.drawingObjects?.validate();

    }

    // Sets childNodes. Gets or sets the child nodes.
    public func setChildNodes(childNodes : [NodeLink]?) -> HeaderFooter {
        self.childNodes = childNodes;
        return self;
    }

    // Gets childNodes. Gets or sets the child nodes.
    public func getChildNodes() -> [NodeLink]? {
        return self.childNodes;
    }


    // Sets paragraphs. Gets or sets the link to Paragraphs resource.
    public func setParagraphs(paragraphs : LinkElement?) -> HeaderFooter {
        self.paragraphs = paragraphs;
        return self;
    }

    // Gets paragraphs. Gets or sets the link to Paragraphs resource.
    public func getParagraphs() -> LinkElement? {
        return self.paragraphs;
    }


    // Sets drawingObjects. Gets or sets the link to DrawingObjects resource.
    public func setDrawingObjects(drawingObjects : LinkElement?) -> HeaderFooter {
        self.drawingObjects = drawingObjects;
        return self;
    }

    // Gets drawingObjects. Gets or sets the link to DrawingObjects resource.
    public func getDrawingObjects() -> LinkElement? {
        return self.drawingObjects;
    }
}
