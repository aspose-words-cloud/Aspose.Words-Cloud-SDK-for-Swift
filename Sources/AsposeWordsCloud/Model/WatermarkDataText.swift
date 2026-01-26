/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WatermarkDataText.swift">
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

// Class for insert watermark text request building.
public class WatermarkDataText : WatermarkDataBase {
    // Gets or sets layout of the watermark. The default value is Aspose.Words.WatermarkLayout.Diagonal.
    public enum Layout : String, Codable
    {
        // Enum value "horizontal"
        case horizontal = "Horizontal"

        // Enum value "diagonal"
        case diagonal = "Diagonal"
    }

    // Field of color. Class for insert watermark text request building.
    private var _color : XmlColor? = nil;

    public var color : XmlColor? {
        get {
            return self._color;
        }
        set {
            self._color = newValue;
        }
    }

    // Field of fontFamily. Class for insert watermark text request building.
    private var _fontFamily : String? = nil;

    public var fontFamily : String? {
        get {
            return self._fontFamily;
        }
        set {
            self._fontFamily = newValue;
        }
    }

    // Field of fontSize. Class for insert watermark text request building.
    private var _fontSize : Double? = nil;

    public var fontSize : Double? {
        get {
            return self._fontSize;
        }
        set {
            self._fontSize = newValue;
        }
    }

    // Field of isSemitrasparent. Class for insert watermark text request building.
    private var _isSemitrasparent : Bool? = nil;

    public var isSemitrasparent : Bool? {
        get {
            return self._isSemitrasparent;
        }
        set {
            self._isSemitrasparent = newValue;
        }
    }

    // Field of layout. Class for insert watermark text request building.
    private var _layout : Layout? = nil;

    public var layout : Layout? {
        get {
            return self._layout;
        }
        set {
            self._layout = newValue;
        }
    }

    // Field of text. Class for insert watermark text request building.
    private var _text : String? = nil;

    public var text : String? {
        get {
            return self._text;
        }
        set {
            self._text = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case color = "Color";
        case fontFamily = "FontFamily";
        case fontSize = "FontSize";
        case isSemitrasparent = "IsSemitrasparent";
        case layout = "Layout";
        case text = "Text";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_color = json["Color"] as? [String: Any] {
            self.color = try ObjectSerializer.deserialize(type: XmlColor.self, from: raw_color);
        }

        self.fontFamily = json["FontFamily"] as? String;
        self.fontSize = json["FontSize"] as? Double;
        self.isSemitrasparent = json["IsSemitrasparent"] as? Bool;
        if let raw_layout = json["Layout"] as? String {
            self.layout = Layout(rawValue: raw_layout);
        }

        self.text = json["Text"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.color = try container.decodeIfPresent(XmlColor.self, forKey: .color);
        self.fontFamily = try container.decodeIfPresent(String.self, forKey: .fontFamily);
        self.fontSize = try container.decodeIfPresent(Double.self, forKey: .fontSize);
        self.isSemitrasparent = try container.decodeIfPresent(Bool.self, forKey: .isSemitrasparent);
        self.layout = try container.decodeIfPresent(Layout.self, forKey: .layout);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.color != nil) {
            try container.encode(self.color, forKey: .color);
        }
        if (self.fontFamily != nil) {
            try container.encode(self.fontFamily, forKey: .fontFamily);
        }
        if (self.fontSize != nil) {
            try container.encode(self.fontSize, forKey: .fontSize);
        }
        if (self.isSemitrasparent != nil) {
            try container.encode(self.isSemitrasparent, forKey: .isSemitrasparent);
        }
        if (self.layout != nil) {
            try container.encode(self.layout, forKey: .layout);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.text == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "text");
        }
        try self.color?.validate();

    }

    // Sets color. Gets or sets font color. The default value is System.Drawing.Color.Silver.
    public func setColor(color : XmlColor?) -> WatermarkDataText {
        self.color = color;
        return self;
    }

    // Gets color. Gets or sets font color. The default value is System.Drawing.Color.Silver.
    public func getColor() -> XmlColor? {
        return self.color;
    }


    // Sets fontFamily. Gets or sets font family name. The default value is "Calibri".
    public func setFontFamily(fontFamily : String?) -> WatermarkDataText {
        self.fontFamily = fontFamily;
        return self;
    }

    // Gets fontFamily. Gets or sets font family name. The default value is "Calibri".
    public func getFontFamily() -> String? {
        return self.fontFamily;
    }


    // Sets fontSize. Gets or sets a font size. The default value is 0 - auto. Valid values range from 0 to 65.5 inclusive. Auto font size means that the watermark will be scaled to its max width and max height relative to the page margins.
    public func setFontSize(fontSize : Double?) -> WatermarkDataText {
        self.fontSize = fontSize;
        return self;
    }

    // Gets fontSize. Gets or sets a font size. The default value is 0 - auto. Valid values range from 0 to 65.5 inclusive. Auto font size means that the watermark will be scaled to its max width and max height relative to the page margins.
    public func getFontSize() -> Double? {
        return self.fontSize;
    }


    // Sets isSemitrasparent. Gets or sets a boolean value which is responsible for opacity of the watermark. The default value is true.
    public func setIsSemitrasparent(isSemitrasparent : Bool?) -> WatermarkDataText {
        self.isSemitrasparent = isSemitrasparent;
        return self;
    }

    // Gets isSemitrasparent. Gets or sets a boolean value which is responsible for opacity of the watermark. The default value is true.
    public func getIsSemitrasparent() -> Bool? {
        return self.isSemitrasparent;
    }


    // Sets layout. Gets or sets layout of the watermark. The default value is Aspose.Words.WatermarkLayout.Diagonal.
    public func setLayout(layout : Layout?) -> WatermarkDataText {
        self.layout = layout;
        return self;
    }

    // Gets layout. Gets or sets layout of the watermark. The default value is Aspose.Words.WatermarkLayout.Diagonal.
    public func getLayout() -> Layout? {
        return self.layout;
    }


    // Sets text. Gets or sets the watermark text.
    public func setText(text : String?) -> WatermarkDataText {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets the watermark text.
    public func getText() -> String? {
        return self.text;
    }
}
