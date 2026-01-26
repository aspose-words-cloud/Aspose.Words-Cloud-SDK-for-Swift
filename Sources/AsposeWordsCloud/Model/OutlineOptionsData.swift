/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OutlineOptionsData.swift">
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

// Container class for outline options.
public class OutlineOptionsData : Codable, WordsApiModel {
    // Field of createMissingOutlineLevels. Container class for outline options.
    private var _createMissingOutlineLevels : Bool? = nil;

    public var createMissingOutlineLevels : Bool? {
        get {
            return self._createMissingOutlineLevels;
        }
        set {
            self._createMissingOutlineLevels = newValue;
        }
    }

    // Field of createOutlinesForHeadingsInTables. Container class for outline options.
    private var _createOutlinesForHeadingsInTables : Bool? = nil;

    public var createOutlinesForHeadingsInTables : Bool? {
        get {
            return self._createOutlinesForHeadingsInTables;
        }
        set {
            self._createOutlinesForHeadingsInTables = newValue;
        }
    }

    // Field of defaultBookmarksOutlineLevel. Container class for outline options.
    private var _defaultBookmarksOutlineLevel : Int? = nil;

    public var defaultBookmarksOutlineLevel : Int? {
        get {
            return self._defaultBookmarksOutlineLevel;
        }
        set {
            self._defaultBookmarksOutlineLevel = newValue;
        }
    }

    // Field of expandedOutlineLevels. Container class for outline options.
    private var _expandedOutlineLevels : Int? = nil;

    public var expandedOutlineLevels : Int? {
        get {
            return self._expandedOutlineLevels;
        }
        set {
            self._expandedOutlineLevels = newValue;
        }
    }

    // Field of headingsOutlineLevels. Container class for outline options.
    private var _headingsOutlineLevels : Int? = nil;

    public var headingsOutlineLevels : Int? {
        get {
            return self._headingsOutlineLevels;
        }
        set {
            self._headingsOutlineLevels = newValue;
        }
    }

    // Field of bookmarksOutlineLevels. Container class for outline options.
    private var _bookmarksOutlineLevels : [BookmarksOutlineLevelData]? = nil;

    public var bookmarksOutlineLevels : [BookmarksOutlineLevelData]? {
        get {
            return self._bookmarksOutlineLevels;
        }
        set {
            self._bookmarksOutlineLevels = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case createMissingOutlineLevels = "CreateMissingOutlineLevels";
        case createOutlinesForHeadingsInTables = "CreateOutlinesForHeadingsInTables";
        case defaultBookmarksOutlineLevel = "DefaultBookmarksOutlineLevel";
        case expandedOutlineLevels = "ExpandedOutlineLevels";
        case headingsOutlineLevels = "HeadingsOutlineLevels";
        case bookmarksOutlineLevels = "BookmarksOutlineLevels";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.createMissingOutlineLevels = json["CreateMissingOutlineLevels"] as? Bool;
        self.createOutlinesForHeadingsInTables = json["CreateOutlinesForHeadingsInTables"] as? Bool;
        self.defaultBookmarksOutlineLevel = json["DefaultBookmarksOutlineLevel"] as? Int;
        self.expandedOutlineLevels = json["ExpandedOutlineLevels"] as? Int;
        self.headingsOutlineLevels = json["HeadingsOutlineLevels"] as? Int;
        if let raw_bookmarksOutlineLevels = json["BookmarksOutlineLevels"] as? [Any] {
            self.bookmarksOutlineLevels = try raw_bookmarksOutlineLevels.map {
                if let element_bookmarksOutlineLevels = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: BookmarksOutlineLevelData.self, from: element_bookmarksOutlineLevels);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "BookmarksOutlineLevelData");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.createMissingOutlineLevels = try container.decodeIfPresent(Bool.self, forKey: .createMissingOutlineLevels);
        self.createOutlinesForHeadingsInTables = try container.decodeIfPresent(Bool.self, forKey: .createOutlinesForHeadingsInTables);
        self.defaultBookmarksOutlineLevel = try container.decodeIfPresent(Int.self, forKey: .defaultBookmarksOutlineLevel);
        self.expandedOutlineLevels = try container.decodeIfPresent(Int.self, forKey: .expandedOutlineLevels);
        self.headingsOutlineLevels = try container.decodeIfPresent(Int.self, forKey: .headingsOutlineLevels);
        self.bookmarksOutlineLevels = try container.decodeIfPresent([BookmarksOutlineLevelData].self, forKey: .bookmarksOutlineLevels);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.createMissingOutlineLevels != nil) {
            try container.encode(self.createMissingOutlineLevels, forKey: .createMissingOutlineLevels);
        }
        if (self.createOutlinesForHeadingsInTables != nil) {
            try container.encode(self.createOutlinesForHeadingsInTables, forKey: .createOutlinesForHeadingsInTables);
        }
        if (self.defaultBookmarksOutlineLevel != nil) {
            try container.encode(self.defaultBookmarksOutlineLevel, forKey: .defaultBookmarksOutlineLevel);
        }
        if (self.expandedOutlineLevels != nil) {
            try container.encode(self.expandedOutlineLevels, forKey: .expandedOutlineLevels);
        }
        if (self.headingsOutlineLevels != nil) {
            try container.encode(self.headingsOutlineLevels, forKey: .headingsOutlineLevels);
        }
        if (self.bookmarksOutlineLevels != nil) {
            try container.encode(self.bookmarksOutlineLevels, forKey: .bookmarksOutlineLevels);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.bookmarksOutlineLevels != nil) {
            for elementBookmarksOutlineLevels in self.bookmarksOutlineLevels! {
                try elementBookmarksOutlineLevels.validate();
            }
        }

    }

    // Sets createMissingOutlineLevels. Gets or sets a value indicating whether to create missing outline levels when the document is exported. The default value is false.
    public func setCreateMissingOutlineLevels(createMissingOutlineLevels : Bool?) -> OutlineOptionsData {
        self.createMissingOutlineLevels = createMissingOutlineLevels;
        return self;
    }

    // Gets createMissingOutlineLevels. Gets or sets a value indicating whether to create missing outline levels when the document is exported. The default value is false.
    public func getCreateMissingOutlineLevels() -> Bool? {
        return self.createMissingOutlineLevels;
    }


    // Sets createOutlinesForHeadingsInTables. Gets or sets a value indicating whether to create outlines for headings (paragraphs formatted with the Heading styles) inside tables. The default value is false.
    public func setCreateOutlinesForHeadingsInTables(createOutlinesForHeadingsInTables : Bool?) -> OutlineOptionsData {
        self.createOutlinesForHeadingsInTables = createOutlinesForHeadingsInTables;
        return self;
    }

    // Gets createOutlinesForHeadingsInTables. Gets or sets a value indicating whether to create outlines for headings (paragraphs formatted with the Heading styles) inside tables. The default value is false.
    public func getCreateOutlinesForHeadingsInTables() -> Bool? {
        return self.createOutlinesForHeadingsInTables;
    }


    // Sets defaultBookmarksOutlineLevel. Gets or sets the default level in the document outline at which to display Word bookmarks.
    public func setDefaultBookmarksOutlineLevel(defaultBookmarksOutlineLevel : Int?) -> OutlineOptionsData {
        self.defaultBookmarksOutlineLevel = defaultBookmarksOutlineLevel;
        return self;
    }

    // Gets defaultBookmarksOutlineLevel. Gets or sets the default level in the document outline at which to display Word bookmarks.
    public func getDefaultBookmarksOutlineLevel() -> Int? {
        return self.defaultBookmarksOutlineLevel;
    }


    // Sets expandedOutlineLevels. Gets or sets the number of levels in the document outline to show expanded when the file is viewed.
    public func setExpandedOutlineLevels(expandedOutlineLevels : Int?) -> OutlineOptionsData {
        self.expandedOutlineLevels = expandedOutlineLevels;
        return self;
    }

    // Gets expandedOutlineLevels. Gets or sets the number of levels in the document outline to show expanded when the file is viewed.
    public func getExpandedOutlineLevels() -> Int? {
        return self.expandedOutlineLevels;
    }


    // Sets headingsOutlineLevels. Gets or sets the number of levels of headings (paragraphs formatted with the Heading styles) to include in the document outline.
    public func setHeadingsOutlineLevels(headingsOutlineLevels : Int?) -> OutlineOptionsData {
        self.headingsOutlineLevels = headingsOutlineLevels;
        return self;
    }

    // Gets headingsOutlineLevels. Gets or sets the number of levels of headings (paragraphs formatted with the Heading styles) to include in the document outline.
    public func getHeadingsOutlineLevels() -> Int? {
        return self.headingsOutlineLevels;
    }


    // Sets bookmarksOutlineLevels. Gets or sets the individual bookmarks outline level.
    public func setBookmarksOutlineLevels(bookmarksOutlineLevels : [BookmarksOutlineLevelData]?) -> OutlineOptionsData {
        self.bookmarksOutlineLevels = bookmarksOutlineLevels;
        return self;
    }

    // Gets bookmarksOutlineLevels. Gets or sets the individual bookmarks outline level.
    public func getBookmarksOutlineLevels() -> [BookmarksOutlineLevelData]? {
        return self.bookmarksOutlineLevels;
    }
}
