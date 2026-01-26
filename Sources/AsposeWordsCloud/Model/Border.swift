/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Border.swift">
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

// Represents a border of an object.
// Borders can be applied to various document elements including paragraph, run of text inside a paragraph or a table cell.
public class Border : LinkElement {
    // Gets or sets the border type.
    public enum BorderType : String, Codable
    {
        // Enum value "bottom"
        case bottom = "Bottom"

        // Enum value "_left"
        case _left = "Left"

        // Enum value "_right"
        case _right = "Right"

        // Enum value "top"
        case top = "Top"

        // Enum value "horizontal"
        case horizontal = "Horizontal"

        // Enum value "vertical"
        case vertical = "Vertical"

        // Enum value "diagonalDown"
        case diagonalDown = "DiagonalDown"

        // Enum value "diagonalUp"
        case diagonalUp = "DiagonalUp"

        // Enum value "_none"
        case _none = "None"
    }

    // Gets or sets the border style.
    // If you set line style to none, then line width is automatically changed to zero.
    public enum LineStyle : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "single"
        case single = "Single"

        // Enum value "thick"
        case thick = "Thick"

        // Enum value "double"
        case double = "Double"

        // Enum value "hairline"
        case hairline = "Hairline"

        // Enum value "dot"
        case dot = "Dot"

        // Enum value "dashLargeGap"
        case dashLargeGap = "DashLargeGap"

        // Enum value "dotDash"
        case dotDash = "DotDash"

        // Enum value "dotDotDash"
        case dotDotDash = "DotDotDash"

        // Enum value "triple"
        case triple = "Triple"

        // Enum value "thinThickSmallGap"
        case thinThickSmallGap = "ThinThickSmallGap"

        // Enum value "thickThinSmallGap"
        case thickThinSmallGap = "ThickThinSmallGap"

        // Enum value "thinThickThinSmallGap"
        case thinThickThinSmallGap = "ThinThickThinSmallGap"

        // Enum value "thinThickMediumGap"
        case thinThickMediumGap = "ThinThickMediumGap"

        // Enum value "thickThinMediumGap"
        case thickThinMediumGap = "ThickThinMediumGap"

        // Enum value "thinThickThinMediumGap"
        case thinThickThinMediumGap = "ThinThickThinMediumGap"

        // Enum value "thinThickLargeGap"
        case thinThickLargeGap = "ThinThickLargeGap"

        // Enum value "thickThinLargeGap"
        case thickThinLargeGap = "ThickThinLargeGap"

        // Enum value "thinThickThinLargeGap"
        case thinThickThinLargeGap = "ThinThickThinLargeGap"

        // Enum value "wave"
        case wave = "Wave"

        // Enum value "doubleWave"
        case doubleWave = "DoubleWave"

        // Enum value "dashSmallGap"
        case dashSmallGap = "DashSmallGap"

        // Enum value "dashDotStroker"
        case dashDotStroker = "DashDotStroker"

        // Enum value "emboss3D"
        case emboss3D = "Emboss3D"

        // Enum value "engrave3D"
        case engrave3D = "Engrave3D"

        // Enum value "outset"
        case outset = "Outset"

        // Enum value "inset"
        case inset = "Inset"
    }

    // Field of borderType. Represents a border of an object. Borders can be applied to various document elements including paragraph, run of text inside a paragraph or a table cell.
    private var _borderType : BorderType? = nil;

    public var borderType : BorderType? {
        get {
            return self._borderType;
        }
        set {
            self._borderType = newValue;
        }
    }

    // Field of color. Represents a border of an object. Borders can be applied to various document elements including paragraph, run of text inside a paragraph or a table cell.
    private var _color : XmlColor? = nil;

    public var color : XmlColor? {
        get {
            return self._color;
        }
        set {
            self._color = newValue;
        }
    }

    // Field of distanceFromText. Represents a border of an object. Borders can be applied to various document elements including paragraph, run of text inside a paragraph or a table cell.
    private var _distanceFromText : Double? = nil;

    public var distanceFromText : Double? {
        get {
            return self._distanceFromText;
        }
        set {
            self._distanceFromText = newValue;
        }
    }

    // Field of lineStyle. Represents a border of an object. Borders can be applied to various document elements including paragraph, run of text inside a paragraph or a table cell.
    private var _lineStyle : LineStyle? = nil;

    public var lineStyle : LineStyle? {
        get {
            return self._lineStyle;
        }
        set {
            self._lineStyle = newValue;
        }
    }

    // Field of lineWidth. Represents a border of an object. Borders can be applied to various document elements including paragraph, run of text inside a paragraph or a table cell.
    private var _lineWidth : Double? = nil;

    public var lineWidth : Double? {
        get {
            return self._lineWidth;
        }
        set {
            self._lineWidth = newValue;
        }
    }

    // Field of shadow. Represents a border of an object. Borders can be applied to various document elements including paragraph, run of text inside a paragraph or a table cell.
    private var _shadow : Bool? = nil;

    public var shadow : Bool? {
        get {
            return self._shadow;
        }
        set {
            self._shadow = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case borderType = "BorderType";
        case color = "Color";
        case distanceFromText = "DistanceFromText";
        case lineStyle = "LineStyle";
        case lineWidth = "LineWidth";
        case shadow = "Shadow";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_borderType = json["BorderType"] as? String {
            self.borderType = BorderType(rawValue: raw_borderType);
        }

        if let raw_color = json["Color"] as? [String: Any] {
            self.color = try ObjectSerializer.deserialize(type: XmlColor.self, from: raw_color);
        }

        self.distanceFromText = json["DistanceFromText"] as? Double;
        if let raw_lineStyle = json["LineStyle"] as? String {
            self.lineStyle = LineStyle(rawValue: raw_lineStyle);
        }

        self.lineWidth = json["LineWidth"] as? Double;
        self.shadow = json["Shadow"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.borderType = try container.decodeIfPresent(BorderType.self, forKey: .borderType);
        self.color = try container.decodeIfPresent(XmlColor.self, forKey: .color);
        self.distanceFromText = try container.decodeIfPresent(Double.self, forKey: .distanceFromText);
        self.lineStyle = try container.decodeIfPresent(LineStyle.self, forKey: .lineStyle);
        self.lineWidth = try container.decodeIfPresent(Double.self, forKey: .lineWidth);
        self.shadow = try container.decodeIfPresent(Bool.self, forKey: .shadow);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.borderType != nil) {
            try container.encode(self.borderType, forKey: .borderType);
        }
        if (self.color != nil) {
            try container.encode(self.color, forKey: .color);
        }
        if (self.distanceFromText != nil) {
            try container.encode(self.distanceFromText, forKey: .distanceFromText);
        }
        if (self.lineStyle != nil) {
            try container.encode(self.lineStyle, forKey: .lineStyle);
        }
        if (self.lineWidth != nil) {
            try container.encode(self.lineWidth, forKey: .lineWidth);
        }
        if (self.shadow != nil) {
            try container.encode(self.shadow, forKey: .shadow);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.color?.validate();

    }

    // Sets borderType. Gets or sets the border type.
    public func setBorderType(borderType : BorderType?) -> Border {
        self.borderType = borderType;
        return self;
    }

    // Gets borderType. Gets or sets the border type.
    public func getBorderType() -> BorderType? {
        return self.borderType;
    }


    // Sets color. Gets or sets the border color.
    public func setColor(color : XmlColor?) -> Border {
        self.color = color;
        return self;
    }

    // Gets color. Gets or sets the border color.
    public func getColor() -> XmlColor? {
        return self.color;
    }


    // Sets distanceFromText. Gets or sets the distance of the border from text or from the page edge in points. Has no effect and will be automatically reset to zero for borders of table cells.
    public func setDistanceFromText(distanceFromText : Double?) -> Border {
        self.distanceFromText = distanceFromText;
        return self;
    }

    // Gets distanceFromText. Gets or sets the distance of the border from text or from the page edge in points. Has no effect and will be automatically reset to zero for borders of table cells.
    public func getDistanceFromText() -> Double? {
        return self.distanceFromText;
    }


    // Sets lineStyle. Gets or sets the border style. If you set line style to none, then line width is automatically changed to zero.
    public func setLineStyle(lineStyle : LineStyle?) -> Border {
        self.lineStyle = lineStyle;
        return self;
    }

    // Gets lineStyle. Gets or sets the border style. If you set line style to none, then line width is automatically changed to zero.
    public func getLineStyle() -> LineStyle? {
        return self.lineStyle;
    }


    // Sets lineWidth. Gets or sets the border width in points. If you set line width greater than zero when line style is none, the line style is automatically changed to single line.
    public func setLineWidth(lineWidth : Double?) -> Border {
        self.lineWidth = lineWidth;
        return self;
    }

    // Gets lineWidth. Gets or sets the border width in points. If you set line width greater than zero when line style is none, the line style is automatically changed to single line.
    public func getLineWidth() -> Double? {
        return self.lineWidth;
    }


    // Sets shadow. Gets or sets a value indicating whether the border has a shadow. In Microsoft Word, for a border to have a shadow, the borders on all four sides (left, top, right and bottom) should be of the same type, width, color and all should have the Shadow property set to true.
    public func setShadow(shadow : Bool?) -> Border {
        self.shadow = shadow;
        return self;
    }

    // Gets shadow. Gets or sets a value indicating whether the border has a shadow. In Microsoft Word, for a border to have a shadow, the borders on all four sides (left, top, right and bottom) should be of the same type, width, color and all should have the Shadow property set to true.
    public func getShadow() -> Bool? {
        return self.shadow;
    }
}
