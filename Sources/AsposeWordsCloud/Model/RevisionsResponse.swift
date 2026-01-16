/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RevisionsResponse.swift">
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

// The revision response.
public class RevisionsResponse : WordsResponse {
    // Field of revisions. The revision response.
    private var _revisions : RevisionCollection? = nil;

    public var revisions : RevisionCollection? {
        get {
            return self._revisions;
        }
        set {
            self._revisions = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case revisions = "Revisions";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_revisions = json["Revisions"] as? [String: Any] {
            self.revisions = try ObjectSerializer.deserialize(type: RevisionCollection.self, from: raw_revisions);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.revisions = try container.decodeIfPresent(RevisionCollection.self, forKey: .revisions);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.revisions != nil) {
            try container.encode(self.revisions, forKey: .revisions);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.revisions?.validate();

    }

    // Sets revisions. Gets or sets Revisions.
    public func setRevisions(revisions : RevisionCollection?) -> RevisionsResponse {
        self.revisions = revisions;
        return self;
    }

    // Gets revisions. Gets or sets Revisions.
    public func getRevisions() -> RevisionCollection? {
        return self.revisions;
    }
}
