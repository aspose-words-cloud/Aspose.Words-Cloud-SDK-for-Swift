/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PclSaveOptionsData.swift">
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

// Container class for pcl save options.
public class PclSaveOptionsData : FixedPageSaveOptionsData {
    // Field of falllbackFontName. Container class for pcl save options.
    private var _falllbackFontName : String? = nil;

    public var falllbackFontName : String? {
        get {
            return self._falllbackFontName;
        }
        set {
            self._falllbackFontName = newValue;
        }
    }

    // Field of rasterizeTransformedElements. Container class for pcl save options.
    private var _rasterizeTransformedElements : Bool? = nil;

    public var rasterizeTransformedElements : Bool? {
        get {
            return self._rasterizeTransformedElements;
        }
        set {
            self._rasterizeTransformedElements = newValue;
        }
    }

    // Field of saveFormat. Container class for pcl save options.
    private final let _saveFormat : String? = "pcl";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case falllbackFontName = "FalllbackFontName";
        case rasterizeTransformedElements = "RasterizeTransformedElements";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.falllbackFontName = json["FalllbackFontName"] as? String;
        self.rasterizeTransformedElements = json["RasterizeTransformedElements"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.falllbackFontName = try container.decodeIfPresent(String.self, forKey: .falllbackFontName);
        self.rasterizeTransformedElements = try container.decodeIfPresent(Bool.self, forKey: .rasterizeTransformedElements);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.falllbackFontName != nil) {
            try container.encode(self.falllbackFontName, forKey: .falllbackFontName);
        }
        if (self.rasterizeTransformedElements != nil) {
            try container.encode(self.rasterizeTransformedElements, forKey: .rasterizeTransformedElements);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets falllbackFontName. Gets or sets the font name, that will be used if no expected font is found in printer and built-in fonts collections. If no fallback is found, "Arial" font is used.
    public func setFalllbackFontName(falllbackFontName : String?) -> PclSaveOptionsData {
        self.falllbackFontName = falllbackFontName;
        return self;
    }

    // Gets falllbackFontName. Gets or sets the font name, that will be used if no expected font is found in printer and built-in fonts collections. If no fallback is found, "Arial" font is used.
    public func getFalllbackFontName() -> String? {
        return self.falllbackFontName;
    }


    // Sets rasterizeTransformedElements. Gets or sets a value indicating whether complex transformed elements should be rasterized before saving to PCL document.. The default value is true. PCL doesn't support some kind of transformations that are used by Aspose Words.  E.g. rotated, skewed images and texture brushes. To properly render such elements rasterization process is used, i.e. saving to image and clipping.  This process can take additional time and memory.  If flag is set to false, some content in output may be different as compared with the source document.
    public func setRasterizeTransformedElements(rasterizeTransformedElements : Bool?) -> PclSaveOptionsData {
        self.rasterizeTransformedElements = rasterizeTransformedElements;
        return self;
    }

    // Gets rasterizeTransformedElements. Gets or sets a value indicating whether complex transformed elements should be rasterized before saving to PCL document.. The default value is true. PCL doesn't support some kind of transformations that are used by Aspose Words.  E.g. rotated, skewed images and texture brushes. To properly render such elements rasterization process is used, i.e. saving to image and clipping.  This process can take additional time and memory.  If flag is set to false, some content in output may be different as compared with the source document.
    public func getRasterizeTransformedElements() -> Bool? {
        return self.rasterizeTransformedElements;
    }
}
