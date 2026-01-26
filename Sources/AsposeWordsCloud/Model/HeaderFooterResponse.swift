/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HeaderFooterResponse.swift">
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

// The REST response with a HeaderFooter.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/headersfooters/{0}" REST API requests.
public class HeaderFooterResponse : WordsResponse {
    // Field of headerFooter. The REST response with a HeaderFooter. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/headersfooters/{0}" REST API requests.
    private var _headerFooter : HeaderFooter? = nil;

    public var headerFooter : HeaderFooter? {
        get {
            return self._headerFooter;
        }
        set {
            self._headerFooter = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case headerFooter = "HeaderFooter";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_headerFooter = json["HeaderFooter"] as? [String: Any] {
            self.headerFooter = try ObjectSerializer.deserialize(type: HeaderFooter.self, from: raw_headerFooter);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.headerFooter = try container.decodeIfPresent(HeaderFooter.self, forKey: .headerFooter);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.headerFooter != nil) {
            try container.encode(self.headerFooter, forKey: .headerFooter);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.headerFooter?.validate();

    }

    // Sets headerFooter. Gets or sets the HeaderFooter.
    public func setHeaderFooter(headerFooter : HeaderFooter?) -> HeaderFooterResponse {
        self.headerFooter = headerFooter;
        return self;
    }

    // Gets headerFooter. Gets or sets the HeaderFooter.
    public func getHeaderFooter() -> HeaderFooter? {
        return self.headerFooter;
    }
}
