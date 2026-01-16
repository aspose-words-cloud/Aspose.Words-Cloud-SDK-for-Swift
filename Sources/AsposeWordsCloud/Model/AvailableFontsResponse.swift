/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="AvailableFontsResponse.swift">
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

// The REST response with data on system, additional and custom fonts, available for document processing.
public class AvailableFontsResponse : WordsResponse {
    // Field of additionalFonts. The REST response with data on system, additional and custom fonts, available for document processing.
    private var _additionalFonts : [FontInfo]? = nil;

    public var additionalFonts : [FontInfo]? {
        get {
            return self._additionalFonts;
        }
        set {
            self._additionalFonts = newValue;
        }
    }

    // Field of customFonts. The REST response with data on system, additional and custom fonts, available for document processing.
    private var _customFonts : [FontInfo]? = nil;

    public var customFonts : [FontInfo]? {
        get {
            return self._customFonts;
        }
        set {
            self._customFonts = newValue;
        }
    }

    // Field of systemFonts. The REST response with data on system, additional and custom fonts, available for document processing.
    private var _systemFonts : [FontInfo]? = nil;

    public var systemFonts : [FontInfo]? {
        get {
            return self._systemFonts;
        }
        set {
            self._systemFonts = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case additionalFonts = "AdditionalFonts";
        case customFonts = "CustomFonts";
        case systemFonts = "SystemFonts";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_additionalFonts = json["AdditionalFonts"] as? [Any] {
            self.additionalFonts = try raw_additionalFonts.map {
                if let element_additionalFonts = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: FontInfo.self, from: element_additionalFonts);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "FontInfo");
                }
            };
        }

        if let raw_customFonts = json["CustomFonts"] as? [Any] {
            self.customFonts = try raw_customFonts.map {
                if let element_customFonts = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: FontInfo.self, from: element_customFonts);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "FontInfo");
                }
            };
        }

        if let raw_systemFonts = json["SystemFonts"] as? [Any] {
            self.systemFonts = try raw_systemFonts.map {
                if let element_systemFonts = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: FontInfo.self, from: element_systemFonts);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "FontInfo");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.additionalFonts = try container.decodeIfPresent([FontInfo].self, forKey: .additionalFonts);
        self.customFonts = try container.decodeIfPresent([FontInfo].self, forKey: .customFonts);
        self.systemFonts = try container.decodeIfPresent([FontInfo].self, forKey: .systemFonts);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.additionalFonts != nil) {
            try container.encode(self.additionalFonts, forKey: .additionalFonts);
        }
        if (self.customFonts != nil) {
            try container.encode(self.customFonts, forKey: .customFonts);
        }
        if (self.systemFonts != nil) {
            try container.encode(self.systemFonts, forKey: .systemFonts);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.additionalFonts != nil) {
            for elementAdditionalFonts in self.additionalFonts! {
                try elementAdditionalFonts.validate();
            }
        }
        if (self.customFonts != nil) {
            for elementCustomFonts in self.customFonts! {
                try elementCustomFonts.validate();
            }
        }
        if (self.systemFonts != nil) {
            for elementSystemFonts in self.systemFonts! {
                try elementSystemFonts.validate();
            }
        }

    }

    // Sets additionalFonts. Gets or sets the list of additional fonts, provided by Aspose team.
    public func setAdditionalFonts(additionalFonts : [FontInfo]?) -> AvailableFontsResponse {
        self.additionalFonts = additionalFonts;
        return self;
    }

    // Gets additionalFonts. Gets or sets the list of additional fonts, provided by Aspose team.
    public func getAdditionalFonts() -> [FontInfo]? {
        return self.additionalFonts;
    }


    // Sets customFonts. Gets or sets the list of custom user fonts from user cloud storage. To use them, you should specify "fontsLocation" parameter in any request.
    public func setCustomFonts(customFonts : [FontInfo]?) -> AvailableFontsResponse {
        self.customFonts = customFonts;
        return self;
    }

    // Gets customFonts. Gets or sets the list of custom user fonts from user cloud storage. To use them, you should specify "fontsLocation" parameter in any request.
    public func getCustomFonts() -> [FontInfo]? {
        return self.customFonts;
    }


    // Sets systemFonts. Gets or sets the list of system fonts, available on the server.
    public func setSystemFonts(systemFonts : [FontInfo]?) -> AvailableFontsResponse {
        self.systemFonts = systemFonts;
        return self;
    }

    // Gets systemFonts. Gets or sets the list of system fonts, available on the server.
    public func getSystemFonts() -> [FontInfo]? {
        return self.systemFonts;
    }
}
