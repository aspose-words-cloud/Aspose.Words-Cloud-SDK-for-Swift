/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableCellFormatResponse.swift">
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

// The REST response with the formatting properties of a table cell.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/tables/{0}/rows/{1}/cells/{2}/cellformat" REST API requests.
public class TableCellFormatResponse : WordsResponse {
    // Field of cellFormat. The REST response with the formatting properties of a table cell. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/tables/{0}/rows/{1}/cells/{2}/cellformat" REST API requests.
    private var _cellFormat : TableCellFormat? = nil;

    public var cellFormat : TableCellFormat? {
        get {
            return self._cellFormat;
        }
        set {
            self._cellFormat = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case cellFormat = "CellFormat";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_cellFormat = json["CellFormat"] as? [String: Any] {
            self.cellFormat = try ObjectSerializer.deserialize(type: TableCellFormat.self, from: raw_cellFormat);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.cellFormat = try container.decodeIfPresent(TableCellFormat.self, forKey: .cellFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.cellFormat != nil) {
            try container.encode(self.cellFormat, forKey: .cellFormat);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.cellFormat?.validate();

    }

    // Sets cellFormat. Gets or sets the formatting properties of a table cell.
    public func setCellFormat(cellFormat : TableCellFormat?) -> TableCellFormatResponse {
        self.cellFormat = cellFormat;
        return self;
    }

    // Gets cellFormat. Gets or sets the formatting properties of a table cell.
    public func getCellFormat() -> TableCellFormat? {
        return self.cellFormat;
    }
}
