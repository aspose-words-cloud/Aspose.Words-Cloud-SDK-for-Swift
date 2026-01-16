/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HyperlinksResponse.swift">
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

// The REST response with a collection of hyperlinks.
// This response should be returned by the service when handling "GET /{name}/hyperlinks" REST API calls.
public class HyperlinksResponse : WordsResponse {
    // Field of hyperlinks. The REST response with a collection of hyperlinks. This response should be returned by the service when handling "GET /{name}/hyperlinks" REST API calls.
    private var _hyperlinks : Hyperlinks? = nil;

    public var hyperlinks : Hyperlinks? {
        get {
            return self._hyperlinks;
        }
        set {
            self._hyperlinks = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case hyperlinks = "Hyperlinks";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_hyperlinks = json["Hyperlinks"] as? [String: Any] {
            self.hyperlinks = try ObjectSerializer.deserialize(type: Hyperlinks.self, from: raw_hyperlinks);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.hyperlinks = try container.decodeIfPresent(Hyperlinks.self, forKey: .hyperlinks);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.hyperlinks != nil) {
            try container.encode(self.hyperlinks, forKey: .hyperlinks);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.hyperlinks?.validate();

    }

    // Sets hyperlinks. Gets or sets the collection of hyperlinks.
    public func setHyperlinks(hyperlinks : Hyperlinks?) -> HyperlinksResponse {
        self.hyperlinks = hyperlinks;
        return self;
    }

    // Gets hyperlinks. Gets or sets the collection of hyperlinks.
    public func getHyperlinks() -> Hyperlinks? {
        return self.hyperlinks;
    }
}
