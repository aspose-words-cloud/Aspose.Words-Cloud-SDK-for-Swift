/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StylesResponse.swift">
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

// The REST response with an array of styles.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/styles" REST API requests.
public class StylesResponse : WordsResponse {
    // Field of styles. The REST response with an array of styles. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/styles" REST API requests.
    private var _styles : [Style]? = nil;

    public var styles : [Style]? {
        get {
            return self._styles;
        }
        set {
            self._styles = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case styles = "Styles";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_styles = json["Styles"] as? [Any] {
            self.styles = try raw_styles.map {
                if let element_styles = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: Style.self, from: element_styles);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "Style");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.styles = try container.decodeIfPresent([Style].self, forKey: .styles);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.styles != nil) {
            try container.encode(self.styles, forKey: .styles);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.styles != nil) {
            for elementStyles in self.styles! {
                try elementStyles.validate();
            }
        }

    }

    // Sets styles. Gets or sets the array of styles.
    public func setStyles(styles : [Style]?) -> StylesResponse {
        self.styles = styles;
        return self;
    }

    // Gets styles. Gets or sets the array of styles.
    public func getStyles() -> [Style]? {
        return self.styles;
    }
}
