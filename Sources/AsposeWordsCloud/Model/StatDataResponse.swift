/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StatDataResponse.swift">
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

// The REST response with document's statistical data.
public class StatDataResponse : WordsResponse {
    // Field of documentLink. The REST response with document's statistical data.
    private var _documentLink : FileLink? = nil;

    public var documentLink : FileLink? {
        get {
            return self._documentLink;
        }
        set {
            self._documentLink = newValue;
        }
    }

    // Field of statData. The REST response with document's statistical data.
    private var _statData : DocumentStatData? = nil;

    public var statData : DocumentStatData? {
        get {
            return self._statData;
        }
        set {
            self._statData = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case documentLink = "DocumentLink";
        case statData = "StatData";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_documentLink = json["DocumentLink"] as? [String: Any] {
            self.documentLink = try ObjectSerializer.deserialize(type: FileLink.self, from: raw_documentLink);
        }

        if let raw_statData = json["StatData"] as? [String: Any] {
            self.statData = try ObjectSerializer.deserialize(type: DocumentStatData.self, from: raw_statData);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.documentLink = try container.decodeIfPresent(FileLink.self, forKey: .documentLink);
        self.statData = try container.decodeIfPresent(DocumentStatData.self, forKey: .statData);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.documentLink != nil) {
            try container.encode(self.documentLink, forKey: .documentLink);
        }
        if (self.statData != nil) {
            try container.encode(self.statData, forKey: .statData);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.documentLink?.validate();
        try self.statData?.validate();

    }

    // Sets documentLink. Gets or sets the link to the document.
    public func setDocumentLink(documentLink : FileLink?) -> StatDataResponse {
        self.documentLink = documentLink;
        return self;
    }

    // Gets documentLink. Gets or sets the link to the document.
    public func getDocumentLink() -> FileLink? {
        return self.documentLink;
    }


    // Sets statData. Gets or sets the statistical data of the document.
    public func setStatData(statData : DocumentStatData?) -> StatDataResponse {
        self.statData = statData;
        return self;
    }

    // Gets statData. Gets or sets the statistical data of the document.
    public func getStatData() -> DocumentStatData? {
        return self.statData;
    }
}
