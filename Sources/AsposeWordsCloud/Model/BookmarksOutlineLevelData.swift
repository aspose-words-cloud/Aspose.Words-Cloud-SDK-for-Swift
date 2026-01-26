/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BookmarksOutlineLevelData.swift">
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

// Container class for individual bookmarks outline level.
public class BookmarksOutlineLevelData : Codable, WordsApiModel {
    // Field of bookmarksOutlineLevel. Container class for individual bookmarks outline level.
    private var _bookmarksOutlineLevel : Int? = nil;

    public var bookmarksOutlineLevel : Int? {
        get {
            return self._bookmarksOutlineLevel;
        }
        set {
            self._bookmarksOutlineLevel = newValue;
        }
    }

    // Field of name. Container class for individual bookmarks outline level.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case bookmarksOutlineLevel = "BookmarksOutlineLevel";
        case name = "Name";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.bookmarksOutlineLevel = json["BookmarksOutlineLevel"] as? Int;
        self.name = json["Name"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.bookmarksOutlineLevel = try container.decodeIfPresent(Int.self, forKey: .bookmarksOutlineLevel);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bookmarksOutlineLevel != nil) {
            try container.encode(self.bookmarksOutlineLevel, forKey: .bookmarksOutlineLevel);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.bookmarksOutlineLevel == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "bookmarksOutlineLevel");
        }
    }

    // Sets bookmarksOutlineLevel. Gets or sets the bookmark's level.
    public func setBookmarksOutlineLevel(bookmarksOutlineLevel : Int?) -> BookmarksOutlineLevelData {
        self.bookmarksOutlineLevel = bookmarksOutlineLevel;
        return self;
    }

    // Gets bookmarksOutlineLevel. Gets or sets the bookmark's level.
    public func getBookmarksOutlineLevel() -> Int? {
        return self.bookmarksOutlineLevel;
    }


    // Sets name. Gets or sets the bookmark's name.
    public func setName(name : String?) -> BookmarksOutlineLevelData {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the bookmark's name.
    public func getName() -> String? {
        return self.name;
    }
}
