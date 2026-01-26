/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Section.swift">
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
public class Section : LinkElement {
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

    // Field of pageSetup. DTO container with a section element.
    private var _pageSetup : LinkElement? = nil;

    public var pageSetup : LinkElement? {
        get {
            return self._pageSetup;
        }
        set {
            self._pageSetup = newValue;
        }
    }

    // Field of headerFooters. DTO container with a section element.
    private var _headerFooters : LinkElement? = nil;

    public var headerFooters : LinkElement? {
        get {
            return self._headerFooters;
        }
        set {
            self._headerFooters = newValue;
        }
    }

    // Field of tables. DTO container with a section element.
    private var _tables : LinkElement? = nil;

    public var tables : LinkElement? {
        get {
            return self._tables;
        }
        set {
            self._tables = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case childNodes = "ChildNodes";
        case paragraphs = "Paragraphs";
        case pageSetup = "PageSetup";
        case headerFooters = "HeaderFooters";
        case tables = "Tables";
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

        if let raw_pageSetup = json["PageSetup"] as? [String: Any] {
            self.pageSetup = try ObjectSerializer.deserialize(type: LinkElement.self, from: raw_pageSetup);
        }

        if let raw_headerFooters = json["HeaderFooters"] as? [String: Any] {
            self.headerFooters = try ObjectSerializer.deserialize(type: LinkElement.self, from: raw_headerFooters);
        }

        if let raw_tables = json["Tables"] as? [String: Any] {
            self.tables = try ObjectSerializer.deserialize(type: LinkElement.self, from: raw_tables);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.childNodes = try container.decodeIfPresent([NodeLink].self, forKey: .childNodes);
        self.paragraphs = try container.decodeIfPresent(LinkElement.self, forKey: .paragraphs);
        self.pageSetup = try container.decodeIfPresent(LinkElement.self, forKey: .pageSetup);
        self.headerFooters = try container.decodeIfPresent(LinkElement.self, forKey: .headerFooters);
        self.tables = try container.decodeIfPresent(LinkElement.self, forKey: .tables);
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
        if (self.pageSetup != nil) {
            try container.encode(self.pageSetup, forKey: .pageSetup);
        }
        if (self.headerFooters != nil) {
            try container.encode(self.headerFooters, forKey: .headerFooters);
        }
        if (self.tables != nil) {
            try container.encode(self.tables, forKey: .tables);
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
        try self.pageSetup?.validate();
        try self.headerFooters?.validate();
        try self.tables?.validate();

    }

    // Sets childNodes. Gets or sets the list of child nodes.
    public func setChildNodes(childNodes : [NodeLink]?) -> Section {
        self.childNodes = childNodes;
        return self;
    }

    // Gets childNodes. Gets or sets the list of child nodes.
    public func getChildNodes() -> [NodeLink]? {
        return self.childNodes;
    }


    // Sets paragraphs. Gets or sets the link to Paragraphs resource.
    public func setParagraphs(paragraphs : LinkElement?) -> Section {
        self.paragraphs = paragraphs;
        return self;
    }

    // Gets paragraphs. Gets or sets the link to Paragraphs resource.
    public func getParagraphs() -> LinkElement? {
        return self.paragraphs;
    }


    // Sets pageSetup. Gets or sets the link to PageSetup resource.
    public func setPageSetup(pageSetup : LinkElement?) -> Section {
        self.pageSetup = pageSetup;
        return self;
    }

    // Gets pageSetup. Gets or sets the link to PageSetup resource.
    public func getPageSetup() -> LinkElement? {
        return self.pageSetup;
    }


    // Sets headerFooters. Gets or sets the link to HeaderFooters resource.
    public func setHeaderFooters(headerFooters : LinkElement?) -> Section {
        self.headerFooters = headerFooters;
        return self;
    }

    // Gets headerFooters. Gets or sets the link to HeaderFooters resource.
    public func getHeaderFooters() -> LinkElement? {
        return self.headerFooters;
    }


    // Sets tables. Gets or sets the link to Tables resource.
    public func setTables(tables : LinkElement?) -> Section {
        self.tables = tables;
        return self;
    }

    // Gets tables. Gets or sets the link to Tables resource.
    public func getTables() -> LinkElement? {
        return self.tables;
    }
}
