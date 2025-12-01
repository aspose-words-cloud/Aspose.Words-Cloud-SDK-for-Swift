/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HtmlFixedSaveOptionsData.swift">
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

// Container class for fixed html save options.
public class HtmlFixedSaveOptionsData : FixedPageSaveOptionsData {
    // Gets or sets the export format of fonts.
    public enum FontFormat : String, Codable
    {
        // Enum value "woff"
        case woff = "Woff"

        // Enum value "ttf"
        case ttf = "Ttf"
    }

    // Gets or sets the horizontal alignment of pages in the HTML document.
    // The default value is HtmlFixedHorizontalPageAlignment.Center.
    public enum PageHorizontalAlignment : String, Codable
    {
        // Enum value "_left"
        case _left = "Left"

        // Enum value "center"
        case center = "Center"

        // Enum value "_right"
        case _right = "Right"
    }

    // Field of cssClassNamesPrefix. Container class for fixed html save options.
    private var _cssClassNamesPrefix : String? = nil;

    public var cssClassNamesPrefix : String? {
        get {
            return self._cssClassNamesPrefix;
        }
        set {
            self._cssClassNamesPrefix = newValue;
        }
    }

    // Field of encoding. Container class for fixed html save options.
    private var _encoding : String? = nil;

    public var encoding : String? {
        get {
            return self._encoding;
        }
        set {
            self._encoding = newValue;
        }
    }

    // Field of exportEmbeddedCss. Container class for fixed html save options.
    private var _exportEmbeddedCss : Bool? = nil;

    public var exportEmbeddedCss : Bool? {
        get {
            return self._exportEmbeddedCss;
        }
        set {
            self._exportEmbeddedCss = newValue;
        }
    }

    // Field of exportEmbeddedFonts. Container class for fixed html save options.
    private var _exportEmbeddedFonts : Bool? = nil;

    public var exportEmbeddedFonts : Bool? {
        get {
            return self._exportEmbeddedFonts;
        }
        set {
            self._exportEmbeddedFonts = newValue;
        }
    }

    // Field of exportEmbeddedImages. Container class for fixed html save options.
    private var _exportEmbeddedImages : Bool? = nil;

    public var exportEmbeddedImages : Bool? {
        get {
            return self._exportEmbeddedImages;
        }
        set {
            self._exportEmbeddedImages = newValue;
        }
    }

    // Field of exportFormFields. Container class for fixed html save options.
    private var _exportFormFields : Bool? = nil;

    public var exportFormFields : Bool? {
        get {
            return self._exportFormFields;
        }
        set {
            self._exportFormFields = newValue;
        }
    }

    // Field of fontFormat. Container class for fixed html save options.
    private var _fontFormat : FontFormat? = nil;

    public var fontFormat : FontFormat? {
        get {
            return self._fontFormat;
        }
        set {
            self._fontFormat = newValue;
        }
    }

    // Field of idPrefix. Container class for fixed html save options.
    private var _idPrefix : String? = nil;

    public var idPrefix : String? {
        get {
            return self._idPrefix;
        }
        set {
            self._idPrefix = newValue;
        }
    }

    // Field of pageHorizontalAlignment. Container class for fixed html save options.
    private var _pageHorizontalAlignment : PageHorizontalAlignment? = nil;

    public var pageHorizontalAlignment : PageHorizontalAlignment? {
        get {
            return self._pageHorizontalAlignment;
        }
        set {
            self._pageHorizontalAlignment = newValue;
        }
    }

    // Field of pageMargins. Container class for fixed html save options.
    private var _pageMargins : Double? = nil;

    public var pageMargins : Double? {
        get {
            return self._pageMargins;
        }
        set {
            self._pageMargins = newValue;
        }
    }

    // Field of resourcesFolder. Container class for fixed html save options.
    private var _resourcesFolder : String? = nil;

    public var resourcesFolder : String? {
        get {
            return self._resourcesFolder;
        }
        set {
            self._resourcesFolder = newValue;
        }
    }

    // Field of resourcesFolderAlias. Container class for fixed html save options.
    private var _resourcesFolderAlias : String? = nil;

    public var resourcesFolderAlias : String? {
        get {
            return self._resourcesFolderAlias;
        }
        set {
            self._resourcesFolderAlias = newValue;
        }
    }

    // Field of saveFontFaceCssSeparately. Container class for fixed html save options.
    private var _saveFontFaceCssSeparately : Bool? = nil;

    public var saveFontFaceCssSeparately : Bool? {
        get {
            return self._saveFontFaceCssSeparately;
        }
        set {
            self._saveFontFaceCssSeparately = newValue;
        }
    }

    // Field of showPageBorder. Container class for fixed html save options.
    private var _showPageBorder : Bool? = nil;

    public var showPageBorder : Bool? {
        get {
            return self._showPageBorder;
        }
        set {
            self._showPageBorder = newValue;
        }
    }

    // Field of useTargetMachineFonts. Container class for fixed html save options.
    private var _useTargetMachineFonts : Bool? = nil;

    public var useTargetMachineFonts : Bool? {
        get {
            return self._useTargetMachineFonts;
        }
        set {
            self._useTargetMachineFonts = newValue;
        }
    }

    // Field of saveFormat. Container class for fixed html save options.
    private final let _saveFormat : String? = "htmlfixed";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case cssClassNamesPrefix = "CssClassNamesPrefix";
        case encoding = "Encoding";
        case exportEmbeddedCss = "ExportEmbeddedCss";
        case exportEmbeddedFonts = "ExportEmbeddedFonts";
        case exportEmbeddedImages = "ExportEmbeddedImages";
        case exportFormFields = "ExportFormFields";
        case fontFormat = "FontFormat";
        case idPrefix = "IdPrefix";
        case pageHorizontalAlignment = "PageHorizontalAlignment";
        case pageMargins = "PageMargins";
        case resourcesFolder = "ResourcesFolder";
        case resourcesFolderAlias = "ResourcesFolderAlias";
        case saveFontFaceCssSeparately = "SaveFontFaceCssSeparately";
        case showPageBorder = "ShowPageBorder";
        case useTargetMachineFonts = "UseTargetMachineFonts";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.cssClassNamesPrefix = json["CssClassNamesPrefix"] as? String;
        self.encoding = json["Encoding"] as? String;
        self.exportEmbeddedCss = json["ExportEmbeddedCss"] as? Bool;
        self.exportEmbeddedFonts = json["ExportEmbeddedFonts"] as? Bool;
        self.exportEmbeddedImages = json["ExportEmbeddedImages"] as? Bool;
        self.exportFormFields = json["ExportFormFields"] as? Bool;
        if let raw_fontFormat = json["FontFormat"] as? String {
            self.fontFormat = FontFormat(rawValue: raw_fontFormat);
        }

        self.idPrefix = json["IdPrefix"] as? String;
        if let raw_pageHorizontalAlignment = json["PageHorizontalAlignment"] as? String {
            self.pageHorizontalAlignment = PageHorizontalAlignment(rawValue: raw_pageHorizontalAlignment);
        }

        self.pageMargins = json["PageMargins"] as? Double;
        self.resourcesFolder = json["ResourcesFolder"] as? String;
        self.resourcesFolderAlias = json["ResourcesFolderAlias"] as? String;
        self.saveFontFaceCssSeparately = json["SaveFontFaceCssSeparately"] as? Bool;
        self.showPageBorder = json["ShowPageBorder"] as? Bool;
        self.useTargetMachineFonts = json["UseTargetMachineFonts"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.cssClassNamesPrefix = try container.decodeIfPresent(String.self, forKey: .cssClassNamesPrefix);
        self.encoding = try container.decodeIfPresent(String.self, forKey: .encoding);
        self.exportEmbeddedCss = try container.decodeIfPresent(Bool.self, forKey: .exportEmbeddedCss);
        self.exportEmbeddedFonts = try container.decodeIfPresent(Bool.self, forKey: .exportEmbeddedFonts);
        self.exportEmbeddedImages = try container.decodeIfPresent(Bool.self, forKey: .exportEmbeddedImages);
        self.exportFormFields = try container.decodeIfPresent(Bool.self, forKey: .exportFormFields);
        self.fontFormat = try container.decodeIfPresent(FontFormat.self, forKey: .fontFormat);
        self.idPrefix = try container.decodeIfPresent(String.self, forKey: .idPrefix);
        self.pageHorizontalAlignment = try container.decodeIfPresent(PageHorizontalAlignment.self, forKey: .pageHorizontalAlignment);
        self.pageMargins = try container.decodeIfPresent(Double.self, forKey: .pageMargins);
        self.resourcesFolder = try container.decodeIfPresent(String.self, forKey: .resourcesFolder);
        self.resourcesFolderAlias = try container.decodeIfPresent(String.self, forKey: .resourcesFolderAlias);
        self.saveFontFaceCssSeparately = try container.decodeIfPresent(Bool.self, forKey: .saveFontFaceCssSeparately);
        self.showPageBorder = try container.decodeIfPresent(Bool.self, forKey: .showPageBorder);
        self.useTargetMachineFonts = try container.decodeIfPresent(Bool.self, forKey: .useTargetMachineFonts);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.cssClassNamesPrefix != nil) {
            try container.encode(self.cssClassNamesPrefix, forKey: .cssClassNamesPrefix);
        }
        if (self.encoding != nil) {
            try container.encode(self.encoding, forKey: .encoding);
        }
        if (self.exportEmbeddedCss != nil) {
            try container.encode(self.exportEmbeddedCss, forKey: .exportEmbeddedCss);
        }
        if (self.exportEmbeddedFonts != nil) {
            try container.encode(self.exportEmbeddedFonts, forKey: .exportEmbeddedFonts);
        }
        if (self.exportEmbeddedImages != nil) {
            try container.encode(self.exportEmbeddedImages, forKey: .exportEmbeddedImages);
        }
        if (self.exportFormFields != nil) {
            try container.encode(self.exportFormFields, forKey: .exportFormFields);
        }
        if (self.fontFormat != nil) {
            try container.encode(self.fontFormat, forKey: .fontFormat);
        }
        if (self.idPrefix != nil) {
            try container.encode(self.idPrefix, forKey: .idPrefix);
        }
        if (self.pageHorizontalAlignment != nil) {
            try container.encode(self.pageHorizontalAlignment, forKey: .pageHorizontalAlignment);
        }
        if (self.pageMargins != nil) {
            try container.encode(self.pageMargins, forKey: .pageMargins);
        }
        if (self.resourcesFolder != nil) {
            try container.encode(self.resourcesFolder, forKey: .resourcesFolder);
        }
        if (self.resourcesFolderAlias != nil) {
            try container.encode(self.resourcesFolderAlias, forKey: .resourcesFolderAlias);
        }
        if (self.saveFontFaceCssSeparately != nil) {
            try container.encode(self.saveFontFaceCssSeparately, forKey: .saveFontFaceCssSeparately);
        }
        if (self.showPageBorder != nil) {
            try container.encode(self.showPageBorder, forKey: .showPageBorder);
        }
        if (self.useTargetMachineFonts != nil) {
            try container.encode(self.useTargetMachineFonts, forKey: .useTargetMachineFonts);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets cssClassNamesPrefix. Gets or sets the prefix which is added to all class names in style.css file. The default value is "aw".
    public func setCssClassNamesPrefix(cssClassNamesPrefix : String?) -> HtmlFixedSaveOptionsData {
        self.cssClassNamesPrefix = cssClassNamesPrefix;
        return self;
    }

    // Gets cssClassNamesPrefix. Gets or sets the prefix which is added to all class names in style.css file. The default value is "aw".
    public func getCssClassNamesPrefix() -> String? {
        return self.cssClassNamesPrefix;
    }


    // Sets encoding. Gets or sets the character encoding.
    public func setEncoding(encoding : String?) -> HtmlFixedSaveOptionsData {
        self.encoding = encoding;
        return self;
    }

    // Gets encoding. Gets or sets the character encoding.
    public func getEncoding() -> String? {
        return self.encoding;
    }


    // Sets exportEmbeddedCss. Gets or sets a value indicating whether the CSS (Cascading Style Sheet) should be embedded into the Html document.
    public func setExportEmbeddedCss(exportEmbeddedCss : Bool?) -> HtmlFixedSaveOptionsData {
        self.exportEmbeddedCss = exportEmbeddedCss;
        return self;
    }

    // Gets exportEmbeddedCss. Gets or sets a value indicating whether the CSS (Cascading Style Sheet) should be embedded into the Html document.
    public func getExportEmbeddedCss() -> Bool? {
        return self.exportEmbeddedCss;
    }


    // Sets exportEmbeddedFonts. Gets or sets a value indicating whether fonts should be embedded into the Html document in Base64 format.
    public func setExportEmbeddedFonts(exportEmbeddedFonts : Bool?) -> HtmlFixedSaveOptionsData {
        self.exportEmbeddedFonts = exportEmbeddedFonts;
        return self;
    }

    // Gets exportEmbeddedFonts. Gets or sets a value indicating whether fonts should be embedded into the Html document in Base64 format.
    public func getExportEmbeddedFonts() -> Bool? {
        return self.exportEmbeddedFonts;
    }


    // Sets exportEmbeddedImages. Gets or sets a value indicating whether images should be embedded into the Html document in Base64 format.
    public func setExportEmbeddedImages(exportEmbeddedImages : Bool?) -> HtmlFixedSaveOptionsData {
        self.exportEmbeddedImages = exportEmbeddedImages;
        return self;
    }

    // Gets exportEmbeddedImages. Gets or sets a value indicating whether images should be embedded into the Html document in Base64 format.
    public func getExportEmbeddedImages() -> Bool? {
        return self.exportEmbeddedImages;
    }


    // Sets exportFormFields. Gets or sets a value indicating whether form fields are exported as interactive items (as 'input' tag) rather than converted to text or graphics.
    public func setExportFormFields(exportFormFields : Bool?) -> HtmlFixedSaveOptionsData {
        self.exportFormFields = exportFormFields;
        return self;
    }

    // Gets exportFormFields. Gets or sets a value indicating whether form fields are exported as interactive items (as 'input' tag) rather than converted to text or graphics.
    public func getExportFormFields() -> Bool? {
        return self.exportFormFields;
    }


    // Sets fontFormat. Gets or sets the export format of fonts.
    public func setFontFormat(fontFormat : FontFormat?) -> HtmlFixedSaveOptionsData {
        self.fontFormat = fontFormat;
        return self;
    }

    // Gets fontFormat. Gets or sets the export format of fonts.
    public func getFontFormat() -> FontFormat? {
        return self.fontFormat;
    }


    // Sets idPrefix. Gets or sets a prefix that is prepended to all generated element IDs in the output document. The default value is null and no prefix is prepended. If the prefix is specified, it can contain only letters, digits, underscores, and hyphens, and must start with a letter.
    public func setIdPrefix(idPrefix : String?) -> HtmlFixedSaveOptionsData {
        self.idPrefix = idPrefix;
        return self;
    }

    // Gets idPrefix. Gets or sets a prefix that is prepended to all generated element IDs in the output document. The default value is null and no prefix is prepended. If the prefix is specified, it can contain only letters, digits, underscores, and hyphens, and must start with a letter.
    public func getIdPrefix() -> String? {
        return self.idPrefix;
    }


    // Sets pageHorizontalAlignment. Gets or sets the horizontal alignment of pages in the HTML document. The default value is HtmlFixedHorizontalPageAlignment.Center.
    public func setPageHorizontalAlignment(pageHorizontalAlignment : PageHorizontalAlignment?) -> HtmlFixedSaveOptionsData {
        self.pageHorizontalAlignment = pageHorizontalAlignment;
        return self;
    }

    // Gets pageHorizontalAlignment. Gets or sets the horizontal alignment of pages in the HTML document. The default value is HtmlFixedHorizontalPageAlignment.Center.
    public func getPageHorizontalAlignment() -> PageHorizontalAlignment? {
        return self.pageHorizontalAlignment;
    }


    // Sets pageMargins. Gets or sets the margin around pages in HTML document. The margins value is measured in points and should be equal to or greater than 0. The default value is 10 points. Depends on the value of PageHorizontalAlignment property: Defines top, bottom and left page margins if the value is Left. Defines top, bottom and right page margins if the value is Right. Defines top and bottom page margins if the value is Center.
    public func setPageMargins(pageMargins : Double?) -> HtmlFixedSaveOptionsData {
        self.pageMargins = pageMargins;
        return self;
    }

    // Gets pageMargins. Gets or sets the margin around pages in HTML document. The margins value is measured in points and should be equal to or greater than 0. The default value is 10 points. Depends on the value of PageHorizontalAlignment property: Defines top, bottom and left page margins if the value is Left. Defines top, bottom and right page margins if the value is Right. Defines top and bottom page margins if the value is Center.
    public func getPageMargins() -> Double? {
        return self.pageMargins;
    }


    // Sets resourcesFolder. Gets or sets the physical folder where resources are saved when exporting the document.
    public func setResourcesFolder(resourcesFolder : String?) -> HtmlFixedSaveOptionsData {
        self.resourcesFolder = resourcesFolder;
        return self;
    }

    // Gets resourcesFolder. Gets or sets the physical folder where resources are saved when exporting the document.
    public func getResourcesFolder() -> String? {
        return self.resourcesFolder;
    }


    // Sets resourcesFolderAlias. Gets or sets the name of the folder used to construct resource URIs.
    public func setResourcesFolderAlias(resourcesFolderAlias : String?) -> HtmlFixedSaveOptionsData {
        self.resourcesFolderAlias = resourcesFolderAlias;
        return self;
    }

    // Gets resourcesFolderAlias. Gets or sets the name of the folder used to construct resource URIs.
    public func getResourcesFolderAlias() -> String? {
        return self.resourcesFolderAlias;
    }


    // Sets saveFontFaceCssSeparately. Gets or sets a value indicating whether "@font-face" CSS rules should be placed into a separate file "fontFaces.css" when a document is being saved with external stylesheet (that is, when Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedCss is false). The default value is false, all CSS rules are written into single file "styles.css". Setting this property to true restores the old behavior (separate files) for compatibility with legacy code.
    public func setSaveFontFaceCssSeparately(saveFontFaceCssSeparately : Bool?) -> HtmlFixedSaveOptionsData {
        self.saveFontFaceCssSeparately = saveFontFaceCssSeparately;
        return self;
    }

    // Gets saveFontFaceCssSeparately. Gets or sets a value indicating whether "@font-face" CSS rules should be placed into a separate file "fontFaces.css" when a document is being saved with external stylesheet (that is, when Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedCss is false). The default value is false, all CSS rules are written into single file "styles.css". Setting this property to true restores the old behavior (separate files) for compatibility with legacy code.
    public func getSaveFontFaceCssSeparately() -> Bool? {
        return self.saveFontFaceCssSeparately;
    }


    // Sets showPageBorder. Gets or sets a value indicating whether to show border around pages.
    public func setShowPageBorder(showPageBorder : Bool?) -> HtmlFixedSaveOptionsData {
        self.showPageBorder = showPageBorder;
        return self;
    }

    // Gets showPageBorder. Gets or sets a value indicating whether to show border around pages.
    public func getShowPageBorder() -> Bool? {
        return self.showPageBorder;
    }


    // Sets useTargetMachineFonts. Gets or sets a value indicating whether fonts from target machine must be used to display the document. If this flag is set to true, Aspose.Words.Saving.HtmlFixedSaveOptions.FontFormat and Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedFonts properties do not have effect, also Aspose.Words.Saving.HtmlFixedSaveOptions.ResourceSavingCallback is not fired for fonts. The default value is false.
    public func setUseTargetMachineFonts(useTargetMachineFonts : Bool?) -> HtmlFixedSaveOptionsData {
        self.useTargetMachineFonts = useTargetMachineFonts;
        return self;
    }

    // Gets useTargetMachineFonts. Gets or sets a value indicating whether fonts from target machine must be used to display the document. If this flag is set to true, Aspose.Words.Saving.HtmlFixedSaveOptions.FontFormat and Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedFonts properties do not have effect, also Aspose.Words.Saving.HtmlFixedSaveOptions.ResourceSavingCallback is not fired for fonts. The default value is false.
    public func getUseTargetMachineFonts() -> Bool? {
        return self.useTargetMachineFonts;
    }
}
