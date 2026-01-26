/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Bookmarks.swift">
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

// Represents an array of bookmarks.
public class Bookmarks : LinkElement {
    // Field of bookmarkList. Represents an array of bookmarks.
    private var _bookmarkList : [Bookmark]? = nil;

    public var bookmarkList : [Bookmark]? {
        get {
            return self._bookmarkList;
        }
        set {
            self._bookmarkList = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case bookmarkList = "BookmarkList";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_bookmarkList = json["BookmarkList"] as? [Any] {
            self.bookmarkList = try raw_bookmarkList.map {
                if let element_bookmarkList = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: Bookmark.self, from: element_bookmarkList);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "Bookmark");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.bookmarkList = try container.decodeIfPresent([Bookmark].self, forKey: .bookmarkList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bookmarkList != nil) {
            try container.encode(self.bookmarkList, forKey: .bookmarkList);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.bookmarkList != nil) {
            for elementBookmarkList in self.bookmarkList! {
                try elementBookmarkList.validate();
            }
        }

    }

    // Sets bookmarkList. Gets or sets the array of bookmarks.
    public func setBookmarkList(bookmarkList : [Bookmark]?) -> Bookmarks {
        self.bookmarkList = bookmarkList;
        return self;
    }

    // Gets bookmarkList. Gets or sets the array of bookmarks.
    public func getBookmarkList() -> [Bookmark]? {
        return self.bookmarkList;
    }
}
