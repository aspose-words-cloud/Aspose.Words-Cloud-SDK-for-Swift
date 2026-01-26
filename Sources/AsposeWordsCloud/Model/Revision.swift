/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Revision.swift">
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

// Revision Dto.
public class Revision : Codable, WordsApiModel {
    // Field of revisionAuthor. Revision Dto.
    private var _revisionAuthor : String? = nil;

    public var revisionAuthor : String? {
        get {
            return self._revisionAuthor;
        }
        set {
            self._revisionAuthor = newValue;
        }
    }

    // Field of revisionDateTime. Revision Dto.
    private var _revisionDateTime : Date? = nil;

    public var revisionDateTime : Date? {
        get {
            return self._revisionDateTime;
        }
        set {
            self._revisionDateTime = newValue;
        }
    }

    // Field of revisionText. Revision Dto.
    private var _revisionText : String? = nil;

    public var revisionText : String? {
        get {
            return self._revisionText;
        }
        set {
            self._revisionText = newValue;
        }
    }

    // Field of revisionType. Revision Dto.
    private var _revisionType : String? = nil;

    public var revisionType : String? {
        get {
            return self._revisionType;
        }
        set {
            self._revisionType = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case revisionAuthor = "RevisionAuthor";
        case revisionDateTime = "RevisionDateTime";
        case revisionText = "RevisionText";
        case revisionType = "RevisionType";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.revisionAuthor = json["RevisionAuthor"] as? String;
        if let raw_revisionDateTime = json["RevisionDateTime"] as? String {
            self.revisionDateTime = ObjectSerializer.customIso8601.date(from: raw_revisionDateTime);
        }

        self.revisionText = json["RevisionText"] as? String;
        self.revisionType = json["RevisionType"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.revisionAuthor = try container.decodeIfPresent(String.self, forKey: .revisionAuthor);
        var raw_revisionDateTime = try container.decodeIfPresent(String.self, forKey: .revisionDateTime);
        if (raw_revisionDateTime != nil) {
            raw_revisionDateTime = raw_revisionDateTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.revisionDateTime = ObjectSerializer.customIso8601.date(from: raw_revisionDateTime!)!;
        }

        self.revisionText = try container.decodeIfPresent(String.self, forKey: .revisionText);
        self.revisionType = try container.decodeIfPresent(String.self, forKey: .revisionType);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.revisionAuthor != nil) {
            try container.encode(self.revisionAuthor, forKey: .revisionAuthor);
        }
        if (self.revisionDateTime != nil) {
            try container.encode(self.revisionDateTime, forKey: .revisionDateTime);
        }
        if (self.revisionText != nil) {
            try container.encode(self.revisionText, forKey: .revisionText);
        }
        if (self.revisionType != nil) {
            try container.encode(self.revisionType, forKey: .revisionType);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.revisionDateTime == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "revisionDateTime");
        }
    }

    // Sets revisionAuthor. Gets or sets the revision author.
    public func setRevisionAuthor(revisionAuthor : String?) -> Revision {
        self.revisionAuthor = revisionAuthor;
        return self;
    }

    // Gets revisionAuthor. Gets or sets the revision author.
    public func getRevisionAuthor() -> String? {
        return self.revisionAuthor;
    }


    // Sets revisionDateTime. Gets or sets the revision date time.
    public func setRevisionDateTime(revisionDateTime : Date?) -> Revision {
        self.revisionDateTime = revisionDateTime;
        return self;
    }

    // Gets revisionDateTime. Gets or sets the revision date time.
    public func getRevisionDateTime() -> Date? {
        return self.revisionDateTime;
    }


    // Sets revisionText. Gets or sets the revision text.
    public func setRevisionText(revisionText : String?) -> Revision {
        self.revisionText = revisionText;
        return self;
    }

    // Gets revisionText. Gets or sets the revision text.
    public func getRevisionText() -> String? {
        return self.revisionText;
    }


    // Sets revisionType. Gets or sets the revision type.
    public func setRevisionType(revisionType : String?) -> Revision {
        self.revisionType = revisionType;
        return self;
    }

    // Gets revisionType. Gets or sets the revision type.
    public func getRevisionType() -> String? {
        return self.revisionType;
    }
}
