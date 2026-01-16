/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BaseEntry.swift">
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

// Represents a base class for document which will be appended to the original resource document.
public class BaseEntry : Codable, WordsApiModel {
    // Field of fileReference. Represents a base class for document which will be appended to the original resource document.
    private var _fileReference : FileReference? = nil;

    public var fileReference : FileReference? {
        get {
            return self._fileReference;
        }
        set {
            self._fileReference = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case fileReference = "FileReference";
        case invalidCodingKey;
    }

    internal init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_fileReference = json["FileReference"] as? [String: Any] {
            self.fileReference = try ObjectSerializer.deserialize(type: FileReference.self, from: raw_fileReference);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.fileReference = try container.decodeIfPresent(FileReference.self, forKey: .fileReference);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.fileReference != nil) {
            try container.encode(self.fileReference, forKey: .fileReference);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
        if (self.fileReference != nil)
        {
            self.fileReference!.collectFilesContent(&resultFilesContent);
        }

    }

    public func validate() throws {
        if (self.fileReference == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "fileReference");
        }
        try self.fileReference?.validate();

    }

    // Sets fileReference. Gets or sets the file reference.
    public func setFileReference(fileReference : FileReference?) -> BaseEntry {
        self.fileReference = fileReference;
        return self;
    }

    // Gets fileReference. Gets or sets the file reference.
    public func getFileReference() -> FileReference? {
        return self.fileReference;
    }
}
