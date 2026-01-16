/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FootnotesStatData.swift">
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

// Container for the footnotes statistical data.
public class FootnotesStatData : Codable, WordsApiModel {
    // Field of paragraphCount. Container for the footnotes statistical data.
    private var _paragraphCount : Int? = nil;

    public var paragraphCount : Int? {
        get {
            return self._paragraphCount;
        }
        set {
            self._paragraphCount = newValue;
        }
    }

    // Field of wordCount. Container for the footnotes statistical data.
    private var _wordCount : Int? = nil;

    public var wordCount : Int? {
        get {
            return self._wordCount;
        }
        set {
            self._wordCount = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case paragraphCount = "ParagraphCount";
        case wordCount = "WordCount";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.paragraphCount = json["ParagraphCount"] as? Int;
        self.wordCount = json["WordCount"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.paragraphCount = try container.decodeIfPresent(Int.self, forKey: .paragraphCount);
        self.wordCount = try container.decodeIfPresent(Int.self, forKey: .wordCount);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.paragraphCount != nil) {
            try container.encode(self.paragraphCount, forKey: .paragraphCount);
        }
        if (self.wordCount != nil) {
            try container.encode(self.wordCount, forKey: .wordCount);
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
    }

    // Sets paragraphCount. Gets or sets the total count of paragraphs in footnotes.
    public func setParagraphCount(paragraphCount : Int?) -> FootnotesStatData {
        self.paragraphCount = paragraphCount;
        return self;
    }

    // Gets paragraphCount. Gets or sets the total count of paragraphs in footnotes.
    public func getParagraphCount() -> Int? {
        return self.paragraphCount;
    }


    // Sets wordCount. Gets or sets the total count of words in footnotes.
    public func setWordCount(wordCount : Int?) -> FootnotesStatData {
        self.wordCount = wordCount;
        return self;
    }

    // Gets wordCount. Gets or sets the total count of words in footnotes.
    public func getWordCount() -> Int? {
        return self.wordCount;
    }
}
