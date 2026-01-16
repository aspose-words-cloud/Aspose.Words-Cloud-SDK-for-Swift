/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BorderResponse.swift">
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

// The REST response with a border.
// This response is returned by the Service when handling "GET {nodeWithBorders}/borders" REST API requests.
public class BorderResponse : WordsResponse {
    // Field of border. The REST response with a border. This response is returned by the Service when handling "GET {nodeWithBorders}/borders" REST API requests.
    private var _border : Border? = nil;

    public var border : Border? {
        get {
            return self._border;
        }
        set {
            self._border = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case border = "Border";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_border = json["Border"] as? [String: Any] {
            self.border = try ObjectSerializer.deserialize(type: Border.self, from: raw_border);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.border = try container.decodeIfPresent(Border.self, forKey: .border);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.border != nil) {
            try container.encode(self.border, forKey: .border);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.border?.validate();

    }

    // Sets border. Gets or sets the border.
    public func setBorder(border : Border?) -> BorderResponse {
        self.border = border;
        return self;
    }

    // Gets border. Gets or sets the border.
    public func getBorder() -> Border? {
        return self.border;
    }
}
