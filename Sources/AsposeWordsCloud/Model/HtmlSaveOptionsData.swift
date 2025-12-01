/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HtmlSaveOptionsData.swift">
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

// Container class for html save options.
public class HtmlSaveOptionsData : SaveOptionsData {
    // Gets or sets the option that controls how the CSS styles are exported.
    public enum CssStyleSheetType : String, Codable
    {
        // Enum value "inline"
        case inline = "Inline"

        // Enum value "embedded"
        case embedded = "Embedded"

        // Enum value "external"
        case external = "External"
    }

    // Gets or sets the option that controls how the document should be split when saving.
    public enum DocumentSplitCriteria : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "pageBreak"
        case pageBreak = "PageBreak"

        // Enum value "columnBreak"
        case columnBreak = "ColumnBreak"

        // Enum value "sectionBreak"
        case sectionBreak = "SectionBreak"

        // Enum value "headingParagraph"
        case headingParagraph = "HeadingParagraph"
    }

    // Gets or sets the option that controls how headers and footers are exported.
    public enum ExportHeadersFootersMode : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "perSection"
        case perSection = "PerSection"

        // Enum value "firstSectionHeaderLastSectionFooter"
        case firstSectionHeaderLastSectionFooter = "FirstSectionHeaderLastSectionFooter"

        // Enum value "firstPageHeaderFooterPerSection"
        case firstPageHeaderFooterPerSection = "FirstPageHeaderFooterPerSection"
    }

    // Gets or sets the option that controls how list labels are exported.
    public enum ExportListLabels : String, Codable
    {
        // Enum value "auto"
        case auto = "Auto"

        // Enum value "asInlineText"
        case asInlineText = "AsInlineText"

        // Enum value "byHtmlTags"
        case byHtmlTags = "ByHtmlTags"
    }

    // Gets or sets the version of HTML standard, that should be used when saving the document to HTML or MHTML.
    // The default value is Aspose.Words.Saving.HtmlVersion.Xhtml.
    public enum HtmlVersion : String, Codable
    {
        // Enum value "xhtml"
        case xhtml = "Xhtml"

        // Enum value "html5"
        case html5 = "Html5"
    }

    // Gets or sets the options, that controls in what format metafiles are saved when exporting to HTML, MHTML, or EPUB.
    // The default value is Aspose.Words.Saving.HtmlMetafileFormat.Png, meaning that metafiles are rendered to raster PNG images.
    // Metafiles are not natively displayed by HTML browsers. By default, Aspose.Words converts WMF and EMF images into PNG files when exporting to HTML.Other options are to convert metafiles to SVG images or to export them as is without conversion.
    // Some image transforms, in particular image cropping, will not be applied to metafile images if they are exported to HTML without conversion.
    public enum MetafileFormat : String, Codable
    {
        // Enum value "png"
        case png = "Png"

        // Enum value "svg"
        case svg = "Svg"

        // Enum value "emfOrWmf"
        case emfOrWmf = "EmfOrWmf"
    }

    // Gets or sets the option that controls how OfficeMath objects are exported to HTML, MHTML or EPUB. The default value is HtmlOfficeMathOutputMode.Image.
    public enum OfficeMathOutputMode : String, Codable
    {
        // Enum value "image"
        case image = "Image"

        // Enum value "mathML"
        case mathML = "MathML"

        // Enum value "text"
        case text = "Text"
    }

    // Gets or sets the option that controls how table, row and cell widths are exported.
    public enum TableWidthOutputMode : String, Codable
    {
        // Enum value "all"
        case all = "All"

        // Enum value "relativeOnly"
        case relativeOnly = "RelativeOnly"

        // Enum value "_none"
        case _none = "None"
    }

    // Field of allowNegativeIndent. Container class for html save options.
    private var _allowNegativeIndent : Bool? = nil;

    public var allowNegativeIndent : Bool? {
        get {
            return self._allowNegativeIndent;
        }
        set {
            self._allowNegativeIndent = newValue;
        }
    }

    // Field of cssClassNamePrefix. Container class for html save options.
    private var _cssClassNamePrefix : String? = nil;

    public var cssClassNamePrefix : String? {
        get {
            return self._cssClassNamePrefix;
        }
        set {
            self._cssClassNamePrefix = newValue;
        }
    }

    // Field of cssStyleSheetFileName. Container class for html save options.
    private var _cssStyleSheetFileName : String? = nil;

    public var cssStyleSheetFileName : String? {
        get {
            return self._cssStyleSheetFileName;
        }
        set {
            self._cssStyleSheetFileName = newValue;
        }
    }

    // Field of cssStyleSheetType. Container class for html save options.
    private var _cssStyleSheetType : CssStyleSheetType? = nil;

    public var cssStyleSheetType : CssStyleSheetType? {
        get {
            return self._cssStyleSheetType;
        }
        set {
            self._cssStyleSheetType = newValue;
        }
    }

    // Field of documentSplitCriteria. Container class for html save options.
    private var _documentSplitCriteria : DocumentSplitCriteria? = nil;

    public var documentSplitCriteria : DocumentSplitCriteria? {
        get {
            return self._documentSplitCriteria;
        }
        set {
            self._documentSplitCriteria = newValue;
        }
    }

    // Field of documentSplitHeadingLevel. Container class for html save options.
    private var _documentSplitHeadingLevel : Int? = nil;

    public var documentSplitHeadingLevel : Int? {
        get {
            return self._documentSplitHeadingLevel;
        }
        set {
            self._documentSplitHeadingLevel = newValue;
        }
    }

    // Field of encoding. Container class for html save options.
    private var _encoding : String? = nil;

    public var encoding : String? {
        get {
            return self._encoding;
        }
        set {
            self._encoding = newValue;
        }
    }

    // Field of exportDocumentProperties. Container class for html save options.
    private var _exportDocumentProperties : Bool? = nil;

    public var exportDocumentProperties : Bool? {
        get {
            return self._exportDocumentProperties;
        }
        set {
            self._exportDocumentProperties = newValue;
        }
    }

    // Field of exportDropDownFormFieldAsText. Container class for html save options.
    private var _exportDropDownFormFieldAsText : Bool? = nil;

    public var exportDropDownFormFieldAsText : Bool? {
        get {
            return self._exportDropDownFormFieldAsText;
        }
        set {
            self._exportDropDownFormFieldAsText = newValue;
        }
    }

    // Field of exportFontResources. Container class for html save options.
    private var _exportFontResources : Bool? = nil;

    public var exportFontResources : Bool? {
        get {
            return self._exportFontResources;
        }
        set {
            self._exportFontResources = newValue;
        }
    }

    // Field of exportFontsAsBase64. Container class for html save options.
    private var _exportFontsAsBase64 : Bool? = nil;

    public var exportFontsAsBase64 : Bool? {
        get {
            return self._exportFontsAsBase64;
        }
        set {
            self._exportFontsAsBase64 = newValue;
        }
    }

    // Field of exportHeadersFootersMode. Container class for html save options.
    private var _exportHeadersFootersMode : ExportHeadersFootersMode? = nil;

    public var exportHeadersFootersMode : ExportHeadersFootersMode? {
        get {
            return self._exportHeadersFootersMode;
        }
        set {
            self._exportHeadersFootersMode = newValue;
        }
    }

    // Field of exportImagesAsBase64. Container class for html save options.
    private var _exportImagesAsBase64 : Bool? = nil;

    public var exportImagesAsBase64 : Bool? {
        get {
            return self._exportImagesAsBase64;
        }
        set {
            self._exportImagesAsBase64 = newValue;
        }
    }

    // Field of exportLanguageInformation. Container class for html save options.
    private var _exportLanguageInformation : Bool? = nil;

    public var exportLanguageInformation : Bool? {
        get {
            return self._exportLanguageInformation;
        }
        set {
            self._exportLanguageInformation = newValue;
        }
    }

    // Field of exportListLabels. Container class for html save options.
    private var _exportListLabels : ExportListLabels? = nil;

    public var exportListLabels : ExportListLabels? {
        get {
            return self._exportListLabels;
        }
        set {
            self._exportListLabels = newValue;
        }
    }

    // Field of exportOriginalUrlForLinkedImages. Container class for html save options.
    private var _exportOriginalUrlForLinkedImages : Bool? = nil;

    public var exportOriginalUrlForLinkedImages : Bool? {
        get {
            return self._exportOriginalUrlForLinkedImages;
        }
        set {
            self._exportOriginalUrlForLinkedImages = newValue;
        }
    }

    // Field of exportPageMargins. Container class for html save options.
    private var _exportPageMargins : Bool? = nil;

    public var exportPageMargins : Bool? {
        get {
            return self._exportPageMargins;
        }
        set {
            self._exportPageMargins = newValue;
        }
    }

    // Field of exportPageSetup. Container class for html save options.
    private var _exportPageSetup : Bool? = nil;

    public var exportPageSetup : Bool? {
        get {
            return self._exportPageSetup;
        }
        set {
            self._exportPageSetup = newValue;
        }
    }

    // Field of exportRelativeFontSize. Container class for html save options.
    private var _exportRelativeFontSize : Bool? = nil;

    public var exportRelativeFontSize : Bool? {
        get {
            return self._exportRelativeFontSize;
        }
        set {
            self._exportRelativeFontSize = newValue;
        }
    }

    // Field of exportRoundtripInformation. Container class for html save options.
    private var _exportRoundtripInformation : Bool? = nil;

    public var exportRoundtripInformation : Bool? {
        get {
            return self._exportRoundtripInformation;
        }
        set {
            self._exportRoundtripInformation = newValue;
        }
    }

    // Field of exportTextInputFormFieldAsText. Container class for html save options.
    private var _exportTextInputFormFieldAsText : Bool? = nil;

    public var exportTextInputFormFieldAsText : Bool? {
        get {
            return self._exportTextInputFormFieldAsText;
        }
        set {
            self._exportTextInputFormFieldAsText = newValue;
        }
    }

    // Field of exportTocPageNumbers. Container class for html save options.
    private var _exportTocPageNumbers : Bool? = nil;

    public var exportTocPageNumbers : Bool? {
        get {
            return self._exportTocPageNumbers;
        }
        set {
            self._exportTocPageNumbers = newValue;
        }
    }

    // Field of exportXhtmlTransitional. Container class for html save options.
    private var _exportXhtmlTransitional : Bool? = nil;

    public var exportXhtmlTransitional : Bool? {
        get {
            return self._exportXhtmlTransitional;
        }
        set {
            self._exportXhtmlTransitional = newValue;
        }
    }

    // Field of fontResourcesSubsettingSizeThreshold. Container class for html save options.
    private var _fontResourcesSubsettingSizeThreshold : Int? = nil;

    public var fontResourcesSubsettingSizeThreshold : Int? {
        get {
            return self._fontResourcesSubsettingSizeThreshold;
        }
        set {
            self._fontResourcesSubsettingSizeThreshold = newValue;
        }
    }

    // Field of fontsFolder. Container class for html save options.
    private var _fontsFolder : String? = nil;

    public var fontsFolder : String? {
        get {
            return self._fontsFolder;
        }
        set {
            self._fontsFolder = newValue;
        }
    }

    // Field of fontsFolderAlias. Container class for html save options.
    private var _fontsFolderAlias : String? = nil;

    public var fontsFolderAlias : String? {
        get {
            return self._fontsFolderAlias;
        }
        set {
            self._fontsFolderAlias = newValue;
        }
    }

    // Field of htmlVersion. Container class for html save options.
    private var _htmlVersion : HtmlVersion? = nil;

    public var htmlVersion : HtmlVersion? {
        get {
            return self._htmlVersion;
        }
        set {
            self._htmlVersion = newValue;
        }
    }

    // Field of imageResolution. Container class for html save options.
    private var _imageResolution : Int? = nil;

    public var imageResolution : Int? {
        get {
            return self._imageResolution;
        }
        set {
            self._imageResolution = newValue;
        }
    }

    // Field of imagesFolder. Container class for html save options.
    private var _imagesFolder : String? = nil;

    public var imagesFolder : String? {
        get {
            return self._imagesFolder;
        }
        set {
            self._imagesFolder = newValue;
        }
    }

    // Field of imagesFolderAlias. Container class for html save options.
    private var _imagesFolderAlias : String? = nil;

    public var imagesFolderAlias : String? {
        get {
            return self._imagesFolderAlias;
        }
        set {
            self._imagesFolderAlias = newValue;
        }
    }

    // Field of metafileFormat. Container class for html save options.
    private var _metafileFormat : MetafileFormat? = nil;

    public var metafileFormat : MetafileFormat? {
        get {
            return self._metafileFormat;
        }
        set {
            self._metafileFormat = newValue;
        }
    }

    // Field of officeMathOutputMode. Container class for html save options.
    private var _officeMathOutputMode : OfficeMathOutputMode? = nil;

    public var officeMathOutputMode : OfficeMathOutputMode? {
        get {
            return self._officeMathOutputMode;
        }
        set {
            self._officeMathOutputMode = newValue;
        }
    }

    // Field of prettyFormat. Container class for html save options.
    private var _prettyFormat : Bool? = nil;

    public var prettyFormat : Bool? {
        get {
            return self._prettyFormat;
        }
        set {
            self._prettyFormat = newValue;
        }
    }

    // Field of removeJavaScriptFromLinks. Container class for html save options.
    private var _removeJavaScriptFromLinks : Bool? = nil;

    public var removeJavaScriptFromLinks : Bool? {
        get {
            return self._removeJavaScriptFromLinks;
        }
        set {
            self._removeJavaScriptFromLinks = newValue;
        }
    }

    // Field of replaceBackslashWithYenSign. Container class for html save options.
    private var _replaceBackslashWithYenSign : Bool? = nil;

    public var replaceBackslashWithYenSign : Bool? {
        get {
            return self._replaceBackslashWithYenSign;
        }
        set {
            self._replaceBackslashWithYenSign = newValue;
        }
    }

    // Field of resolveFontNames. Container class for html save options.
    private var _resolveFontNames : Bool? = nil;

    public var resolveFontNames : Bool? {
        get {
            return self._resolveFontNames;
        }
        set {
            self._resolveFontNames = newValue;
        }
    }

    // Field of resourceFolder. Container class for html save options.
    private var _resourceFolder : String? = nil;

    public var resourceFolder : String? {
        get {
            return self._resourceFolder;
        }
        set {
            self._resourceFolder = newValue;
        }
    }

    // Field of resourceFolderAlias. Container class for html save options.
    private var _resourceFolderAlias : String? = nil;

    public var resourceFolderAlias : String? {
        get {
            return self._resourceFolderAlias;
        }
        set {
            self._resourceFolderAlias = newValue;
        }
    }

    // Field of scaleImageToShapeSize. Container class for html save options.
    private var _scaleImageToShapeSize : Bool? = nil;

    public var scaleImageToShapeSize : Bool? {
        get {
            return self._scaleImageToShapeSize;
        }
        set {
            self._scaleImageToShapeSize = newValue;
        }
    }

    // Field of tableWidthOutputMode. Container class for html save options.
    private var _tableWidthOutputMode : TableWidthOutputMode? = nil;

    public var tableWidthOutputMode : TableWidthOutputMode? {
        get {
            return self._tableWidthOutputMode;
        }
        set {
            self._tableWidthOutputMode = newValue;
        }
    }

    // Field of saveFormat. Container class for html save options.
    private final let _saveFormat : String? = "html";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case allowNegativeIndent = "AllowNegativeIndent";
        case cssClassNamePrefix = "CssClassNamePrefix";
        case cssStyleSheetFileName = "CssStyleSheetFileName";
        case cssStyleSheetType = "CssStyleSheetType";
        case documentSplitCriteria = "DocumentSplitCriteria";
        case documentSplitHeadingLevel = "DocumentSplitHeadingLevel";
        case encoding = "Encoding";
        case exportDocumentProperties = "ExportDocumentProperties";
        case exportDropDownFormFieldAsText = "ExportDropDownFormFieldAsText";
        case exportFontResources = "ExportFontResources";
        case exportFontsAsBase64 = "ExportFontsAsBase64";
        case exportHeadersFootersMode = "ExportHeadersFootersMode";
        case exportImagesAsBase64 = "ExportImagesAsBase64";
        case exportLanguageInformation = "ExportLanguageInformation";
        case exportListLabels = "ExportListLabels";
        case exportOriginalUrlForLinkedImages = "ExportOriginalUrlForLinkedImages";
        case exportPageMargins = "ExportPageMargins";
        case exportPageSetup = "ExportPageSetup";
        case exportRelativeFontSize = "ExportRelativeFontSize";
        case exportRoundtripInformation = "ExportRoundtripInformation";
        case exportTextInputFormFieldAsText = "ExportTextInputFormFieldAsText";
        case exportTocPageNumbers = "ExportTocPageNumbers";
        case exportXhtmlTransitional = "ExportXhtmlTransitional";
        case fontResourcesSubsettingSizeThreshold = "FontResourcesSubsettingSizeThreshold";
        case fontsFolder = "FontsFolder";
        case fontsFolderAlias = "FontsFolderAlias";
        case htmlVersion = "HtmlVersion";
        case imageResolution = "ImageResolution";
        case imagesFolder = "ImagesFolder";
        case imagesFolderAlias = "ImagesFolderAlias";
        case metafileFormat = "MetafileFormat";
        case officeMathOutputMode = "OfficeMathOutputMode";
        case prettyFormat = "PrettyFormat";
        case removeJavaScriptFromLinks = "RemoveJavaScriptFromLinks";
        case replaceBackslashWithYenSign = "ReplaceBackslashWithYenSign";
        case resolveFontNames = "ResolveFontNames";
        case resourceFolder = "ResourceFolder";
        case resourceFolderAlias = "ResourceFolderAlias";
        case scaleImageToShapeSize = "ScaleImageToShapeSize";
        case tableWidthOutputMode = "TableWidthOutputMode";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.allowNegativeIndent = json["AllowNegativeIndent"] as? Bool;
        self.cssClassNamePrefix = json["CssClassNamePrefix"] as? String;
        self.cssStyleSheetFileName = json["CssStyleSheetFileName"] as? String;
        if let raw_cssStyleSheetType = json["CssStyleSheetType"] as? String {
            self.cssStyleSheetType = CssStyleSheetType(rawValue: raw_cssStyleSheetType);
        }

        if let raw_documentSplitCriteria = json["DocumentSplitCriteria"] as? String {
            self.documentSplitCriteria = DocumentSplitCriteria(rawValue: raw_documentSplitCriteria);
        }

        self.documentSplitHeadingLevel = json["DocumentSplitHeadingLevel"] as? Int;
        self.encoding = json["Encoding"] as? String;
        self.exportDocumentProperties = json["ExportDocumentProperties"] as? Bool;
        self.exportDropDownFormFieldAsText = json["ExportDropDownFormFieldAsText"] as? Bool;
        self.exportFontResources = json["ExportFontResources"] as? Bool;
        self.exportFontsAsBase64 = json["ExportFontsAsBase64"] as? Bool;
        if let raw_exportHeadersFootersMode = json["ExportHeadersFootersMode"] as? String {
            self.exportHeadersFootersMode = ExportHeadersFootersMode(rawValue: raw_exportHeadersFootersMode);
        }

        self.exportImagesAsBase64 = json["ExportImagesAsBase64"] as? Bool;
        self.exportLanguageInformation = json["ExportLanguageInformation"] as? Bool;
        if let raw_exportListLabels = json["ExportListLabels"] as? String {
            self.exportListLabels = ExportListLabels(rawValue: raw_exportListLabels);
        }

        self.exportOriginalUrlForLinkedImages = json["ExportOriginalUrlForLinkedImages"] as? Bool;
        self.exportPageMargins = json["ExportPageMargins"] as? Bool;
        self.exportPageSetup = json["ExportPageSetup"] as? Bool;
        self.exportRelativeFontSize = json["ExportRelativeFontSize"] as? Bool;
        self.exportRoundtripInformation = json["ExportRoundtripInformation"] as? Bool;
        self.exportTextInputFormFieldAsText = json["ExportTextInputFormFieldAsText"] as? Bool;
        self.exportTocPageNumbers = json["ExportTocPageNumbers"] as? Bool;
        self.exportXhtmlTransitional = json["ExportXhtmlTransitional"] as? Bool;
        self.fontResourcesSubsettingSizeThreshold = json["FontResourcesSubsettingSizeThreshold"] as? Int;
        self.fontsFolder = json["FontsFolder"] as? String;
        self.fontsFolderAlias = json["FontsFolderAlias"] as? String;
        if let raw_htmlVersion = json["HtmlVersion"] as? String {
            self.htmlVersion = HtmlVersion(rawValue: raw_htmlVersion);
        }

        self.imageResolution = json["ImageResolution"] as? Int;
        self.imagesFolder = json["ImagesFolder"] as? String;
        self.imagesFolderAlias = json["ImagesFolderAlias"] as? String;
        if let raw_metafileFormat = json["MetafileFormat"] as? String {
            self.metafileFormat = MetafileFormat(rawValue: raw_metafileFormat);
        }

        if let raw_officeMathOutputMode = json["OfficeMathOutputMode"] as? String {
            self.officeMathOutputMode = OfficeMathOutputMode(rawValue: raw_officeMathOutputMode);
        }

        self.prettyFormat = json["PrettyFormat"] as? Bool;
        self.removeJavaScriptFromLinks = json["RemoveJavaScriptFromLinks"] as? Bool;
        self.replaceBackslashWithYenSign = json["ReplaceBackslashWithYenSign"] as? Bool;
        self.resolveFontNames = json["ResolveFontNames"] as? Bool;
        self.resourceFolder = json["ResourceFolder"] as? String;
        self.resourceFolderAlias = json["ResourceFolderAlias"] as? String;
        self.scaleImageToShapeSize = json["ScaleImageToShapeSize"] as? Bool;
        if let raw_tableWidthOutputMode = json["TableWidthOutputMode"] as? String {
            self.tableWidthOutputMode = TableWidthOutputMode(rawValue: raw_tableWidthOutputMode);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.allowNegativeIndent = try container.decodeIfPresent(Bool.self, forKey: .allowNegativeIndent);
        self.cssClassNamePrefix = try container.decodeIfPresent(String.self, forKey: .cssClassNamePrefix);
        self.cssStyleSheetFileName = try container.decodeIfPresent(String.self, forKey: .cssStyleSheetFileName);
        self.cssStyleSheetType = try container.decodeIfPresent(CssStyleSheetType.self, forKey: .cssStyleSheetType);
        self.documentSplitCriteria = try container.decodeIfPresent(DocumentSplitCriteria.self, forKey: .documentSplitCriteria);
        self.documentSplitHeadingLevel = try container.decodeIfPresent(Int.self, forKey: .documentSplitHeadingLevel);
        self.encoding = try container.decodeIfPresent(String.self, forKey: .encoding);
        self.exportDocumentProperties = try container.decodeIfPresent(Bool.self, forKey: .exportDocumentProperties);
        self.exportDropDownFormFieldAsText = try container.decodeIfPresent(Bool.self, forKey: .exportDropDownFormFieldAsText);
        self.exportFontResources = try container.decodeIfPresent(Bool.self, forKey: .exportFontResources);
        self.exportFontsAsBase64 = try container.decodeIfPresent(Bool.self, forKey: .exportFontsAsBase64);
        self.exportHeadersFootersMode = try container.decodeIfPresent(ExportHeadersFootersMode.self, forKey: .exportHeadersFootersMode);
        self.exportImagesAsBase64 = try container.decodeIfPresent(Bool.self, forKey: .exportImagesAsBase64);
        self.exportLanguageInformation = try container.decodeIfPresent(Bool.self, forKey: .exportLanguageInformation);
        self.exportListLabels = try container.decodeIfPresent(ExportListLabels.self, forKey: .exportListLabels);
        self.exportOriginalUrlForLinkedImages = try container.decodeIfPresent(Bool.self, forKey: .exportOriginalUrlForLinkedImages);
        self.exportPageMargins = try container.decodeIfPresent(Bool.self, forKey: .exportPageMargins);
        self.exportPageSetup = try container.decodeIfPresent(Bool.self, forKey: .exportPageSetup);
        self.exportRelativeFontSize = try container.decodeIfPresent(Bool.self, forKey: .exportRelativeFontSize);
        self.exportRoundtripInformation = try container.decodeIfPresent(Bool.self, forKey: .exportRoundtripInformation);
        self.exportTextInputFormFieldAsText = try container.decodeIfPresent(Bool.self, forKey: .exportTextInputFormFieldAsText);
        self.exportTocPageNumbers = try container.decodeIfPresent(Bool.self, forKey: .exportTocPageNumbers);
        self.exportXhtmlTransitional = try container.decodeIfPresent(Bool.self, forKey: .exportXhtmlTransitional);
        self.fontResourcesSubsettingSizeThreshold = try container.decodeIfPresent(Int.self, forKey: .fontResourcesSubsettingSizeThreshold);
        self.fontsFolder = try container.decodeIfPresent(String.self, forKey: .fontsFolder);
        self.fontsFolderAlias = try container.decodeIfPresent(String.self, forKey: .fontsFolderAlias);
        self.htmlVersion = try container.decodeIfPresent(HtmlVersion.self, forKey: .htmlVersion);
        self.imageResolution = try container.decodeIfPresent(Int.self, forKey: .imageResolution);
        self.imagesFolder = try container.decodeIfPresent(String.self, forKey: .imagesFolder);
        self.imagesFolderAlias = try container.decodeIfPresent(String.self, forKey: .imagesFolderAlias);
        self.metafileFormat = try container.decodeIfPresent(MetafileFormat.self, forKey: .metafileFormat);
        self.officeMathOutputMode = try container.decodeIfPresent(OfficeMathOutputMode.self, forKey: .officeMathOutputMode);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
        self.removeJavaScriptFromLinks = try container.decodeIfPresent(Bool.self, forKey: .removeJavaScriptFromLinks);
        self.replaceBackslashWithYenSign = try container.decodeIfPresent(Bool.self, forKey: .replaceBackslashWithYenSign);
        self.resolveFontNames = try container.decodeIfPresent(Bool.self, forKey: .resolveFontNames);
        self.resourceFolder = try container.decodeIfPresent(String.self, forKey: .resourceFolder);
        self.resourceFolderAlias = try container.decodeIfPresent(String.self, forKey: .resourceFolderAlias);
        self.scaleImageToShapeSize = try container.decodeIfPresent(Bool.self, forKey: .scaleImageToShapeSize);
        self.tableWidthOutputMode = try container.decodeIfPresent(TableWidthOutputMode.self, forKey: .tableWidthOutputMode);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.allowNegativeIndent != nil) {
            try container.encode(self.allowNegativeIndent, forKey: .allowNegativeIndent);
        }
        if (self.cssClassNamePrefix != nil) {
            try container.encode(self.cssClassNamePrefix, forKey: .cssClassNamePrefix);
        }
        if (self.cssStyleSheetFileName != nil) {
            try container.encode(self.cssStyleSheetFileName, forKey: .cssStyleSheetFileName);
        }
        if (self.cssStyleSheetType != nil) {
            try container.encode(self.cssStyleSheetType, forKey: .cssStyleSheetType);
        }
        if (self.documentSplitCriteria != nil) {
            try container.encode(self.documentSplitCriteria, forKey: .documentSplitCriteria);
        }
        if (self.documentSplitHeadingLevel != nil) {
            try container.encode(self.documentSplitHeadingLevel, forKey: .documentSplitHeadingLevel);
        }
        if (self.encoding != nil) {
            try container.encode(self.encoding, forKey: .encoding);
        }
        if (self.exportDocumentProperties != nil) {
            try container.encode(self.exportDocumentProperties, forKey: .exportDocumentProperties);
        }
        if (self.exportDropDownFormFieldAsText != nil) {
            try container.encode(self.exportDropDownFormFieldAsText, forKey: .exportDropDownFormFieldAsText);
        }
        if (self.exportFontResources != nil) {
            try container.encode(self.exportFontResources, forKey: .exportFontResources);
        }
        if (self.exportFontsAsBase64 != nil) {
            try container.encode(self.exportFontsAsBase64, forKey: .exportFontsAsBase64);
        }
        if (self.exportHeadersFootersMode != nil) {
            try container.encode(self.exportHeadersFootersMode, forKey: .exportHeadersFootersMode);
        }
        if (self.exportImagesAsBase64 != nil) {
            try container.encode(self.exportImagesAsBase64, forKey: .exportImagesAsBase64);
        }
        if (self.exportLanguageInformation != nil) {
            try container.encode(self.exportLanguageInformation, forKey: .exportLanguageInformation);
        }
        if (self.exportListLabels != nil) {
            try container.encode(self.exportListLabels, forKey: .exportListLabels);
        }
        if (self.exportOriginalUrlForLinkedImages != nil) {
            try container.encode(self.exportOriginalUrlForLinkedImages, forKey: .exportOriginalUrlForLinkedImages);
        }
        if (self.exportPageMargins != nil) {
            try container.encode(self.exportPageMargins, forKey: .exportPageMargins);
        }
        if (self.exportPageSetup != nil) {
            try container.encode(self.exportPageSetup, forKey: .exportPageSetup);
        }
        if (self.exportRelativeFontSize != nil) {
            try container.encode(self.exportRelativeFontSize, forKey: .exportRelativeFontSize);
        }
        if (self.exportRoundtripInformation != nil) {
            try container.encode(self.exportRoundtripInformation, forKey: .exportRoundtripInformation);
        }
        if (self.exportTextInputFormFieldAsText != nil) {
            try container.encode(self.exportTextInputFormFieldAsText, forKey: .exportTextInputFormFieldAsText);
        }
        if (self.exportTocPageNumbers != nil) {
            try container.encode(self.exportTocPageNumbers, forKey: .exportTocPageNumbers);
        }
        if (self.exportXhtmlTransitional != nil) {
            try container.encode(self.exportXhtmlTransitional, forKey: .exportXhtmlTransitional);
        }
        if (self.fontResourcesSubsettingSizeThreshold != nil) {
            try container.encode(self.fontResourcesSubsettingSizeThreshold, forKey: .fontResourcesSubsettingSizeThreshold);
        }
        if (self.fontsFolder != nil) {
            try container.encode(self.fontsFolder, forKey: .fontsFolder);
        }
        if (self.fontsFolderAlias != nil) {
            try container.encode(self.fontsFolderAlias, forKey: .fontsFolderAlias);
        }
        if (self.htmlVersion != nil) {
            try container.encode(self.htmlVersion, forKey: .htmlVersion);
        }
        if (self.imageResolution != nil) {
            try container.encode(self.imageResolution, forKey: .imageResolution);
        }
        if (self.imagesFolder != nil) {
            try container.encode(self.imagesFolder, forKey: .imagesFolder);
        }
        if (self.imagesFolderAlias != nil) {
            try container.encode(self.imagesFolderAlias, forKey: .imagesFolderAlias);
        }
        if (self.metafileFormat != nil) {
            try container.encode(self.metafileFormat, forKey: .metafileFormat);
        }
        if (self.officeMathOutputMode != nil) {
            try container.encode(self.officeMathOutputMode, forKey: .officeMathOutputMode);
        }
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
        if (self.removeJavaScriptFromLinks != nil) {
            try container.encode(self.removeJavaScriptFromLinks, forKey: .removeJavaScriptFromLinks);
        }
        if (self.replaceBackslashWithYenSign != nil) {
            try container.encode(self.replaceBackslashWithYenSign, forKey: .replaceBackslashWithYenSign);
        }
        if (self.resolveFontNames != nil) {
            try container.encode(self.resolveFontNames, forKey: .resolveFontNames);
        }
        if (self.resourceFolder != nil) {
            try container.encode(self.resourceFolder, forKey: .resourceFolder);
        }
        if (self.resourceFolderAlias != nil) {
            try container.encode(self.resourceFolderAlias, forKey: .resourceFolderAlias);
        }
        if (self.scaleImageToShapeSize != nil) {
            try container.encode(self.scaleImageToShapeSize, forKey: .scaleImageToShapeSize);
        }
        if (self.tableWidthOutputMode != nil) {
            try container.encode(self.tableWidthOutputMode, forKey: .tableWidthOutputMode);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets allowNegativeIndent. Gets or sets a value indicating whether negative left and right indents of paragraphs are allowed (not normalized).
    public func setAllowNegativeIndent(allowNegativeIndent : Bool?) -> HtmlSaveOptionsData {
        self.allowNegativeIndent = allowNegativeIndent;
        return self;
    }

    // Gets allowNegativeIndent. Gets or sets a value indicating whether negative left and right indents of paragraphs are allowed (not normalized).
    public func getAllowNegativeIndent() -> Bool? {
        return self.allowNegativeIndent;
    }


    // Sets cssClassNamePrefix. Gets or sets the prefix which is added to all CSS class names. The default value is an empty string and generated CSS class names have no common prefix. If this value is not empty, all CSS classes generated by Aspose.Words will start with the specified prefix.This might be useful, for example, if you add custom CSS to generated documents and want to prevent class name conflicts. If the value is not null or empty, it must be a valid CSS identifier.
    public func setCssClassNamePrefix(cssClassNamePrefix : String?) -> HtmlSaveOptionsData {
        self.cssClassNamePrefix = cssClassNamePrefix;
        return self;
    }

    // Gets cssClassNamePrefix. Gets or sets the prefix which is added to all CSS class names. The default value is an empty string and generated CSS class names have no common prefix. If this value is not empty, all CSS classes generated by Aspose.Words will start with the specified prefix.This might be useful, for example, if you add custom CSS to generated documents and want to prevent class name conflicts. If the value is not null or empty, it must be a valid CSS identifier.
    public func getCssClassNamePrefix() -> String? {
        return self.cssClassNamePrefix;
    }


    // Sets cssStyleSheetFileName. Gets or sets the name of the CSS file written when the document is exported to HTML.
    public func setCssStyleSheetFileName(cssStyleSheetFileName : String?) -> HtmlSaveOptionsData {
        self.cssStyleSheetFileName = cssStyleSheetFileName;
        return self;
    }

    // Gets cssStyleSheetFileName. Gets or sets the name of the CSS file written when the document is exported to HTML.
    public func getCssStyleSheetFileName() -> String? {
        return self.cssStyleSheetFileName;
    }


    // Sets cssStyleSheetType. Gets or sets the option that controls how the CSS styles are exported.
    public func setCssStyleSheetType(cssStyleSheetType : CssStyleSheetType?) -> HtmlSaveOptionsData {
        self.cssStyleSheetType = cssStyleSheetType;
        return self;
    }

    // Gets cssStyleSheetType. Gets or sets the option that controls how the CSS styles are exported.
    public func getCssStyleSheetType() -> CssStyleSheetType? {
        return self.cssStyleSheetType;
    }


    // Sets documentSplitCriteria. Gets or sets the option that controls how the document should be split when saving.
    public func setDocumentSplitCriteria(documentSplitCriteria : DocumentSplitCriteria?) -> HtmlSaveOptionsData {
        self.documentSplitCriteria = documentSplitCriteria;
        return self;
    }

    // Gets documentSplitCriteria. Gets or sets the option that controls how the document should be split when saving.
    public func getDocumentSplitCriteria() -> DocumentSplitCriteria? {
        return self.documentSplitCriteria;
    }


    // Sets documentSplitHeadingLevel. Gets or sets the maximum level of headings at which to split the document.
    public func setDocumentSplitHeadingLevel(documentSplitHeadingLevel : Int?) -> HtmlSaveOptionsData {
        self.documentSplitHeadingLevel = documentSplitHeadingLevel;
        return self;
    }

    // Gets documentSplitHeadingLevel. Gets or sets the maximum level of headings at which to split the document.
    public func getDocumentSplitHeadingLevel() -> Int? {
        return self.documentSplitHeadingLevel;
    }


    // Sets encoding. Gets or sets the character encoding to use when exporting.
    public func setEncoding(encoding : String?) -> HtmlSaveOptionsData {
        self.encoding = encoding;
        return self;
    }

    // Gets encoding. Gets or sets the character encoding to use when exporting.
    public func getEncoding() -> String? {
        return self.encoding;
    }


    // Sets exportDocumentProperties. Gets or sets a value indicating whether to export built-in and custom document properties.
    public func setExportDocumentProperties(exportDocumentProperties : Bool?) -> HtmlSaveOptionsData {
        self.exportDocumentProperties = exportDocumentProperties;
        return self;
    }

    // Gets exportDocumentProperties. Gets or sets a value indicating whether to export built-in and custom document properties.
    public func getExportDocumentProperties() -> Bool? {
        return self.exportDocumentProperties;
    }


    // Sets exportDropDownFormFieldAsText. Gets or sets the flag, that controls how drop-down form fields are saved to HTML. The default value is false. When set to true, exports drop-down form fields as normal text. When false, exports drop-down form fields as SELECT element in HTML.
    public func setExportDropDownFormFieldAsText(exportDropDownFormFieldAsText : Bool?) -> HtmlSaveOptionsData {
        self.exportDropDownFormFieldAsText = exportDropDownFormFieldAsText;
        return self;
    }

    // Gets exportDropDownFormFieldAsText. Gets or sets the flag, that controls how drop-down form fields are saved to HTML. The default value is false. When set to true, exports drop-down form fields as normal text. When false, exports drop-down form fields as SELECT element in HTML.
    public func getExportDropDownFormFieldAsText() -> Bool? {
        return self.exportDropDownFormFieldAsText;
    }


    // Sets exportFontResources. Gets or sets a value indicating whether font resources should be exported.
    public func setExportFontResources(exportFontResources : Bool?) -> HtmlSaveOptionsData {
        self.exportFontResources = exportFontResources;
        return self;
    }

    // Gets exportFontResources. Gets or sets a value indicating whether font resources should be exported.
    public func getExportFontResources() -> Bool? {
        return self.exportFontResources;
    }


    // Sets exportFontsAsBase64. Gets or sets a value indicating whether fonts resources should be embedded to HTML in Base64 encoding. The default value is false.
    public func setExportFontsAsBase64(exportFontsAsBase64 : Bool?) -> HtmlSaveOptionsData {
        self.exportFontsAsBase64 = exportFontsAsBase64;
        return self;
    }

    // Gets exportFontsAsBase64. Gets or sets a value indicating whether fonts resources should be embedded to HTML in Base64 encoding. The default value is false.
    public func getExportFontsAsBase64() -> Bool? {
        return self.exportFontsAsBase64;
    }


    // Sets exportHeadersFootersMode. Gets or sets the option that controls how headers and footers are exported.
    public func setExportHeadersFootersMode(exportHeadersFootersMode : ExportHeadersFootersMode?) -> HtmlSaveOptionsData {
        self.exportHeadersFootersMode = exportHeadersFootersMode;
        return self;
    }

    // Gets exportHeadersFootersMode. Gets or sets the option that controls how headers and footers are exported.
    public func getExportHeadersFootersMode() -> ExportHeadersFootersMode? {
        return self.exportHeadersFootersMode;
    }


    // Sets exportImagesAsBase64. Gets or sets a value indicating whether images are saved in Base64 format.
    public func setExportImagesAsBase64(exportImagesAsBase64 : Bool?) -> HtmlSaveOptionsData {
        self.exportImagesAsBase64 = exportImagesAsBase64;
        return self;
    }

    // Gets exportImagesAsBase64. Gets or sets a value indicating whether images are saved in Base64 format.
    public func getExportImagesAsBase64() -> Bool? {
        return self.exportImagesAsBase64;
    }


    // Sets exportLanguageInformation. Gets or sets a value indicating whether language information is exported.
    public func setExportLanguageInformation(exportLanguageInformation : Bool?) -> HtmlSaveOptionsData {
        self.exportLanguageInformation = exportLanguageInformation;
        return self;
    }

    // Gets exportLanguageInformation. Gets or sets a value indicating whether language information is exported.
    public func getExportLanguageInformation() -> Bool? {
        return self.exportLanguageInformation;
    }


    // Sets exportListLabels. Gets or sets the option that controls how list labels are exported.
    public func setExportListLabels(exportListLabels : ExportListLabels?) -> HtmlSaveOptionsData {
        self.exportListLabels = exportListLabels;
        return self;
    }

    // Gets exportListLabels. Gets or sets the option that controls how list labels are exported.
    public func getExportListLabels() -> ExportListLabels? {
        return self.exportListLabels;
    }


    // Sets exportOriginalUrlForLinkedImages. Gets or sets a value indicating whether the original URL should be used as the URL of the linked images. The default value is false. If value is set to true - ResourceFolder value is used as the URL of linked images and linked images are not loaded into document's folder or ImagesFolder.If value is set to false - linked images are loaded into document's folder or ImagesFolder and URL of each linked image is constructed depending on document's folder, ImagesFolder and ImagesFolderAlias properties.
    public func setExportOriginalUrlForLinkedImages(exportOriginalUrlForLinkedImages : Bool?) -> HtmlSaveOptionsData {
        self.exportOriginalUrlForLinkedImages = exportOriginalUrlForLinkedImages;
        return self;
    }

    // Gets exportOriginalUrlForLinkedImages. Gets or sets a value indicating whether the original URL should be used as the URL of the linked images. The default value is false. If value is set to true - ResourceFolder value is used as the URL of linked images and linked images are not loaded into document's folder or ImagesFolder.If value is set to false - linked images are loaded into document's folder or ImagesFolder and URL of each linked image is constructed depending on document's folder, ImagesFolder and ImagesFolderAlias properties.
    public func getExportOriginalUrlForLinkedImages() -> Bool? {
        return self.exportOriginalUrlForLinkedImages;
    }


    // Sets exportPageMargins. Gets or sets a value indicating whether page margins are exported to HTML, MHTML or EPUB. The default value is false. Aspose.Words does not show the area of page margins by default. If any elements are completely or partially clipped by the document edge the displayed area can be extended with this option.
    public func setExportPageMargins(exportPageMargins : Bool?) -> HtmlSaveOptionsData {
        self.exportPageMargins = exportPageMargins;
        return self;
    }

    // Gets exportPageMargins. Gets or sets a value indicating whether page margins are exported to HTML, MHTML or EPUB. The default value is false. Aspose.Words does not show the area of page margins by default. If any elements are completely or partially clipped by the document edge the displayed area can be extended with this option.
    public func getExportPageMargins() -> Bool? {
        return self.exportPageMargins;
    }


    // Sets exportPageSetup. Gets or sets a value indicating whether page setup is exported.
    public func setExportPageSetup(exportPageSetup : Bool?) -> HtmlSaveOptionsData {
        self.exportPageSetup = exportPageSetup;
        return self;
    }

    // Gets exportPageSetup. Gets or sets a value indicating whether page setup is exported.
    public func getExportPageSetup() -> Bool? {
        return self.exportPageSetup;
    }


    // Sets exportRelativeFontSize. Gets or sets a value indicating whether font sizes should be output in relative units when saving.
    public func setExportRelativeFontSize(exportRelativeFontSize : Bool?) -> HtmlSaveOptionsData {
        self.exportRelativeFontSize = exportRelativeFontSize;
        return self;
    }

    // Gets exportRelativeFontSize. Gets or sets a value indicating whether font sizes should be output in relative units when saving.
    public func getExportRelativeFontSize() -> Bool? {
        return self.exportRelativeFontSize;
    }


    // Sets exportRoundtripInformation. Gets or sets a value indicating whether to write the roundtrip information when saving to HTML. The default value is true. Saving of the roundtrip information allows to restore document properties such as tab stops, comments, headers and footers during the HTML documents loading back into a Document object.When true, the roundtrip information is exported as -aw-* CSS properties of the corresponding HTML elements.When false, causes no roundtrip information to be output into produced files.
    public func setExportRoundtripInformation(exportRoundtripInformation : Bool?) -> HtmlSaveOptionsData {
        self.exportRoundtripInformation = exportRoundtripInformation;
        return self;
    }

    // Gets exportRoundtripInformation. Gets or sets a value indicating whether to write the roundtrip information when saving to HTML. The default value is true. Saving of the roundtrip information allows to restore document properties such as tab stops, comments, headers and footers during the HTML documents loading back into a Document object.When true, the roundtrip information is exported as -aw-* CSS properties of the corresponding HTML elements.When false, causes no roundtrip information to be output into produced files.
    public func getExportRoundtripInformation() -> Bool? {
        return self.exportRoundtripInformation;
    }


    // Sets exportTextInputFormFieldAsText. Gets or sets the flag, that controls how text input form fields are saved.
    public func setExportTextInputFormFieldAsText(exportTextInputFormFieldAsText : Bool?) -> HtmlSaveOptionsData {
        self.exportTextInputFormFieldAsText = exportTextInputFormFieldAsText;
        return self;
    }

    // Gets exportTextInputFormFieldAsText. Gets or sets the flag, that controls how text input form fields are saved.
    public func getExportTextInputFormFieldAsText() -> Bool? {
        return self.exportTextInputFormFieldAsText;
    }


    // Sets exportTocPageNumbers. Gets or sets a value indicating whether to write page numbers to table of contents when saving.
    public func setExportTocPageNumbers(exportTocPageNumbers : Bool?) -> HtmlSaveOptionsData {
        self.exportTocPageNumbers = exportTocPageNumbers;
        return self;
    }

    // Gets exportTocPageNumbers. Gets or sets a value indicating whether to write page numbers to table of contents when saving.
    public func getExportTocPageNumbers() -> Bool? {
        return self.exportTocPageNumbers;
    }


    // Sets exportXhtmlTransitional. Gets or sets a value indicating whether to write the DOCTYPE declaration when saving.
    public func setExportXhtmlTransitional(exportXhtmlTransitional : Bool?) -> HtmlSaveOptionsData {
        self.exportXhtmlTransitional = exportXhtmlTransitional;
        return self;
    }

    // Gets exportXhtmlTransitional. Gets or sets a value indicating whether to write the DOCTYPE declaration when saving.
    public func getExportXhtmlTransitional() -> Bool? {
        return self.exportXhtmlTransitional;
    }


    // Sets fontResourcesSubsettingSizeThreshold. Gets or sets the option that controls which font resources need subsetting when saving.
    public func setFontResourcesSubsettingSizeThreshold(fontResourcesSubsettingSizeThreshold : Int?) -> HtmlSaveOptionsData {
        self.fontResourcesSubsettingSizeThreshold = fontResourcesSubsettingSizeThreshold;
        return self;
    }

    // Gets fontResourcesSubsettingSizeThreshold. Gets or sets the option that controls which font resources need subsetting when saving.
    public func getFontResourcesSubsettingSizeThreshold() -> Int? {
        return self.fontResourcesSubsettingSizeThreshold;
    }


    // Sets fontsFolder. Gets or sets the physical folder where fonts are saved when exporting a document.
    public func setFontsFolder(fontsFolder : String?) -> HtmlSaveOptionsData {
        self.fontsFolder = fontsFolder;
        return self;
    }

    // Gets fontsFolder. Gets or sets the physical folder where fonts are saved when exporting a document.
    public func getFontsFolder() -> String? {
        return self.fontsFolder;
    }


    // Sets fontsFolderAlias. Gets or sets the name of the folder used to construct font URIs.
    public func setFontsFolderAlias(fontsFolderAlias : String?) -> HtmlSaveOptionsData {
        self.fontsFolderAlias = fontsFolderAlias;
        return self;
    }

    // Gets fontsFolderAlias. Gets or sets the name of the folder used to construct font URIs.
    public func getFontsFolderAlias() -> String? {
        return self.fontsFolderAlias;
    }


    // Sets htmlVersion. Gets or sets the version of HTML standard, that should be used when saving the document to HTML or MHTML. The default value is Aspose.Words.Saving.HtmlVersion.Xhtml.
    public func setHtmlVersion(htmlVersion : HtmlVersion?) -> HtmlSaveOptionsData {
        self.htmlVersion = htmlVersion;
        return self;
    }

    // Gets htmlVersion. Gets or sets the version of HTML standard, that should be used when saving the document to HTML or MHTML. The default value is Aspose.Words.Saving.HtmlVersion.Xhtml.
    public func getHtmlVersion() -> HtmlVersion? {
        return self.htmlVersion;
    }


    // Sets imageResolution. Gets or sets the output resolution for images when exporting.
    public func setImageResolution(imageResolution : Int?) -> HtmlSaveOptionsData {
        self.imageResolution = imageResolution;
        return self;
    }

    // Gets imageResolution. Gets or sets the output resolution for images when exporting.
    public func getImageResolution() -> Int? {
        return self.imageResolution;
    }


    // Sets imagesFolder. Gets or sets the physical folder where images are saved when exporting a document.
    public func setImagesFolder(imagesFolder : String?) -> HtmlSaveOptionsData {
        self.imagesFolder = imagesFolder;
        return self;
    }

    // Gets imagesFolder. Gets or sets the physical folder where images are saved when exporting a document.
    public func getImagesFolder() -> String? {
        return self.imagesFolder;
    }


    // Sets imagesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func setImagesFolderAlias(imagesFolderAlias : String?) -> HtmlSaveOptionsData {
        self.imagesFolderAlias = imagesFolderAlias;
        return self;
    }

    // Gets imagesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func getImagesFolderAlias() -> String? {
        return self.imagesFolderAlias;
    }


    // Sets metafileFormat. Gets or sets the options, that controls in what format metafiles are saved when exporting to HTML, MHTML, or EPUB. The default value is Aspose.Words.Saving.HtmlMetafileFormat.Png, meaning that metafiles are rendered to raster PNG images. Metafiles are not natively displayed by HTML browsers. By default, Aspose.Words converts WMF and EMF images into PNG files when exporting to HTML.Other options are to convert metafiles to SVG images or to export them as is without conversion. Some image transforms, in particular image cropping, will not be applied to metafile images if they are exported to HTML without conversion.
    public func setMetafileFormat(metafileFormat : MetafileFormat?) -> HtmlSaveOptionsData {
        self.metafileFormat = metafileFormat;
        return self;
    }

    // Gets metafileFormat. Gets or sets the options, that controls in what format metafiles are saved when exporting to HTML, MHTML, or EPUB. The default value is Aspose.Words.Saving.HtmlMetafileFormat.Png, meaning that metafiles are rendered to raster PNG images. Metafiles are not natively displayed by HTML browsers. By default, Aspose.Words converts WMF and EMF images into PNG files when exporting to HTML.Other options are to convert metafiles to SVG images or to export them as is without conversion. Some image transforms, in particular image cropping, will not be applied to metafile images if they are exported to HTML without conversion.
    public func getMetafileFormat() -> MetafileFormat? {
        return self.metafileFormat;
    }


    // Sets officeMathOutputMode. Gets or sets the option that controls how OfficeMath objects are exported to HTML, MHTML or EPUB. The default value is HtmlOfficeMathOutputMode.Image.
    public func setOfficeMathOutputMode(officeMathOutputMode : OfficeMathOutputMode?) -> HtmlSaveOptionsData {
        self.officeMathOutputMode = officeMathOutputMode;
        return self;
    }

    // Gets officeMathOutputMode. Gets or sets the option that controls how OfficeMath objects are exported to HTML, MHTML or EPUB. The default value is HtmlOfficeMathOutputMode.Image.
    public func getOfficeMathOutputMode() -> OfficeMathOutputMode? {
        return self.officeMathOutputMode;
    }


    // Sets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func setPrettyFormat(prettyFormat : Bool?) -> HtmlSaveOptionsData {
        self.prettyFormat = prettyFormat;
        return self;
    }

    // Gets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }


    // Sets removeJavaScriptFromLinks. Gets or sets the flag that indicates whether JavaScript will be removed from links. Default is false. If this option is enabled, all links containing JavaScript (e.g., links with "javascript:" in the href attribute) will be replaced with "javascript:void(0)". This can help prevent potential security risks, such as XSS attacks.
    public func setRemoveJavaScriptFromLinks(removeJavaScriptFromLinks : Bool?) -> HtmlSaveOptionsData {
        self.removeJavaScriptFromLinks = removeJavaScriptFromLinks;
        return self;
    }

    // Gets removeJavaScriptFromLinks. Gets or sets the flag that indicates whether JavaScript will be removed from links. Default is false. If this option is enabled, all links containing JavaScript (e.g., links with "javascript:" in the href attribute) will be replaced with "javascript:void(0)". This can help prevent potential security risks, such as XSS attacks.
    public func getRemoveJavaScriptFromLinks() -> Bool? {
        return self.removeJavaScriptFromLinks;
    }


    // Sets replaceBackslashWithYenSign. Gets or sets the flag that indicates whether backslash characters should be replaced with yen signs. The default value is false. By default, Aspose.Words mimics MS Word's behavior and doesn't replace backslash characters with yen signs in generated HTML documents. However, previous versions of Aspose.Words performed such replacements in certain scenarios. This flag enables backward compatibility with previous versions of Aspose.Words.
    public func setReplaceBackslashWithYenSign(replaceBackslashWithYenSign : Bool?) -> HtmlSaveOptionsData {
        self.replaceBackslashWithYenSign = replaceBackslashWithYenSign;
        return self;
    }

    // Gets replaceBackslashWithYenSign. Gets or sets the flag that indicates whether backslash characters should be replaced with yen signs. The default value is false. By default, Aspose.Words mimics MS Word's behavior and doesn't replace backslash characters with yen signs in generated HTML documents. However, previous versions of Aspose.Words performed such replacements in certain scenarios. This flag enables backward compatibility with previous versions of Aspose.Words.
    public func getReplaceBackslashWithYenSign() -> Bool? {
        return self.replaceBackslashWithYenSign;
    }


    // Sets resolveFontNames. Gets or sets a value indicating whether font family names used in the document are resolved and substituted according to FontSettings when being written into HTML-based formats. The default value is false.
    public func setResolveFontNames(resolveFontNames : Bool?) -> HtmlSaveOptionsData {
        self.resolveFontNames = resolveFontNames;
        return self;
    }

    // Gets resolveFontNames. Gets or sets a value indicating whether font family names used in the document are resolved and substituted according to FontSettings when being written into HTML-based formats. The default value is false.
    public func getResolveFontNames() -> Bool? {
        return self.resolveFontNames;
    }


    // Sets resourceFolder. Gets or sets the physical folder where all resources like images, fonts, and external CSS are saved when a document is exported to HTML. The default value is an empty string.
    public func setResourceFolder(resourceFolder : String?) -> HtmlSaveOptionsData {
        self.resourceFolder = resourceFolder;
        return self;
    }

    // Gets resourceFolder. Gets or sets the physical folder where all resources like images, fonts, and external CSS are saved when a document is exported to HTML. The default value is an empty string.
    public func getResourceFolder() -> String? {
        return self.resourceFolder;
    }


    // Sets resourceFolderAlias. Gets or sets the name of the folder used to construct URIs of all resources written into HTML document. The default value is an empty string.
    public func setResourceFolderAlias(resourceFolderAlias : String?) -> HtmlSaveOptionsData {
        self.resourceFolderAlias = resourceFolderAlias;
        return self;
    }

    // Gets resourceFolderAlias. Gets or sets the name of the folder used to construct URIs of all resources written into HTML document. The default value is an empty string.
    public func getResourceFolderAlias() -> String? {
        return self.resourceFolderAlias;
    }


    // Sets scaleImageToShapeSize. Gets or sets a value indicating whether images are scaled by Aspose.Words to the bounding shape size when exporting.
    public func setScaleImageToShapeSize(scaleImageToShapeSize : Bool?) -> HtmlSaveOptionsData {
        self.scaleImageToShapeSize = scaleImageToShapeSize;
        return self;
    }

    // Gets scaleImageToShapeSize. Gets or sets a value indicating whether images are scaled by Aspose.Words to the bounding shape size when exporting.
    public func getScaleImageToShapeSize() -> Bool? {
        return self.scaleImageToShapeSize;
    }


    // Sets tableWidthOutputMode. Gets or sets the option that controls how table, row and cell widths are exported.
    public func setTableWidthOutputMode(tableWidthOutputMode : TableWidthOutputMode?) -> HtmlSaveOptionsData {
        self.tableWidthOutputMode = tableWidthOutputMode;
        return self;
    }

    // Gets tableWidthOutputMode. Gets or sets the option that controls how table, row and cell widths are exported.
    public func getTableWidthOutputMode() -> TableWidthOutputMode? {
        return self.tableWidthOutputMode;
    }
}
