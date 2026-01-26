/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Document.swift">
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

// Represents Words document DTO.
public class Document : Codable, WordsApiModel {
    // Gets or sets the original format of the document.
    public enum SourceFormat : String, Codable
    {
        // Enum value "unknown"
        case unknown = "Unknown"

        // Enum value "doc"
        case doc = "Doc"

        // Enum value "dot"
        case dot = "Dot"

        // Enum value "docPreWord60"
        case docPreWord60 = "DocPreWord60"

        // Enum value "docx"
        case docx = "Docx"

        // Enum value "docm"
        case docm = "Docm"

        // Enum value "dotx"
        case dotx = "Dotx"

        // Enum value "dotm"
        case dotm = "Dotm"

        // Enum value "flatOpc"
        case flatOpc = "FlatOpc"

        // Enum value "rtf"
        case rtf = "Rtf"

        // Enum value "wordML"
        case wordML = "WordML"

        // Enum value "html"
        case html = "Html"

        // Enum value "mhtml"
        case mhtml = "Mhtml"

        // Enum value "epub"
        case epub = "Epub"

        // Enum value "text"
        case text = "Text"

        // Enum value "odt"
        case odt = "Odt"

        // Enum value "ott"
        case ott = "Ott"

        // Enum value "pdf"
        case pdf = "Pdf"

        // Enum value "xps"
        case xps = "Xps"

        // Enum value "tiff"
        case tiff = "Tiff"

        // Enum value "svg"
        case svg = "Svg"

        // Enum value "azw3"
        case azw3 = "Azw3"
    }

    // Field of links. Represents Words document DTO.
    private var _links : [Link]? = nil;

    public var links : [Link]? {
        get {
            return self._links;
        }
        set {
            self._links = newValue;
        }
    }

    // Field of documentProperties. Represents Words document DTO.
    private var _documentProperties : DocumentProperties? = nil;

    public var documentProperties : DocumentProperties? {
        get {
            return self._documentProperties;
        }
        set {
            self._documentProperties = newValue;
        }
    }

    // Field of fileName. Represents Words document DTO.
    private var _fileName : String? = nil;

    public var fileName : String? {
        get {
            return self._fileName;
        }
        set {
            self._fileName = newValue;
        }
    }

    // Field of fileSize. Represents Words document DTO.
    private var _fileSize : Int? = nil;

    public var fileSize : Int? {
        get {
            return self._fileSize;
        }
        set {
            self._fileSize = newValue;
        }
    }

    // Field of isEncrypted. Represents Words document DTO.
    private var _isEncrypted : Bool? = nil;

    public var isEncrypted : Bool? {
        get {
            return self._isEncrypted;
        }
        set {
            self._isEncrypted = newValue;
        }
    }

    // Field of isSigned. Represents Words document DTO.
    private var _isSigned : Bool? = nil;

    public var isSigned : Bool? {
        get {
            return self._isSigned;
        }
        set {
            self._isSigned = newValue;
        }
    }

    // Field of sourceFormat. Represents Words document DTO.
    private var _sourceFormat : SourceFormat? = nil;

    public var sourceFormat : SourceFormat? {
        get {
            return self._sourceFormat;
        }
        set {
            self._sourceFormat = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case links = "Links";
        case documentProperties = "DocumentProperties";
        case fileName = "FileName";
        case fileSize = "FileSize";
        case isEncrypted = "IsEncrypted";
        case isSigned = "IsSigned";
        case sourceFormat = "SourceFormat";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_links = json["Links"] as? [Any] {
            self.links = try raw_links.map {
                if let element_links = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: Link.self, from: element_links);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "Link");
                }
            };
        }

        if let raw_documentProperties = json["DocumentProperties"] as? [String: Any] {
            self.documentProperties = try ObjectSerializer.deserialize(type: DocumentProperties.self, from: raw_documentProperties);
        }

        self.fileName = json["FileName"] as? String;
        self.fileSize = json["FileSize"] as? Int;
        self.isEncrypted = json["IsEncrypted"] as? Bool;
        self.isSigned = json["IsSigned"] as? Bool;
        if let raw_sourceFormat = json["SourceFormat"] as? String {
            self.sourceFormat = SourceFormat(rawValue: raw_sourceFormat);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.links = try container.decodeIfPresent([Link].self, forKey: .links);
        self.documentProperties = try container.decodeIfPresent(DocumentProperties.self, forKey: .documentProperties);
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName);
        self.fileSize = try container.decodeIfPresent(Int.self, forKey: .fileSize);
        self.isEncrypted = try container.decodeIfPresent(Bool.self, forKey: .isEncrypted);
        self.isSigned = try container.decodeIfPresent(Bool.self, forKey: .isSigned);
        self.sourceFormat = try container.decodeIfPresent(SourceFormat.self, forKey: .sourceFormat);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.links != nil) {
            try container.encode(self.links, forKey: .links);
        }
        if (self.documentProperties != nil) {
            try container.encode(self.documentProperties, forKey: .documentProperties);
        }
        if (self.fileName != nil) {
            try container.encode(self.fileName, forKey: .fileName);
        }
        if (self.fileSize != nil) {
            try container.encode(self.fileSize, forKey: .fileSize);
        }
        if (self.isEncrypted != nil) {
            try container.encode(self.isEncrypted, forKey: .isEncrypted);
        }
        if (self.isSigned != nil) {
            try container.encode(self.isSigned, forKey: .isSigned);
        }
        if (self.sourceFormat != nil) {
            try container.encode(self.sourceFormat, forKey: .sourceFormat);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.isEncrypted == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isEncrypted");
        }
        if (self.isSigned == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isSigned");
        }
        if (self.sourceFormat == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "sourceFormat");
        }
        if (self.links != nil) {
            for elementLinks in self.links! {
                try elementLinks.validate();
            }
        }
        try self.documentProperties?.validate();

    }

    // Sets links. Gets or sets the list of links that originate from this document.
    public func setLinks(links : [Link]?) -> Document {
        self.links = links;
        return self;
    }

    // Gets links. Gets or sets the list of links that originate from this document.
    public func getLinks() -> [Link]? {
        return self.links;
    }


    // Sets documentProperties. Gets or sets the document properties.
    public func setDocumentProperties(documentProperties : DocumentProperties?) -> Document {
        self.documentProperties = documentProperties;
        return self;
    }

    // Gets documentProperties. Gets or sets the document properties.
    public func getDocumentProperties() -> DocumentProperties? {
        return self.documentProperties;
    }


    // Sets fileName. Gets or sets the name of the file.
    public func setFileName(fileName : String?) -> Document {
        self.fileName = fileName;
        return self;
    }

    // Gets fileName. Gets or sets the name of the file.
    public func getFileName() -> String? {
        return self.fileName;
    }


    // Sets fileSize. Gets or sets the file size.
    public func setFileSize(fileSize : Int?) -> Document {
        self.fileSize = fileSize;
        return self;
    }

    // Gets fileSize. Gets or sets the file size.
    public func getFileSize() -> Int? {
        return self.fileSize;
    }


    // Sets isEncrypted. Gets or sets a value indicating whether the document is encrypted and requires a password to open.
    public func setIsEncrypted(isEncrypted : Bool?) -> Document {
        self.isEncrypted = isEncrypted;
        return self;
    }

    // Gets isEncrypted. Gets or sets a value indicating whether the document is encrypted and requires a password to open.
    public func getIsEncrypted() -> Bool? {
        return self.isEncrypted;
    }


    // Sets isSigned. Gets or sets a value indicating whether the document contains a digital signature. This property merely informs that a digital signature is present on a document, but it does not specify whether the signature is valid or not.
    public func setIsSigned(isSigned : Bool?) -> Document {
        self.isSigned = isSigned;
        return self;
    }

    // Gets isSigned. Gets or sets a value indicating whether the document contains a digital signature. This property merely informs that a digital signature is present on a document, but it does not specify whether the signature is valid or not.
    public func getIsSigned() -> Bool? {
        return self.isSigned;
    }


    // Sets sourceFormat. Gets or sets the original format of the document.
    public func setSourceFormat(sourceFormat : SourceFormat?) -> Document {
        self.sourceFormat = sourceFormat;
        return self;
    }

    // Gets sourceFormat. Gets or sets the original format of the document.
    public func getSourceFormat() -> SourceFormat? {
        return self.sourceFormat;
    }
}
