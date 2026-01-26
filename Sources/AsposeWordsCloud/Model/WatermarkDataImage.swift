/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WatermarkDataImage.swift">
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

// Class for insert watermark image request building.
public class WatermarkDataImage : WatermarkDataBase {
    // Field of image. Class for insert watermark image request building.
    private var _image : FileReference? = nil;

    public var image : FileReference? {
        get {
            return self._image;
        }
        set {
            self._image = newValue;
        }
    }

    // Field of isWashout. Class for insert watermark image request building.
    private var _isWashout : Bool? = nil;

    public var isWashout : Bool? {
        get {
            return self._isWashout;
        }
        set {
            self._isWashout = newValue;
        }
    }

    // Field of scale. Class for insert watermark image request building.
    private var _scale : Double? = nil;

    public var scale : Double? {
        get {
            return self._scale;
        }
        set {
            self._scale = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case image = "Image";
        case isWashout = "IsWashout";
        case scale = "Scale";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_image = json["Image"] as? [String: Any] {
            self.image = try ObjectSerializer.deserialize(type: FileReference.self, from: raw_image);
        }

        self.isWashout = json["IsWashout"] as? Bool;
        self.scale = json["Scale"] as? Double;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.image = try container.decodeIfPresent(FileReference.self, forKey: .image);
        self.isWashout = try container.decodeIfPresent(Bool.self, forKey: .isWashout);
        self.scale = try container.decodeIfPresent(Double.self, forKey: .scale);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.image != nil) {
            try container.encode(self.image, forKey: .image);
        }
        if (self.isWashout != nil) {
            try container.encode(self.isWashout, forKey: .isWashout);
        }
        if (self.scale != nil) {
            try container.encode(self.scale, forKey: .scale);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
        super.collectFilesContent(&resultFilesContent);
        if (self.image != nil)
        {
            self.image!.collectFilesContent(&resultFilesContent);
        }



    }

    public override func validate() throws {
        try super.validate();
        if (self.image == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "image");
        }
        try self.image?.validate();

    }

    // Sets image. Gets or sets the watermark image.
    public func setImage(image : FileReference?) -> WatermarkDataImage {
        self.image = image;
        return self;
    }

    // Gets image. Gets or sets the watermark image.
    public func getImage() -> FileReference? {
        return self.image;
    }


    // Sets isWashout. Gets or sets a boolean value which is responsible for washout effect of the watermark. The default value is true.
    public func setIsWashout(isWashout : Bool?) -> WatermarkDataImage {
        self.isWashout = isWashout;
        return self;
    }

    // Gets isWashout. Gets or sets a boolean value which is responsible for washout effect of the watermark. The default value is true.
    public func getIsWashout() -> Bool? {
        return self.isWashout;
    }


    // Sets scale. Gets or sets the scale factor expressed as a fraction of the image. The default value is 0 - auto. Valid values range from 0 to 65.5 inclusive. Auto scale means that the watermark will be scaled to its max width and max height relative to the page margins.
    public func setScale(scale : Double?) -> WatermarkDataImage {
        self.scale = scale;
        return self;
    }

    // Gets scale. Gets or sets the scale factor expressed as a fraction of the image. The default value is 0 - auto. Valid values range from 0 to 65.5 inclusive. Auto scale means that the watermark will be scaled to its max width and max height relative to the page margins.
    public func getScale() -> Double? {
        return self.scale;
    }
}
