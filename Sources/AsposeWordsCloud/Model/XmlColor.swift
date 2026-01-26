/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XmlColor.swift">
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

// Utility class for Color serialization.
public class XmlColor : Codable, WordsApiModel {
    // Field of alpha. Utility class for Color serialization.
    private var _alpha : Int? = nil;

    public var alpha : Int? {
        get {
            return self._alpha;
        }
        set {
            self._alpha = newValue;
        }
    }

    // Field of web. Utility class for Color serialization.
    private var _web : String? = nil;

    public var web : String? {
        get {
            return self._web;
        }
        set {
            self._web = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case alpha = "Alpha";
        case web = "Web";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.alpha = json["Alpha"] as? Int;
        self.web = json["Web"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alpha = try container.decodeIfPresent(Int.self, forKey: .alpha);
        self.web = try container.decodeIfPresent(String.self, forKey: .web);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alpha != nil) {
            try container.encode(self.alpha, forKey: .alpha);
        }
        if (self.web != nil) {
            try container.encode(self.web, forKey: .web);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets alpha. Gets or sets the Alpha component of color structure.
    public func setAlpha(alpha : Int?) -> XmlColor {
        self.alpha = alpha;
        return self;
    }

    // Gets alpha. Gets or sets the Alpha component of color structure.
    public func getAlpha() -> Int? {
        return self.alpha;
    }


    // Sets web. Gets or sets the HTML string color representation.
    public func setWeb(web : String?) -> XmlColor {
        self.web = web;
        return self;
    }

    // Gets web. Gets or sets the HTML string color representation.
    public func getWeb() -> String? {
        return self.web;
    }
}
