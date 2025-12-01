/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveOptionsData.swift">
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

// base container class for save options data.
public class SaveOptionsData : Codable, WordsApiModel {
    // Gets or sets the value determining how 3D effects are rendered.
    // The default value is Aspose.Words.Saving.Dml3DEffectsRenderingMode.Basic.
    public enum Dml3DEffectsRenderingMode : String, Codable
    {
        // Enum value "basic"
        case basic = "Basic"

        // Enum value "advanced"
        case advanced = "Advanced"
    }

    // Gets or sets the value determining how DrawingML effects are rendered.
    // { Simplified | None | Fine }.
    // The default value is Simplified.
    // This property is used when the document is exported to fixed page formats.
    public enum DmlEffectsRenderingMode : String, Codable
    {
        // Enum value "simplified"
        case simplified = "Simplified"

        // Enum value "_none"
        case _none = "None"

        // Enum value "fine"
        case fine = "Fine"
    }

    // Gets or sets the option that controls how DrawingML shapes are rendered.
    // { Fallback | DrawingML }. The default value is Fallback.
    // This property is used when the document is exported to fixed page formats.
    public enum DmlRenderingMode : String, Codable
    {
        // Enum value "fallback"
        case fallback = "Fallback"

        // Enum value "drawingML"
        case drawingML = "DrawingML"
    }

    // Gets or sets the value determining how ink (InkML) objects are rendered.
    // The default value is Aspose.Words.Saving.ImlRenderingMode.InkML.
    public enum ImlRenderingMode : String, Codable
    {
        // Enum value "fallback"
        case fallback = "Fallback"

        // Enum value "inkML"
        case inkML = "InkML"
    }

    // Field of allowEmbeddingPostScriptFonts. base container class for save options data.
    private var _allowEmbeddingPostScriptFonts : Bool? = nil;

    public var allowEmbeddingPostScriptFonts : Bool? {
        get {
            return self._allowEmbeddingPostScriptFonts;
        }
        set {
            self._allowEmbeddingPostScriptFonts = newValue;
        }
    }

    // Field of customTimeZoneInfoData. base container class for save options data.
    private var _customTimeZoneInfoData : TimeZoneInfoData? = nil;

    public var customTimeZoneInfoData : TimeZoneInfoData? {
        get {
            return self._customTimeZoneInfoData;
        }
        set {
            self._customTimeZoneInfoData = newValue;
        }
    }

    // Field of dml3DEffectsRenderingMode. base container class for save options data.
    private var _dml3DEffectsRenderingMode : Dml3DEffectsRenderingMode? = nil;

    public var dml3DEffectsRenderingMode : Dml3DEffectsRenderingMode? {
        get {
            return self._dml3DEffectsRenderingMode;
        }
        set {
            self._dml3DEffectsRenderingMode = newValue;
        }
    }

    // Field of dmlEffectsRenderingMode. base container class for save options data.
    private var _dmlEffectsRenderingMode : DmlEffectsRenderingMode? = nil;

    public var dmlEffectsRenderingMode : DmlEffectsRenderingMode? {
        get {
            return self._dmlEffectsRenderingMode;
        }
        set {
            self._dmlEffectsRenderingMode = newValue;
        }
    }

    // Field of dmlRenderingMode. base container class for save options data.
    private var _dmlRenderingMode : DmlRenderingMode? = nil;

    public var dmlRenderingMode : DmlRenderingMode? {
        get {
            return self._dmlRenderingMode;
        }
        set {
            self._dmlRenderingMode = newValue;
        }
    }

    // Field of fileName. base container class for save options data.
    private var _fileName : String? = nil;

    public var fileName : String? {
        get {
            return self._fileName;
        }
        set {
            self._fileName = newValue;
        }
    }

    // Field of imlRenderingMode. base container class for save options data.
    private var _imlRenderingMode : ImlRenderingMode? = nil;

    public var imlRenderingMode : ImlRenderingMode? {
        get {
            return self._imlRenderingMode;
        }
        set {
            self._imlRenderingMode = newValue;
        }
    }

    // Field of updateAmbiguousTextFont. base container class for save options data.
    private var _updateAmbiguousTextFont : Bool? = nil;

    public var updateAmbiguousTextFont : Bool? {
        get {
            return self._updateAmbiguousTextFont;
        }
        set {
            self._updateAmbiguousTextFont = newValue;
        }
    }

    // Field of updateCreatedTimeProperty. base container class for save options data.
    private var _updateCreatedTimeProperty : Bool? = nil;

    public var updateCreatedTimeProperty : Bool? {
        get {
            return self._updateCreatedTimeProperty;
        }
        set {
            self._updateCreatedTimeProperty = newValue;
        }
    }

    // Field of updateFields. base container class for save options data.
    private var _updateFields : Bool? = nil;

    public var updateFields : Bool? {
        get {
            return self._updateFields;
        }
        set {
            self._updateFields = newValue;
        }
    }

    // Field of updateLastPrintedProperty. base container class for save options data.
    private var _updateLastPrintedProperty : Bool? = nil;

    public var updateLastPrintedProperty : Bool? {
        get {
            return self._updateLastPrintedProperty;
        }
        set {
            self._updateLastPrintedProperty = newValue;
        }
    }

    // Field of updateLastSavedTimeProperty. base container class for save options data.
    private var _updateLastSavedTimeProperty : Bool? = nil;

    public var updateLastSavedTimeProperty : Bool? {
        get {
            return self._updateLastSavedTimeProperty;
        }
        set {
            self._updateLastSavedTimeProperty = newValue;
        }
    }

    // Field of zipOutput. base container class for save options data.
    private var _zipOutput : Bool? = nil;

    public var zipOutput : Bool? {
        get {
            return self._zipOutput;
        }
        set {
            self._zipOutput = newValue;
        }
    }

    // Field of saveFormat. base container class for save options data.
    private final let _saveFormat : String? = nil;

    public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case allowEmbeddingPostScriptFonts = "AllowEmbeddingPostScriptFonts";
        case customTimeZoneInfoData = "CustomTimeZoneInfoData";
        case dml3DEffectsRenderingMode = "Dml3DEffectsRenderingMode";
        case dmlEffectsRenderingMode = "DmlEffectsRenderingMode";
        case dmlRenderingMode = "DmlRenderingMode";
        case fileName = "FileName";
        case imlRenderingMode = "ImlRenderingMode";
        case updateAmbiguousTextFont = "UpdateAmbiguousTextFont";
        case updateCreatedTimeProperty = "UpdateCreatedTimeProperty";
        case updateFields = "UpdateFields";
        case updateLastPrintedProperty = "UpdateLastPrintedProperty";
        case updateLastSavedTimeProperty = "UpdateLastSavedTimeProperty";
        case zipOutput = "ZipOutput";
        case saveFormat = "SaveFormat";
        case invalidCodingKey;
    }

    internal init() {
    }

    public required init(from json: [String: Any]) throws {
        self.allowEmbeddingPostScriptFonts = json["AllowEmbeddingPostScriptFonts"] as? Bool;
        if let raw_customTimeZoneInfoData = json["CustomTimeZoneInfoData"] as? [String: Any] {
            self.customTimeZoneInfoData = try ObjectSerializer.deserialize(type: TimeZoneInfoData.self, from: raw_customTimeZoneInfoData);
        }

        if let raw_dml3DEffectsRenderingMode = json["Dml3DEffectsRenderingMode"] as? String {
            self.dml3DEffectsRenderingMode = Dml3DEffectsRenderingMode(rawValue: raw_dml3DEffectsRenderingMode);
        }

        if let raw_dmlEffectsRenderingMode = json["DmlEffectsRenderingMode"] as? String {
            self.dmlEffectsRenderingMode = DmlEffectsRenderingMode(rawValue: raw_dmlEffectsRenderingMode);
        }

        if let raw_dmlRenderingMode = json["DmlRenderingMode"] as? String {
            self.dmlRenderingMode = DmlRenderingMode(rawValue: raw_dmlRenderingMode);
        }

        self.fileName = json["FileName"] as? String;
        if let raw_imlRenderingMode = json["ImlRenderingMode"] as? String {
            self.imlRenderingMode = ImlRenderingMode(rawValue: raw_imlRenderingMode);
        }

        self.updateAmbiguousTextFont = json["UpdateAmbiguousTextFont"] as? Bool;
        self.updateCreatedTimeProperty = json["UpdateCreatedTimeProperty"] as? Bool;
        self.updateFields = json["UpdateFields"] as? Bool;
        self.updateLastPrintedProperty = json["UpdateLastPrintedProperty"] as? Bool;
        self.updateLastSavedTimeProperty = json["UpdateLastSavedTimeProperty"] as? Bool;
        self.zipOutput = json["ZipOutput"] as? Bool;

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.allowEmbeddingPostScriptFonts = try container.decodeIfPresent(Bool.self, forKey: .allowEmbeddingPostScriptFonts);
        self.customTimeZoneInfoData = try container.decodeIfPresent(TimeZoneInfoData.self, forKey: .customTimeZoneInfoData);
        self.dml3DEffectsRenderingMode = try container.decodeIfPresent(Dml3DEffectsRenderingMode.self, forKey: .dml3DEffectsRenderingMode);
        self.dmlEffectsRenderingMode = try container.decodeIfPresent(DmlEffectsRenderingMode.self, forKey: .dmlEffectsRenderingMode);
        self.dmlRenderingMode = try container.decodeIfPresent(DmlRenderingMode.self, forKey: .dmlRenderingMode);
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName);
        self.imlRenderingMode = try container.decodeIfPresent(ImlRenderingMode.self, forKey: .imlRenderingMode);
        self.updateAmbiguousTextFont = try container.decodeIfPresent(Bool.self, forKey: .updateAmbiguousTextFont);
        self.updateCreatedTimeProperty = try container.decodeIfPresent(Bool.self, forKey: .updateCreatedTimeProperty);
        self.updateFields = try container.decodeIfPresent(Bool.self, forKey: .updateFields);
        self.updateLastPrintedProperty = try container.decodeIfPresent(Bool.self, forKey: .updateLastPrintedProperty);
        self.updateLastSavedTimeProperty = try container.decodeIfPresent(Bool.self, forKey: .updateLastSavedTimeProperty);
        self.zipOutput = try container.decodeIfPresent(Bool.self, forKey: .zipOutput);

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.allowEmbeddingPostScriptFonts != nil) {
            try container.encode(self.allowEmbeddingPostScriptFonts, forKey: .allowEmbeddingPostScriptFonts);
        }
        if (self.customTimeZoneInfoData != nil) {
            try container.encode(self.customTimeZoneInfoData, forKey: .customTimeZoneInfoData);
        }
        if (self.dml3DEffectsRenderingMode != nil) {
            try container.encode(self.dml3DEffectsRenderingMode, forKey: .dml3DEffectsRenderingMode);
        }
        if (self.dmlEffectsRenderingMode != nil) {
            try container.encode(self.dmlEffectsRenderingMode, forKey: .dmlEffectsRenderingMode);
        }
        if (self.dmlRenderingMode != nil) {
            try container.encode(self.dmlRenderingMode, forKey: .dmlRenderingMode);
        }
        if (self.fileName != nil) {
            try container.encode(self.fileName, forKey: .fileName);
        }
        if (self.imlRenderingMode != nil) {
            try container.encode(self.imlRenderingMode, forKey: .imlRenderingMode);
        }
        if (self.updateAmbiguousTextFont != nil) {
            try container.encode(self.updateAmbiguousTextFont, forKey: .updateAmbiguousTextFont);
        }
        if (self.updateCreatedTimeProperty != nil) {
            try container.encode(self.updateCreatedTimeProperty, forKey: .updateCreatedTimeProperty);
        }
        if (self.updateFields != nil) {
            try container.encode(self.updateFields, forKey: .updateFields);
        }
        if (self.updateLastPrintedProperty != nil) {
            try container.encode(self.updateLastPrintedProperty, forKey: .updateLastPrintedProperty);
        }
        if (self.updateLastSavedTimeProperty != nil) {
            try container.encode(self.updateLastSavedTimeProperty, forKey: .updateLastSavedTimeProperty);
        }
        if (self.zipOutput != nil) {
            try container.encode(self.zipOutput, forKey: .zipOutput);
        }
        if (self.saveFormat != nil) {
            try container.encode(self.saveFormat, forKey: .saveFormat);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.fileName == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "fileName");
        }
        try self.customTimeZoneInfoData?.validate();

    }

    // Sets allowEmbeddingPostScriptFonts. Gets or sets a boolean value indicating whether to allow embedding fonts with PostScript outlines when embedding TrueType fonts in a document upon it is saved. The default value is false.. Note, Word does not embed PostScript fonts, but can open documents with embedded fonts of this type. This option only works when Aspose.Words.Fonts.FontInfoCollection.EmbedTrueTypeFonts of the Aspose.Words.DocumentBase.FontInfos property is set to true. The default value is false.
    public func setAllowEmbeddingPostScriptFonts(allowEmbeddingPostScriptFonts : Bool?) -> SaveOptionsData {
        self.allowEmbeddingPostScriptFonts = allowEmbeddingPostScriptFonts;
        return self;
    }

    // Gets allowEmbeddingPostScriptFonts. Gets or sets a boolean value indicating whether to allow embedding fonts with PostScript outlines when embedding TrueType fonts in a document upon it is saved. The default value is false.. Note, Word does not embed PostScript fonts, but can open documents with embedded fonts of this type. This option only works when Aspose.Words.Fonts.FontInfoCollection.EmbedTrueTypeFonts of the Aspose.Words.DocumentBase.FontInfos property is set to true. The default value is false.
    public func getAllowEmbeddingPostScriptFonts() -> Bool? {
        return self.allowEmbeddingPostScriptFonts;
    }


    // Sets customTimeZoneInfoData. Gets or sets CustomTimeZoneInfo.
    public func setCustomTimeZoneInfoData(customTimeZoneInfoData : TimeZoneInfoData?) -> SaveOptionsData {
        self.customTimeZoneInfoData = customTimeZoneInfoData;
        return self;
    }

    // Gets customTimeZoneInfoData. Gets or sets CustomTimeZoneInfo.
    public func getCustomTimeZoneInfoData() -> TimeZoneInfoData? {
        return self.customTimeZoneInfoData;
    }


    // Sets dml3DEffectsRenderingMode. Gets or sets the value determining how 3D effects are rendered. The default value is Aspose.Words.Saving.Dml3DEffectsRenderingMode.Basic.
    public func setDml3DEffectsRenderingMode(dml3DEffectsRenderingMode : Dml3DEffectsRenderingMode?) -> SaveOptionsData {
        self.dml3DEffectsRenderingMode = dml3DEffectsRenderingMode;
        return self;
    }

    // Gets dml3DEffectsRenderingMode. Gets or sets the value determining how 3D effects are rendered. The default value is Aspose.Words.Saving.Dml3DEffectsRenderingMode.Basic.
    public func getDml3DEffectsRenderingMode() -> Dml3DEffectsRenderingMode? {
        return self.dml3DEffectsRenderingMode;
    }


    // Sets dmlEffectsRenderingMode. Gets or sets the value determining how DrawingML effects are rendered. { Simplified | None | Fine }. The default value is Simplified. This property is used when the document is exported to fixed page formats.
    public func setDmlEffectsRenderingMode(dmlEffectsRenderingMode : DmlEffectsRenderingMode?) -> SaveOptionsData {
        self.dmlEffectsRenderingMode = dmlEffectsRenderingMode;
        return self;
    }

    // Gets dmlEffectsRenderingMode. Gets or sets the value determining how DrawingML effects are rendered. { Simplified | None | Fine }. The default value is Simplified. This property is used when the document is exported to fixed page formats.
    public func getDmlEffectsRenderingMode() -> DmlEffectsRenderingMode? {
        return self.dmlEffectsRenderingMode;
    }


    // Sets dmlRenderingMode. Gets or sets the option that controls how DrawingML shapes are rendered. { Fallback | DrawingML }. The default value is Fallback. This property is used when the document is exported to fixed page formats.
    public func setDmlRenderingMode(dmlRenderingMode : DmlRenderingMode?) -> SaveOptionsData {
        self.dmlRenderingMode = dmlRenderingMode;
        return self;
    }

    // Gets dmlRenderingMode. Gets or sets the option that controls how DrawingML shapes are rendered. { Fallback | DrawingML }. The default value is Fallback. This property is used when the document is exported to fixed page formats.
    public func getDmlRenderingMode() -> DmlRenderingMode? {
        return self.dmlRenderingMode;
    }


    // Sets fileName. Gets or sets the name of destination file.
    public func setFileName(fileName : String?) -> SaveOptionsData {
        self.fileName = fileName;
        return self;
    }

    // Gets fileName. Gets or sets the name of destination file.
    public func getFileName() -> String? {
        return self.fileName;
    }


    // Sets imlRenderingMode. Gets or sets the value determining how ink (InkML) objects are rendered. The default value is Aspose.Words.Saving.ImlRenderingMode.InkML.
    public func setImlRenderingMode(imlRenderingMode : ImlRenderingMode?) -> SaveOptionsData {
        self.imlRenderingMode = imlRenderingMode;
        return self;
    }

    // Gets imlRenderingMode. Gets or sets the value determining how ink (InkML) objects are rendered. The default value is Aspose.Words.Saving.ImlRenderingMode.InkML.
    public func getImlRenderingMode() -> ImlRenderingMode? {
        return self.imlRenderingMode;
    }


    // Sets updateAmbiguousTextFont. Gets or sets a value indicating whether the font attributes will be changed according to the character code being used.
    public func setUpdateAmbiguousTextFont(updateAmbiguousTextFont : Bool?) -> SaveOptionsData {
        self.updateAmbiguousTextFont = updateAmbiguousTextFont;
        return self;
    }

    // Gets updateAmbiguousTextFont. Gets or sets a value indicating whether the font attributes will be changed according to the character code being used.
    public func getUpdateAmbiguousTextFont() -> Bool? {
        return self.updateAmbiguousTextFont;
    }


    // Sets updateCreatedTimeProperty. Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.CreatedTime property is updated before saving. The default value is false.
    public func setUpdateCreatedTimeProperty(updateCreatedTimeProperty : Bool?) -> SaveOptionsData {
        self.updateCreatedTimeProperty = updateCreatedTimeProperty;
        return self;
    }

    // Gets updateCreatedTimeProperty. Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.CreatedTime property is updated before saving. The default value is false.
    public func getUpdateCreatedTimeProperty() -> Bool? {
        return self.updateCreatedTimeProperty;
    }


    // Sets updateFields. Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
    public func setUpdateFields(updateFields : Bool?) -> SaveOptionsData {
        self.updateFields = updateFields;
        return self;
    }

    // Gets updateFields. Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
    public func getUpdateFields() -> Bool? {
        return self.updateFields;
    }


    // Sets updateLastPrintedProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
    public func setUpdateLastPrintedProperty(updateLastPrintedProperty : Bool?) -> SaveOptionsData {
        self.updateLastPrintedProperty = updateLastPrintedProperty;
        return self;
    }

    // Gets updateLastPrintedProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
    public func getUpdateLastPrintedProperty() -> Bool? {
        return self.updateLastPrintedProperty;
    }


    // Sets updateLastSavedTimeProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving. The default value is false.
    public func setUpdateLastSavedTimeProperty(updateLastSavedTimeProperty : Bool?) -> SaveOptionsData {
        self.updateLastSavedTimeProperty = updateLastSavedTimeProperty;
        return self;
    }

    // Gets updateLastSavedTimeProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving. The default value is false.
    public func getUpdateLastSavedTimeProperty() -> Bool? {
        return self.updateLastSavedTimeProperty;
    }


    // Sets zipOutput. Gets or sets a value indicating whether to zip output or not. The default value is false. When set to true, output files will be zipped.
    public func setZipOutput(zipOutput : Bool?) -> SaveOptionsData {
        self.zipOutput = zipOutput;
        return self;
    }

    // Gets zipOutput. Gets or sets a value indicating whether to zip output or not. The default value is false. When set to true, output files will be zipped.
    public func getZipOutput() -> Bool? {
        return self.zipOutput;
    }


    // Gets saveFormat. Gets the format of save.
    public func getSaveFormat() -> String? {
        return self.saveFormat;
    }
}
