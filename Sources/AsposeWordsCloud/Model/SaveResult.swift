/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveResult.swift">
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

// Result of saving.
public class SaveResult : Codable, WordsApiModel {
    // Field of destDocument. Result of saving.
    private var _destDocument : FileLink? = nil;

    public var destDocument : FileLink? {
        get {
            return self._destDocument;
        }
        set {
            self._destDocument = newValue;
        }
    }

    // Field of sourceDocument. Result of saving.
    private var _sourceDocument : FileLink? = nil;

    public var sourceDocument : FileLink? {
        get {
            return self._sourceDocument;
        }
        set {
            self._sourceDocument = newValue;
        }
    }

    // Field of additionalItems. Result of saving.
    private var _additionalItems : [FileLink]? = nil;

    public var additionalItems : [FileLink]? {
        get {
            return self._additionalItems;
        }
        set {
            self._additionalItems = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case destDocument = "DestDocument";
        case sourceDocument = "SourceDocument";
        case additionalItems = "AdditionalItems";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_destDocument = json["DestDocument"] as? [String: Any] {
            self.destDocument = try ObjectSerializer.deserialize(type: FileLink.self, from: raw_destDocument);
        }

        if let raw_sourceDocument = json["SourceDocument"] as? [String: Any] {
            self.sourceDocument = try ObjectSerializer.deserialize(type: FileLink.self, from: raw_sourceDocument);
        }

        if let raw_additionalItems = json["AdditionalItems"] as? [Any] {
            self.additionalItems = try raw_additionalItems.map {
                if let element_additionalItems = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: FileLink.self, from: element_additionalItems);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "FileLink");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.destDocument = try container.decodeIfPresent(FileLink.self, forKey: .destDocument);
        self.sourceDocument = try container.decodeIfPresent(FileLink.self, forKey: .sourceDocument);
        self.additionalItems = try container.decodeIfPresent([FileLink].self, forKey: .additionalItems);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.destDocument != nil) {
            try container.encode(self.destDocument, forKey: .destDocument);
        }
        if (self.sourceDocument != nil) {
            try container.encode(self.sourceDocument, forKey: .sourceDocument);
        }
        if (self.additionalItems != nil) {
            try container.encode(self.additionalItems, forKey: .additionalItems);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.destDocument?.validate();
        try self.sourceDocument?.validate();
        if (self.additionalItems != nil) {
            for elementAdditionalItems in self.additionalItems! {
                try elementAdditionalItems.validate();
            }
        }

    }

    // Sets destDocument. Gets or sets the link to destination document.
    public func setDestDocument(destDocument : FileLink?) -> SaveResult {
        self.destDocument = destDocument;
        return self;
    }

    // Gets destDocument. Gets or sets the link to destination document.
    public func getDestDocument() -> FileLink? {
        return self.destDocument;
    }


    // Sets sourceDocument. Gets or sets the link to source document.
    public func setSourceDocument(sourceDocument : FileLink?) -> SaveResult {
        self.sourceDocument = sourceDocument;
        return self;
    }

    // Gets sourceDocument. Gets or sets the link to source document.
    public func getSourceDocument() -> FileLink? {
        return self.sourceDocument;
    }


    // Sets additionalItems. Gets or sets the list of links to additional items (css, images etc).
    public func setAdditionalItems(additionalItems : [FileLink]?) -> SaveResult {
        self.additionalItems = additionalItems;
        return self;
    }

    // Gets additionalItems. Gets or sets the list of links to additional items (css, images etc).
    public func getAdditionalItems() -> [FileLink]? {
        return self.additionalItems;
    }
}
