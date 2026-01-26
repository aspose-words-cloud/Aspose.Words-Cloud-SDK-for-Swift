/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CommentResponse.swift">
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

// The REST response with a comment.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/comments/0" REST API requests.
public class CommentResponse : WordsResponse {
    // Field of comment. The REST response with a comment. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/comments/0" REST API requests.
    private var _comment : Comment? = nil;

    public var comment : Comment? {
        get {
            return self._comment;
        }
        set {
            self._comment = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case comment = "Comment";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_comment = json["Comment"] as? [String: Any] {
            self.comment = try ObjectSerializer.deserialize(type: Comment.self, from: raw_comment);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.comment = try container.decodeIfPresent(Comment.self, forKey: .comment);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.comment != nil) {
            try container.encode(self.comment, forKey: .comment);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.comment?.validate();

    }

    // Sets comment. Gets or sets the comment.
    public func setComment(comment : Comment?) -> CommentResponse {
        self.comment = comment;
        return self;
    }

    // Gets comment. Gets or sets the comment.
    public func getComment() -> Comment? {
        return self.comment;
    }
}
