/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PdfSaveOptionsData.swift">
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

// Container class for pdf save options.
public class PdfSaveOptionsData : FixedPageSaveOptionsData {
    // Gets or sets a value determining how attachments are embedded to the PDF document.
    // The default value is None and attachments are not embedded.
    // PDF/A-1, PDF/A-2 and regular PDF/A-4 (not PDF/A-4f) standards do not allow embedded files.
    // None value will be used automatically.
    public enum AttachmentsEmbeddingMode : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "annotations"
        case annotations = "Annotations"

        // Enum value "documentEmbeddedFiles"
        case documentEmbeddedFiles = "DocumentEmbeddedFiles"
    }

    // Gets or sets the PDF standards compliance level for output documents.
    public enum Compliance : String, Codable
    {
        // Enum value "pdf17"
        case pdf17 = "Pdf17"

        // Enum value "pdf20"
        case pdf20 = "Pdf20"

        // Enum value "pdfA1a"
        case pdfA1a = "PdfA1a"

        // Enum value "pdfA1b"
        case pdfA1b = "PdfA1b"

        // Enum value "pdfA2a"
        case pdfA2a = "PdfA2a"

        // Enum value "pdfA2u"
        case pdfA2u = "PdfA2u"

        // Enum value "pdfA3a"
        case pdfA3a = "PdfA3a"

        // Enum value "pdfA3u"
        case pdfA3u = "PdfA3u"

        // Enum value "pdfA4"
        case pdfA4 = "PdfA4"

        // Enum value "pdfA4f"
        case pdfA4f = "PdfA4f"

        // Enum value "pdfA4Ua2"
        case pdfA4Ua2 = "PdfA4Ua2"

        // Enum value "pdfUa1"
        case pdfUa1 = "PdfUa1"

        // Enum value "pdfUa2"
        case pdfUa2 = "PdfUa2"
    }

    // Gets or sets the option that controls the way CustomDocumentProperties are exported to PDF file.
    // The default value is None.
    public enum CustomPropertiesExport : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "standard"
        case standard = "Standard"

        // Enum value "metadata"
        case metadata = "Metadata"
    }

    // Gets or sets the font embedding mode.
    public enum FontEmbeddingMode : String, Codable
    {
        // Enum value "embedAll"
        case embedAll = "EmbedAll"

        // Enum value "embedNonstandard"
        case embedNonstandard = "EmbedNonstandard"

        // Enum value "embedNone"
        case embedNone = "EmbedNone"
    }

    // Gets or sets the option that controls how bookmarks in headers/footers are exported.
    // The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
    public enum HeaderFooterBookmarksExportMode : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "first"
        case first = "First"

        // Enum value "all"
        case all = "All"
    }

    // Gets or sets the option that controls how the color space will be selected for the images in PDF document.
    // The default value is "Auto". If "SimpleCmyk" value is specified, ImageCompression option is ignored and Flate compression is used for all images in the document.
    public enum ImageColorSpaceExportMode : String, Codable
    {
        // Enum value "auto"
        case auto = "Auto"

        // Enum value "simpleCmyk"
        case simpleCmyk = "SimpleCmyk"
    }

    // Gets or sets the option that controls how the PDF document should be displayed when opened in the PDF reader.
    public enum PageMode : String, Codable
    {
        // Enum value "useNone"
        case useNone = "UseNone"

        // Enum value "useOutlines"
        case useOutlines = "UseOutlines"

        // Enum value "useThumbs"
        case useThumbs = "UseThumbs"

        // Enum value "fullScreen"
        case fullScreen = "FullScreen"

        // Enum value "useOC"
        case useOC = "UseOC"

        // Enum value "useAttachments"
        case useAttachments = "UseAttachments"
    }

    // Gets or sets the compression type to be used for all textual content in the document.
    public enum TextCompression : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "flate"
        case flate = "Flate"
    }

    // Gets or sets the option that controls what type of zoom should be applied when a document is opened with a PDF viewer.
    public enum ZoomBehavior : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "zoomFactor"
        case zoomFactor = "ZoomFactor"

        // Enum value "fitPage"
        case fitPage = "FitPage"

        // Enum value "fitWidth"
        case fitWidth = "FitWidth"

        // Enum value "fitHeight"
        case fitHeight = "FitHeight"

        // Enum value "fitBox"
        case fitBox = "FitBox"
    }

    // Field of attachmentsEmbeddingMode. Container class for pdf save options.
    private var _attachmentsEmbeddingMode : AttachmentsEmbeddingMode? = nil;

    public var attachmentsEmbeddingMode : AttachmentsEmbeddingMode? {
        get {
            return self._attachmentsEmbeddingMode;
        }
        set {
            self._attachmentsEmbeddingMode = newValue;
        }
    }

    // Field of cacheBackgroundGraphics. Container class for pdf save options.
    private var _cacheBackgroundGraphics : Bool? = nil;

    public var cacheBackgroundGraphics : Bool? {
        get {
            return self._cacheBackgroundGraphics;
        }
        set {
            self._cacheBackgroundGraphics = newValue;
        }
    }

    // Field of compliance. Container class for pdf save options.
    private var _compliance : Compliance? = nil;

    public var compliance : Compliance? {
        get {
            return self._compliance;
        }
        set {
            self._compliance = newValue;
        }
    }

    // Field of createNoteHyperlinks. Container class for pdf save options.
    private var _createNoteHyperlinks : Bool? = nil;

    public var createNoteHyperlinks : Bool? {
        get {
            return self._createNoteHyperlinks;
        }
        set {
            self._createNoteHyperlinks = newValue;
        }
    }

    // Field of customPropertiesExport. Container class for pdf save options.
    private var _customPropertiesExport : CustomPropertiesExport? = nil;

    public var customPropertiesExport : CustomPropertiesExport? {
        get {
            return self._customPropertiesExport;
        }
        set {
            self._customPropertiesExport = newValue;
        }
    }

    // Field of digitalSignatureDetails. Container class for pdf save options.
    private var _digitalSignatureDetails : PdfDigitalSignatureDetailsData? = nil;

    public var digitalSignatureDetails : PdfDigitalSignatureDetailsData? {
        get {
            return self._digitalSignatureDetails;
        }
        set {
            self._digitalSignatureDetails = newValue;
        }
    }

    // Field of displayDocTitle. Container class for pdf save options.
    private var _displayDocTitle : Bool? = nil;

    public var displayDocTitle : Bool? {
        get {
            return self._displayDocTitle;
        }
        set {
            self._displayDocTitle = newValue;
        }
    }

    // Field of downsampleOptions. Container class for pdf save options.
    private var _downsampleOptions : DownsampleOptionsData? = nil;

    public var downsampleOptions : DownsampleOptionsData? {
        get {
            return self._downsampleOptions;
        }
        set {
            self._downsampleOptions = newValue;
        }
    }

    // Field of embedAttachments. Container class for pdf save options.
    private var _embedAttachments : Bool? = nil;

    public var embedAttachments : Bool? {
        get {
            return self._embedAttachments;
        }
        set {
            self._embedAttachments = newValue;
        }
    }

    // Field of embedFullFonts. Container class for pdf save options.
    private var _embedFullFonts : Bool? = nil;

    public var embedFullFonts : Bool? {
        get {
            return self._embedFullFonts;
        }
        set {
            self._embedFullFonts = newValue;
        }
    }

    // Field of encryptionDetails. Container class for pdf save options.
    private var _encryptionDetails : PdfEncryptionDetailsData? = nil;

    public var encryptionDetails : PdfEncryptionDetailsData? {
        get {
            return self._encryptionDetails;
        }
        set {
            self._encryptionDetails = newValue;
        }
    }

    // Field of exportDocumentStructure. Container class for pdf save options.
    private var _exportDocumentStructure : Bool? = nil;

    public var exportDocumentStructure : Bool? {
        get {
            return self._exportDocumentStructure;
        }
        set {
            self._exportDocumentStructure = newValue;
        }
    }

    // Field of exportLanguageToSpanTag. Container class for pdf save options.
    private var _exportLanguageToSpanTag : Bool? = nil;

    public var exportLanguageToSpanTag : Bool? {
        get {
            return self._exportLanguageToSpanTag;
        }
        set {
            self._exportLanguageToSpanTag = newValue;
        }
    }

    // Field of fontEmbeddingMode. Container class for pdf save options.
    private var _fontEmbeddingMode : FontEmbeddingMode? = nil;

    public var fontEmbeddingMode : FontEmbeddingMode? {
        get {
            return self._fontEmbeddingMode;
        }
        set {
            self._fontEmbeddingMode = newValue;
        }
    }

    // Field of headerFooterBookmarksExportMode. Container class for pdf save options.
    private var _headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode? = nil;

    public var headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode? {
        get {
            return self._headerFooterBookmarksExportMode;
        }
        set {
            self._headerFooterBookmarksExportMode = newValue;
        }
    }

    // Field of imageColorSpaceExportMode. Container class for pdf save options.
    private var _imageColorSpaceExportMode : ImageColorSpaceExportMode? = nil;

    public var imageColorSpaceExportMode : ImageColorSpaceExportMode? {
        get {
            return self._imageColorSpaceExportMode;
        }
        set {
            self._imageColorSpaceExportMode = newValue;
        }
    }

    // Field of imageCompression. Container class for pdf save options.
    private var _imageCompression : String? = nil;

    public var imageCompression : String? {
        get {
            return self._imageCompression;
        }
        set {
            self._imageCompression = newValue;
        }
    }

    // Field of interpolateImages. Container class for pdf save options.
    private var _interpolateImages : Bool? = nil;

    public var interpolateImages : Bool? {
        get {
            return self._interpolateImages;
        }
        set {
            self._interpolateImages = newValue;
        }
    }

    // Field of openHyperlinksInNewWindow. Container class for pdf save options.
    private var _openHyperlinksInNewWindow : Bool? = nil;

    public var openHyperlinksInNewWindow : Bool? {
        get {
            return self._openHyperlinksInNewWindow;
        }
        set {
            self._openHyperlinksInNewWindow = newValue;
        }
    }

    // Field of outlineOptions. Container class for pdf save options.
    private var _outlineOptions : OutlineOptionsData? = nil;

    public var outlineOptions : OutlineOptionsData? {
        get {
            return self._outlineOptions;
        }
        set {
            self._outlineOptions = newValue;
        }
    }

    // Field of pageMode. Container class for pdf save options.
    private var _pageMode : PageMode? = nil;

    public var pageMode : PageMode? {
        get {
            return self._pageMode;
        }
        set {
            self._pageMode = newValue;
        }
    }

    // Field of preblendImages. Container class for pdf save options.
    private var _preblendImages : Bool? = nil;

    public var preblendImages : Bool? {
        get {
            return self._preblendImages;
        }
        set {
            self._preblendImages = newValue;
        }
    }

    // Field of preserveFormFields. Container class for pdf save options.
    private var _preserveFormFields : Bool? = nil;

    public var preserveFormFields : Bool? {
        get {
            return self._preserveFormFields;
        }
        set {
            self._preserveFormFields = newValue;
        }
    }

    // Field of renderChoiceFormFieldBorder. Container class for pdf save options.
    private var _renderChoiceFormFieldBorder : Bool? = nil;

    public var renderChoiceFormFieldBorder : Bool? {
        get {
            return self._renderChoiceFormFieldBorder;
        }
        set {
            self._renderChoiceFormFieldBorder = newValue;
        }
    }

    // Field of textCompression. Container class for pdf save options.
    private var _textCompression : TextCompression? = nil;

    public var textCompression : TextCompression? {
        get {
            return self._textCompression;
        }
        set {
            self._textCompression = newValue;
        }
    }

    // Field of useBookFoldPrintingSettings. Container class for pdf save options.
    private var _useBookFoldPrintingSettings : Bool? = nil;

    public var useBookFoldPrintingSettings : Bool? {
        get {
            return self._useBookFoldPrintingSettings;
        }
        set {
            self._useBookFoldPrintingSettings = newValue;
        }
    }

    // Field of useCoreFonts. Container class for pdf save options.
    private var _useCoreFonts : Bool? = nil;

    public var useCoreFonts : Bool? {
        get {
            return self._useCoreFonts;
        }
        set {
            self._useCoreFonts = newValue;
        }
    }

    // Field of useSdtTagAsFormFieldName. Container class for pdf save options.
    private var _useSdtTagAsFormFieldName : Bool? = nil;

    public var useSdtTagAsFormFieldName : Bool? {
        get {
            return self._useSdtTagAsFormFieldName;
        }
        set {
            self._useSdtTagAsFormFieldName = newValue;
        }
    }

    // Field of zoomBehavior. Container class for pdf save options.
    private var _zoomBehavior : ZoomBehavior? = nil;

    public var zoomBehavior : ZoomBehavior? {
        get {
            return self._zoomBehavior;
        }
        set {
            self._zoomBehavior = newValue;
        }
    }

    // Field of zoomFactor. Container class for pdf save options.
    private var _zoomFactor : Int? = nil;

    public var zoomFactor : Int? {
        get {
            return self._zoomFactor;
        }
        set {
            self._zoomFactor = newValue;
        }
    }

    // Field of exportFloatingShapesAsInlineTag. Container class for pdf save options.
    private var _exportFloatingShapesAsInlineTag : Bool? = nil;

    public var exportFloatingShapesAsInlineTag : Bool? {
        get {
            return self._exportFloatingShapesAsInlineTag;
        }
        set {
            self._exportFloatingShapesAsInlineTag = newValue;
        }
    }

    // Field of saveFormat. Container class for pdf save options.
    private final let _saveFormat : String? = "pdf";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case attachmentsEmbeddingMode = "AttachmentsEmbeddingMode";
        case cacheBackgroundGraphics = "CacheBackgroundGraphics";
        case compliance = "Compliance";
        case createNoteHyperlinks = "CreateNoteHyperlinks";
        case customPropertiesExport = "CustomPropertiesExport";
        case digitalSignatureDetails = "DigitalSignatureDetails";
        case displayDocTitle = "DisplayDocTitle";
        case downsampleOptions = "DownsampleOptions";
        case embedAttachments = "EmbedAttachments";
        case embedFullFonts = "EmbedFullFonts";
        case encryptionDetails = "EncryptionDetails";
        case exportDocumentStructure = "ExportDocumentStructure";
        case exportLanguageToSpanTag = "ExportLanguageToSpanTag";
        case fontEmbeddingMode = "FontEmbeddingMode";
        case headerFooterBookmarksExportMode = "HeaderFooterBookmarksExportMode";
        case imageColorSpaceExportMode = "ImageColorSpaceExportMode";
        case imageCompression = "ImageCompression";
        case interpolateImages = "InterpolateImages";
        case openHyperlinksInNewWindow = "OpenHyperlinksInNewWindow";
        case outlineOptions = "OutlineOptions";
        case pageMode = "PageMode";
        case preblendImages = "PreblendImages";
        case preserveFormFields = "PreserveFormFields";
        case renderChoiceFormFieldBorder = "RenderChoiceFormFieldBorder";
        case textCompression = "TextCompression";
        case useBookFoldPrintingSettings = "UseBookFoldPrintingSettings";
        case useCoreFonts = "UseCoreFonts";
        case useSdtTagAsFormFieldName = "UseSdtTagAsFormFieldName";
        case zoomBehavior = "ZoomBehavior";
        case zoomFactor = "ZoomFactor";
        case exportFloatingShapesAsInlineTag = "ExportFloatingShapesAsInlineTag";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_attachmentsEmbeddingMode = json["AttachmentsEmbeddingMode"] as? String {
            self.attachmentsEmbeddingMode = AttachmentsEmbeddingMode(rawValue: raw_attachmentsEmbeddingMode);
        }

        self.cacheBackgroundGraphics = json["CacheBackgroundGraphics"] as? Bool;
        if let raw_compliance = json["Compliance"] as? String {
            self.compliance = Compliance(rawValue: raw_compliance);
        }

        self.createNoteHyperlinks = json["CreateNoteHyperlinks"] as? Bool;
        if let raw_customPropertiesExport = json["CustomPropertiesExport"] as? String {
            self.customPropertiesExport = CustomPropertiesExport(rawValue: raw_customPropertiesExport);
        }

        if let raw_digitalSignatureDetails = json["DigitalSignatureDetails"] as? [String: Any] {
            self.digitalSignatureDetails = try ObjectSerializer.deserialize(type: PdfDigitalSignatureDetailsData.self, from: raw_digitalSignatureDetails);
        }

        self.displayDocTitle = json["DisplayDocTitle"] as? Bool;
        if let raw_downsampleOptions = json["DownsampleOptions"] as? [String: Any] {
            self.downsampleOptions = try ObjectSerializer.deserialize(type: DownsampleOptionsData.self, from: raw_downsampleOptions);
        }

        self.embedAttachments = json["EmbedAttachments"] as? Bool;
        self.embedFullFonts = json["EmbedFullFonts"] as? Bool;
        if let raw_encryptionDetails = json["EncryptionDetails"] as? [String: Any] {
            self.encryptionDetails = try ObjectSerializer.deserialize(type: PdfEncryptionDetailsData.self, from: raw_encryptionDetails);
        }

        self.exportDocumentStructure = json["ExportDocumentStructure"] as? Bool;
        self.exportLanguageToSpanTag = json["ExportLanguageToSpanTag"] as? Bool;
        if let raw_fontEmbeddingMode = json["FontEmbeddingMode"] as? String {
            self.fontEmbeddingMode = FontEmbeddingMode(rawValue: raw_fontEmbeddingMode);
        }

        if let raw_headerFooterBookmarksExportMode = json["HeaderFooterBookmarksExportMode"] as? String {
            self.headerFooterBookmarksExportMode = HeaderFooterBookmarksExportMode(rawValue: raw_headerFooterBookmarksExportMode);
        }

        if let raw_imageColorSpaceExportMode = json["ImageColorSpaceExportMode"] as? String {
            self.imageColorSpaceExportMode = ImageColorSpaceExportMode(rawValue: raw_imageColorSpaceExportMode);
        }

        self.imageCompression = json["ImageCompression"] as? String;
        self.interpolateImages = json["InterpolateImages"] as? Bool;
        self.openHyperlinksInNewWindow = json["OpenHyperlinksInNewWindow"] as? Bool;
        if let raw_outlineOptions = json["OutlineOptions"] as? [String: Any] {
            self.outlineOptions = try ObjectSerializer.deserialize(type: OutlineOptionsData.self, from: raw_outlineOptions);
        }

        if let raw_pageMode = json["PageMode"] as? String {
            self.pageMode = PageMode(rawValue: raw_pageMode);
        }

        self.preblendImages = json["PreblendImages"] as? Bool;
        self.preserveFormFields = json["PreserveFormFields"] as? Bool;
        self.renderChoiceFormFieldBorder = json["RenderChoiceFormFieldBorder"] as? Bool;
        if let raw_textCompression = json["TextCompression"] as? String {
            self.textCompression = TextCompression(rawValue: raw_textCompression);
        }

        self.useBookFoldPrintingSettings = json["UseBookFoldPrintingSettings"] as? Bool;
        self.useCoreFonts = json["UseCoreFonts"] as? Bool;
        self.useSdtTagAsFormFieldName = json["UseSdtTagAsFormFieldName"] as? Bool;
        if let raw_zoomBehavior = json["ZoomBehavior"] as? String {
            self.zoomBehavior = ZoomBehavior(rawValue: raw_zoomBehavior);
        }

        self.zoomFactor = json["ZoomFactor"] as? Int;
        self.exportFloatingShapesAsInlineTag = json["ExportFloatingShapesAsInlineTag"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.attachmentsEmbeddingMode = try container.decodeIfPresent(AttachmentsEmbeddingMode.self, forKey: .attachmentsEmbeddingMode);
        self.cacheBackgroundGraphics = try container.decodeIfPresent(Bool.self, forKey: .cacheBackgroundGraphics);
        self.compliance = try container.decodeIfPresent(Compliance.self, forKey: .compliance);
        self.createNoteHyperlinks = try container.decodeIfPresent(Bool.self, forKey: .createNoteHyperlinks);
        self.customPropertiesExport = try container.decodeIfPresent(CustomPropertiesExport.self, forKey: .customPropertiesExport);
        self.digitalSignatureDetails = try container.decodeIfPresent(PdfDigitalSignatureDetailsData.self, forKey: .digitalSignatureDetails);
        self.displayDocTitle = try container.decodeIfPresent(Bool.self, forKey: .displayDocTitle);
        self.downsampleOptions = try container.decodeIfPresent(DownsampleOptionsData.self, forKey: .downsampleOptions);
        self.embedAttachments = try container.decodeIfPresent(Bool.self, forKey: .embedAttachments);
        self.embedFullFonts = try container.decodeIfPresent(Bool.self, forKey: .embedFullFonts);
        self.encryptionDetails = try container.decodeIfPresent(PdfEncryptionDetailsData.self, forKey: .encryptionDetails);
        self.exportDocumentStructure = try container.decodeIfPresent(Bool.self, forKey: .exportDocumentStructure);
        self.exportLanguageToSpanTag = try container.decodeIfPresent(Bool.self, forKey: .exportLanguageToSpanTag);
        self.fontEmbeddingMode = try container.decodeIfPresent(FontEmbeddingMode.self, forKey: .fontEmbeddingMode);
        self.headerFooterBookmarksExportMode = try container.decodeIfPresent(HeaderFooterBookmarksExportMode.self, forKey: .headerFooterBookmarksExportMode);
        self.imageColorSpaceExportMode = try container.decodeIfPresent(ImageColorSpaceExportMode.self, forKey: .imageColorSpaceExportMode);
        self.imageCompression = try container.decodeIfPresent(String.self, forKey: .imageCompression);
        self.interpolateImages = try container.decodeIfPresent(Bool.self, forKey: .interpolateImages);
        self.openHyperlinksInNewWindow = try container.decodeIfPresent(Bool.self, forKey: .openHyperlinksInNewWindow);
        self.outlineOptions = try container.decodeIfPresent(OutlineOptionsData.self, forKey: .outlineOptions);
        self.pageMode = try container.decodeIfPresent(PageMode.self, forKey: .pageMode);
        self.preblendImages = try container.decodeIfPresent(Bool.self, forKey: .preblendImages);
        self.preserveFormFields = try container.decodeIfPresent(Bool.self, forKey: .preserveFormFields);
        self.renderChoiceFormFieldBorder = try container.decodeIfPresent(Bool.self, forKey: .renderChoiceFormFieldBorder);
        self.textCompression = try container.decodeIfPresent(TextCompression.self, forKey: .textCompression);
        self.useBookFoldPrintingSettings = try container.decodeIfPresent(Bool.self, forKey: .useBookFoldPrintingSettings);
        self.useCoreFonts = try container.decodeIfPresent(Bool.self, forKey: .useCoreFonts);
        self.useSdtTagAsFormFieldName = try container.decodeIfPresent(Bool.self, forKey: .useSdtTagAsFormFieldName);
        self.zoomBehavior = try container.decodeIfPresent(ZoomBehavior.self, forKey: .zoomBehavior);
        self.zoomFactor = try container.decodeIfPresent(Int.self, forKey: .zoomFactor);
        self.exportFloatingShapesAsInlineTag = try container.decodeIfPresent(Bool.self, forKey: .exportFloatingShapesAsInlineTag);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.attachmentsEmbeddingMode != nil) {
            try container.encode(self.attachmentsEmbeddingMode, forKey: .attachmentsEmbeddingMode);
        }
        if (self.cacheBackgroundGraphics != nil) {
            try container.encode(self.cacheBackgroundGraphics, forKey: .cacheBackgroundGraphics);
        }
        if (self.compliance != nil) {
            try container.encode(self.compliance, forKey: .compliance);
        }
        if (self.createNoteHyperlinks != nil) {
            try container.encode(self.createNoteHyperlinks, forKey: .createNoteHyperlinks);
        }
        if (self.customPropertiesExport != nil) {
            try container.encode(self.customPropertiesExport, forKey: .customPropertiesExport);
        }
        if (self.digitalSignatureDetails != nil) {
            try container.encode(self.digitalSignatureDetails, forKey: .digitalSignatureDetails);
        }
        if (self.displayDocTitle != nil) {
            try container.encode(self.displayDocTitle, forKey: .displayDocTitle);
        }
        if (self.downsampleOptions != nil) {
            try container.encode(self.downsampleOptions, forKey: .downsampleOptions);
        }
        if (self.embedAttachments != nil) {
            try container.encode(self.embedAttachments, forKey: .embedAttachments);
        }
        if (self.embedFullFonts != nil) {
            try container.encode(self.embedFullFonts, forKey: .embedFullFonts);
        }
        if (self.encryptionDetails != nil) {
            try container.encode(self.encryptionDetails, forKey: .encryptionDetails);
        }
        if (self.exportDocumentStructure != nil) {
            try container.encode(self.exportDocumentStructure, forKey: .exportDocumentStructure);
        }
        if (self.exportLanguageToSpanTag != nil) {
            try container.encode(self.exportLanguageToSpanTag, forKey: .exportLanguageToSpanTag);
        }
        if (self.fontEmbeddingMode != nil) {
            try container.encode(self.fontEmbeddingMode, forKey: .fontEmbeddingMode);
        }
        if (self.headerFooterBookmarksExportMode != nil) {
            try container.encode(self.headerFooterBookmarksExportMode, forKey: .headerFooterBookmarksExportMode);
        }
        if (self.imageColorSpaceExportMode != nil) {
            try container.encode(self.imageColorSpaceExportMode, forKey: .imageColorSpaceExportMode);
        }
        if (self.imageCompression != nil) {
            try container.encode(self.imageCompression, forKey: .imageCompression);
        }
        if (self.interpolateImages != nil) {
            try container.encode(self.interpolateImages, forKey: .interpolateImages);
        }
        if (self.openHyperlinksInNewWindow != nil) {
            try container.encode(self.openHyperlinksInNewWindow, forKey: .openHyperlinksInNewWindow);
        }
        if (self.outlineOptions != nil) {
            try container.encode(self.outlineOptions, forKey: .outlineOptions);
        }
        if (self.pageMode != nil) {
            try container.encode(self.pageMode, forKey: .pageMode);
        }
        if (self.preblendImages != nil) {
            try container.encode(self.preblendImages, forKey: .preblendImages);
        }
        if (self.preserveFormFields != nil) {
            try container.encode(self.preserveFormFields, forKey: .preserveFormFields);
        }
        if (self.renderChoiceFormFieldBorder != nil) {
            try container.encode(self.renderChoiceFormFieldBorder, forKey: .renderChoiceFormFieldBorder);
        }
        if (self.textCompression != nil) {
            try container.encode(self.textCompression, forKey: .textCompression);
        }
        if (self.useBookFoldPrintingSettings != nil) {
            try container.encode(self.useBookFoldPrintingSettings, forKey: .useBookFoldPrintingSettings);
        }
        if (self.useCoreFonts != nil) {
            try container.encode(self.useCoreFonts, forKey: .useCoreFonts);
        }
        if (self.useSdtTagAsFormFieldName != nil) {
            try container.encode(self.useSdtTagAsFormFieldName, forKey: .useSdtTagAsFormFieldName);
        }
        if (self.zoomBehavior != nil) {
            try container.encode(self.zoomBehavior, forKey: .zoomBehavior);
        }
        if (self.zoomFactor != nil) {
            try container.encode(self.zoomFactor, forKey: .zoomFactor);
        }
        if (self.exportFloatingShapesAsInlineTag != nil) {
            try container.encode(self.exportFloatingShapesAsInlineTag, forKey: .exportFloatingShapesAsInlineTag);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.digitalSignatureDetails?.validate();
        try self.downsampleOptions?.validate();
        try self.encryptionDetails?.validate();
        try self.outlineOptions?.validate();

    }

    // Sets attachmentsEmbeddingMode. Gets or sets a value determining how attachments are embedded to the PDF document. The default value is None and attachments are not embedded. PDF/A-1, PDF/A-2 and regular PDF/A-4 (not PDF/A-4f) standards do not allow embedded files. None value will be used automatically.
    public func setAttachmentsEmbeddingMode(attachmentsEmbeddingMode : AttachmentsEmbeddingMode?) -> PdfSaveOptionsData {
        self.attachmentsEmbeddingMode = attachmentsEmbeddingMode;
        return self;
    }

    // Gets attachmentsEmbeddingMode. Gets or sets a value determining how attachments are embedded to the PDF document. The default value is None and attachments are not embedded. PDF/A-1, PDF/A-2 and regular PDF/A-4 (not PDF/A-4f) standards do not allow embedded files. None value will be used automatically.
    public func getAttachmentsEmbeddingMode() -> AttachmentsEmbeddingMode? {
        return self.attachmentsEmbeddingMode;
    }


    // Sets cacheBackgroundGraphics. Gets or sets a value determining whether or not to cache graphics placed in document's background. The default value is true and background graphics are written to the PDF document as an xObject. When the value is false background graphics are not cached. Some shapes are not supported for caching(shapes with fields, bookmarks, HRefs). Document background graphic is various shapes, charts, images placed in the footer or header, well as background and border of a page.
    public func setCacheBackgroundGraphics(cacheBackgroundGraphics : Bool?) -> PdfSaveOptionsData {
        self.cacheBackgroundGraphics = cacheBackgroundGraphics;
        return self;
    }

    // Gets cacheBackgroundGraphics. Gets or sets a value determining whether or not to cache graphics placed in document's background. The default value is true and background graphics are written to the PDF document as an xObject. When the value is false background graphics are not cached. Some shapes are not supported for caching(shapes with fields, bookmarks, HRefs). Document background graphic is various shapes, charts, images placed in the footer or header, well as background and border of a page.
    public func getCacheBackgroundGraphics() -> Bool? {
        return self.cacheBackgroundGraphics;
    }


    // Sets compliance. Gets or sets the PDF standards compliance level for output documents.
    public func setCompliance(compliance : Compliance?) -> PdfSaveOptionsData {
        self.compliance = compliance;
        return self;
    }

    // Gets compliance. Gets or sets the PDF standards compliance level for output documents.
    public func getCompliance() -> Compliance? {
        return self.compliance;
    }


    // Sets createNoteHyperlinks. Gets or sets a value indicating whether to convert footnote/endnote references in main text story into active hyperlinks. When clicked the hyperlink will lead to the corresponding footnote/endnote. The default value is false.
    public func setCreateNoteHyperlinks(createNoteHyperlinks : Bool?) -> PdfSaveOptionsData {
        self.createNoteHyperlinks = createNoteHyperlinks;
        return self;
    }

    // Gets createNoteHyperlinks. Gets or sets a value indicating whether to convert footnote/endnote references in main text story into active hyperlinks. When clicked the hyperlink will lead to the corresponding footnote/endnote. The default value is false.
    public func getCreateNoteHyperlinks() -> Bool? {
        return self.createNoteHyperlinks;
    }


    // Sets customPropertiesExport. Gets or sets the option that controls the way CustomDocumentProperties are exported to PDF file. The default value is None.
    public func setCustomPropertiesExport(customPropertiesExport : CustomPropertiesExport?) -> PdfSaveOptionsData {
        self.customPropertiesExport = customPropertiesExport;
        return self;
    }

    // Gets customPropertiesExport. Gets or sets the option that controls the way CustomDocumentProperties are exported to PDF file. The default value is None.
    public func getCustomPropertiesExport() -> CustomPropertiesExport? {
        return self.customPropertiesExport;
    }


    // Sets digitalSignatureDetails. Gets or sets the details for signing the output PDF document.
    public func setDigitalSignatureDetails(digitalSignatureDetails : PdfDigitalSignatureDetailsData?) -> PdfSaveOptionsData {
        self.digitalSignatureDetails = digitalSignatureDetails;
        return self;
    }

    // Gets digitalSignatureDetails. Gets or sets the details for signing the output PDF document.
    public func getDigitalSignatureDetails() -> PdfDigitalSignatureDetailsData? {
        return self.digitalSignatureDetails;
    }


    // Sets displayDocTitle. Gets or sets a value indicating whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary. If false, the title bar should instead display the name of the PDF file containing the document. The default value is false.
    public func setDisplayDocTitle(displayDocTitle : Bool?) -> PdfSaveOptionsData {
        self.displayDocTitle = displayDocTitle;
        return self;
    }

    // Gets displayDocTitle. Gets or sets a value indicating whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary. If false, the title bar should instead display the name of the PDF file containing the document. The default value is false.
    public func getDisplayDocTitle() -> Bool? {
        return self.displayDocTitle;
    }


    // Sets downsampleOptions. Gets or sets the downsample options.
    public func setDownsampleOptions(downsampleOptions : DownsampleOptionsData?) -> PdfSaveOptionsData {
        self.downsampleOptions = downsampleOptions;
        return self;
    }

    // Gets downsampleOptions. Gets or sets the downsample options.
    public func getDownsampleOptions() -> DownsampleOptionsData? {
        return self.downsampleOptions;
    }


    // Sets embedAttachments. Gets or sets a value determining whether or not to embed attachments to the PDF document. The default value is false and attachments are not embedded. When the value is true attachments are embedded to the PDF document. Embedding attachments is not supported when saving to PDF/A and PDF/UA compliance. false value will be used automatically. Embedding attachments is not supported when encryption is enabled. false value will be used automatically.
    @available(*, deprecated, message: "Obsolete, please use AttachmentsEmbeddingMode instead.")
    public func setEmbedAttachments(embedAttachments : Bool?) -> PdfSaveOptionsData {
        self.embedAttachments = embedAttachments;
        return self;
    }

    // Gets embedAttachments. Gets or sets a value determining whether or not to embed attachments to the PDF document. The default value is false and attachments are not embedded. When the value is true attachments are embedded to the PDF document. Embedding attachments is not supported when saving to PDF/A and PDF/UA compliance. false value will be used automatically. Embedding attachments is not supported when encryption is enabled. false value will be used automatically.
    @available(*, deprecated, message: "Obsolete, please use AttachmentsEmbeddingMode instead.")
    public func getEmbedAttachments() -> Bool? {
        return self.embedAttachments;
    }


    // Sets embedFullFonts. Gets or sets a value indicating whether fonts are embedded into the resulting PDF documents.
    public func setEmbedFullFonts(embedFullFonts : Bool?) -> PdfSaveOptionsData {
        self.embedFullFonts = embedFullFonts;
        return self;
    }

    // Gets embedFullFonts. Gets or sets a value indicating whether fonts are embedded into the resulting PDF documents.
    public func getEmbedFullFonts() -> Bool? {
        return self.embedFullFonts;
    }


    // Sets encryptionDetails. Gets or sets the details for encrypting the output PDF document.
    public func setEncryptionDetails(encryptionDetails : PdfEncryptionDetailsData?) -> PdfSaveOptionsData {
        self.encryptionDetails = encryptionDetails;
        return self;
    }

    // Gets encryptionDetails. Gets or sets the details for encrypting the output PDF document.
    public func getEncryptionDetails() -> PdfEncryptionDetailsData? {
        return self.encryptionDetails;
    }


    // Sets exportDocumentStructure. Gets or sets a value indicating whether to export document structure.
    public func setExportDocumentStructure(exportDocumentStructure : Bool?) -> PdfSaveOptionsData {
        self.exportDocumentStructure = exportDocumentStructure;
        return self;
    }

    // Gets exportDocumentStructure. Gets or sets a value indicating whether to export document structure.
    public func getExportDocumentStructure() -> Bool? {
        return self.exportDocumentStructure;
    }


    // Sets exportLanguageToSpanTag. Gets or sets a value determining whether or not to create a "Span" tag in the document structure to export the text language. The default value is false and "Lang" attribute is attached to a marked-content sequence in a page content stream. When the value is true "Span" tag is created for the text with non-default language and "Lang" attribute is attached to this tag. This value is ignored when Aspose.Words.Saving.PdfSaveOptions.ExportDocumentStructure is false.
    public func setExportLanguageToSpanTag(exportLanguageToSpanTag : Bool?) -> PdfSaveOptionsData {
        self.exportLanguageToSpanTag = exportLanguageToSpanTag;
        return self;
    }

    // Gets exportLanguageToSpanTag. Gets or sets a value determining whether or not to create a "Span" tag in the document structure to export the text language. The default value is false and "Lang" attribute is attached to a marked-content sequence in a page content stream. When the value is true "Span" tag is created for the text with non-default language and "Lang" attribute is attached to this tag. This value is ignored when Aspose.Words.Saving.PdfSaveOptions.ExportDocumentStructure is false.
    public func getExportLanguageToSpanTag() -> Bool? {
        return self.exportLanguageToSpanTag;
    }


    // Sets fontEmbeddingMode. Gets or sets the font embedding mode.
    public func setFontEmbeddingMode(fontEmbeddingMode : FontEmbeddingMode?) -> PdfSaveOptionsData {
        self.fontEmbeddingMode = fontEmbeddingMode;
        return self;
    }

    // Gets fontEmbeddingMode. Gets or sets the font embedding mode.
    public func getFontEmbeddingMode() -> FontEmbeddingMode? {
        return self.fontEmbeddingMode;
    }


    // Sets headerFooterBookmarksExportMode. Gets or sets the option that controls how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
    public func setHeaderFooterBookmarksExportMode(headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode?) -> PdfSaveOptionsData {
        self.headerFooterBookmarksExportMode = headerFooterBookmarksExportMode;
        return self;
    }

    // Gets headerFooterBookmarksExportMode. Gets or sets the option that controls how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
    public func getHeaderFooterBookmarksExportMode() -> HeaderFooterBookmarksExportMode? {
        return self.headerFooterBookmarksExportMode;
    }


    // Sets imageColorSpaceExportMode. Gets or sets the option that controls how the color space will be selected for the images in PDF document. The default value is "Auto". If "SimpleCmyk" value is specified, ImageCompression option is ignored and Flate compression is used for all images in the document.
    public func setImageColorSpaceExportMode(imageColorSpaceExportMode : ImageColorSpaceExportMode?) -> PdfSaveOptionsData {
        self.imageColorSpaceExportMode = imageColorSpaceExportMode;
        return self;
    }

    // Gets imageColorSpaceExportMode. Gets or sets the option that controls how the color space will be selected for the images in PDF document. The default value is "Auto". If "SimpleCmyk" value is specified, ImageCompression option is ignored and Flate compression is used for all images in the document.
    public func getImageColorSpaceExportMode() -> ImageColorSpaceExportMode? {
        return self.imageColorSpaceExportMode;
    }


    // Sets imageCompression. Gets or sets the compression type to be used for all images in the document.
    public func setImageCompression(imageCompression : String?) -> PdfSaveOptionsData {
        self.imageCompression = imageCompression;
        return self;
    }

    // Gets imageCompression. Gets or sets the compression type to be used for all images in the document.
    public func getImageCompression() -> String? {
        return self.imageCompression;
    }


    // Sets interpolateImages. Gets or sets a value indicating whether image interpolation shall be performed by a conforming reader. When false is specified, the flag is not written to the output document and the default behavior of reader is used instead. When the resolution of a source image is significantly lower than that of the output device, each source sample covers many device pixels. As a result, images can appear jaggy or blocky. These visual artifacts can be reduced by applying an image interpolation algorithm during rendering. Instead of painting all pixels covered by a source sample with the same color, image interpolation attempts to produce a smooth transition between adjacent sample values. A conforming Reader may choose to not implement this feature of PDF, or may use any specific implementation of interpolation that it wishes. The default value is false.
    public func setInterpolateImages(interpolateImages : Bool?) -> PdfSaveOptionsData {
        self.interpolateImages = interpolateImages;
        return self;
    }

    // Gets interpolateImages. Gets or sets a value indicating whether image interpolation shall be performed by a conforming reader. When false is specified, the flag is not written to the output document and the default behavior of reader is used instead. When the resolution of a source image is significantly lower than that of the output device, each source sample covers many device pixels. As a result, images can appear jaggy or blocky. These visual artifacts can be reduced by applying an image interpolation algorithm during rendering. Instead of painting all pixels covered by a source sample with the same color, image interpolation attempts to produce a smooth transition between adjacent sample values. A conforming Reader may choose to not implement this feature of PDF, or may use any specific implementation of interpolation that it wishes. The default value is false.
    public func getInterpolateImages() -> Bool? {
        return self.interpolateImages;
    }


    // Sets openHyperlinksInNewWindow. Gets or sets a value indicating whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.
    public func setOpenHyperlinksInNewWindow(openHyperlinksInNewWindow : Bool?) -> PdfSaveOptionsData {
        self.openHyperlinksInNewWindow = openHyperlinksInNewWindow;
        return self;
    }

    // Gets openHyperlinksInNewWindow. Gets or sets a value indicating whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.
    public func getOpenHyperlinksInNewWindow() -> Bool? {
        return self.openHyperlinksInNewWindow;
    }


    // Sets outlineOptions. Gets or sets the outline options.
    public func setOutlineOptions(outlineOptions : OutlineOptionsData?) -> PdfSaveOptionsData {
        self.outlineOptions = outlineOptions;
        return self;
    }

    // Gets outlineOptions. Gets or sets the outline options.
    public func getOutlineOptions() -> OutlineOptionsData? {
        return self.outlineOptions;
    }


    // Sets pageMode. Gets or sets the option that controls how the PDF document should be displayed when opened in the PDF reader.
    public func setPageMode(pageMode : PageMode?) -> PdfSaveOptionsData {
        self.pageMode = pageMode;
        return self;
    }

    // Gets pageMode. Gets or sets the option that controls how the PDF document should be displayed when opened in the PDF reader.
    public func getPageMode() -> PageMode? {
        return self.pageMode;
    }


    // Sets preblendImages. Gets or sets a value indicating whether to preblend transparent images with black background color. Preblending images may improve PDF document visual appearance in Adobe Reader and remove anti-aliasing artifacts.In order to properly display preblended images, PDF viewer application must support /Matte entry in soft-mask image dictionary. Also preblending images may decrease PDF rendering performance.The default value is false.
    public func setPreblendImages(preblendImages : Bool?) -> PdfSaveOptionsData {
        self.preblendImages = preblendImages;
        return self;
    }

    // Gets preblendImages. Gets or sets a value indicating whether to preblend transparent images with black background color. Preblending images may improve PDF document visual appearance in Adobe Reader and remove anti-aliasing artifacts.In order to properly display preblended images, PDF viewer application must support /Matte entry in soft-mask image dictionary. Also preblending images may decrease PDF rendering performance.The default value is false.
    public func getPreblendImages() -> Bool? {
        return self.preblendImages;
    }


    // Sets preserveFormFields. Gets or sets a value indicating whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
    public func setPreserveFormFields(preserveFormFields : Bool?) -> PdfSaveOptionsData {
        self.preserveFormFields = preserveFormFields;
        return self;
    }

    // Gets preserveFormFields. Gets or sets a value indicating whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
    public func getPreserveFormFields() -> Bool? {
        return self.preserveFormFields;
    }


    // Sets renderChoiceFormFieldBorder. Gets or sets a value indicating whether to render PDF choice form field border. PDF choice form fields are used for export of SDT Combo Box Content Control, SDT Drop-Down List Content Control and legacy Drop-Down Form Field when PreserveFormFields option is enabled.The default value is true.
    public func setRenderChoiceFormFieldBorder(renderChoiceFormFieldBorder : Bool?) -> PdfSaveOptionsData {
        self.renderChoiceFormFieldBorder = renderChoiceFormFieldBorder;
        return self;
    }

    // Gets renderChoiceFormFieldBorder. Gets or sets a value indicating whether to render PDF choice form field border. PDF choice form fields are used for export of SDT Combo Box Content Control, SDT Drop-Down List Content Control and legacy Drop-Down Form Field when PreserveFormFields option is enabled.The default value is true.
    public func getRenderChoiceFormFieldBorder() -> Bool? {
        return self.renderChoiceFormFieldBorder;
    }


    // Sets textCompression. Gets or sets the compression type to be used for all textual content in the document.
    public func setTextCompression(textCompression : TextCompression?) -> PdfSaveOptionsData {
        self.textCompression = textCompression;
        return self;
    }

    // Gets textCompression. Gets or sets the compression type to be used for all textual content in the document.
    public func getTextCompression() -> TextCompression? {
        return self.textCompression;
    }


    // Sets useBookFoldPrintingSettings. Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
    public func setUseBookFoldPrintingSettings(useBookFoldPrintingSettings : Bool?) -> PdfSaveOptionsData {
        self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
        return self;
    }

    // Gets useBookFoldPrintingSettings. Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
    public func getUseBookFoldPrintingSettings() -> Bool? {
        return self.useBookFoldPrintingSettings;
    }


    // Sets useCoreFonts. Gets or sets a value indicating whether to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.
    public func setUseCoreFonts(useCoreFonts : Bool?) -> PdfSaveOptionsData {
        self.useCoreFonts = useCoreFonts;
        return self;
    }

    // Gets useCoreFonts. Gets or sets a value indicating whether to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.
    public func getUseCoreFonts() -> Bool? {
        return self.useCoreFonts;
    }


    // Sets useSdtTagAsFormFieldName. Gets or sets a value indicating whether to use SDT control Tag or Id property as a name of form field in PDF. The default value is false.When set to false, SDT control Id property is used as a name of form field in PDF.When set to true, SDT control Tag property is used as a name of form field in PDF.If set to true and Tag is empty, Id property will be used as a form field name.If set to true and Tag values are not unique, duplicate Tag values will be altered to build unique PDF form field names.
    public func setUseSdtTagAsFormFieldName(useSdtTagAsFormFieldName : Bool?) -> PdfSaveOptionsData {
        self.useSdtTagAsFormFieldName = useSdtTagAsFormFieldName;
        return self;
    }

    // Gets useSdtTagAsFormFieldName. Gets or sets a value indicating whether to use SDT control Tag or Id property as a name of form field in PDF. The default value is false.When set to false, SDT control Id property is used as a name of form field in PDF.When set to true, SDT control Tag property is used as a name of form field in PDF.If set to true and Tag is empty, Id property will be used as a form field name.If set to true and Tag values are not unique, duplicate Tag values will be altered to build unique PDF form field names.
    public func getUseSdtTagAsFormFieldName() -> Bool? {
        return self.useSdtTagAsFormFieldName;
    }


    // Sets zoomBehavior. Gets or sets the option that controls what type of zoom should be applied when a document is opened with a PDF viewer.
    public func setZoomBehavior(zoomBehavior : ZoomBehavior?) -> PdfSaveOptionsData {
        self.zoomBehavior = zoomBehavior;
        return self;
    }

    // Gets zoomBehavior. Gets or sets the option that controls what type of zoom should be applied when a document is opened with a PDF viewer.
    public func getZoomBehavior() -> ZoomBehavior? {
        return self.zoomBehavior;
    }


    // Sets zoomFactor. Gets or sets the zoom factor (in percentages) for a document.
    public func setZoomFactor(zoomFactor : Int?) -> PdfSaveOptionsData {
        self.zoomFactor = zoomFactor;
        return self;
    }

    // Gets zoomFactor. Gets or sets the zoom factor (in percentages) for a document.
    public func getZoomFactor() -> Int? {
        return self.zoomFactor;
    }


    // Sets exportFloatingShapesAsInlineTag. Gets or sets a value determining whether floating shapes are exported as inline tags in the document structure. The default value is false and floating shapes will be exported as block-level tags, placed after the paragraph in which they are anchored. When the value is true floating shapes will be exported as inline tags, placed within the paragraph where they are anchored. This value is ignored when ExportDocumentStructure is false.
    public func setExportFloatingShapesAsInlineTag(exportFloatingShapesAsInlineTag : Bool?) -> PdfSaveOptionsData {
        self.exportFloatingShapesAsInlineTag = exportFloatingShapesAsInlineTag;
        return self;
    }

    // Gets exportFloatingShapesAsInlineTag. Gets or sets a value determining whether floating shapes are exported as inline tags in the document structure. The default value is false and floating shapes will be exported as block-level tags, placed after the paragraph in which they are anchored. When the value is true floating shapes will be exported as inline tags, placed within the paragraph where they are anchored. This value is ignored when ExportDocumentStructure is false.
    public func getExportFloatingShapesAsInlineTag() -> Bool? {
        return self.exportFloatingShapesAsInlineTag;
    }
}
