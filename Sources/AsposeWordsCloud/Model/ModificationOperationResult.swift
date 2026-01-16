/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ModificationOperationResult.swift">
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

// result of the operation which modifies the original document and saves the result.
public class ModificationOperationResult : Codable, WordsApiModel {
    // Field of dest. result of the operation which modifies the original document and saves the result.
    private var _dest : FileLink? = nil;

    public var dest : FileLink? {
        get {
            return self._dest;
        }
        set {
            self._dest = newValue;
        }
    }

    // Field of source. result of the operation which modifies the original document and saves the result.
    private var _source : FileLink? = nil;

    public var source : FileLink? {
        get {
            return self._source;
        }
        set {
            self._source = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case dest = "Dest";
        case source = "Source";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_dest = json["Dest"] as? [String: Any] {
            self.dest = try ObjectSerializer.deserialize(type: FileLink.self, from: raw_dest);
        }

        if let raw_source = json["Source"] as? [String: Any] {
            self.source = try ObjectSerializer.deserialize(type: FileLink.self, from: raw_source);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.dest = try container.decodeIfPresent(FileLink.self, forKey: .dest);
        self.source = try container.decodeIfPresent(FileLink.self, forKey: .source);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.dest != nil) {
            try container.encode(self.dest, forKey: .dest);
        }
        if (self.source != nil) {
            try container.encode(self.source, forKey: .source);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.dest?.validate();
        try self.source?.validate();

    }

    // Sets dest. Gets or sets the link to the dest document (result of the modification operation).
    public func setDest(dest : FileLink?) -> ModificationOperationResult {
        self.dest = dest;
        return self;
    }

    // Gets dest. Gets or sets the link to the dest document (result of the modification operation).
    public func getDest() -> FileLink? {
        return self.dest;
    }


    // Sets source. Gets or sets the link to the source document (source for the modification operation).
    public func setSource(source : FileLink?) -> ModificationOperationResult {
        self.source = source;
        return self;
    }

    // Gets source. Gets or sets the link to the source document (source for the modification operation).
    public func getSource() -> FileLink? {
        return self.source;
    }
}
