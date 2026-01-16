/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentStatData.swift">
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

// Container for the document's statistical data.
public class DocumentStatData : Codable, WordsApiModel {
    // Field of footnotesStatData. Container for the document's statistical data.
    private var _footnotesStatData : FootnotesStatData? = nil;

    public var footnotesStatData : FootnotesStatData? {
        get {
            return self._footnotesStatData;
        }
        set {
            self._footnotesStatData = newValue;
        }
    }

    // Field of pageCount. Container for the document's statistical data.
    private var _pageCount : Int? = nil;

    public var pageCount : Int? {
        get {
            return self._pageCount;
        }
        set {
            self._pageCount = newValue;
        }
    }

    // Field of paragraphCount. Container for the document's statistical data.
    private var _paragraphCount : Int? = nil;

    public var paragraphCount : Int? {
        get {
            return self._paragraphCount;
        }
        set {
            self._paragraphCount = newValue;
        }
    }

    // Field of wordCount. Container for the document's statistical data.
    private var _wordCount : Int? = nil;

    public var wordCount : Int? {
        get {
            return self._wordCount;
        }
        set {
            self._wordCount = newValue;
        }
    }

    // Field of pageStatData. Container for the document's statistical data.
    private var _pageStatData : [PageStatData]? = nil;

    public var pageStatData : [PageStatData]? {
        get {
            return self._pageStatData;
        }
        set {
            self._pageStatData = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case footnotesStatData = "FootnotesStatData";
        case pageCount = "PageCount";
        case paragraphCount = "ParagraphCount";
        case wordCount = "WordCount";
        case pageStatData = "PageStatData";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_footnotesStatData = json["FootnotesStatData"] as? [String: Any] {
            self.footnotesStatData = try ObjectSerializer.deserialize(type: FootnotesStatData.self, from: raw_footnotesStatData);
        }

        self.pageCount = json["PageCount"] as? Int;
        self.paragraphCount = json["ParagraphCount"] as? Int;
        self.wordCount = json["WordCount"] as? Int;
        if let raw_pageStatData = json["PageStatData"] as? [Any] {
            self.pageStatData = try raw_pageStatData.map {
                if let element_pageStatData = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: PageStatData.self, from: element_pageStatData);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "PageStatData");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.footnotesStatData = try container.decodeIfPresent(FootnotesStatData.self, forKey: .footnotesStatData);
        self.pageCount = try container.decodeIfPresent(Int.self, forKey: .pageCount);
        self.paragraphCount = try container.decodeIfPresent(Int.self, forKey: .paragraphCount);
        self.wordCount = try container.decodeIfPresent(Int.self, forKey: .wordCount);
        self.pageStatData = try container.decodeIfPresent([PageStatData].self, forKey: .pageStatData);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.footnotesStatData != nil) {
            try container.encode(self.footnotesStatData, forKey: .footnotesStatData);
        }
        if (self.pageCount != nil) {
            try container.encode(self.pageCount, forKey: .pageCount);
        }
        if (self.paragraphCount != nil) {
            try container.encode(self.paragraphCount, forKey: .paragraphCount);
        }
        if (self.wordCount != nil) {
            try container.encode(self.wordCount, forKey: .wordCount);
        }
        if (self.pageStatData != nil) {
            try container.encode(self.pageStatData, forKey: .pageStatData);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.pageCount == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "pageCount");
        }
        if (self.paragraphCount == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "paragraphCount");
        }
        if (self.wordCount == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "wordCount");
        }
        try self.footnotesStatData?.validate();
        if (self.pageStatData != nil) {
            for elementPageStatData in self.pageStatData! {
                try elementPageStatData.validate();
            }
        }

    }

    // Sets footnotesStatData. Gets or sets the detailed statistics on footnotes.
    public func setFootnotesStatData(footnotesStatData : FootnotesStatData?) -> DocumentStatData {
        self.footnotesStatData = footnotesStatData;
        return self;
    }

    // Gets footnotesStatData. Gets or sets the detailed statistics on footnotes.
    public func getFootnotesStatData() -> FootnotesStatData? {
        return self.footnotesStatData;
    }


    // Sets pageCount. Gets or sets the total count of pages in the document.
    public func setPageCount(pageCount : Int?) -> DocumentStatData {
        self.pageCount = pageCount;
        return self;
    }

    // Gets pageCount. Gets or sets the total count of pages in the document.
    public func getPageCount() -> Int? {
        return self.pageCount;
    }


    // Sets paragraphCount. Gets or sets the total count of paragraphs in the document.
    public func setParagraphCount(paragraphCount : Int?) -> DocumentStatData {
        self.paragraphCount = paragraphCount;
        return self;
    }

    // Gets paragraphCount. Gets or sets the total count of paragraphs in the document.
    public func getParagraphCount() -> Int? {
        return self.paragraphCount;
    }


    // Sets wordCount. Gets or sets the total count of words in the document.
    public func setWordCount(wordCount : Int?) -> DocumentStatData {
        self.wordCount = wordCount;
        return self;
    }

    // Gets wordCount. Gets or sets the total count of words in the document.
    public func getWordCount() -> Int? {
        return self.wordCount;
    }


    // Sets pageStatData. Gets or sets the detailed statistics on all pages.
    public func setPageStatData(pageStatData : [PageStatData]?) -> DocumentStatData {
        self.pageStatData = pageStatData;
        return self;
    }

    // Gets pageStatData. Gets or sets the detailed statistics on all pages.
    public func getPageStatData() -> [PageStatData]? {
        return self.pageStatData;
    }
}
