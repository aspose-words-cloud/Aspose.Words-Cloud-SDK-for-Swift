/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StructuredDocumentTagInsert.swift">
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

// DTO container with a StructuredDocumentTag.
public class StructuredDocumentTagInsert : StructuredDocumentTagBase {
    // Gets or sets the level at which this SDT occurs in the document tree.
    public enum Level : String, Codable
    {
        // Enum value "unknown"
        case unknown = "Unknown"

        // Enum value "inline"
        case inline = "Inline"

        // Enum value "block"
        case block = "Block"

        // Enum value "row"
        case row = "Row"

        // Enum value "cell"
        case cell = "Cell"
    }

    // Gets or sets type of this Structured document tag.
    public enum SdtType : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "bibliography"
        case bibliography = "Bibliography"

        // Enum value "citation"
        case citation = "Citation"

        // Enum value "equation"
        case equation = "Equation"

        // Enum value "dropDownList"
        case dropDownList = "DropDownList"

        // Enum value "comboBox"
        case comboBox = "ComboBox"

        // Enum value "date"
        case date = "Date"

        // Enum value "buildingBlockGallery"
        case buildingBlockGallery = "BuildingBlockGallery"

        // Enum value "docPartObj"
        case docPartObj = "DocPartObj"

        // Enum value "group"
        case group = "Group"

        // Enum value "picture"
        case picture = "Picture"

        // Enum value "richText"
        case richText = "RichText"

        // Enum value "plainText"
        case plainText = "PlainText"

        // Enum value "checkbox"
        case checkbox = "Checkbox"

        // Enum value "repeatingSection"
        case repeatingSection = "RepeatingSection"

        // Enum value "repeatingSectionItem"
        case repeatingSectionItem = "RepeatingSectionItem"

        // Enum value "entityPicker"
        case entityPicker = "EntityPicker"
    }

    // Field of level. DTO container with a StructuredDocumentTag.
    private var _level : Level? = nil;

    public var level : Level? {
        get {
            return self._level;
        }
        set {
            self._level = newValue;
        }
    }

    // Field of sdtType. DTO container with a StructuredDocumentTag.
    private var _sdtType : SdtType? = nil;

    public var sdtType : SdtType? {
        get {
            return self._sdtType;
        }
        set {
            self._sdtType = newValue;
        }
    }

    // Field of position. DTO container with a StructuredDocumentTag.
    private var _position : Position? = nil;

    public var position : Position? {
        get {
            return self._position;
        }
        set {
            self._position = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case level = "Level";
        case sdtType = "SdtType";
        case position = "Position";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_level = json["Level"] as? String {
            self.level = Level(rawValue: raw_level);
        }

        if let raw_sdtType = json["SdtType"] as? String {
            self.sdtType = SdtType(rawValue: raw_sdtType);
        }

        if let raw_position = json["Position"] as? [String: Any] {
            self.position = try ObjectSerializer.deserialize(type: Position.self, from: raw_position);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.level = try container.decodeIfPresent(Level.self, forKey: .level);
        self.sdtType = try container.decodeIfPresent(SdtType.self, forKey: .sdtType);
        self.position = try container.decodeIfPresent(Position.self, forKey: .position);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.level != nil) {
            try container.encode(self.level, forKey: .level);
        }
        if (self.sdtType != nil) {
            try container.encode(self.sdtType, forKey: .sdtType);
        }
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.level == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "level");
        }
        if (self.sdtType == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "sdtType");
        }
        try self.position?.validate();

    }

    // Sets level. Gets or sets the level at which this SDT occurs in the document tree.
    public func setLevel(level : Level?) -> StructuredDocumentTagInsert {
        self.level = level;
        return self;
    }

    // Gets level. Gets or sets the level at which this SDT occurs in the document tree.
    public func getLevel() -> Level? {
        return self.level;
    }


    // Sets sdtType. Gets or sets type of this Structured document tag.
    public func setSdtType(sdtType : SdtType?) -> StructuredDocumentTagInsert {
        self.sdtType = sdtType;
        return self;
    }

    // Gets sdtType. Gets or sets type of this Structured document tag.
    public func getSdtType() -> SdtType? {
        return self.sdtType;
    }


    // Sets position. Gets or sets the position of the node that will be used to determine the placement of a new node.
    public func setPosition(position : Position?) -> StructuredDocumentTagInsert {
        self.position = position;
        return self;
    }

    // Gets position. Gets or sets the position of the node that will be used to determine the placement of a new node.
    public func getPosition() -> Position? {
        return self.position;
    }
}
