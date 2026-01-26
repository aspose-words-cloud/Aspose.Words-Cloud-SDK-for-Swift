/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RangeDocument.swift">
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

// DTO container with a Range element.
public class RangeDocument : Codable, WordsApiModel {
    // Field of documentName. DTO container with a Range element.
    private var _documentName : String? = nil;

    public var documentName : String? {
        get {
            return self._documentName;
        }
        set {
            self._documentName = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case documentName = "DocumentName";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.documentName = json["DocumentName"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.documentName = try container.decodeIfPresent(String.self, forKey: .documentName);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.documentName != nil) {
            try container.encode(self.documentName, forKey: .documentName);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.documentName == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "documentName");
        }
    }

    // Sets documentName. Gets or sets the name for a new document.
    public func setDocumentName(documentName : String?) -> RangeDocument {
        self.documentName = documentName;
        return self;
    }

    // Gets documentName. Gets or sets the name for a new document.
    public func getDocumentName() -> String? {
        return self.documentName;
    }
}
