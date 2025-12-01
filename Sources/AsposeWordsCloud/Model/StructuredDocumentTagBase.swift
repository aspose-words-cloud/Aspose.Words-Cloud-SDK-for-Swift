/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StructuredDocumentTagBase.swift">
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

// DTO container with a StructuredDocumentTagBaseDto.
public class StructuredDocumentTagBase : NodeLink {
    // Gets or sets the appearance of a structured document tag.
    public enum Appearance : String, Codable
    {
        // Enum value "boundingBox"
        case boundingBox = "BoundingBox"

        // Enum value "_default"
        case _default = "Default"

        // Enum value "tags"
        case tags = "Tags"

        // Enum value "hidden"
        case hidden = "Hidden"
    }

    // Gets or sets format in which the date for a date SDT is stored when the SDT is bound to an XML node in the document's data store.
    // The default value is Aspose.Words.Markup.SdtDateStorageFormat.DateTime.
    // Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type.
    // For all other SDT types, an exception will occur.
    public enum DateStorageFormat : String, Codable
    {
        // Enum value "date"
        case date = "Date"

        // Enum value "dateTime"
        case dateTime = "DateTime"

        // Enum value "_default"
        case _default = "Default"

        // Enum value "text"
        case text = "Text"
    }

    // Gets or sets the type of calendar for this SDT. Default is Aspose.Words.Markup.SdtCalendarType.Default.
    // Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type.
    // For all other SDT types, an exception will occur.
    public enum CalendarType : String, Codable
    {
        // Enum value "_default"
        case _default = "Default"

        // Enum value "gregorian"
        case gregorian = "Gregorian"

        // Enum value "gregorianArabic"
        case gregorianArabic = "GregorianArabic"

        // Enum value "gregorianMeFrench"
        case gregorianMeFrench = "GregorianMeFrench"

        // Enum value "gregorianUs"
        case gregorianUs = "GregorianUs"

        // Enum value "gregorianXlitEnglish"
        case gregorianXlitEnglish = "GregorianXlitEnglish"

        // Enum value "gregorianXlitFrench"
        case gregorianXlitFrench = "GregorianXlitFrench"

        // Enum value "hebrew"
        case hebrew = "Hebrew"

        // Enum value "hijri"
        case hijri = "Hijri"

        // Enum value "japan"
        case japan = "Japan"

        // Enum value "korea"
        case korea = "Korea"

        // Enum value "_none"
        case _none = "None"

        // Enum value "saka"
        case saka = "Saka"

        // Enum value "taiwan"
        case taiwan = "Taiwan"

        // Enum value "thai"
        case thai = "Thai"
    }

    // Field of listItems. DTO container with a StructuredDocumentTagBaseDto.
    private var _listItems : [StructuredDocumentTagListItem]? = nil;

    public var listItems : [StructuredDocumentTagListItem]? {
        get {
            return self._listItems;
        }
        set {
            self._listItems = newValue;
        }
    }

    // Field of checked. DTO container with a StructuredDocumentTagBaseDto.
    private var _checked : Bool? = nil;

    public var checked : Bool? {
        get {
            return self._checked;
        }
        set {
            self._checked = newValue;
        }
    }

    // Field of appearance. DTO container with a StructuredDocumentTagBaseDto.
    private var _appearance : Appearance? = nil;

    public var appearance : Appearance? {
        get {
            return self._appearance;
        }
        set {
            self._appearance = newValue;
        }
    }

    // Field of dateDisplayLocale. DTO container with a StructuredDocumentTagBaseDto.
    private var _dateDisplayLocale : Int? = nil;

    public var dateDisplayLocale : Int? {
        get {
            return self._dateDisplayLocale;
        }
        set {
            self._dateDisplayLocale = newValue;
        }
    }

    // Field of dateDisplayFormat. DTO container with a StructuredDocumentTagBaseDto.
    private var _dateDisplayFormat : String? = nil;

    public var dateDisplayFormat : String? {
        get {
            return self._dateDisplayFormat;
        }
        set {
            self._dateDisplayFormat = newValue;
        }
    }

    // Field of fullDate. DTO container with a StructuredDocumentTagBaseDto.
    private var _fullDate : Date? = nil;

    public var fullDate : Date? {
        get {
            return self._fullDate;
        }
        set {
            self._fullDate = newValue;
        }
    }

    // Field of title. DTO container with a StructuredDocumentTagBaseDto.
    private var _title : String? = nil;

    public var title : String? {
        get {
            return self._title;
        }
        set {
            self._title = newValue;
        }
    }

    // Field of dateStorageFormat. DTO container with a StructuredDocumentTagBaseDto.
    private var _dateStorageFormat : DateStorageFormat? = nil;

    public var dateStorageFormat : DateStorageFormat? {
        get {
            return self._dateStorageFormat;
        }
        set {
            self._dateStorageFormat = newValue;
        }
    }

    // Field of buildingBlockGallery. DTO container with a StructuredDocumentTagBaseDto.
    private var _buildingBlockGallery : String? = nil;

    public var buildingBlockGallery : String? {
        get {
            return self._buildingBlockGallery;
        }
        set {
            self._buildingBlockGallery = newValue;
        }
    }

    // Field of buildingBlockCategory. DTO container with a StructuredDocumentTagBaseDto.
    private var _buildingBlockCategory : String? = nil;

    public var buildingBlockCategory : String? {
        get {
            return self._buildingBlockCategory;
        }
        set {
            self._buildingBlockCategory = newValue;
        }
    }

    // Field of multiline. DTO container with a StructuredDocumentTagBaseDto.
    private var _multiline : Bool? = nil;

    public var multiline : Bool? {
        get {
            return self._multiline;
        }
        set {
            self._multiline = newValue;
        }
    }

    // Field of color. DTO container with a StructuredDocumentTagBaseDto.
    private var _color : XmlColor? = nil;

    public var color : XmlColor? {
        get {
            return self._color;
        }
        set {
            self._color = newValue;
        }
    }

    // Field of styleName. DTO container with a StructuredDocumentTagBaseDto.
    private var _styleName : String? = nil;

    public var styleName : String? {
        get {
            return self._styleName;
        }
        set {
            self._styleName = newValue;
        }
    }

    // Field of calendarType. DTO container with a StructuredDocumentTagBaseDto.
    private var _calendarType : CalendarType? = nil;

    public var calendarType : CalendarType? {
        get {
            return self._calendarType;
        }
        set {
            self._calendarType = newValue;
        }
    }

    // Field of isTemporary. DTO container with a StructuredDocumentTagBaseDto.
    private var _isTemporary : Bool? = nil;

    public var isTemporary : Bool? {
        get {
            return self._isTemporary;
        }
        set {
            self._isTemporary = newValue;
        }
    }

    // Field of placeholderName. DTO container with a StructuredDocumentTagBaseDto.
    private var _placeholderName : String? = nil;

    public var placeholderName : String? {
        get {
            return self._placeholderName;
        }
        set {
            self._placeholderName = newValue;
        }
    }

    // Field of lockContentControl. DTO container with a StructuredDocumentTagBaseDto.
    private var _lockContentControl : Bool? = nil;

    public var lockContentControl : Bool? {
        get {
            return self._lockContentControl;
        }
        set {
            self._lockContentControl = newValue;
        }
    }

    // Field of lockContents. DTO container with a StructuredDocumentTagBaseDto.
    private var _lockContents : Bool? = nil;

    public var lockContents : Bool? {
        get {
            return self._lockContents;
        }
        set {
            self._lockContents = newValue;
        }
    }

    // Field of isShowingPlaceholderText. DTO container with a StructuredDocumentTagBaseDto.
    private var _isShowingPlaceholderText : Bool? = nil;

    public var isShowingPlaceholderText : Bool? {
        get {
            return self._isShowingPlaceholderText;
        }
        set {
            self._isShowingPlaceholderText = newValue;
        }
    }

    // Field of tag. DTO container with a StructuredDocumentTagBaseDto.
    private var _tag : String? = nil;

    public var tag : String? {
        get {
            return self._tag;
        }
        set {
            self._tag = newValue;
        }
    }

    // Field of id. DTO container with a StructuredDocumentTagBaseDto.
    private var _id : Int? = nil;

    public var id : Int? {
        get {
            return self._id;
        }
        set {
            self._id = newValue;
        }
    }

    // Field of wordOpenXML. DTO container with a StructuredDocumentTagBaseDto.
    private final let _wordOpenXML : String? = nil;

    public var wordOpenXML : String? {
        get {
            return self._wordOpenXML;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case listItems = "ListItems";
        case checked = "Checked";
        case appearance = "Appearance";
        case dateDisplayLocale = "DateDisplayLocale";
        case dateDisplayFormat = "DateDisplayFormat";
        case fullDate = "FullDate";
        case title = "Title";
        case dateStorageFormat = "DateStorageFormat";
        case buildingBlockGallery = "BuildingBlockGallery";
        case buildingBlockCategory = "BuildingBlockCategory";
        case multiline = "Multiline";
        case color = "Color";
        case styleName = "StyleName";
        case calendarType = "CalendarType";
        case isTemporary = "IsTemporary";
        case placeholderName = "PlaceholderName";
        case lockContentControl = "LockContentControl";
        case lockContents = "LockContents";
        case isShowingPlaceholderText = "IsShowingPlaceholderText";
        case tag = "Tag";
        case id = "Id";
        case wordOpenXML = "WordOpenXML";
        case invalidCodingKey;
    }

    internal override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_listItems = json["ListItems"] as? [Any] {
            self.listItems = try raw_listItems.map {
                if let element_listItems = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: StructuredDocumentTagListItem.self, from: element_listItems);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "StructuredDocumentTagListItem");
                }
            };
        }

        self.checked = json["Checked"] as? Bool;
        if let raw_appearance = json["Appearance"] as? String {
            self.appearance = Appearance(rawValue: raw_appearance);
        }

        self.dateDisplayLocale = json["DateDisplayLocale"] as? Int;
        self.dateDisplayFormat = json["DateDisplayFormat"] as? String;
        if let raw_fullDate = json["FullDate"] as? String {
            self.fullDate = ObjectSerializer.customIso8601.date(from: raw_fullDate);
        }

        self.title = json["Title"] as? String;
        if let raw_dateStorageFormat = json["DateStorageFormat"] as? String {
            self.dateStorageFormat = DateStorageFormat(rawValue: raw_dateStorageFormat);
        }

        self.buildingBlockGallery = json["BuildingBlockGallery"] as? String;
        self.buildingBlockCategory = json["BuildingBlockCategory"] as? String;
        self.multiline = json["Multiline"] as? Bool;
        if let raw_color = json["Color"] as? [String: Any] {
            self.color = try ObjectSerializer.deserialize(type: XmlColor.self, from: raw_color);
        }

        self.styleName = json["StyleName"] as? String;
        if let raw_calendarType = json["CalendarType"] as? String {
            self.calendarType = CalendarType(rawValue: raw_calendarType);
        }

        self.isTemporary = json["IsTemporary"] as? Bool;
        self.placeholderName = json["PlaceholderName"] as? String;
        self.lockContentControl = json["LockContentControl"] as? Bool;
        self.lockContents = json["LockContents"] as? Bool;
        self.isShowingPlaceholderText = json["IsShowingPlaceholderText"] as? Bool;
        self.tag = json["Tag"] as? String;
        self.id = json["Id"] as? Int;

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.listItems = try container.decodeIfPresent([StructuredDocumentTagListItem].self, forKey: .listItems);
        self.checked = try container.decodeIfPresent(Bool.self, forKey: .checked);
        self.appearance = try container.decodeIfPresent(Appearance.self, forKey: .appearance);
        self.dateDisplayLocale = try container.decodeIfPresent(Int.self, forKey: .dateDisplayLocale);
        self.dateDisplayFormat = try container.decodeIfPresent(String.self, forKey: .dateDisplayFormat);
        var raw_fullDate = try container.decodeIfPresent(String.self, forKey: .fullDate);
        if (raw_fullDate != nil) {
            raw_fullDate = raw_fullDate!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.fullDate = ObjectSerializer.customIso8601.date(from: raw_fullDate!)!;
        }

        self.title = try container.decodeIfPresent(String.self, forKey: .title);
        self.dateStorageFormat = try container.decodeIfPresent(DateStorageFormat.self, forKey: .dateStorageFormat);
        self.buildingBlockGallery = try container.decodeIfPresent(String.self, forKey: .buildingBlockGallery);
        self.buildingBlockCategory = try container.decodeIfPresent(String.self, forKey: .buildingBlockCategory);
        self.multiline = try container.decodeIfPresent(Bool.self, forKey: .multiline);
        self.color = try container.decodeIfPresent(XmlColor.self, forKey: .color);
        self.styleName = try container.decodeIfPresent(String.self, forKey: .styleName);
        self.calendarType = try container.decodeIfPresent(CalendarType.self, forKey: .calendarType);
        self.isTemporary = try container.decodeIfPresent(Bool.self, forKey: .isTemporary);
        self.placeholderName = try container.decodeIfPresent(String.self, forKey: .placeholderName);
        self.lockContentControl = try container.decodeIfPresent(Bool.self, forKey: .lockContentControl);
        self.lockContents = try container.decodeIfPresent(Bool.self, forKey: .lockContents);
        self.isShowingPlaceholderText = try container.decodeIfPresent(Bool.self, forKey: .isShowingPlaceholderText);
        self.tag = try container.decodeIfPresent(String.self, forKey: .tag);
        self.id = try container.decodeIfPresent(Int.self, forKey: .id);

    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.listItems != nil) {
            try container.encode(self.listItems, forKey: .listItems);
        }
        if (self.checked != nil) {
            try container.encode(self.checked, forKey: .checked);
        }
        if (self.appearance != nil) {
            try container.encode(self.appearance, forKey: .appearance);
        }
        if (self.dateDisplayLocale != nil) {
            try container.encode(self.dateDisplayLocale, forKey: .dateDisplayLocale);
        }
        if (self.dateDisplayFormat != nil) {
            try container.encode(self.dateDisplayFormat, forKey: .dateDisplayFormat);
        }
        if (self.fullDate != nil) {
            try container.encode(self.fullDate, forKey: .fullDate);
        }
        if (self.title != nil) {
            try container.encode(self.title, forKey: .title);
        }
        if (self.dateStorageFormat != nil) {
            try container.encode(self.dateStorageFormat, forKey: .dateStorageFormat);
        }
        if (self.buildingBlockGallery != nil) {
            try container.encode(self.buildingBlockGallery, forKey: .buildingBlockGallery);
        }
        if (self.buildingBlockCategory != nil) {
            try container.encode(self.buildingBlockCategory, forKey: .buildingBlockCategory);
        }
        if (self.multiline != nil) {
            try container.encode(self.multiline, forKey: .multiline);
        }
        if (self.color != nil) {
            try container.encode(self.color, forKey: .color);
        }
        if (self.styleName != nil) {
            try container.encode(self.styleName, forKey: .styleName);
        }
        if (self.calendarType != nil) {
            try container.encode(self.calendarType, forKey: .calendarType);
        }
        if (self.isTemporary != nil) {
            try container.encode(self.isTemporary, forKey: .isTemporary);
        }
        if (self.placeholderName != nil) {
            try container.encode(self.placeholderName, forKey: .placeholderName);
        }
        if (self.lockContentControl != nil) {
            try container.encode(self.lockContentControl, forKey: .lockContentControl);
        }
        if (self.lockContents != nil) {
            try container.encode(self.lockContents, forKey: .lockContents);
        }
        if (self.isShowingPlaceholderText != nil) {
            try container.encode(self.isShowingPlaceholderText, forKey: .isShowingPlaceholderText);
        }
        if (self.tag != nil) {
            try container.encode(self.tag, forKey: .tag);
        }
        if (self.id != nil) {
            try container.encode(self.id, forKey: .id);
        }
        if (self.wordOpenXML != nil) {
            try container.encode(self.wordOpenXML, forKey: .wordOpenXML);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.listItems != nil) {
            for elementListItems in self.listItems! {
                try elementListItems.validate();
            }
        }
        try self.color?.validate();

    }

    // Sets listItems. Gets or sets Aspose.Words.Markup.SdtListItemCollection associated with this SDT. Accessing this property will work only for Aspose.Words.Markup.SdtType.ComboBox or Aspose.Words.Markup.SdtType.DropDownList SDT types. For all other SDT types, an exception will occur.
    public func setListItems(listItems : [StructuredDocumentTagListItem]?) -> StructuredDocumentTagBase {
        self.listItems = listItems;
        return self;
    }

    // Gets listItems. Gets or sets Aspose.Words.Markup.SdtListItemCollection associated with this SDT. Accessing this property will work only for Aspose.Words.Markup.SdtType.ComboBox or Aspose.Words.Markup.SdtType.DropDownList SDT types. For all other SDT types, an exception will occur.
    public func getListItems() -> [StructuredDocumentTagListItem]? {
        return self.listItems;
    }


    // Sets checked. Gets or sets a value indicating whether current state of the Checkbox SDT. Default value for this property. Accessing this property will work only for Aspose.Words.Markup.SdtType.Checkbox SDT types. For all other SDT types, an exception will occur.
    public func setChecked(checked : Bool?) -> StructuredDocumentTagBase {
        self.checked = checked;
        return self;
    }

    // Gets checked. Gets or sets a value indicating whether current state of the Checkbox SDT. Default value for this property. Accessing this property will work only for Aspose.Words.Markup.SdtType.Checkbox SDT types. For all other SDT types, an exception will occur.
    public func getChecked() -> Bool? {
        return self.checked;
    }


    // Sets appearance. Gets or sets the appearance of a structured document tag.
    public func setAppearance(appearance : Appearance?) -> StructuredDocumentTagBase {
        self.appearance = appearance;
        return self;
    }

    // Gets appearance. Gets or sets the appearance of a structured document tag.
    public func getAppearance() -> Appearance? {
        return self.appearance;
    }


    // Sets dateDisplayLocale. Gets or sets the language format for the date displayed in this SDT. Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func setDateDisplayLocale(dateDisplayLocale : Int?) -> StructuredDocumentTagBase {
        self.dateDisplayLocale = dateDisplayLocale;
        return self;
    }

    // Gets dateDisplayLocale. Gets or sets the language format for the date displayed in this SDT. Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func getDateDisplayLocale() -> Int? {
        return self.dateDisplayLocale;
    }


    // Sets dateDisplayFormat. Gets or sets String that represents the format in which dates are displayed. Can not be null. The dates for English (U.S.) is "mm/dd/yyyy". Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func setDateDisplayFormat(dateDisplayFormat : String?) -> StructuredDocumentTagBase {
        self.dateDisplayFormat = dateDisplayFormat;
        return self;
    }

    // Gets dateDisplayFormat. Gets or sets String that represents the format in which dates are displayed. Can not be null. The dates for English (U.S.) is "mm/dd/yyyy". Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func getDateDisplayFormat() -> String? {
        return self.dateDisplayFormat;
    }


    // Sets fullDate. Gets or sets the full date and time last entered into this SDT. Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func setFullDate(fullDate : Date?) -> StructuredDocumentTagBase {
        self.fullDate = fullDate;
        return self;
    }

    // Gets fullDate. Gets or sets the full date and time last entered into this SDT. Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func getFullDate() -> Date? {
        return self.fullDate;
    }


    // Sets title. Gets or sets the friendly name associated with this SDT. Can not be null.
    public func setTitle(title : String?) -> StructuredDocumentTagBase {
        self.title = title;
        return self;
    }

    // Gets title. Gets or sets the friendly name associated with this SDT. Can not be null.
    public func getTitle() -> String? {
        return self.title;
    }


    // Sets dateStorageFormat. Gets or sets format in which the date for a date SDT is stored when the SDT is bound to an XML node in the document's data store. The default value is Aspose.Words.Markup.SdtDateStorageFormat.DateTime. Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func setDateStorageFormat(dateStorageFormat : DateStorageFormat?) -> StructuredDocumentTagBase {
        self.dateStorageFormat = dateStorageFormat;
        return self;
    }

    // Gets dateStorageFormat. Gets or sets format in which the date for a date SDT is stored when the SDT is bound to an XML node in the document's data store. The default value is Aspose.Words.Markup.SdtDateStorageFormat.DateTime. Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func getDateStorageFormat() -> DateStorageFormat? {
        return self.dateStorageFormat;
    }


    // Sets buildingBlockGallery. Gets or sets type of building block for this SDT. Can not be null. Accessing this property will work only for Aspose.Words.Markup.SdtType.BuildingBlockGallery and Aspose.Words.Markup.SdtType.DocPartObj SDT types. It is read-only for SDT of the document part type. For all other SDT types, an exception will occur.
    public func setBuildingBlockGallery(buildingBlockGallery : String?) -> StructuredDocumentTagBase {
        self.buildingBlockGallery = buildingBlockGallery;
        return self;
    }

    // Gets buildingBlockGallery. Gets or sets type of building block for this SDT. Can not be null. Accessing this property will work only for Aspose.Words.Markup.SdtType.BuildingBlockGallery and Aspose.Words.Markup.SdtType.DocPartObj SDT types. It is read-only for SDT of the document part type. For all other SDT types, an exception will occur.
    public func getBuildingBlockGallery() -> String? {
        return self.buildingBlockGallery;
    }


    // Sets buildingBlockCategory. Gets or sets category of building block for this SDT node. Can not be null. Accessing this property will work only for Aspose.Words.Markup.SdtType.BuildingBlockGallery and Aspose.Words.Markup.SdtType.DocPartObj SDT types. It is read-only for SDT of the document part type. For all other SDT types, an exception will occur.
    public func setBuildingBlockCategory(buildingBlockCategory : String?) -> StructuredDocumentTagBase {
        self.buildingBlockCategory = buildingBlockCategory;
        return self;
    }

    // Gets buildingBlockCategory. Gets or sets category of building block for this SDT node. Can not be null. Accessing this property will work only for Aspose.Words.Markup.SdtType.BuildingBlockGallery and Aspose.Words.Markup.SdtType.DocPartObj SDT types. It is read-only for SDT of the document part type. For all other SDT types, an exception will occur.
    public func getBuildingBlockCategory() -> String? {
        return self.buildingBlockCategory;
    }


    // Sets multiline. Gets or sets a value indicating whether this SDT allows multiple lines of text. Accessing this property will work only for Aspose.Words.Markup.SdtType.RichText and Aspose.Words.Markup.SdtType.PlainText SDT type. For all other SDT types, an exception will occur.
    public func setMultiline(multiline : Bool?) -> StructuredDocumentTagBase {
        self.multiline = multiline;
        return self;
    }

    // Gets multiline. Gets or sets a value indicating whether this SDT allows multiple lines of text. Accessing this property will work only for Aspose.Words.Markup.SdtType.RichText and Aspose.Words.Markup.SdtType.PlainText SDT type. For all other SDT types, an exception will occur.
    public func getMultiline() -> Bool? {
        return self.multiline;
    }


    // Sets color. Gets or sets the color of the structured document tag.
    public func setColor(color : XmlColor?) -> StructuredDocumentTagBase {
        self.color = color;
        return self;
    }

    // Gets color. Gets or sets the color of the structured document tag.
    public func getColor() -> XmlColor? {
        return self.color;
    }


    // Sets styleName. Gets or sets the name of the style applied to the structured document tag.
    public func setStyleName(styleName : String?) -> StructuredDocumentTagBase {
        self.styleName = styleName;
        return self;
    }

    // Gets styleName. Gets or sets the name of the style applied to the structured document tag.
    public func getStyleName() -> String? {
        return self.styleName;
    }


    // Sets calendarType. Gets or sets the type of calendar for this SDT. Default is Aspose.Words.Markup.SdtCalendarType.Default. Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func setCalendarType(calendarType : CalendarType?) -> StructuredDocumentTagBase {
        self.calendarType = calendarType;
        return self;
    }

    // Gets calendarType. Gets or sets the type of calendar for this SDT. Default is Aspose.Words.Markup.SdtCalendarType.Default. Accessing this property will work only for Aspose.Words.Markup.SdtType.Date SDT type. For all other SDT types, an exception will occur.
    public func getCalendarType() -> CalendarType? {
        return self.calendarType;
    }


    // Sets isTemporary. Gets or sets a value indicating whether this SDT shall be removed from the WordProcessingML document when its contents are modified.
    public func setIsTemporary(isTemporary : Bool?) -> StructuredDocumentTagBase {
        self.isTemporary = isTemporary;
        return self;
    }

    // Gets isTemporary. Gets or sets a value indicating whether this SDT shall be removed from the WordProcessingML document when its contents are modified.
    public func getIsTemporary() -> Bool? {
        return self.isTemporary;
    }


    // Sets placeholderName. Gets or sets Name of the Aspose.Words.BuildingBlocks.BuildingBlock containing placeholder text. Aspose.Words.BuildingBlocks.BuildingBlock with this name Aspose.Words.BuildingBlocks.BuildingBlock.Name has to be present in the Aspose.Words.Document.GlossaryDocument otherwise System.InvalidOperationException will occur.
    public func setPlaceholderName(placeholderName : String?) -> StructuredDocumentTagBase {
        self.placeholderName = placeholderName;
        return self;
    }

    // Gets placeholderName. Gets or sets Name of the Aspose.Words.BuildingBlocks.BuildingBlock containing placeholder text. Aspose.Words.BuildingBlocks.BuildingBlock with this name Aspose.Words.BuildingBlocks.BuildingBlock.Name has to be present in the Aspose.Words.Document.GlossaryDocument otherwise System.InvalidOperationException will occur.
    public func getPlaceholderName() -> String? {
        return self.placeholderName;
    }


    // Sets lockContentControl. Gets or sets a value indicating whether, this property will prohibit a user from deleting this SDT.
    public func setLockContentControl(lockContentControl : Bool?) -> StructuredDocumentTagBase {
        self.lockContentControl = lockContentControl;
        return self;
    }

    // Gets lockContentControl. Gets or sets a value indicating whether, this property will prohibit a user from deleting this SDT.
    public func getLockContentControl() -> Bool? {
        return self.lockContentControl;
    }


    // Sets lockContents. Gets or sets a value indicating whether, this property will prohibit a user from editing the contents of this SDT.
    public func setLockContents(lockContents : Bool?) -> StructuredDocumentTagBase {
        self.lockContents = lockContents;
        return self;
    }

    // Gets lockContents. Gets or sets a value indicating whether, this property will prohibit a user from editing the contents of this SDT.
    public func getLockContents() -> Bool? {
        return self.lockContents;
    }


    // Sets isShowingPlaceholderText. Gets or sets a value indicating whether the content of this SDT shall be interpreted to contain placeholder text (as opposed to regular text contents within the SDT). If set to true, this state shall be resumed (showing placeholder text) upon opening his document.
    public func setIsShowingPlaceholderText(isShowingPlaceholderText : Bool?) -> StructuredDocumentTagBase {
        self.isShowingPlaceholderText = isShowingPlaceholderText;
        return self;
    }

    // Gets isShowingPlaceholderText. Gets or sets a value indicating whether the content of this SDT shall be interpreted to contain placeholder text (as opposed to regular text contents within the SDT). If set to true, this state shall be resumed (showing placeholder text) upon opening his document.
    public func getIsShowingPlaceholderText() -> Bool? {
        return self.isShowingPlaceholderText;
    }


    // Sets tag. Gets or sets a tag associated with the current SDT node. Can not be null. A tag is an arbitrary string which applications can associate with SDT in order to identify it without providing a visible friendly name.
    public func setTag(tag : String?) -> StructuredDocumentTagBase {
        self.tag = tag;
        return self;
    }

    // Gets tag. Gets or sets a tag associated with the current SDT node. Can not be null. A tag is an arbitrary string which applications can associate with SDT in order to identify it without providing a visible friendly name.
    public func getTag() -> String? {
        return self.tag;
    }


    // Sets id. Gets or sets a unique read-only persistent numerical Id for this SDT. Id attribute shall follow these rules: - The document shall retain SDT ids only if the whole document is cloned Aspose.Words.Document.Clone. - During Aspose.Words.DocumentBase.ImportNode(Aspose.Words.Node,System.Boolean) - Id shall be retained if import does not cause conflicts with other SDT Ids in the target document. - If multiple SDT nodes specify the same decimal number value for the Id attribute, then the first SDT in the document shall maintain this original Id, and all subsequent - SDT nodes shall have new identifiers assigned to them when the document is loaded. - During standalone SDT Aspose.Words.Markup.StructuredDocumentTag.Clone(System.Boolean,Aspose.Words.INodeCloningListener) operation new unique ID will be generated for the cloned SDT node. - If Id is not specified in the source document, then the SDT node shall have a new unique identifier assigned to it when the document is loaded.
    public func setId(id : Int?) -> StructuredDocumentTagBase {
        self.id = id;
        return self;
    }

    // Gets id. Gets or sets a unique read-only persistent numerical Id for this SDT. Id attribute shall follow these rules: - The document shall retain SDT ids only if the whole document is cloned Aspose.Words.Document.Clone. - During Aspose.Words.DocumentBase.ImportNode(Aspose.Words.Node,System.Boolean) - Id shall be retained if import does not cause conflicts with other SDT Ids in the target document. - If multiple SDT nodes specify the same decimal number value for the Id attribute, then the first SDT in the document shall maintain this original Id, and all subsequent - SDT nodes shall have new identifiers assigned to them when the document is loaded. - During standalone SDT Aspose.Words.Markup.StructuredDocumentTag.Clone(System.Boolean,Aspose.Words.INodeCloningListener) operation new unique ID will be generated for the cloned SDT node. - If Id is not specified in the source document, then the SDT node shall have a new unique identifier assigned to it when the document is loaded.
    public func getId() -> Int? {
        return self.id;
    }


    // Gets wordOpenXML. Gets a string that represents the XML contained within the node in the Aspose.Words.SaveFormat.FlatOpc format.
    public func getWordOpenXML() -> String? {
        return self.wordOpenXML;
    }
}
