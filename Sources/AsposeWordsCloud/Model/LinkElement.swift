/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="LinkElement.swift">
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

// Reference to a document.
public class LinkElement : Codable, WordsApiModel {
    // Field of link. Reference to a document.
    private var _link : WordsApiLink? = nil;

    public var link : WordsApiLink? {
        get {
            return self._link;
        }
        set {
            self._link = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case link = "Link";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_link = json["Link"] as? [String: Any] {
            self.link = try ObjectSerializer.deserialize(type: WordsApiLink.self, from: raw_link);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.link = try container.decodeIfPresent(WordsApiLink.self, forKey: .link);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.link != nil) {
            try container.encode(self.link, forKey: .link);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.link?.validate();

    }

    // Sets link. Gets or sets the link to the document.
    public func setLink(link : WordsApiLink?) -> LinkElement {
        self.link = link;
        return self;
    }

    // Gets link. Gets or sets the link to the document.
    public func getLink() -> WordsApiLink? {
        return self.link;
    }
}
