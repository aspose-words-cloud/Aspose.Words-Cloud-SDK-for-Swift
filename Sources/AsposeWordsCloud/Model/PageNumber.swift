/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageNumber.swift">
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

// Class is used for insert page number request building.
public class PageNumber : Codable, WordsApiModel {
    // Field of alignment. Class is used for insert page number request building.
    private var _alignment : String? = nil;

    public var alignment : String? {
        get {
            return self._alignment;
        }
        set {
            self._alignment = newValue;
        }
    }

    // Field of format. Class is used for insert page number request building.
    private var _format : String? = nil;

    public var format : String? {
        get {
            return self._format;
        }
        set {
            self._format = newValue;
        }
    }

    // Field of isTop. Class is used for insert page number request building.
    private var _isTop : Bool? = nil;

    public var isTop : Bool? {
        get {
            return self._isTop;
        }
        set {
            self._isTop = newValue;
        }
    }

    // Field of pageStartingNumber. Class is used for insert page number request building.
    private var _pageStartingNumber : Int? = nil;

    public var pageStartingNumber : Int? {
        get {
            return self._pageStartingNumber;
        }
        set {
            self._pageStartingNumber = newValue;
        }
    }

    // Field of setPageNumberOnFirstPage. Class is used for insert page number request building.
    private var _setPageNumberOnFirstPage : Bool? = nil;

    public var setPageNumberOnFirstPage : Bool? {
        get {
            return self._setPageNumberOnFirstPage;
        }
        set {
            self._setPageNumberOnFirstPage = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case alignment = "Alignment";
        case format = "Format";
        case isTop = "IsTop";
        case pageStartingNumber = "PageStartingNumber";
        case setPageNumberOnFirstPage = "SetPageNumberOnFirstPage";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.alignment = json["Alignment"] as? String;
        self.format = json["Format"] as? String;
        self.isTop = json["IsTop"] as? Bool;
        self.pageStartingNumber = json["PageStartingNumber"] as? Int;
        self.setPageNumberOnFirstPage = json["SetPageNumberOnFirstPage"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alignment = try container.decodeIfPresent(String.self, forKey: .alignment);
        self.format = try container.decodeIfPresent(String.self, forKey: .format);
        self.isTop = try container.decodeIfPresent(Bool.self, forKey: .isTop);
        self.pageStartingNumber = try container.decodeIfPresent(Int.self, forKey: .pageStartingNumber);
        self.setPageNumberOnFirstPage = try container.decodeIfPresent(Bool.self, forKey: .setPageNumberOnFirstPage);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alignment != nil) {
            try container.encode(self.alignment, forKey: .alignment);
        }
        if (self.format != nil) {
            try container.encode(self.format, forKey: .format);
        }
        if (self.isTop != nil) {
            try container.encode(self.isTop, forKey: .isTop);
        }
        if (self.pageStartingNumber != nil) {
            try container.encode(self.pageStartingNumber, forKey: .pageStartingNumber);
        }
        if (self.setPageNumberOnFirstPage != nil) {
            try container.encode(self.setPageNumberOnFirstPage, forKey: .setPageNumberOnFirstPage);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.isTop == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isTop");
        }
        if (self.setPageNumberOnFirstPage == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "setPageNumberOnFirstPage");
        }
    }

    // Sets alignment. Gets or sets text alignment, possible values are left, right, center or justify.
    public func setAlignment(alignment : String?) -> PageNumber {
        self.alignment = alignment;
        return self;
    }

    // Gets alignment. Gets or sets text alignment, possible values are left, right, center or justify.
    public func getAlignment() -> String? {
        return self.alignment;
    }


    // Sets format. Gets or sets the page number format, e.g. "{PAGE} of {NUMPAGES}".
    public func setFormat(format : String?) -> PageNumber {
        self.format = format;
        return self;
    }

    // Gets format. Gets or sets the page number format, e.g. "{PAGE} of {NUMPAGES}".
    public func getFormat() -> String? {
        return self.format;
    }


    // Sets isTop. Gets or sets a value indicating whether if true the page number is added at the top of the page, else at the bottom.
    public func setIsTop(isTop : Bool?) -> PageNumber {
        self.isTop = isTop;
        return self;
    }

    // Gets isTop. Gets or sets a value indicating whether if true the page number is added at the top of the page, else at the bottom.
    public func getIsTop() -> Bool? {
        return self.isTop;
    }


    // Sets pageStartingNumber. Gets or sets the starting page number of the document.
    public func setPageStartingNumber(pageStartingNumber : Int?) -> PageNumber {
        self.pageStartingNumber = pageStartingNumber;
        return self;
    }

    // Gets pageStartingNumber. Gets or sets the starting page number of the document.
    public func getPageStartingNumber() -> Int? {
        return self.pageStartingNumber;
    }


    // Sets setPageNumberOnFirstPage. Gets or sets a value indicating whether if true the page number is added on first page too.
    public func setSetPageNumberOnFirstPage(setPageNumberOnFirstPage : Bool?) -> PageNumber {
        self.setPageNumberOnFirstPage = setPageNumberOnFirstPage;
        return self;
    }

    // Gets setPageNumberOnFirstPage. Gets or sets a value indicating whether if true the page number is added on first page too.
    public func getSetPageNumberOnFirstPage() -> Bool? {
        return self.setPageNumberOnFirstPage;
    }
}
