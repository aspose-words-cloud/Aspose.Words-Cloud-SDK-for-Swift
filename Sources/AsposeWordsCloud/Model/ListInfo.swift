/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListInfo.swift">
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

// DTO container with a single document list.
public class ListInfo : LinkElement {
    // Field of listId. DTO container with a single document list.
    private var _listId : Int? = nil;

    public var listId : Int? {
        get {
            return self._listId;
        }
        set {
            self._listId = newValue;
        }
    }

    // Field of isMultiLevel. DTO container with a single document list.
    private var _isMultiLevel : Bool? = nil;

    public var isMultiLevel : Bool? {
        get {
            return self._isMultiLevel;
        }
        set {
            self._isMultiLevel = newValue;
        }
    }

    // Field of isRestartAtEachSection. DTO container with a single document list.
    private var _isRestartAtEachSection : Bool? = nil;

    public var isRestartAtEachSection : Bool? {
        get {
            return self._isRestartAtEachSection;
        }
        set {
            self._isRestartAtEachSection = newValue;
        }
    }

    // Field of isListStyleDefinition. DTO container with a single document list.
    private var _isListStyleDefinition : Bool? = nil;

    public var isListStyleDefinition : Bool? {
        get {
            return self._isListStyleDefinition;
        }
        set {
            self._isListStyleDefinition = newValue;
        }
    }

    // Field of isListStyleReference. DTO container with a single document list.
    private var _isListStyleReference : Bool? = nil;

    public var isListStyleReference : Bool? {
        get {
            return self._isListStyleReference;
        }
        set {
            self._isListStyleReference = newValue;
        }
    }

    // Field of style. DTO container with a single document list.
    private var _style : Style? = nil;

    public var style : Style? {
        get {
            return self._style;
        }
        set {
            self._style = newValue;
        }
    }

    // Field of listLevels. DTO container with a single document list.
    private var _listLevels : ListLevels? = nil;

    public var listLevels : ListLevels? {
        get {
            return self._listLevels;
        }
        set {
            self._listLevels = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case listId = "ListId";
        case isMultiLevel = "IsMultiLevel";
        case isRestartAtEachSection = "IsRestartAtEachSection";
        case isListStyleDefinition = "IsListStyleDefinition";
        case isListStyleReference = "IsListStyleReference";
        case style = "Style";
        case listLevels = "ListLevels";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.listId = json["ListId"] as? Int;
        self.isMultiLevel = json["IsMultiLevel"] as? Bool;
        self.isRestartAtEachSection = json["IsRestartAtEachSection"] as? Bool;
        self.isListStyleDefinition = json["IsListStyleDefinition"] as? Bool;
        self.isListStyleReference = json["IsListStyleReference"] as? Bool;
        if let raw_style = json["Style"] as? [String: Any] {
            self.style = try ObjectSerializer.deserialize(type: Style.self, from: raw_style);
        }

        if let raw_listLevels = json["ListLevels"] as? [String: Any] {
            self.listLevels = try ObjectSerializer.deserialize(type: ListLevels.self, from: raw_listLevels);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.listId = try container.decodeIfPresent(Int.self, forKey: .listId);
        self.isMultiLevel = try container.decodeIfPresent(Bool.self, forKey: .isMultiLevel);
        self.isRestartAtEachSection = try container.decodeIfPresent(Bool.self, forKey: .isRestartAtEachSection);
        self.isListStyleDefinition = try container.decodeIfPresent(Bool.self, forKey: .isListStyleDefinition);
        self.isListStyleReference = try container.decodeIfPresent(Bool.self, forKey: .isListStyleReference);
        self.style = try container.decodeIfPresent(Style.self, forKey: .style);
        self.listLevels = try container.decodeIfPresent(ListLevels.self, forKey: .listLevels);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.listId != nil) {
            try container.encode(self.listId, forKey: .listId);
        }
        if (self.isMultiLevel != nil) {
            try container.encode(self.isMultiLevel, forKey: .isMultiLevel);
        }
        if (self.isRestartAtEachSection != nil) {
            try container.encode(self.isRestartAtEachSection, forKey: .isRestartAtEachSection);
        }
        if (self.isListStyleDefinition != nil) {
            try container.encode(self.isListStyleDefinition, forKey: .isListStyleDefinition);
        }
        if (self.isListStyleReference != nil) {
            try container.encode(self.isListStyleReference, forKey: .isListStyleReference);
        }
        if (self.style != nil) {
            try container.encode(self.style, forKey: .style);
        }
        if (self.listLevels != nil) {
            try container.encode(self.listLevels, forKey: .listLevels);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.listId == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "listId");
        }
        if (self.isMultiLevel == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isMultiLevel");
        }
        if (self.isRestartAtEachSection == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isRestartAtEachSection");
        }
        if (self.isListStyleDefinition == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isListStyleDefinition");
        }
        if (self.isListStyleReference == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isListStyleReference");
        }
        try self.style?.validate();
        try self.listLevels?.validate();

    }

    // Sets listId. Gets or sets the unique identifier of the list. You do not normally need to use this property. But if you use it, you normally do so in conjunction with the Aspose.Words.Lists.ListCollection.GetListByListId(System.Int32) method to find a list by its identifier.
    public func setListId(listId : Int?) -> ListInfo {
        self.listId = listId;
        return self;
    }

    // Gets listId. Gets or sets the unique identifier of the list. You do not normally need to use this property. But if you use it, you normally do so in conjunction with the Aspose.Words.Lists.ListCollection.GetListByListId(System.Int32) method to find a list by its identifier.
    public func getListId() -> Int? {
        return self.listId;
    }


    // Sets isMultiLevel. Gets or sets a value indicating whether the list contains 9 levels; false when 1 level. The lists that you create with Aspose.Words are always multi-level lists and contain 9 levels. Microsoft Word 2003 and later always create multi-level lists with 9 levels. But in some documents, created with earlier versions of Microsoft Word you might encounter lists that have 1 level only.
    public func setIsMultiLevel(isMultiLevel : Bool?) -> ListInfo {
        self.isMultiLevel = isMultiLevel;
        return self;
    }

    // Gets isMultiLevel. Gets or sets a value indicating whether the list contains 9 levels; false when 1 level. The lists that you create with Aspose.Words are always multi-level lists and contain 9 levels. Microsoft Word 2003 and later always create multi-level lists with 9 levels. But in some documents, created with earlier versions of Microsoft Word you might encounter lists that have 1 level only.
    public func getIsMultiLevel() -> Bool? {
        return self.isMultiLevel;
    }


    // Sets isRestartAtEachSection. Gets or sets a value indicating whether list should be restarted at each section. The default value is false. This option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if Aspose.Words.Saving.OoxmlCompliance is higher then Aspose.Words.Saving.OoxmlCompliance.Ecma376_2006.
    public func setIsRestartAtEachSection(isRestartAtEachSection : Bool?) -> ListInfo {
        self.isRestartAtEachSection = isRestartAtEachSection;
        return self;
    }

    // Gets isRestartAtEachSection. Gets or sets a value indicating whether list should be restarted at each section. The default value is false. This option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if Aspose.Words.Saving.OoxmlCompliance is higher then Aspose.Words.Saving.OoxmlCompliance.Ecma376_2006.
    public func getIsRestartAtEachSection() -> Bool? {
        return self.isRestartAtEachSection;
    }


    // Sets isListStyleDefinition. Gets or sets a value indicating whether this list is a definition of a list style. When this property is true, the Aspose.Words.Lists.List.Style property returns the list style that this list defines. By modifying properties of a list that defines a list style, you modify The properties of the list style. A list that is a definition of a list style cannot be applied directly to paragraphs to make them numbered. Aspose.Words.Lists.List.Style Aspose.Words.Lists.List.IsListStyleReference.
    public func setIsListStyleDefinition(isListStyleDefinition : Bool?) -> ListInfo {
        self.isListStyleDefinition = isListStyleDefinition;
        return self;
    }

    // Gets isListStyleDefinition. Gets or sets a value indicating whether this list is a definition of a list style. When this property is true, the Aspose.Words.Lists.List.Style property returns the list style that this list defines. By modifying properties of a list that defines a list style, you modify The properties of the list style. A list that is a definition of a list style cannot be applied directly to paragraphs to make them numbered. Aspose.Words.Lists.List.Style Aspose.Words.Lists.List.IsListStyleReference.
    public func getIsListStyleDefinition() -> Bool? {
        return self.isListStyleDefinition;
    }


    // Sets isListStyleReference. Gets or sets a value indicating whether this list is a reference to a list style. Note, modifying properties of a list that is a reference to list style has no effect. The list formatting specified in the list style itself always takes precedence. Aspose.Words.Lists.List.Style Aspose.Words.Lists.List.IsListStyleDefinition.
    public func setIsListStyleReference(isListStyleReference : Bool?) -> ListInfo {
        self.isListStyleReference = isListStyleReference;
        return self;
    }

    // Gets isListStyleReference. Gets or sets a value indicating whether this list is a reference to a list style. Note, modifying properties of a list that is a reference to list style has no effect. The list formatting specified in the list style itself always takes precedence. Aspose.Words.Lists.List.Style Aspose.Words.Lists.List.IsListStyleDefinition.
    public func getIsListStyleReference() -> Bool? {
        return self.isListStyleReference;
    }


    // Sets style. Gets or sets the list style that this list references or defines. If this list is not associated with a list style, the property will return null. A list could be a reference to a list style, in this case Aspose.Words.Lists.List.IsListStyleReference will be true. A list could be a definition of a list style, in this case Aspose.Words.Lists.List.IsListStyleDefinition will be true. Such a list cannot be applied to paragraphs in the document directly.
    public func setStyle(style : Style?) -> ListInfo {
        self.style = style;
        return self;
    }

    // Gets style. Gets or sets the list style that this list references or defines. If this list is not associated with a list style, the property will return null. A list could be a reference to a list style, in this case Aspose.Words.Lists.List.IsListStyleReference will be true. A list could be a definition of a list style, in this case Aspose.Words.Lists.List.IsListStyleDefinition will be true. Such a list cannot be applied to paragraphs in the document directly.
    public func getStyle() -> Style? {
        return self.style;
    }


    // Sets listLevels. Gets or sets the collection of list levels for this list. Use this property to access and modify formatting individual to each level of the list.
    public func setListLevels(listLevels : ListLevels?) -> ListInfo {
        self.listLevels = listLevels;
        return self;
    }

    // Gets listLevels. Gets or sets the collection of list levels for this list. Use this property to access and modify formatting individual to each level of the list.
    public func getListLevels() -> ListLevels? {
        return self.listLevels;
    }
}
