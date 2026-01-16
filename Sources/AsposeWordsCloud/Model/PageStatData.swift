/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageStatData.swift">
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

// Container for the page's statistical data.
public class PageStatData : Codable, WordsApiModel {
    // Field of footnotesStatData. Container for the page's statistical data.
    private var _footnotesStatData : FootnotesStatData? = nil;

    public var footnotesStatData : FootnotesStatData? {
        get {
            return self._footnotesStatData;
        }
        set {
            self._footnotesStatData = newValue;
        }
    }

    // Field of paragraphCount. Container for the page's statistical data.
    private var _paragraphCount : Int? = nil;

    public var paragraphCount : Int? {
        get {
            return self._paragraphCount;
        }
        set {
            self._paragraphCount = newValue;
        }
    }

    // Field of wordCount. Container for the page's statistical data.
    private var _wordCount : Int? = nil;

    public var wordCount : Int? {
        get {
            return self._wordCount;
        }
        set {
            self._wordCount = newValue;
        }
    }

    // Field of pageNumber. Container for the page's statistical data.
    private var _pageNumber : Int? = nil;

    public var pageNumber : Int? {
        get {
            return self._pageNumber;
        }
        set {
            self._pageNumber = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case footnotesStatData = "FootnotesStatData";
        case paragraphCount = "ParagraphCount";
        case wordCount = "WordCount";
        case pageNumber = "PageNumber";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_footnotesStatData = json["FootnotesStatData"] as? [String: Any] {
            self.footnotesStatData = try ObjectSerializer.deserialize(type: FootnotesStatData.self, from: raw_footnotesStatData);
        }

        self.paragraphCount = json["ParagraphCount"] as? Int;
        self.wordCount = json["WordCount"] as? Int;
        self.pageNumber = json["PageNumber"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.footnotesStatData = try container.decodeIfPresent(FootnotesStatData.self, forKey: .footnotesStatData);
        self.paragraphCount = try container.decodeIfPresent(Int.self, forKey: .paragraphCount);
        self.wordCount = try container.decodeIfPresent(Int.self, forKey: .wordCount);
        self.pageNumber = try container.decodeIfPresent(Int.self, forKey: .pageNumber);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.footnotesStatData != nil) {
            try container.encode(self.footnotesStatData, forKey: .footnotesStatData);
        }
        if (self.paragraphCount != nil) {
            try container.encode(self.paragraphCount, forKey: .paragraphCount);
        }
        if (self.wordCount != nil) {
            try container.encode(self.wordCount, forKey: .wordCount);
        }
        if (self.pageNumber != nil) {
            try container.encode(self.pageNumber, forKey: .pageNumber);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.paragraphCount == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "paragraphCount");
        }
        if (self.wordCount == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "wordCount");
        }
        if (self.pageNumber == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "pageNumber");
        }
        try self.footnotesStatData?.validate();

    }

    // Sets footnotesStatData. Gets or sets the detailed statistics on the footnotes.
    public func setFootnotesStatData(footnotesStatData : FootnotesStatData?) -> PageStatData {
        self.footnotesStatData = footnotesStatData;
        return self;
    }

    // Gets footnotesStatData. Gets or sets the detailed statistics on the footnotes.
    public func getFootnotesStatData() -> FootnotesStatData? {
        return self.footnotesStatData;
    }


    // Sets paragraphCount. Gets or sets the total count of paragraphs in the page.
    public func setParagraphCount(paragraphCount : Int?) -> PageStatData {
        self.paragraphCount = paragraphCount;
        return self;
    }

    // Gets paragraphCount. Gets or sets the total count of paragraphs in the page.
    public func getParagraphCount() -> Int? {
        return self.paragraphCount;
    }


    // Sets wordCount. Gets or sets the total count of words in the page.
    public func setWordCount(wordCount : Int?) -> PageStatData {
        self.wordCount = wordCount;
        return self;
    }

    // Gets wordCount. Gets or sets the total count of words in the page.
    public func getWordCount() -> Int? {
        return self.wordCount;
    }


    // Sets pageNumber. Gets or sets the page number.
    public func setPageNumber(pageNumber : Int?) -> PageStatData {
        self.pageNumber = pageNumber;
        return self;
    }

    // Gets pageNumber. Gets or sets the page number.
    public func getPageNumber() -> Int? {
        return self.pageNumber;
    }
}
