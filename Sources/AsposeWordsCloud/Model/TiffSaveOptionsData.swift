/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TiffSaveOptionsData.swift">
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

// Container class for tiff save options.
public class TiffSaveOptionsData : ImageSaveOptionsData {
    // Gets or sets the method used while converting images to 1 bpp format.
    public enum TiffBinarizationMethod : String, Codable
    {
        // Enum value "threshold"
        case threshold = "Threshold"

        // Enum value "floydSteinbergDithering"
        case floydSteinbergDithering = "FloydSteinbergDithering"
    }

    // Gets or sets the type of compression.
    public enum TiffCompression : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "rle"
        case rle = "Rle"

        // Enum value "lzw"
        case lzw = "Lzw"

        // Enum value "ccitt3"
        case ccitt3 = "Ccitt3"

        // Enum value "ccitt4"
        case ccitt4 = "Ccitt4"
    }

    // Field of thresholdForFloydSteinbergDithering. Container class for tiff save options.
    private var _thresholdForFloydSteinbergDithering : Int? = nil;

    public var thresholdForFloydSteinbergDithering : Int? {
        get {
            return self._thresholdForFloydSteinbergDithering;
        }
        set {
            self._thresholdForFloydSteinbergDithering = newValue;
        }
    }

    // Field of tiffBinarizationMethod. Container class for tiff save options.
    private var _tiffBinarizationMethod : TiffBinarizationMethod? = nil;

    public var tiffBinarizationMethod : TiffBinarizationMethod? {
        get {
            return self._tiffBinarizationMethod;
        }
        set {
            self._tiffBinarizationMethod = newValue;
        }
    }

    // Field of tiffCompression. Container class for tiff save options.
    private var _tiffCompression : TiffCompression? = nil;

    public var tiffCompression : TiffCompression? {
        get {
            return self._tiffCompression;
        }
        set {
            self._tiffCompression = newValue;
        }
    }

    // Field of saveFormat. Container class for tiff save options.
    private final let _saveFormat : String? = "tiff";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case thresholdForFloydSteinbergDithering = "ThresholdForFloydSteinbergDithering";
        case tiffBinarizationMethod = "TiffBinarizationMethod";
        case tiffCompression = "TiffCompression";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.thresholdForFloydSteinbergDithering = json["ThresholdForFloydSteinbergDithering"] as? Int;
        if let raw_tiffBinarizationMethod = json["TiffBinarizationMethod"] as? String {
            self.tiffBinarizationMethod = TiffBinarizationMethod(rawValue: raw_tiffBinarizationMethod);
        }

        if let raw_tiffCompression = json["TiffCompression"] as? String {
            self.tiffCompression = TiffCompression(rawValue: raw_tiffCompression);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.thresholdForFloydSteinbergDithering = try container.decodeIfPresent(Int.self, forKey: .thresholdForFloydSteinbergDithering);
        self.tiffBinarizationMethod = try container.decodeIfPresent(TiffBinarizationMethod.self, forKey: .tiffBinarizationMethod);
        self.tiffCompression = try container.decodeIfPresent(TiffCompression.self, forKey: .tiffCompression);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.thresholdForFloydSteinbergDithering != nil) {
            try container.encode(self.thresholdForFloydSteinbergDithering, forKey: .thresholdForFloydSteinbergDithering);
        }
        if (self.tiffBinarizationMethod != nil) {
            try container.encode(self.tiffBinarizationMethod, forKey: .tiffBinarizationMethod);
        }
        if (self.tiffCompression != nil) {
            try container.encode(self.tiffCompression, forKey: .tiffCompression);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets thresholdForFloydSteinbergDithering. Gets or sets the threshold that determines the value of the binarization error in the Floyd-Steinberg method. when ImageBinarizationMethod is ImageBinarizationMethod.FloydSteinbergDithering. The default value is 128.
    public func setThresholdForFloydSteinbergDithering(thresholdForFloydSteinbergDithering : Int?) -> TiffSaveOptionsData {
        self.thresholdForFloydSteinbergDithering = thresholdForFloydSteinbergDithering;
        return self;
    }

    // Gets thresholdForFloydSteinbergDithering. Gets or sets the threshold that determines the value of the binarization error in the Floyd-Steinberg method. when ImageBinarizationMethod is ImageBinarizationMethod.FloydSteinbergDithering. The default value is 128.
    public func getThresholdForFloydSteinbergDithering() -> Int? {
        return self.thresholdForFloydSteinbergDithering;
    }


    // Sets tiffBinarizationMethod. Gets or sets the method used while converting images to 1 bpp format.
    public func setTiffBinarizationMethod(tiffBinarizationMethod : TiffBinarizationMethod?) -> TiffSaveOptionsData {
        self.tiffBinarizationMethod = tiffBinarizationMethod;
        return self;
    }

    // Gets tiffBinarizationMethod. Gets or sets the method used while converting images to 1 bpp format.
    public func getTiffBinarizationMethod() -> TiffBinarizationMethod? {
        return self.tiffBinarizationMethod;
    }


    // Sets tiffCompression. Gets or sets the type of compression.
    public func setTiffCompression(tiffCompression : TiffCompression?) -> TiffSaveOptionsData {
        self.tiffCompression = tiffCompression;
        return self;
    }

    // Gets tiffCompression. Gets or sets the type of compression.
    public func getTiffCompression() -> TiffCompression? {
        return self.tiffCompression;
    }
}
