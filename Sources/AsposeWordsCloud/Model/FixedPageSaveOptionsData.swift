/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FixedPageSaveOptionsData.swift">
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

// Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
public class FixedPageSaveOptionsData : SaveOptionsData {
    // Gets or sets the value determining how colors are rendered.
    // { Normal | Grayscale}.
    // The default value is Normal.
    // This property is used when the document is exported to fixed page formats.
    public enum ColorMode : String, Codable
    {
        // Enum value "normal"
        case normal = "Normal"

        // Enum value "grayscale"
        case grayscale = "Grayscale"
    }

    // Gets or sets the symbol set, that is used to represent numbers while rendering to fixed page formats.
    public enum NumeralFormat : String, Codable
    {
        // Enum value "european"
        case european = "European"

        // Enum value "arabicIndic"
        case arabicIndic = "ArabicIndic"

        // Enum value "easternArabicIndic"
        case easternArabicIndic = "EasternArabicIndic"

        // Enum value "context"
        case context = "Context"

        // Enum value "system"
        case system = "System"
    }

    // Field of colorMode. Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
    private var _colorMode : ColorMode? = nil;

    public var colorMode : ColorMode? {
        get {
            return self._colorMode;
        }
        set {
            self._colorMode = newValue;
        }
    }

    // Field of jpegQuality. Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
    private var _jpegQuality : Int? = nil;

    public var jpegQuality : Int? {
        get {
            return self._jpegQuality;
        }
        set {
            self._jpegQuality = newValue;
        }
    }

    // Field of metafileRenderingOptions. Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
    private var _metafileRenderingOptions : MetafileRenderingOptionsData? = nil;

    public var metafileRenderingOptions : MetafileRenderingOptionsData? {
        get {
            return self._metafileRenderingOptions;
        }
        set {
            self._metafileRenderingOptions = newValue;
        }
    }

    // Field of numeralFormat. Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
    private var _numeralFormat : NumeralFormat? = nil;

    public var numeralFormat : NumeralFormat? {
        get {
            return self._numeralFormat;
        }
        set {
            self._numeralFormat = newValue;
        }
    }

    // Field of optimizeOutput. Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
    private var _optimizeOutput : Bool? = nil;

    public var optimizeOutput : Bool? {
        get {
            return self._optimizeOutput;
        }
        set {
            self._optimizeOutput = newValue;
        }
    }

    // Field of pageCount. Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
    private var _pageCount : Int? = nil;

    public var pageCount : Int? {
        get {
            return self._pageCount;
        }
        set {
            self._pageCount = newValue;
        }
    }

    // Field of pageIndex. Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
    private var _pageIndex : Int? = nil;

    public var pageIndex : Int? {
        get {
            return self._pageIndex;
        }
        set {
            self._pageIndex = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case colorMode = "ColorMode";
        case jpegQuality = "JpegQuality";
        case metafileRenderingOptions = "MetafileRenderingOptions";
        case numeralFormat = "NumeralFormat";
        case optimizeOutput = "OptimizeOutput";
        case pageCount = "PageCount";
        case pageIndex = "PageIndex";
        case invalidCodingKey;
    }

    internal override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_colorMode = json["ColorMode"] as? String {
            self.colorMode = ColorMode(rawValue: raw_colorMode);
        }

        self.jpegQuality = json["JpegQuality"] as? Int;
        if let raw_metafileRenderingOptions = json["MetafileRenderingOptions"] as? [String: Any] {
            self.metafileRenderingOptions = try ObjectSerializer.deserialize(type: MetafileRenderingOptionsData.self, from: raw_metafileRenderingOptions);
        }

        if let raw_numeralFormat = json["NumeralFormat"] as? String {
            self.numeralFormat = NumeralFormat(rawValue: raw_numeralFormat);
        }

        self.optimizeOutput = json["OptimizeOutput"] as? Bool;
        self.pageCount = json["PageCount"] as? Int;
        self.pageIndex = json["PageIndex"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.colorMode = try container.decodeIfPresent(ColorMode.self, forKey: .colorMode);
        self.jpegQuality = try container.decodeIfPresent(Int.self, forKey: .jpegQuality);
        self.metafileRenderingOptions = try container.decodeIfPresent(MetafileRenderingOptionsData.self, forKey: .metafileRenderingOptions);
        self.numeralFormat = try container.decodeIfPresent(NumeralFormat.self, forKey: .numeralFormat);
        self.optimizeOutput = try container.decodeIfPresent(Bool.self, forKey: .optimizeOutput);
        self.pageCount = try container.decodeIfPresent(Int.self, forKey: .pageCount);
        self.pageIndex = try container.decodeIfPresent(Int.self, forKey: .pageIndex);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.colorMode != nil) {
            try container.encode(self.colorMode, forKey: .colorMode);
        }
        if (self.jpegQuality != nil) {
            try container.encode(self.jpegQuality, forKey: .jpegQuality);
        }
        if (self.metafileRenderingOptions != nil) {
            try container.encode(self.metafileRenderingOptions, forKey: .metafileRenderingOptions);
        }
        if (self.numeralFormat != nil) {
            try container.encode(self.numeralFormat, forKey: .numeralFormat);
        }
        if (self.optimizeOutput != nil) {
            try container.encode(self.optimizeOutput, forKey: .optimizeOutput);
        }
        if (self.pageCount != nil) {
            try container.encode(self.pageCount, forKey: .pageCount);
        }
        if (self.pageIndex != nil) {
            try container.encode(self.pageIndex, forKey: .pageIndex);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.metafileRenderingOptions?.validate();

    }

    // Sets colorMode. Gets or sets the value determining how colors are rendered. { Normal | Grayscale}. The default value is Normal. This property is used when the document is exported to fixed page formats.
    public func setColorMode(colorMode : ColorMode?) -> FixedPageSaveOptionsData {
        self.colorMode = colorMode;
        return self;
    }

    // Gets colorMode. Gets or sets the value determining how colors are rendered. { Normal | Grayscale}. The default value is Normal. This property is used when the document is exported to fixed page formats.
    public func getColorMode() -> ColorMode? {
        return self.colorMode;
    }


    // Sets jpegQuality. Gets or sets the quality of the JPEG images inside PDF document.
    public func setJpegQuality(jpegQuality : Int?) -> FixedPageSaveOptionsData {
        self.jpegQuality = jpegQuality;
        return self;
    }

    // Gets jpegQuality. Gets or sets the quality of the JPEG images inside PDF document.
    public func getJpegQuality() -> Int? {
        return self.jpegQuality;
    }


    // Sets metafileRenderingOptions. Gets or sets the metafile rendering options.
    public func setMetafileRenderingOptions(metafileRenderingOptions : MetafileRenderingOptionsData?) -> FixedPageSaveOptionsData {
        self.metafileRenderingOptions = metafileRenderingOptions;
        return self;
    }

    // Gets metafileRenderingOptions. Gets or sets the metafile rendering options.
    public func getMetafileRenderingOptions() -> MetafileRenderingOptionsData? {
        return self.metafileRenderingOptions;
    }


    // Sets numeralFormat. Gets or sets the symbol set, that is used to represent numbers while rendering to fixed page formats.
    public func setNumeralFormat(numeralFormat : NumeralFormat?) -> FixedPageSaveOptionsData {
        self.numeralFormat = numeralFormat;
        return self;
    }

    // Gets numeralFormat. Gets or sets the symbol set, that is used to represent numbers while rendering to fixed page formats.
    public func getNumeralFormat() -> NumeralFormat? {
        return self.numeralFormat;
    }


    // Sets optimizeOutput. Gets or sets a value indicating whether it is required to optimize output of XPS. If this flag is set redundant nested canvases and empty canvases are removed, also neighbor glyphs with the same formatting are concatenated. Note: The accuracy of the content display may be affected if this property is set to true.. The default value is false.
    public func setOptimizeOutput(optimizeOutput : Bool?) -> FixedPageSaveOptionsData {
        self.optimizeOutput = optimizeOutput;
        return self;
    }

    // Gets optimizeOutput. Gets or sets a value indicating whether it is required to optimize output of XPS. If this flag is set redundant nested canvases and empty canvases are removed, also neighbor glyphs with the same formatting are concatenated. Note: The accuracy of the content display may be affected if this property is set to true.. The default value is false.
    public func getOptimizeOutput() -> Bool? {
        return self.optimizeOutput;
    }


    // Sets pageCount. Gets or sets the number of pages to render.
    public func setPageCount(pageCount : Int?) -> FixedPageSaveOptionsData {
        self.pageCount = pageCount;
        return self;
    }

    // Gets pageCount. Gets or sets the number of pages to render.
    public func getPageCount() -> Int? {
        return self.pageCount;
    }


    // Sets pageIndex. Gets or sets the 0-based index of the first page to render.
    public func setPageIndex(pageIndex : Int?) -> FixedPageSaveOptionsData {
        self.pageIndex = pageIndex;
        return self;
    }

    // Gets pageIndex. Gets or sets the 0-based index of the first page to render.
    public func getPageIndex() -> Int? {
        return self.pageIndex;
    }
}
