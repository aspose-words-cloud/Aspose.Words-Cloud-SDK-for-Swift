/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TranslateNodeIdResponse.swift">
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

// The REST response with a node path.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/translate/{0}" REST API requests.
public class TranslateNodeIdResponse : WordsResponse {
    // Field of path. The REST response with a node path. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/translate/{0}" REST API requests.
    private var _path : String? = nil;

    public var path : String? {
        get {
            return self._path;
        }
        set {
            self._path = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case path = "Path";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.path = json["Path"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.path = try container.decodeIfPresent(String.self, forKey: .path);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.path != nil) {
            try container.encode(self.path, forKey: .path);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets path. Gets or sets the node path.
    public func setPath(path : String?) -> TranslateNodeIdResponse {
        self.path = path;
        return self;
    }

    // Gets path. Gets or sets the node path.
    public func getPath() -> String? {
        return self.path;
    }
}
