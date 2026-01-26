/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XpsSaveOptionsData.swift">
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

// Container class for xps save options.
public class XpsSaveOptionsData : FixedPageSaveOptionsData {
    // Field of bookmarksOutlineLevel. Container class for xps save options.
    private var _bookmarksOutlineLevel : Int? = nil;

    public var bookmarksOutlineLevel : Int? {
        get {
            return self._bookmarksOutlineLevel;
        }
        set {
            self._bookmarksOutlineLevel = newValue;
        }
    }

    // Field of digitalSignatureDetails. Container class for xps save options.
    private var _digitalSignatureDetails : DigitalSignatureDetails? = nil;

    public var digitalSignatureDetails : DigitalSignatureDetails? {
        get {
            return self._digitalSignatureDetails;
        }
        set {
            self._digitalSignatureDetails = newValue;
        }
    }

    // Field of headingsOutlineLevels. Container class for xps save options.
    private var _headingsOutlineLevels : Int? = nil;

    public var headingsOutlineLevels : Int? {
        get {
            return self._headingsOutlineLevels;
        }
        set {
            self._headingsOutlineLevels = newValue;
        }
    }

    // Field of outlineOptions. Container class for xps save options.
    private var _outlineOptions : OutlineOptionsData? = nil;

    public var outlineOptions : OutlineOptionsData? {
        get {
            return self._outlineOptions;
        }
        set {
            self._outlineOptions = newValue;
        }
    }

    // Field of useBookFoldPrintingSettings. Container class for xps save options.
    private var _useBookFoldPrintingSettings : Bool? = nil;

    public var useBookFoldPrintingSettings : Bool? {
        get {
            return self._useBookFoldPrintingSettings;
        }
        set {
            self._useBookFoldPrintingSettings = newValue;
        }
    }

    // Field of saveFormat. Container class for xps save options.
    private final let _saveFormat : String? = "xps";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case bookmarksOutlineLevel = "BookmarksOutlineLevel";
        case digitalSignatureDetails = "DigitalSignatureDetails";
        case headingsOutlineLevels = "HeadingsOutlineLevels";
        case outlineOptions = "OutlineOptions";
        case useBookFoldPrintingSettings = "UseBookFoldPrintingSettings";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.bookmarksOutlineLevel = json["BookmarksOutlineLevel"] as? Int;
        if let raw_digitalSignatureDetails = json["DigitalSignatureDetails"] as? [String: Any] {
            self.digitalSignatureDetails = try ObjectSerializer.deserialize(type: DigitalSignatureDetails.self, from: raw_digitalSignatureDetails);
        }

        self.headingsOutlineLevels = json["HeadingsOutlineLevels"] as? Int;
        if let raw_outlineOptions = json["OutlineOptions"] as? [String: Any] {
            self.outlineOptions = try ObjectSerializer.deserialize(type: OutlineOptionsData.self, from: raw_outlineOptions);
        }

        self.useBookFoldPrintingSettings = json["UseBookFoldPrintingSettings"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.bookmarksOutlineLevel = try container.decodeIfPresent(Int.self, forKey: .bookmarksOutlineLevel);
        self.digitalSignatureDetails = try container.decodeIfPresent(DigitalSignatureDetails.self, forKey: .digitalSignatureDetails);
        self.headingsOutlineLevels = try container.decodeIfPresent(Int.self, forKey: .headingsOutlineLevels);
        self.outlineOptions = try container.decodeIfPresent(OutlineOptionsData.self, forKey: .outlineOptions);
        self.useBookFoldPrintingSettings = try container.decodeIfPresent(Bool.self, forKey: .useBookFoldPrintingSettings);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bookmarksOutlineLevel != nil) {
            try container.encode(self.bookmarksOutlineLevel, forKey: .bookmarksOutlineLevel);
        }
        if (self.digitalSignatureDetails != nil) {
            try container.encode(self.digitalSignatureDetails, forKey: .digitalSignatureDetails);
        }
        if (self.headingsOutlineLevels != nil) {
            try container.encode(self.headingsOutlineLevels, forKey: .headingsOutlineLevels);
        }
        if (self.outlineOptions != nil) {
            try container.encode(self.outlineOptions, forKey: .outlineOptions);
        }
        if (self.useBookFoldPrintingSettings != nil) {
            try container.encode(self.useBookFoldPrintingSettings, forKey: .useBookFoldPrintingSettings);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.digitalSignatureDetails?.validate();
        try self.outlineOptions?.validate();

    }

    // Sets bookmarksOutlineLevel. Gets or sets the level in the XPS document outline at which to display Word bookmarks.
    public func setBookmarksOutlineLevel(bookmarksOutlineLevel : Int?) -> XpsSaveOptionsData {
        self.bookmarksOutlineLevel = bookmarksOutlineLevel;
        return self;
    }

    // Gets bookmarksOutlineLevel. Gets or sets the level in the XPS document outline at which to display Word bookmarks.
    public func getBookmarksOutlineLevel() -> Int? {
        return self.bookmarksOutlineLevel;
    }


    // Sets digitalSignatureDetails. Gets or sets the details for signing the output document.
    public func setDigitalSignatureDetails(digitalSignatureDetails : DigitalSignatureDetails?) -> XpsSaveOptionsData {
        self.digitalSignatureDetails = digitalSignatureDetails;
        return self;
    }

    // Gets digitalSignatureDetails. Gets or sets the details for signing the output document.
    public func getDigitalSignatureDetails() -> DigitalSignatureDetails? {
        return self.digitalSignatureDetails;
    }


    // Sets headingsOutlineLevels. Gets or sets the number of heading levels (paragraphs formatted with the Heading styles) to include in the XPS document outline.
    public func setHeadingsOutlineLevels(headingsOutlineLevels : Int?) -> XpsSaveOptionsData {
        self.headingsOutlineLevels = headingsOutlineLevels;
        return self;
    }

    // Gets headingsOutlineLevels. Gets or sets the number of heading levels (paragraphs formatted with the Heading styles) to include in the XPS document outline.
    public func getHeadingsOutlineLevels() -> Int? {
        return self.headingsOutlineLevels;
    }


    // Sets outlineOptions. Gets or sets the outline options.
    public func setOutlineOptions(outlineOptions : OutlineOptionsData?) -> XpsSaveOptionsData {
        self.outlineOptions = outlineOptions;
        return self;
    }

    // Gets outlineOptions. Gets or sets the outline options.
    public func getOutlineOptions() -> OutlineOptionsData? {
        return self.outlineOptions;
    }


    // Sets useBookFoldPrintingSettings. Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
    public func setUseBookFoldPrintingSettings(useBookFoldPrintingSettings : Bool?) -> XpsSaveOptionsData {
        self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
        return self;
    }

    // Gets useBookFoldPrintingSettings. Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
    public func getUseBookFoldPrintingSettings() -> Bool? {
        return self.useBookFoldPrintingSettings;
    }
}
