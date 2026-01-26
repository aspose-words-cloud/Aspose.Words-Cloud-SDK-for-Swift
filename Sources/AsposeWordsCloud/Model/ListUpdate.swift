/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListUpdate.swift">
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

// Update document properties if document list.
public class ListUpdate : Codable, WordsApiModel {
    // Field of isRestartAtEachSection. Update document properties if document list.
    private var _isRestartAtEachSection : Bool? = nil;

    public var isRestartAtEachSection : Bool? {
        get {
            return self._isRestartAtEachSection;
        }
        set {
            self._isRestartAtEachSection = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case isRestartAtEachSection = "IsRestartAtEachSection";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.isRestartAtEachSection = json["IsRestartAtEachSection"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isRestartAtEachSection = try container.decodeIfPresent(Bool.self, forKey: .isRestartAtEachSection);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isRestartAtEachSection != nil) {
            try container.encode(self.isRestartAtEachSection, forKey: .isRestartAtEachSection);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets isRestartAtEachSection. Gets or sets a value indicating whether list should be restarted at each section. The default value is false. This option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if Aspose.Words.Saving.OoxmlCompliance is higher than Aspose.Words.Saving.OoxmlCompliance.Ecma376_2006.
    public func setIsRestartAtEachSection(isRestartAtEachSection : Bool?) -> ListUpdate {
        self.isRestartAtEachSection = isRestartAtEachSection;
        return self;
    }

    // Gets isRestartAtEachSection. Gets or sets a value indicating whether list should be restarted at each section. The default value is false. This option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if Aspose.Words.Saving.OoxmlCompliance is higher than Aspose.Words.Saving.OoxmlCompliance.Ecma376_2006.
    public func getIsRestartAtEachSection() -> Bool? {
        return self.isRestartAtEachSection;
    }
}
