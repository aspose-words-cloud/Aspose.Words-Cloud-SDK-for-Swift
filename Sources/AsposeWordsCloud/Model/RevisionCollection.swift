/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RevisionCollection.swift">
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

// RevisionCollection DTO.
public class RevisionCollection : Codable, WordsApiModel {
    // Field of revisions. RevisionCollection DTO.
    private var _revisions : [Revision]? = nil;

    public var revisions : [Revision]? {
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

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_revisions = json["Revisions"] as? [Any] {
            self.revisions = try raw_revisions.map {
                if let element_revisions = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: Revision.self, from: element_revisions);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "Revision");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.revisions = try container.decodeIfPresent([Revision].self, forKey: .revisions);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.revisions != nil) {
            try container.encode(self.revisions, forKey: .revisions);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.revisions != nil) {
            for elementRevisions in self.revisions! {
                try elementRevisions.validate();
            }
        }

    }

    // Sets revisions. Gets or sets the revisions.
    public func setRevisions(revisions : [Revision]?) -> RevisionCollection {
        self.revisions = revisions;
        return self;
    }

    // Gets revisions. Gets or sets the revisions.
    public func getRevisions() -> [Revision]? {
        return self.revisions;
    }
}
