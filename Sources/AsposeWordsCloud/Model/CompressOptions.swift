/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompressOptions.swift">
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

// Options of document compress.
public class CompressOptions : Codable, WordsApiModel {
    // Field of imagesQuality. Options of document compress.
    private var _imagesQuality : Int? = nil;

    public var imagesQuality : Int? {
        get {
            return self._imagesQuality;
        }
        set {
            self._imagesQuality = newValue;
        }
    }

    // Field of imagesReduceSizeFactor. Options of document compress.
    private var _imagesReduceSizeFactor : Int? = nil;

    public var imagesReduceSizeFactor : Int? {
        get {
            return self._imagesReduceSizeFactor;
        }
        set {
            self._imagesReduceSizeFactor = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case imagesQuality = "ImagesQuality";
        case imagesReduceSizeFactor = "ImagesReduceSizeFactor";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.imagesQuality = json["ImagesQuality"] as? Int;
        self.imagesReduceSizeFactor = json["ImagesReduceSizeFactor"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.imagesQuality = try container.decodeIfPresent(Int.self, forKey: .imagesQuality);
        self.imagesReduceSizeFactor = try container.decodeIfPresent(Int.self, forKey: .imagesReduceSizeFactor);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.imagesQuality != nil) {
            try container.encode(self.imagesQuality, forKey: .imagesQuality);
        }
        if (self.imagesReduceSizeFactor != nil) {
            try container.encode(self.imagesReduceSizeFactor, forKey: .imagesReduceSizeFactor);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets imagesQuality. Gets or sets the quality level of images from 0 to 100. The default value is 75.
    public func setImagesQuality(imagesQuality : Int?) -> CompressOptions {
        self.imagesQuality = imagesQuality;
        return self;
    }

    // Gets imagesQuality. Gets or sets the quality level of images from 0 to 100. The default value is 75.
    public func getImagesQuality() -> Int? {
        return self.imagesQuality;
    }


    // Sets imagesReduceSizeFactor. Gets or sets the resize factor of images. This value determines how many times the size of the images in the document will be reduced. The parameter value must be greater than 1 for resizing. The default value is 1 and has no effect on images size.
    public func setImagesReduceSizeFactor(imagesReduceSizeFactor : Int?) -> CompressOptions {
        self.imagesReduceSizeFactor = imagesReduceSizeFactor;
        return self;
    }

    // Gets imagesReduceSizeFactor. Gets or sets the resize factor of images. This value determines how many times the size of the images in the document will be reduced. The parameter value must be greater than 1 for resizing. The default value is 1 and has no effect on images size.
    public func getImagesReduceSizeFactor() -> Int? {
        return self.imagesReduceSizeFactor;
    }
}
