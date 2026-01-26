/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BordersResponse.swift">
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

// The REST response with a collection of borders.
// This response is returned by the Service when handling "GET {nodeWithBorders}/borders" REST API requests.
public class BordersResponse : WordsResponse {
    // Field of borders. The REST response with a collection of borders. This response is returned by the Service when handling "GET {nodeWithBorders}/borders" REST API requests.
    private var _borders : BordersCollection? = nil;

    public var borders : BordersCollection? {
        get {
            return self._borders;
        }
        set {
            self._borders = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case borders = "Borders";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_borders = json["Borders"] as? [String: Any] {
            self.borders = try ObjectSerializer.deserialize(type: BordersCollection.self, from: raw_borders);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.borders = try container.decodeIfPresent(BordersCollection.self, forKey: .borders);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.borders != nil) {
            try container.encode(self.borders, forKey: .borders);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.borders?.validate();

    }

    // Sets borders. Gets or sets the collection of borders.
    public func setBorders(borders : BordersCollection?) -> BordersResponse {
        self.borders = borders;
        return self;
    }

    // Gets borders. Gets or sets the collection of borders.
    public func getBorders() -> BordersCollection? {
        return self.borders;
    }
}
