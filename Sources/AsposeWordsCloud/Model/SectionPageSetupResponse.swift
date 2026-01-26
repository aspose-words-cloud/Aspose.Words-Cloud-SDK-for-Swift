/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SectionPageSetupResponse.swift">
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

// The REST response with a page setup of a section.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/sections/{0}/PageSetup" REST API requests.
public class SectionPageSetupResponse : WordsResponse {
    // Field of pageSetup. The REST response with a page setup of a section. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/sections/{0}/PageSetup" REST API requests.
    private var _pageSetup : PageSetup? = nil;

    public var pageSetup : PageSetup? {
        get {
            return self._pageSetup;
        }
        set {
            self._pageSetup = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case pageSetup = "PageSetup";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_pageSetup = json["PageSetup"] as? [String: Any] {
            self.pageSetup = try ObjectSerializer.deserialize(type: PageSetup.self, from: raw_pageSetup);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.pageSetup = try container.decodeIfPresent(PageSetup.self, forKey: .pageSetup);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.pageSetup != nil) {
            try container.encode(self.pageSetup, forKey: .pageSetup);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.pageSetup?.validate();

    }

    // Sets pageSetup. Gets or sets the page setup of a section.
    public func setPageSetup(pageSetup : PageSetup?) -> SectionPageSetupResponse {
        self.pageSetup = pageSetup;
        return self;
    }

    // Gets pageSetup. Gets or sets the page setup of a section.
    public func getPageSetup() -> PageSetup? {
        return self.pageSetup;
    }
}
