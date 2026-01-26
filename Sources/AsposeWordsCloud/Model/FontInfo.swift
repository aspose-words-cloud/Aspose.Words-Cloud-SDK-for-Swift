/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FontInfo.swift">
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

// DTO container with font info.
public class FontInfo : Codable, WordsApiModel {
    // Field of filePath. DTO container with font info.
    private var _filePath : String? = nil;

    public var filePath : String? {
        get {
            return self._filePath;
        }
        set {
            self._filePath = newValue;
        }
    }

    // Field of fontFamilyName. DTO container with font info.
    private var _fontFamilyName : String? = nil;

    public var fontFamilyName : String? {
        get {
            return self._fontFamilyName;
        }
        set {
            self._fontFamilyName = newValue;
        }
    }

    // Field of fullFontName. DTO container with font info.
    private var _fullFontName : String? = nil;

    public var fullFontName : String? {
        get {
            return self._fullFontName;
        }
        set {
            self._fullFontName = newValue;
        }
    }

    // Field of version. DTO container with font info.
    private var _version : String? = nil;

    public var version : String? {
        get {
            return self._version;
        }
        set {
            self._version = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case filePath = "FilePath";
        case fontFamilyName = "FontFamilyName";
        case fullFontName = "FullFontName";
        case version = "Version";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.filePath = json["FilePath"] as? String;
        self.fontFamilyName = json["FontFamilyName"] as? String;
        self.fullFontName = json["FullFontName"] as? String;
        self.version = json["Version"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.filePath = try container.decodeIfPresent(String.self, forKey: .filePath);
        self.fontFamilyName = try container.decodeIfPresent(String.self, forKey: .fontFamilyName);
        self.fullFontName = try container.decodeIfPresent(String.self, forKey: .fullFontName);
        self.version = try container.decodeIfPresent(String.self, forKey: .version);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.filePath != nil) {
            try container.encode(self.filePath, forKey: .filePath);
        }
        if (self.fontFamilyName != nil) {
            try container.encode(self.fontFamilyName, forKey: .fontFamilyName);
        }
        if (self.fullFontName != nil) {
            try container.encode(self.fullFontName, forKey: .fullFontName);
        }
        if (self.version != nil) {
            try container.encode(self.version, forKey: .version);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets filePath. Gets or sets the path to the font file if any.
    public func setFilePath(filePath : String?) -> FontInfo {
        self.filePath = filePath;
        return self;
    }

    // Gets filePath. Gets or sets the path to the font file if any.
    public func getFilePath() -> String? {
        return self.filePath;
    }


    // Sets fontFamilyName. Gets or sets the family name of the font.
    public func setFontFamilyName(fontFamilyName : String?) -> FontInfo {
        self.fontFamilyName = fontFamilyName;
        return self;
    }

    // Gets fontFamilyName. Gets or sets the family name of the font.
    public func getFontFamilyName() -> String? {
        return self.fontFamilyName;
    }


    // Sets fullFontName. Gets or sets the full name of the font.
    public func setFullFontName(fullFontName : String?) -> FontInfo {
        self.fullFontName = fullFontName;
        return self;
    }

    // Gets fullFontName. Gets or sets the full name of the font.
    public func getFullFontName() -> String? {
        return self.fullFontName;
    }


    // Sets version. Gets or sets the version string of the font.
    public func setVersion(version : String?) -> FontInfo {
        self.version = version;
        return self;
    }

    // Gets version. Gets or sets the version string of the font.
    public func getVersion() -> String? {
        return self.version;
    }
}
