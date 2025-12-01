/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SvgSaveOptionsData.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// Container class for svg save options.
public class SvgSaveOptionsData : FixedPageSaveOptionsData {
    // Gets or sets the option that controls how text should be rendered.
    public enum TextOutputMode : String, Codable
    {
        // Enum value "useSvgFonts"
        case useSvgFonts = "UseSvgFonts"

        // Enum value "useTargetMachineFonts"
        case useTargetMachineFonts = "UseTargetMachineFonts"

        // Enum value "usePlacedGlyphs"
        case usePlacedGlyphs = "UsePlacedGlyphs"
    }

    // Field of exportEmbeddedImages. Container class for svg save options.
    private var _exportEmbeddedImages : Bool? = nil;

    public var exportEmbeddedImages : Bool? {
        get {
            return self._exportEmbeddedImages;
        }
        set {
            self._exportEmbeddedImages = newValue;
        }
    }

    // Field of fitToViewPort. Container class for svg save options.
    private var _fitToViewPort : Bool? = nil;

    public var fitToViewPort : Bool? {
        get {
            return self._fitToViewPort;
        }
        set {
            self._fitToViewPort = newValue;
        }
    }

    // Field of idPrefix. Container class for svg save options.
    private var _idPrefix : String? = nil;

    public var idPrefix : String? {
        get {
            return self._idPrefix;
        }
        set {
            self._idPrefix = newValue;
        }
    }

    // Field of maxImageResolution. Container class for svg save options.
    private var _maxImageResolution : Int? = nil;

    public var maxImageResolution : Int? {
        get {
            return self._maxImageResolution;
        }
        set {
            self._maxImageResolution = newValue;
        }
    }

    // Field of resourcesFolder. Container class for svg save options.
    private var _resourcesFolder : String? = nil;

    public var resourcesFolder : String? {
        get {
            return self._resourcesFolder;
        }
        set {
            self._resourcesFolder = newValue;
        }
    }

    // Field of resourcesFolderAlias. Container class for svg save options.
    private var _resourcesFolderAlias : String? = nil;

    public var resourcesFolderAlias : String? {
        get {
            return self._resourcesFolderAlias;
        }
        set {
            self._resourcesFolderAlias = newValue;
        }
    }

    // Field of showPageBorder. Container class for svg save options.
    private var _showPageBorder : Bool? = nil;

    public var showPageBorder : Bool? {
        get {
            return self._showPageBorder;
        }
        set {
            self._showPageBorder = newValue;
        }
    }

    // Field of textOutputMode. Container class for svg save options.
    private var _textOutputMode : TextOutputMode? = nil;

    public var textOutputMode : TextOutputMode? {
        get {
            return self._textOutputMode;
        }
        set {
            self._textOutputMode = newValue;
        }
    }

    // Field of saveFormat. Container class for svg save options.
    private final let _saveFormat : String? = "svg";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case exportEmbeddedImages = "ExportEmbeddedImages";
        case fitToViewPort = "FitToViewPort";
        case idPrefix = "IdPrefix";
        case maxImageResolution = "MaxImageResolution";
        case resourcesFolder = "ResourcesFolder";
        case resourcesFolderAlias = "ResourcesFolderAlias";
        case showPageBorder = "ShowPageBorder";
        case textOutputMode = "TextOutputMode";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.exportEmbeddedImages = json["ExportEmbeddedImages"] as? Bool;
        self.fitToViewPort = json["FitToViewPort"] as? Bool;
        self.idPrefix = json["IdPrefix"] as? String;
        self.maxImageResolution = json["MaxImageResolution"] as? Int;
        self.resourcesFolder = json["ResourcesFolder"] as? String;
        self.resourcesFolderAlias = json["ResourcesFolderAlias"] as? String;
        self.showPageBorder = json["ShowPageBorder"] as? Bool;
        if let raw_textOutputMode = json["TextOutputMode"] as? String {
            self.textOutputMode = TextOutputMode(rawValue: raw_textOutputMode);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.exportEmbeddedImages = try container.decodeIfPresent(Bool.self, forKey: .exportEmbeddedImages);
        self.fitToViewPort = try container.decodeIfPresent(Bool.self, forKey: .fitToViewPort);
        self.idPrefix = try container.decodeIfPresent(String.self, forKey: .idPrefix);
        self.maxImageResolution = try container.decodeIfPresent(Int.self, forKey: .maxImageResolution);
        self.resourcesFolder = try container.decodeIfPresent(String.self, forKey: .resourcesFolder);
        self.resourcesFolderAlias = try container.decodeIfPresent(String.self, forKey: .resourcesFolderAlias);
        self.showPageBorder = try container.decodeIfPresent(Bool.self, forKey: .showPageBorder);
        self.textOutputMode = try container.decodeIfPresent(TextOutputMode.self, forKey: .textOutputMode);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.exportEmbeddedImages != nil) {
            try container.encode(self.exportEmbeddedImages, forKey: .exportEmbeddedImages);
        }
        if (self.fitToViewPort != nil) {
            try container.encode(self.fitToViewPort, forKey: .fitToViewPort);
        }
        if (self.idPrefix != nil) {
            try container.encode(self.idPrefix, forKey: .idPrefix);
        }
        if (self.maxImageResolution != nil) {
            try container.encode(self.maxImageResolution, forKey: .maxImageResolution);
        }
        if (self.resourcesFolder != nil) {
            try container.encode(self.resourcesFolder, forKey: .resourcesFolder);
        }
        if (self.resourcesFolderAlias != nil) {
            try container.encode(self.resourcesFolderAlias, forKey: .resourcesFolderAlias);
        }
        if (self.showPageBorder != nil) {
            try container.encode(self.showPageBorder, forKey: .showPageBorder);
        }
        if (self.textOutputMode != nil) {
            try container.encode(self.textOutputMode, forKey: .textOutputMode);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets exportEmbeddedImages. Gets or sets a value indicating whether images should be embedded into SVG document as base64.
    public func setExportEmbeddedImages(exportEmbeddedImages : Bool?) -> SvgSaveOptionsData {
        self.exportEmbeddedImages = exportEmbeddedImages;
        return self;
    }

    // Gets exportEmbeddedImages. Gets or sets a value indicating whether images should be embedded into SVG document as base64.
    public func getExportEmbeddedImages() -> Bool? {
        return self.exportEmbeddedImages;
    }


    // Sets fitToViewPort. Gets or sets a value indicating whether the output SVG should fill the available viewport area (browser window or container). When set to true width and height of output SVG are set to 100%.
    public func setFitToViewPort(fitToViewPort : Bool?) -> SvgSaveOptionsData {
        self.fitToViewPort = fitToViewPort;
        return self;
    }

    // Gets fitToViewPort. Gets or sets a value indicating whether the output SVG should fill the available viewport area (browser window or container). When set to true width and height of output SVG are set to 100%.
    public func getFitToViewPort() -> Bool? {
        return self.fitToViewPort;
    }


    // Sets idPrefix. Gets or sets specifies a prefix that is prepended to all generated element IDs in the output document. The default value is null and no prefix is prepended. If the prefix is specified, it can contain only letters, digits, underscores, and hyphens, and must start with a letter.
    public func setIdPrefix(idPrefix : String?) -> SvgSaveOptionsData {
        self.idPrefix = idPrefix;
        return self;
    }

    // Gets idPrefix. Gets or sets specifies a prefix that is prepended to all generated element IDs in the output document. The default value is null and no prefix is prepended. If the prefix is specified, it can contain only letters, digits, underscores, and hyphens, and must start with a letter.
    public func getIdPrefix() -> String? {
        return self.idPrefix;
    }


    // Sets maxImageResolution. Gets or sets a value in pixels per inch that limits resolution of exported raster images. If the value of this property is non-zero, it limits resolution of exported raster images. That is, higher-resolution images are resampled down to the limit and lower-resolution images are exported as is.
    public func setMaxImageResolution(maxImageResolution : Int?) -> SvgSaveOptionsData {
        self.maxImageResolution = maxImageResolution;
        return self;
    }

    // Gets maxImageResolution. Gets or sets a value in pixels per inch that limits resolution of exported raster images. If the value of this property is non-zero, it limits resolution of exported raster images. That is, higher-resolution images are resampled down to the limit and lower-resolution images are exported as is.
    public func getMaxImageResolution() -> Int? {
        return self.maxImageResolution;
    }


    // Sets resourcesFolder. Gets or sets the physical folder where resources (images) are saved when exporting.
    public func setResourcesFolder(resourcesFolder : String?) -> SvgSaveOptionsData {
        self.resourcesFolder = resourcesFolder;
        return self;
    }

    // Gets resourcesFolder. Gets or sets the physical folder where resources (images) are saved when exporting.
    public func getResourcesFolder() -> String? {
        return self.resourcesFolder;
    }


    // Sets resourcesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func setResourcesFolderAlias(resourcesFolderAlias : String?) -> SvgSaveOptionsData {
        self.resourcesFolderAlias = resourcesFolderAlias;
        return self;
    }

    // Gets resourcesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func getResourcesFolderAlias() -> String? {
        return self.resourcesFolderAlias;
    }


    // Sets showPageBorder. Gets or sets a value indicating whether to show or hide page stepper.
    public func setShowPageBorder(showPageBorder : Bool?) -> SvgSaveOptionsData {
        self.showPageBorder = showPageBorder;
        return self;
    }

    // Gets showPageBorder. Gets or sets a value indicating whether to show or hide page stepper.
    public func getShowPageBorder() -> Bool? {
        return self.showPageBorder;
    }


    // Sets textOutputMode. Gets or sets the option that controls how text should be rendered.
    public func setTextOutputMode(textOutputMode : TextOutputMode?) -> SvgSaveOptionsData {
        self.textOutputMode = textOutputMode;
        return self;
    }

    // Gets textOutputMode. Gets or sets the option that controls how text should be rendered.
    public func getTextOutputMode() -> TextOutputMode? {
        return self.textOutputMode;
    }
}
