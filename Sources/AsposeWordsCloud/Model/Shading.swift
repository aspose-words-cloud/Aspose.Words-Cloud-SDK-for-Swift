/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Shading.swift">
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

// DTO container with a paragraph format shading element.
public class Shading : Codable, WordsApiModel {
    // Gets or sets the shading texture.
    public enum Texture : String, Codable
    {
        // Enum value "textureNone"
        case textureNone = "TextureNone"

        // Enum value "textureSolid"
        case textureSolid = "TextureSolid"

        // Enum value "texture5Percent"
        case texture5Percent = "Texture5Percent"

        // Enum value "texture10Percent"
        case texture10Percent = "Texture10Percent"

        // Enum value "texture20Percent"
        case texture20Percent = "Texture20Percent"

        // Enum value "texture25Percent"
        case texture25Percent = "Texture25Percent"

        // Enum value "texture30Percent"
        case texture30Percent = "Texture30Percent"

        // Enum value "texture40Percent"
        case texture40Percent = "Texture40Percent"

        // Enum value "texture50Percent"
        case texture50Percent = "Texture50Percent"

        // Enum value "texture60Percent"
        case texture60Percent = "Texture60Percent"

        // Enum value "texture70Percent"
        case texture70Percent = "Texture70Percent"

        // Enum value "texture75Percent"
        case texture75Percent = "Texture75Percent"

        // Enum value "texture80Percent"
        case texture80Percent = "Texture80Percent"

        // Enum value "texture90Percent"
        case texture90Percent = "Texture90Percent"

        // Enum value "textureDarkHorizontal"
        case textureDarkHorizontal = "TextureDarkHorizontal"

        // Enum value "textureDarkVertical"
        case textureDarkVertical = "TextureDarkVertical"

        // Enum value "textureDarkDiagonalDown"
        case textureDarkDiagonalDown = "TextureDarkDiagonalDown"

        // Enum value "textureDarkDiagonalUp"
        case textureDarkDiagonalUp = "TextureDarkDiagonalUp"

        // Enum value "textureDarkCross"
        case textureDarkCross = "TextureDarkCross"

        // Enum value "textureDarkDiagonalCross"
        case textureDarkDiagonalCross = "TextureDarkDiagonalCross"

        // Enum value "textureHorizontal"
        case textureHorizontal = "TextureHorizontal"

        // Enum value "textureVertical"
        case textureVertical = "TextureVertical"

        // Enum value "textureDiagonalDown"
        case textureDiagonalDown = "TextureDiagonalDown"

        // Enum value "textureDiagonalUp"
        case textureDiagonalUp = "TextureDiagonalUp"

        // Enum value "textureCross"
        case textureCross = "TextureCross"

        // Enum value "textureDiagonalCross"
        case textureDiagonalCross = "TextureDiagonalCross"

        // Enum value "texture2Pt5Percent"
        case texture2Pt5Percent = "Texture2Pt5Percent"

        // Enum value "texture7Pt5Percent"
        case texture7Pt5Percent = "Texture7Pt5Percent"

        // Enum value "texture12Pt5Percent"
        case texture12Pt5Percent = "Texture12Pt5Percent"

        // Enum value "texture15Percent"
        case texture15Percent = "Texture15Percent"

        // Enum value "texture17Pt5Percent"
        case texture17Pt5Percent = "Texture17Pt5Percent"

        // Enum value "texture22Pt5Percent"
        case texture22Pt5Percent = "Texture22Pt5Percent"

        // Enum value "texture27Pt5Percent"
        case texture27Pt5Percent = "Texture27Pt5Percent"

        // Enum value "texture32Pt5Percent"
        case texture32Pt5Percent = "Texture32Pt5Percent"

        // Enum value "texture35Percent"
        case texture35Percent = "Texture35Percent"

        // Enum value "texture37Pt5Percent"
        case texture37Pt5Percent = "Texture37Pt5Percent"

        // Enum value "texture42Pt5Percent"
        case texture42Pt5Percent = "Texture42Pt5Percent"

        // Enum value "texture45Percent"
        case texture45Percent = "Texture45Percent"

        // Enum value "texture47Pt5Percent"
        case texture47Pt5Percent = "Texture47Pt5Percent"

        // Enum value "texture52Pt5Percent"
        case texture52Pt5Percent = "Texture52Pt5Percent"

        // Enum value "texture55Percent"
        case texture55Percent = "Texture55Percent"

        // Enum value "texture57Pt5Percent"
        case texture57Pt5Percent = "Texture57Pt5Percent"

        // Enum value "texture62Pt5Percent"
        case texture62Pt5Percent = "Texture62Pt5Percent"

        // Enum value "texture65Percent"
        case texture65Percent = "Texture65Percent"

        // Enum value "texture67Pt5Percent"
        case texture67Pt5Percent = "Texture67Pt5Percent"

        // Enum value "texture72Pt5Percent"
        case texture72Pt5Percent = "Texture72Pt5Percent"

        // Enum value "texture77Pt5Percent"
        case texture77Pt5Percent = "Texture77Pt5Percent"

        // Enum value "texture82Pt5Percent"
        case texture82Pt5Percent = "Texture82Pt5Percent"

        // Enum value "texture85Percent"
        case texture85Percent = "Texture85Percent"

        // Enum value "texture87Pt5Percent"
        case texture87Pt5Percent = "Texture87Pt5Percent"

        // Enum value "texture92Pt5Percent"
        case texture92Pt5Percent = "Texture92Pt5Percent"

        // Enum value "texture95Percent"
        case texture95Percent = "Texture95Percent"

        // Enum value "texture97Pt5Percent"
        case texture97Pt5Percent = "Texture97Pt5Percent"

        // Enum value "textureNil"
        case textureNil = "TextureNil"
    }

    // Field of backgroundPatternColor. DTO container with a paragraph format shading element.
    private var _backgroundPatternColor : XmlColor? = nil;

    public var backgroundPatternColor : XmlColor? {
        get {
            return self._backgroundPatternColor;
        }
        set {
            self._backgroundPatternColor = newValue;
        }
    }

    // Field of foregroundPatternColor. DTO container with a paragraph format shading element.
    private var _foregroundPatternColor : XmlColor? = nil;

    public var foregroundPatternColor : XmlColor? {
        get {
            return self._foregroundPatternColor;
        }
        set {
            self._foregroundPatternColor = newValue;
        }
    }

    // Field of texture. DTO container with a paragraph format shading element.
    private var _texture : Texture? = nil;

    public var texture : Texture? {
        get {
            return self._texture;
        }
        set {
            self._texture = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case backgroundPatternColor = "BackgroundPatternColor";
        case foregroundPatternColor = "ForegroundPatternColor";
        case texture = "Texture";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_backgroundPatternColor = json["BackgroundPatternColor"] as? [String: Any] {
            self.backgroundPatternColor = try ObjectSerializer.deserialize(type: XmlColor.self, from: raw_backgroundPatternColor);
        }

        if let raw_foregroundPatternColor = json["ForegroundPatternColor"] as? [String: Any] {
            self.foregroundPatternColor = try ObjectSerializer.deserialize(type: XmlColor.self, from: raw_foregroundPatternColor);
        }

        if let raw_texture = json["Texture"] as? String {
            self.texture = Texture(rawValue: raw_texture);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.backgroundPatternColor = try container.decodeIfPresent(XmlColor.self, forKey: .backgroundPatternColor);
        self.foregroundPatternColor = try container.decodeIfPresent(XmlColor.self, forKey: .foregroundPatternColor);
        self.texture = try container.decodeIfPresent(Texture.self, forKey: .texture);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.backgroundPatternColor != nil) {
            try container.encode(self.backgroundPatternColor, forKey: .backgroundPatternColor);
        }
        if (self.foregroundPatternColor != nil) {
            try container.encode(self.foregroundPatternColor, forKey: .foregroundPatternColor);
        }
        if (self.texture != nil) {
            try container.encode(self.texture, forKey: .texture);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.backgroundPatternColor?.validate();
        try self.foregroundPatternColor?.validate();

    }

    // Sets backgroundPatternColor. Gets or sets the color that's applied to the background of the Shading object.
    public func setBackgroundPatternColor(backgroundPatternColor : XmlColor?) -> Shading {
        self.backgroundPatternColor = backgroundPatternColor;
        return self;
    }

    // Gets backgroundPatternColor. Gets or sets the color that's applied to the background of the Shading object.
    public func getBackgroundPatternColor() -> XmlColor? {
        return self.backgroundPatternColor;
    }


    // Sets foregroundPatternColor. Gets or sets the color that's applied to the foreground of the Shading object.
    public func setForegroundPatternColor(foregroundPatternColor : XmlColor?) -> Shading {
        self.foregroundPatternColor = foregroundPatternColor;
        return self;
    }

    // Gets foregroundPatternColor. Gets or sets the color that's applied to the foreground of the Shading object.
    public func getForegroundPatternColor() -> XmlColor? {
        return self.foregroundPatternColor;
    }


    // Sets texture. Gets or sets the shading texture.
    public func setTexture(texture : Texture?) -> Shading {
        self.texture = texture;
        return self;
    }

    // Gets texture. Gets or sets the shading texture.
    public func getTexture() -> Texture? {
        return self.texture;
    }
}
