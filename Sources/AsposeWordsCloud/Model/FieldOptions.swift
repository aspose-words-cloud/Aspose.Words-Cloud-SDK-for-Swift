/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FieldOptions.swift">
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

// DTO for field options.
public class FieldOptions : Codable, WordsApiModel {
    // Gets or sets Field Index Format.
    public enum FieldIndexFormat : String, Codable
    {
        // Enum value "template"
        case template = "Template"

        // Enum value "classic"
        case classic = "Classic"

        // Enum value "fancy"
        case fancy = "Fancy"

        // Enum value "modern"
        case modern = "Modern"

        // Enum value "bulleted"
        case bulleted = "Bulleted"

        // Enum value "formal"
        case formal = "Formal"

        // Enum value "simple"
        case simple = "Simple"
    }

    // Gets or sets Field Update Culture Source.
    public enum FieldUpdateCultureSource : String, Codable
    {
        // Enum value "currentThread"
        case currentThread = "CurrentThread"

        // Enum value "fieldCode"
        case fieldCode = "FieldCode"
    }

    // Field of currentUser. DTO for field options.
    private var _currentUser : UserInformation? = nil;

    public var currentUser : UserInformation? {
        get {
            return self._currentUser;
        }
        set {
            self._currentUser = newValue;
        }
    }

    // Field of customTocStyleSeparator. DTO for field options.
    private var _customTocStyleSeparator : String? = nil;

    public var customTocStyleSeparator : String? {
        get {
            return self._customTocStyleSeparator;
        }
        set {
            self._customTocStyleSeparator = newValue;
        }
    }

    // Field of defaultDocumentAuthor. DTO for field options.
    private var _defaultDocumentAuthor : String? = nil;

    public var defaultDocumentAuthor : String? {
        get {
            return self._defaultDocumentAuthor;
        }
        set {
            self._defaultDocumentAuthor = newValue;
        }
    }

    // Field of fieldIndexFormat. DTO for field options.
    private var _fieldIndexFormat : FieldIndexFormat? = nil;

    public var fieldIndexFormat : FieldIndexFormat? {
        get {
            return self._fieldIndexFormat;
        }
        set {
            self._fieldIndexFormat = newValue;
        }
    }

    // Field of fieldUpdateCultureName. DTO for field options.
    private var _fieldUpdateCultureName : String? = nil;

    public var fieldUpdateCultureName : String? {
        get {
            return self._fieldUpdateCultureName;
        }
        set {
            self._fieldUpdateCultureName = newValue;
        }
    }

    // Field of fieldUpdateCultureSource. DTO for field options.
    private var _fieldUpdateCultureSource : FieldUpdateCultureSource? = nil;

    public var fieldUpdateCultureSource : FieldUpdateCultureSource? {
        get {
            return self._fieldUpdateCultureSource;
        }
        set {
            self._fieldUpdateCultureSource = newValue;
        }
    }

    // Field of fileName. DTO for field options.
    private var _fileName : String? = nil;

    public var fileName : String? {
        get {
            return self._fileName;
        }
        set {
            self._fileName = newValue;
        }
    }

    // Field of isBidiTextSupportedOnUpdate. DTO for field options.
    private var _isBidiTextSupportedOnUpdate : Bool? = nil;

    public var isBidiTextSupportedOnUpdate : Bool? {
        get {
            return self._isBidiTextSupportedOnUpdate;
        }
        set {
            self._isBidiTextSupportedOnUpdate = newValue;
        }
    }

    // Field of legacyNumberFormat. DTO for field options.
    private var _legacyNumberFormat : Bool? = nil;

    public var legacyNumberFormat : Bool? {
        get {
            return self._legacyNumberFormat;
        }
        set {
            self._legacyNumberFormat = newValue;
        }
    }

    // Field of preProcessCultureName. DTO for field options.
    private var _preProcessCultureName : String? = nil;

    public var preProcessCultureName : String? {
        get {
            return self._preProcessCultureName;
        }
        set {
            self._preProcessCultureName = newValue;
        }
    }

    // Field of templateName. DTO for field options.
    private var _templateName : String? = nil;

    public var templateName : String? {
        get {
            return self._templateName;
        }
        set {
            self._templateName = newValue;
        }
    }

    // Field of useInvariantCultureNumberFormat. DTO for field options.
    private var _useInvariantCultureNumberFormat : Bool? = nil;

    public var useInvariantCultureNumberFormat : Bool? {
        get {
            return self._useInvariantCultureNumberFormat;
        }
        set {
            self._useInvariantCultureNumberFormat = newValue;
        }
    }

    // Field of builtInTemplatesPaths. DTO for field options.
    private var _builtInTemplatesPaths : [String]? = nil;

    public var builtInTemplatesPaths : [String]? {
        get {
            return self._builtInTemplatesPaths;
        }
        set {
            self._builtInTemplatesPaths = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case currentUser = "CurrentUser";
        case customTocStyleSeparator = "CustomTocStyleSeparator";
        case defaultDocumentAuthor = "DefaultDocumentAuthor";
        case fieldIndexFormat = "FieldIndexFormat";
        case fieldUpdateCultureName = "FieldUpdateCultureName";
        case fieldUpdateCultureSource = "FieldUpdateCultureSource";
        case fileName = "FileName";
        case isBidiTextSupportedOnUpdate = "IsBidiTextSupportedOnUpdate";
        case legacyNumberFormat = "LegacyNumberFormat";
        case preProcessCultureName = "PreProcessCultureName";
        case templateName = "TemplateName";
        case useInvariantCultureNumberFormat = "UseInvariantCultureNumberFormat";
        case builtInTemplatesPaths = "BuiltInTemplatesPaths";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_currentUser = json["CurrentUser"] as? [String: Any] {
            self.currentUser = try ObjectSerializer.deserialize(type: UserInformation.self, from: raw_currentUser);
        }

        self.customTocStyleSeparator = json["CustomTocStyleSeparator"] as? String;
        self.defaultDocumentAuthor = json["DefaultDocumentAuthor"] as? String;
        if let raw_fieldIndexFormat = json["FieldIndexFormat"] as? String {
            self.fieldIndexFormat = FieldIndexFormat(rawValue: raw_fieldIndexFormat);
        }

        self.fieldUpdateCultureName = json["FieldUpdateCultureName"] as? String;
        if let raw_fieldUpdateCultureSource = json["FieldUpdateCultureSource"] as? String {
            self.fieldUpdateCultureSource = FieldUpdateCultureSource(rawValue: raw_fieldUpdateCultureSource);
        }

        self.fileName = json["FileName"] as? String;
        self.isBidiTextSupportedOnUpdate = json["IsBidiTextSupportedOnUpdate"] as? Bool;
        self.legacyNumberFormat = json["LegacyNumberFormat"] as? Bool;
        self.preProcessCultureName = json["PreProcessCultureName"] as? String;
        self.templateName = json["TemplateName"] as? String;
        self.useInvariantCultureNumberFormat = json["UseInvariantCultureNumberFormat"] as? Bool;
        if let raw_builtInTemplatesPaths = json["BuiltInTemplatesPaths"] as? [Any] {
            self.builtInTemplatesPaths = try raw_builtInTemplatesPaths.map {
                if let element_builtInTemplatesPaths = $0 as? String {
                    return element_builtInTemplatesPaths;
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "String");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.currentUser = try container.decodeIfPresent(UserInformation.self, forKey: .currentUser);
        self.customTocStyleSeparator = try container.decodeIfPresent(String.self, forKey: .customTocStyleSeparator);
        self.defaultDocumentAuthor = try container.decodeIfPresent(String.self, forKey: .defaultDocumentAuthor);
        self.fieldIndexFormat = try container.decodeIfPresent(FieldIndexFormat.self, forKey: .fieldIndexFormat);
        self.fieldUpdateCultureName = try container.decodeIfPresent(String.self, forKey: .fieldUpdateCultureName);
        self.fieldUpdateCultureSource = try container.decodeIfPresent(FieldUpdateCultureSource.self, forKey: .fieldUpdateCultureSource);
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName);
        self.isBidiTextSupportedOnUpdate = try container.decodeIfPresent(Bool.self, forKey: .isBidiTextSupportedOnUpdate);
        self.legacyNumberFormat = try container.decodeIfPresent(Bool.self, forKey: .legacyNumberFormat);
        self.preProcessCultureName = try container.decodeIfPresent(String.self, forKey: .preProcessCultureName);
        self.templateName = try container.decodeIfPresent(String.self, forKey: .templateName);
        self.useInvariantCultureNumberFormat = try container.decodeIfPresent(Bool.self, forKey: .useInvariantCultureNumberFormat);
        self.builtInTemplatesPaths = try container.decodeIfPresent([String].self, forKey: .builtInTemplatesPaths);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.currentUser != nil) {
            try container.encode(self.currentUser, forKey: .currentUser);
        }
        if (self.customTocStyleSeparator != nil) {
            try container.encode(self.customTocStyleSeparator, forKey: .customTocStyleSeparator);
        }
        if (self.defaultDocumentAuthor != nil) {
            try container.encode(self.defaultDocumentAuthor, forKey: .defaultDocumentAuthor);
        }
        if (self.fieldIndexFormat != nil) {
            try container.encode(self.fieldIndexFormat, forKey: .fieldIndexFormat);
        }
        if (self.fieldUpdateCultureName != nil) {
            try container.encode(self.fieldUpdateCultureName, forKey: .fieldUpdateCultureName);
        }
        if (self.fieldUpdateCultureSource != nil) {
            try container.encode(self.fieldUpdateCultureSource, forKey: .fieldUpdateCultureSource);
        }
        if (self.fileName != nil) {
            try container.encode(self.fileName, forKey: .fileName);
        }
        if (self.isBidiTextSupportedOnUpdate != nil) {
            try container.encode(self.isBidiTextSupportedOnUpdate, forKey: .isBidiTextSupportedOnUpdate);
        }
        if (self.legacyNumberFormat != nil) {
            try container.encode(self.legacyNumberFormat, forKey: .legacyNumberFormat);
        }
        if (self.preProcessCultureName != nil) {
            try container.encode(self.preProcessCultureName, forKey: .preProcessCultureName);
        }
        if (self.templateName != nil) {
            try container.encode(self.templateName, forKey: .templateName);
        }
        if (self.useInvariantCultureNumberFormat != nil) {
            try container.encode(self.useInvariantCultureNumberFormat, forKey: .useInvariantCultureNumberFormat);
        }
        if (self.builtInTemplatesPaths != nil) {
            try container.encode(self.builtInTemplatesPaths, forKey: .builtInTemplatesPaths);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.currentUser?.validate();

    }

    // Sets currentUser. Gets or sets Current User.
    public func setCurrentUser(currentUser : UserInformation?) -> FieldOptions {
        self.currentUser = currentUser;
        return self;
    }

    // Gets currentUser. Gets or sets Current User.
    public func getCurrentUser() -> UserInformation? {
        return self.currentUser;
    }


    // Sets customTocStyleSeparator. Gets or sets Custom Toc Style Separator.
    public func setCustomTocStyleSeparator(customTocStyleSeparator : String?) -> FieldOptions {
        self.customTocStyleSeparator = customTocStyleSeparator;
        return self;
    }

    // Gets customTocStyleSeparator. Gets or sets Custom Toc Style Separator.
    public func getCustomTocStyleSeparator() -> String? {
        return self.customTocStyleSeparator;
    }


    // Sets defaultDocumentAuthor. Gets or sets Default Document Author.
    public func setDefaultDocumentAuthor(defaultDocumentAuthor : String?) -> FieldOptions {
        self.defaultDocumentAuthor = defaultDocumentAuthor;
        return self;
    }

    // Gets defaultDocumentAuthor. Gets or sets Default Document Author.
    public func getDefaultDocumentAuthor() -> String? {
        return self.defaultDocumentAuthor;
    }


    // Sets fieldIndexFormat. Gets or sets Field Index Format.
    public func setFieldIndexFormat(fieldIndexFormat : FieldIndexFormat?) -> FieldOptions {
        self.fieldIndexFormat = fieldIndexFormat;
        return self;
    }

    // Gets fieldIndexFormat. Gets or sets Field Index Format.
    public func getFieldIndexFormat() -> FieldIndexFormat? {
        return self.fieldIndexFormat;
    }


    // Sets fieldUpdateCultureName. Gets or sets Field Update Culture Name. It is used for all fields if FieldUpdateCultureSource is FieldCode.
    public func setFieldUpdateCultureName(fieldUpdateCultureName : String?) -> FieldOptions {
        self.fieldUpdateCultureName = fieldUpdateCultureName;
        return self;
    }

    // Gets fieldUpdateCultureName. Gets or sets Field Update Culture Name. It is used for all fields if FieldUpdateCultureSource is FieldCode.
    public func getFieldUpdateCultureName() -> String? {
        return self.fieldUpdateCultureName;
    }


    // Sets fieldUpdateCultureSource. Gets or sets Field Update Culture Source.
    public func setFieldUpdateCultureSource(fieldUpdateCultureSource : FieldUpdateCultureSource?) -> FieldOptions {
        self.fieldUpdateCultureSource = fieldUpdateCultureSource;
        return self;
    }

    // Gets fieldUpdateCultureSource. Gets or sets Field Update Culture Source.
    public func getFieldUpdateCultureSource() -> FieldUpdateCultureSource? {
        return self.fieldUpdateCultureSource;
    }


    // Sets fileName. Gets or sets File Name.
    public func setFileName(fileName : String?) -> FieldOptions {
        self.fileName = fileName;
        return self;
    }

    // Gets fileName. Gets or sets File Name.
    public func getFileName() -> String? {
        return self.fileName;
    }


    // Sets isBidiTextSupportedOnUpdate. Gets or sets if Bidi Text Supported OnUpdate.
    public func setIsBidiTextSupportedOnUpdate(isBidiTextSupportedOnUpdate : Bool?) -> FieldOptions {
        self.isBidiTextSupportedOnUpdate = isBidiTextSupportedOnUpdate;
        return self;
    }

    // Gets isBidiTextSupportedOnUpdate. Gets or sets if Bidi Text Supported OnUpdate.
    public func getIsBidiTextSupportedOnUpdate() -> Bool? {
        return self.isBidiTextSupportedOnUpdate;
    }


    // Sets legacyNumberFormat. Gets or sets if Legacy Number Format.
    public func setLegacyNumberFormat(legacyNumberFormat : Bool?) -> FieldOptions {
        self.legacyNumberFormat = legacyNumberFormat;
        return self;
    }

    // Gets legacyNumberFormat. Gets or sets if Legacy Number Format.
    public func getLegacyNumberFormat() -> Bool? {
        return self.legacyNumberFormat;
    }


    // Sets preProcessCultureName. Gets or sets PreProcess Culture Name. It is a culture code for DOC fields.
    public func setPreProcessCultureName(preProcessCultureName : String?) -> FieldOptions {
        self.preProcessCultureName = preProcessCultureName;
        return self;
    }

    // Gets preProcessCultureName. Gets or sets PreProcess Culture Name. It is a culture code for DOC fields.
    public func getPreProcessCultureName() -> String? {
        return self.preProcessCultureName;
    }


    // Sets templateName. Gets or sets Template Name.
    public func setTemplateName(templateName : String?) -> FieldOptions {
        self.templateName = templateName;
        return self;
    }

    // Gets templateName. Gets or sets Template Name.
    public func getTemplateName() -> String? {
        return self.templateName;
    }


    // Sets useInvariantCultureNumberFormat. Gets or sets if Use Invariant Culture Number Format.
    public func setUseInvariantCultureNumberFormat(useInvariantCultureNumberFormat : Bool?) -> FieldOptions {
        self.useInvariantCultureNumberFormat = useInvariantCultureNumberFormat;
        return self;
    }

    // Gets useInvariantCultureNumberFormat. Gets or sets if Use Invariant Culture Number Format.
    public func getUseInvariantCultureNumberFormat() -> Bool? {
        return self.useInvariantCultureNumberFormat;
    }


    // Sets builtInTemplatesPaths. Gets or sets BuiltIn Templates Paths.
    public func setBuiltInTemplatesPaths(builtInTemplatesPaths : [String]?) -> FieldOptions {
        self.builtInTemplatesPaths = builtInTemplatesPaths;
        return self;
    }

    // Gets builtInTemplatesPaths. Gets or sets BuiltIn Templates Paths.
    public func getBuiltInTemplatesPaths() -> [String]? {
        return self.builtInTemplatesPaths;
    }
}
