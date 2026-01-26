/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DrawingObjectInsert.swift">
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

// Drawing object element for insert.
public class DrawingObjectInsert : Codable, WordsApiModel {
    // Gets or sets the relative horizontal position, from which the distance to the image is measured.
    public enum RelativeHorizontalPosition : String, Codable
    {
        // Enum value "margin"
        case margin = "Margin"

        // Enum value "page"
        case page = "Page"

        // Enum value "column"
        case column = "Column"

        // Enum value "_default"
        case _default = "Default"

        // Enum value "character"
        case character = "Character"

        // Enum value "leftMargin"
        case leftMargin = "LeftMargin"

        // Enum value "rightMargin"
        case rightMargin = "RightMargin"

        // Enum value "insideMargin"
        case insideMargin = "InsideMargin"

        // Enum value "outsideMargin"
        case outsideMargin = "OutsideMargin"
    }

    // Gets or sets the relative vertical position, from which the distance to the image is measured.
    public enum RelativeVerticalPosition : String, Codable
    {
        // Enum value "margin"
        case margin = "Margin"

        // Enum value "tableDefault"
        case tableDefault = "TableDefault"

        // Enum value "page"
        case page = "Page"

        // Enum value "paragraph"
        case paragraph = "Paragraph"

        // Enum value "textFrameDefault"
        case textFrameDefault = "TextFrameDefault"

        // Enum value "line"
        case line = "Line"

        // Enum value "topMargin"
        case topMargin = "TopMargin"

        // Enum value "bottomMargin"
        case bottomMargin = "BottomMargin"

        // Enum value "insideMargin"
        case insideMargin = "InsideMargin"

        // Enum value "outsideMargin"
        case outsideMargin = "OutsideMargin"
    }

    // Gets or sets the option indicating how to wrap text around the image.
    public enum WrapType : String, Codable
    {
        // Enum value "inline"
        case inline = "Inline"

        // Enum value "topBottom"
        case topBottom = "TopBottom"

        // Enum value "square"
        case square = "Square"

        // Enum value "_none"
        case _none = "None"

        // Enum value "tight"
        case tight = "Tight"

        // Enum value "through"
        case through = "Through"
    }

    // Field of position. Drawing object element for insert.
    private var _position : Position? = nil;

    public var position : Position? {
        get {
            return self._position;
        }
        set {
            self._position = newValue;
        }
    }

    // Field of relativeHorizontalPosition. Drawing object element for insert.
    private var _relativeHorizontalPosition : RelativeHorizontalPosition? = nil;

    public var relativeHorizontalPosition : RelativeHorizontalPosition? {
        get {
            return self._relativeHorizontalPosition;
        }
        set {
            self._relativeHorizontalPosition = newValue;
        }
    }

    // Field of _left. Drawing object element for insert.
    private var __left : Double? = nil;

    public var _left : Double? {
        get {
            return self.__left;
        }
        set {
            self.__left = newValue;
        }
    }

    // Field of relativeVerticalPosition. Drawing object element for insert.
    private var _relativeVerticalPosition : RelativeVerticalPosition? = nil;

    public var relativeVerticalPosition : RelativeVerticalPosition? {
        get {
            return self._relativeVerticalPosition;
        }
        set {
            self._relativeVerticalPosition = newValue;
        }
    }

    // Field of top. Drawing object element for insert.
    private var _top : Double? = nil;

    public var top : Double? {
        get {
            return self._top;
        }
        set {
            self._top = newValue;
        }
    }

    // Field of width. Drawing object element for insert.
    private var _width : Double? = nil;

    public var width : Double? {
        get {
            return self._width;
        }
        set {
            self._width = newValue;
        }
    }

    // Field of height. Drawing object element for insert.
    private var _height : Double? = nil;

    public var height : Double? {
        get {
            return self._height;
        }
        set {
            self._height = newValue;
        }
    }

    // Field of wrapType. Drawing object element for insert.
    private var _wrapType : WrapType? = nil;

    public var wrapType : WrapType? {
        get {
            return self._wrapType;
        }
        set {
            self._wrapType = newValue;
        }
    }

    // Field of aspectRatioLocked. Drawing object element for insert.
    private var _aspectRatioLocked : Bool? = nil;

    public var aspectRatioLocked : Bool? {
        get {
            return self._aspectRatioLocked;
        }
        set {
            self._aspectRatioLocked = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case position = "Position";
        case relativeHorizontalPosition = "RelativeHorizontalPosition";
        case _left = "Left";
        case relativeVerticalPosition = "RelativeVerticalPosition";
        case top = "Top";
        case width = "Width";
        case height = "Height";
        case wrapType = "WrapType";
        case aspectRatioLocked = "AspectRatioLocked";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_position = json["Position"] as? [String: Any] {
            self.position = try ObjectSerializer.deserialize(type: Position.self, from: raw_position);
        }

        if let raw_relativeHorizontalPosition = json["RelativeHorizontalPosition"] as? String {
            self.relativeHorizontalPosition = RelativeHorizontalPosition(rawValue: raw_relativeHorizontalPosition);
        }

        self._left = json["Left"] as? Double;
        if let raw_relativeVerticalPosition = json["RelativeVerticalPosition"] as? String {
            self.relativeVerticalPosition = RelativeVerticalPosition(rawValue: raw_relativeVerticalPosition);
        }

        self.top = json["Top"] as? Double;
        self.width = json["Width"] as? Double;
        self.height = json["Height"] as? Double;
        if let raw_wrapType = json["WrapType"] as? String {
            self.wrapType = WrapType(rawValue: raw_wrapType);
        }

        self.aspectRatioLocked = json["AspectRatioLocked"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.position = try container.decodeIfPresent(Position.self, forKey: .position);
        self.relativeHorizontalPosition = try container.decodeIfPresent(RelativeHorizontalPosition.self, forKey: .relativeHorizontalPosition);
        self._left = try container.decodeIfPresent(Double.self, forKey: ._left);
        self.relativeVerticalPosition = try container.decodeIfPresent(RelativeVerticalPosition.self, forKey: .relativeVerticalPosition);
        self.top = try container.decodeIfPresent(Double.self, forKey: .top);
        self.width = try container.decodeIfPresent(Double.self, forKey: .width);
        self.height = try container.decodeIfPresent(Double.self, forKey: .height);
        self.wrapType = try container.decodeIfPresent(WrapType.self, forKey: .wrapType);
        self.aspectRatioLocked = try container.decodeIfPresent(Bool.self, forKey: .aspectRatioLocked);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
        if (self.relativeHorizontalPosition != nil) {
            try container.encode(self.relativeHorizontalPosition, forKey: .relativeHorizontalPosition);
        }
        if (self._left != nil) {
            try container.encode(self._left, forKey: ._left);
        }
        if (self.relativeVerticalPosition != nil) {
            try container.encode(self.relativeVerticalPosition, forKey: .relativeVerticalPosition);
        }
        if (self.top != nil) {
            try container.encode(self.top, forKey: .top);
        }
        if (self.width != nil) {
            try container.encode(self.width, forKey: .width);
        }
        if (self.height != nil) {
            try container.encode(self.height, forKey: .height);
        }
        if (self.wrapType != nil) {
            try container.encode(self.wrapType, forKey: .wrapType);
        }
        if (self.aspectRatioLocked != nil) {
            try container.encode(self.aspectRatioLocked, forKey: .aspectRatioLocked);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.relativeHorizontalPosition == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "relativeHorizontalPosition");
        }
        if (self._left == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "_left");
        }
        if (self.relativeVerticalPosition == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "relativeVerticalPosition");
        }
        if (self.top == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "top");
        }
        if (self.width == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "width");
        }
        if (self.height == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "height");
        }
        if (self.wrapType == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "wrapType");
        }
        try self.position?.validate();

    }

    // Sets position. Gets or sets the position, where the DrawingObject will be inserted.
    public func setPosition(position : Position?) -> DrawingObjectInsert {
        self.position = position;
        return self;
    }

    // Gets position. Gets or sets the position, where the DrawingObject will be inserted.
    public func getPosition() -> Position? {
        return self.position;
    }


    // Sets relativeHorizontalPosition. Gets or sets the relative horizontal position, from which the distance to the image is measured.
    public func setRelativeHorizontalPosition(relativeHorizontalPosition : RelativeHorizontalPosition?) -> DrawingObjectInsert {
        self.relativeHorizontalPosition = relativeHorizontalPosition;
        return self;
    }

    // Gets relativeHorizontalPosition. Gets or sets the relative horizontal position, from which the distance to the image is measured.
    public func getRelativeHorizontalPosition() -> RelativeHorizontalPosition? {
        return self.relativeHorizontalPosition;
    }


    // Sets _left. Gets or sets the distance in points from the origin to the left side of the image.
    public func setLeft(_left : Double?) -> DrawingObjectInsert {
        self._left = _left;
        return self;
    }

    // Gets _left. Gets or sets the distance in points from the origin to the left side of the image.
    public func getLeft() -> Double? {
        return self._left;
    }


    // Sets relativeVerticalPosition. Gets or sets the relative vertical position, from which the distance to the image is measured.
    public func setRelativeVerticalPosition(relativeVerticalPosition : RelativeVerticalPosition?) -> DrawingObjectInsert {
        self.relativeVerticalPosition = relativeVerticalPosition;
        return self;
    }

    // Gets relativeVerticalPosition. Gets or sets the relative vertical position, from which the distance to the image is measured.
    public func getRelativeVerticalPosition() -> RelativeVerticalPosition? {
        return self.relativeVerticalPosition;
    }


    // Sets top. Gets or sets the distance in points from the origin to the top side of the image.
    public func setTop(top : Double?) -> DrawingObjectInsert {
        self.top = top;
        return self;
    }

    // Gets top. Gets or sets the distance in points from the origin to the top side of the image.
    public func getTop() -> Double? {
        return self.top;
    }


    // Sets width. Gets or sets the width of the DrawingObjects in points.
    public func setWidth(width : Double?) -> DrawingObjectInsert {
        self.width = width;
        return self;
    }

    // Gets width. Gets or sets the width of the DrawingObjects in points.
    public func getWidth() -> Double? {
        return self.width;
    }


    // Sets height. Gets or sets the height of the DrawingObject in points.
    public func setHeight(height : Double?) -> DrawingObjectInsert {
        self.height = height;
        return self;
    }

    // Gets height. Gets or sets the height of the DrawingObject in points.
    public func getHeight() -> Double? {
        return self.height;
    }


    // Sets wrapType. Gets or sets the option indicating how to wrap text around the image.
    public func setWrapType(wrapType : WrapType?) -> DrawingObjectInsert {
        self.wrapType = wrapType;
        return self;
    }

    // Gets wrapType. Gets or sets the option indicating how to wrap text around the image.
    public func getWrapType() -> WrapType? {
        return self.wrapType;
    }


    // Sets aspectRatioLocked. Gets or sets a value indicating whether AspectRatioLocked option on or off.
    public func setAspectRatioLocked(aspectRatioLocked : Bool?) -> DrawingObjectInsert {
        self.aspectRatioLocked = aspectRatioLocked;
        return self;
    }

    // Gets aspectRatioLocked. Gets or sets a value indicating whether AspectRatioLocked option on or off.
    public func getAspectRatioLocked() -> Bool? {
        return self.aspectRatioLocked;
    }
}
