/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WatermarkText.swift">
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
public class WatermarkText : Codable, WordsApiModel {
    // Field of rotationAngle. Class for insert watermark text request building.
    private var _rotationAngle : Double? = nil;

    public var rotationAngle : Double? {
        get {
            return self._rotationAngle;
        }
        set {
            self._rotationAngle = newValue;
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
        case rotationAngle = "RotationAngle";
        case text = "Text";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.rotationAngle = json["RotationAngle"] as? Double;
        self.text = json["Text"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.rotationAngle = try container.decodeIfPresent(Double.self, forKey: .rotationAngle);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.rotationAngle != nil) {
            try container.encode(self.rotationAngle, forKey: .rotationAngle);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.rotationAngle == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "rotationAngle");
        }
        if (self.text == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "text");
        }
    }

    // Sets rotationAngle. Gets or sets the watermark rotation angle.
    public func setRotationAngle(rotationAngle : Double?) -> WatermarkText {
        self.rotationAngle = rotationAngle;
        return self;
    }

    // Gets rotationAngle. Gets or sets the watermark rotation angle.
    public func getRotationAngle() -> Double? {
        return self.rotationAngle;
    }


    // Sets text. Gets or sets the watermark text.
    public func setText(text : String?) -> WatermarkText {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets the watermark text.
    public func getText() -> String? {
        return self.text;
    }
}
