/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SplitDocumentResult.swift">
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

// Result of splitting document.
public class SplitDocumentResult : Codable, WordsApiModel {
    // Field of sourceDocument. Result of splitting document.
    private var _sourceDocument : FileLink? = nil;

    public var sourceDocument : FileLink? {
        get {
            return self._sourceDocument;
        }
        set {
            self._sourceDocument = newValue;
        }
    }

    // Field of zippedPages. Result of splitting document.
    private var _zippedPages : FileLink? = nil;

    public var zippedPages : FileLink? {
        get {
            return self._zippedPages;
        }
        set {
            self._zippedPages = newValue;
        }
    }

    // Field of pages. Result of splitting document.
    private var _pages : [FileLink]? = nil;

    public var pages : [FileLink]? {
        get {
            return self._pages;
        }
        set {
            self._pages = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case sourceDocument = "SourceDocument";
        case zippedPages = "ZippedPages";
        case pages = "Pages";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_sourceDocument = json["SourceDocument"] as? [String: Any] {
            self.sourceDocument = try ObjectSerializer.deserialize(type: FileLink.self, from: raw_sourceDocument);
        }

        if let raw_zippedPages = json["ZippedPages"] as? [String: Any] {
            self.zippedPages = try ObjectSerializer.deserialize(type: FileLink.self, from: raw_zippedPages);
        }

        if let raw_pages = json["Pages"] as? [Any] {
            self.pages = try raw_pages.map {
                if let element_pages = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: FileLink.self, from: element_pages);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "FileLink");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.sourceDocument = try container.decodeIfPresent(FileLink.self, forKey: .sourceDocument);
        self.zippedPages = try container.decodeIfPresent(FileLink.self, forKey: .zippedPages);
        self.pages = try container.decodeIfPresent([FileLink].self, forKey: .pages);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.sourceDocument != nil) {
            try container.encode(self.sourceDocument, forKey: .sourceDocument);
        }
        if (self.zippedPages != nil) {
            try container.encode(self.zippedPages, forKey: .zippedPages);
        }
        if (self.pages != nil) {
            try container.encode(self.pages, forKey: .pages);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.sourceDocument?.validate();
        try self.zippedPages?.validate();
        if (self.pages != nil) {
            for elementPages in self.pages! {
                try elementPages.validate();
            }
        }

    }

    // Sets sourceDocument. Gets or sets the link to the source document.
    public func setSourceDocument(sourceDocument : FileLink?) -> SplitDocumentResult {
        self.sourceDocument = sourceDocument;
        return self;
    }

    // Gets sourceDocument. Gets or sets the link to the source document.
    public func getSourceDocument() -> FileLink? {
        return self.sourceDocument;
    }


    // Sets zippedPages. Gets or sets the link to the file archive with pages.
    public func setZippedPages(zippedPages : FileLink?) -> SplitDocumentResult {
        self.zippedPages = zippedPages;
        return self;
    }

    // Gets zippedPages. Gets or sets the link to the file archive with pages.
    public func getZippedPages() -> FileLink? {
        return self.zippedPages;
    }


    // Sets pages. Gets or sets the list of pages.
    public func setPages(pages : [FileLink]?) -> SplitDocumentResult {
        self.pages = pages;
        return self;
    }

    // Gets pages. Gets or sets the list of pages.
    public func getPages() -> [FileLink]? {
        return self.pages;
    }
}
