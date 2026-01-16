/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListsResponse.swift">
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

// The REST response with a collection of lists, contained in the document.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/lists" REST API requests.
public class ListsResponse : WordsResponse {
    // Field of lists. The REST response with a collection of lists, contained in the document. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/lists" REST API requests.
    private var _lists : Lists? = nil;

    public var lists : Lists? {
        get {
            return self._lists;
        }
        set {
            self._lists = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case lists = "Lists";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_lists = json["Lists"] as? [String: Any] {
            self.lists = try ObjectSerializer.deserialize(type: Lists.self, from: raw_lists);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.lists = try container.decodeIfPresent(Lists.self, forKey: .lists);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.lists != nil) {
            try container.encode(self.lists, forKey: .lists);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.lists?.validate();

    }

    // Sets lists. Gets or sets the collection of lists, contained in the document.
    public func setLists(lists : Lists?) -> ListsResponse {
        self.lists = lists;
        return self;
    }

    // Gets lists. Gets or sets the collection of lists, contained in the document.
    public func getLists() -> Lists? {
        return self.lists;
    }
}
