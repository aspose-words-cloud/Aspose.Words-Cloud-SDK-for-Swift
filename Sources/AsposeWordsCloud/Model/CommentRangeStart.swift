/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CommentRangeStart.swift">
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

// Comment range start link.
public class CommentRangeStart : NodeLink {
    // Field of commentLink. Comment range start link.
    private var _commentLink : CommentLink? = nil;

    public var commentLink : CommentLink? {
        get {
            return self._commentLink;
        }
        set {
            self._commentLink = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case commentLink = "CommentLink";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_commentLink = json["CommentLink"] as? [String: Any] {
            self.commentLink = try ObjectSerializer.deserialize(type: CommentLink.self, from: raw_commentLink);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.commentLink = try container.decodeIfPresent(CommentLink.self, forKey: .commentLink);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.commentLink != nil) {
            try container.encode(self.commentLink, forKey: .commentLink);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.commentLink?.validate();

    }

    // Sets commentLink. Gets or sets the link to comment.
    public func setCommentLink(commentLink : CommentLink?) -> CommentRangeStart {
        self.commentLink = commentLink;
        return self;
    }

    // Gets commentLink. Gets or sets the link to comment.
    public func getCommentLink() -> CommentLink? {
        return self.commentLink;
    }
}
