/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DownsampleOptionsData.swift">
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

// Container class for Downsample options.
public class DownsampleOptionsData : Codable, WordsApiModel {
    // Field of downsampleImages. Container class for Downsample options.
    private var _downsampleImages : Bool? = nil;

    public var downsampleImages : Bool? {
        get {
            return self._downsampleImages;
        }
        set {
            self._downsampleImages = newValue;
        }
    }

    // Field of resolution. Container class for Downsample options.
    private var _resolution : Int? = nil;

    public var resolution : Int? {
        get {
            return self._resolution;
        }
        set {
            self._resolution = newValue;
        }
    }

    // Field of resolutionThreshold. Container class for Downsample options.
    private var _resolutionThreshold : Int? = nil;

    public var resolutionThreshold : Int? {
        get {
            return self._resolutionThreshold;
        }
        set {
            self._resolutionThreshold = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case downsampleImages = "DownsampleImages";
        case resolution = "Resolution";
        case resolutionThreshold = "ResolutionThreshold";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.downsampleImages = json["DownsampleImages"] as? Bool;
        self.resolution = json["Resolution"] as? Int;
        self.resolutionThreshold = json["ResolutionThreshold"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.downsampleImages = try container.decodeIfPresent(Bool.self, forKey: .downsampleImages);
        self.resolution = try container.decodeIfPresent(Int.self, forKey: .resolution);
        self.resolutionThreshold = try container.decodeIfPresent(Int.self, forKey: .resolutionThreshold);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.downsampleImages != nil) {
            try container.encode(self.downsampleImages, forKey: .downsampleImages);
        }
        if (self.resolution != nil) {
            try container.encode(self.resolution, forKey: .resolution);
        }
        if (self.resolutionThreshold != nil) {
            try container.encode(self.resolutionThreshold, forKey: .resolutionThreshold);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets downsampleImages. Gets or sets a value indicating whether images should be downsampled. The default value is true.
    public func setDownsampleImages(downsampleImages : Bool?) -> DownsampleOptionsData {
        self.downsampleImages = downsampleImages;
        return self;
    }

    // Gets downsampleImages. Gets or sets a value indicating whether images should be downsampled. The default value is true.
    public func getDownsampleImages() -> Bool? {
        return self.downsampleImages;
    }


    // Sets resolution. Gets or sets the resolution in pixels per inch which the images should be downsampled to. The default value is 220 ppi.
    public func setResolution(resolution : Int?) -> DownsampleOptionsData {
        self.resolution = resolution;
        return self;
    }

    // Gets resolution. Gets or sets the resolution in pixels per inch which the images should be downsampled to. The default value is 220 ppi.
    public func getResolution() -> Int? {
        return self.resolution;
    }


    // Sets resolutionThreshold. Gets or sets the threshold resolution in pixels per inch. If resolution of an image in the document is less than threshold value, the downsampling algorithm will not be applied. A value of 0 means the threshold check is not used and all images that can be reduced in size are downsampled. The default value is 0.
    public func setResolutionThreshold(resolutionThreshold : Int?) -> DownsampleOptionsData {
        self.resolutionThreshold = resolutionThreshold;
        return self;
    }

    // Gets resolutionThreshold. Gets or sets the threshold resolution in pixels per inch. If resolution of an image in the document is less than threshold value, the downsampling algorithm will not be applied. A value of 0 means the threshold check is not used and all images that can be reduced in size are downsampled. The default value is 0.
    public func getResolutionThreshold() -> Int? {
        return self.resolutionThreshold;
    }
}
