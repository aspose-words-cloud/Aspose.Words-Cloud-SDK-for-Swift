/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentEntryList.swift">
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

// Represents a list of documents which will be appended to the original resource document.
public class DocumentEntryList : BaseEntryList {
    // Field of appendAllEntriesToOneSection. Represents a list of documents which will be appended to the original resource document.
    private var _appendAllEntriesToOneSection : Bool? = nil;

    public var appendAllEntriesToOneSection : Bool? {
        get {
            return self._appendAllEntriesToOneSection;
        }
        set {
            self._appendAllEntriesToOneSection = newValue;
        }
    }

    // Field of applyBaseDocumentHeadersAndFootersToAppendingDocuments. Represents a list of documents which will be appended to the original resource document.
    private var _applyBaseDocumentHeadersAndFootersToAppendingDocuments : Bool? = nil;

    public var applyBaseDocumentHeadersAndFootersToAppendingDocuments : Bool? {
        get {
            return self._applyBaseDocumentHeadersAndFootersToAppendingDocuments;
        }
        set {
            self._applyBaseDocumentHeadersAndFootersToAppendingDocuments = newValue;
        }
    }

    // Field of documentEntries. Represents a list of documents which will be appended to the original resource document.
    private var _documentEntries : [DocumentEntry]? = nil;

    public var documentEntries : [DocumentEntry]? {
        get {
            return self._documentEntries;
        }
        set {
            self._documentEntries = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case appendAllEntriesToOneSection = "AppendAllEntriesToOneSection";
        case applyBaseDocumentHeadersAndFootersToAppendingDocuments = "ApplyBaseDocumentHeadersAndFootersToAppendingDocuments";
        case documentEntries = "DocumentEntries";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.appendAllEntriesToOneSection = json["AppendAllEntriesToOneSection"] as? Bool;
        self.applyBaseDocumentHeadersAndFootersToAppendingDocuments = json["ApplyBaseDocumentHeadersAndFootersToAppendingDocuments"] as? Bool;
        if let raw_documentEntries = json["DocumentEntries"] as? [Any] {
            self.documentEntries = try raw_documentEntries.map {
                if let element_documentEntries = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: DocumentEntry.self, from: element_documentEntries);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "DocumentEntry");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.appendAllEntriesToOneSection = try container.decodeIfPresent(Bool.self, forKey: .appendAllEntriesToOneSection);
        self.applyBaseDocumentHeadersAndFootersToAppendingDocuments = try container.decodeIfPresent(Bool.self, forKey: .applyBaseDocumentHeadersAndFootersToAppendingDocuments);
        self.documentEntries = try container.decodeIfPresent([DocumentEntry].self, forKey: .documentEntries);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.appendAllEntriesToOneSection != nil) {
            try container.encode(self.appendAllEntriesToOneSection, forKey: .appendAllEntriesToOneSection);
        }
        if (self.applyBaseDocumentHeadersAndFootersToAppendingDocuments != nil) {
            try container.encode(self.applyBaseDocumentHeadersAndFootersToAppendingDocuments, forKey: .applyBaseDocumentHeadersAndFootersToAppendingDocuments);
        }
        if (self.documentEntries != nil) {
            try container.encode(self.documentEntries, forKey: .documentEntries);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
        super.collectFilesContent(&resultFilesContent);
        if (self.documentEntries != nil)
        {
            for element in self.documentEntries! {
                element.collectFilesContent(&resultFilesContent);
            }
        }

    }

    public override func validate() throws {
        try super.validate();
        if (self.documentEntries == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "documentEntries");
        }
        if (self.documentEntries != nil) {
            for elementDocumentEntries in self.documentEntries! {
                try elementDocumentEntries.validate();
            }
        }

    }

    // Sets appendAllEntriesToOneSection. Gets or sets a value indicating whether to append all documents to the same section.
    public func setAppendAllEntriesToOneSection(appendAllEntriesToOneSection : Bool?) -> DocumentEntryList {
        self.appendAllEntriesToOneSection = appendAllEntriesToOneSection;
        return self;
    }

    // Gets appendAllEntriesToOneSection. Gets or sets a value indicating whether to append all documents to the same section.
    public func getAppendAllEntriesToOneSection() -> Bool? {
        return self.appendAllEntriesToOneSection;
    }


    // Sets applyBaseDocumentHeadersAndFootersToAppendingDocuments. Gets or sets a value indicating whether to apply headers and footers from base document to appending documents. The default value is true.
    public func setApplyBaseDocumentHeadersAndFootersToAppendingDocuments(applyBaseDocumentHeadersAndFootersToAppendingDocuments : Bool?) -> DocumentEntryList {
        self.applyBaseDocumentHeadersAndFootersToAppendingDocuments = applyBaseDocumentHeadersAndFootersToAppendingDocuments;
        return self;
    }

    // Gets applyBaseDocumentHeadersAndFootersToAppendingDocuments. Gets or sets a value indicating whether to apply headers and footers from base document to appending documents. The default value is true.
    public func getApplyBaseDocumentHeadersAndFootersToAppendingDocuments() -> Bool? {
        return self.applyBaseDocumentHeadersAndFootersToAppendingDocuments;
    }


    // Sets documentEntries. Gets or sets the list of documents.
    public func setDocumentEntries(documentEntries : [DocumentEntry]?) -> DocumentEntryList {
        self.documentEntries = documentEntries;
        return self;
    }

    // Gets documentEntries. Gets or sets the list of documents.
    public func getDocumentEntries() -> [DocumentEntry]? {
        return self.documentEntries;
    }
}
