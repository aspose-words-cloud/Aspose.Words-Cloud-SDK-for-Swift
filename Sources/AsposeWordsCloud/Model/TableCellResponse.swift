/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableCellResponse.swift">
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

// The REST response with a table cell.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/tables/{0}" REST API requests.
public class TableCellResponse : WordsResponse {
    // Field of cell. The REST response with a table cell. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/tables/{0}" REST API requests.
    private var _cell : TableCell? = nil;

    public var cell : TableCell? {
        get {
            return self._cell;
        }
        set {
            self._cell = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case cell = "Cell";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_cell = json["Cell"] as? [String: Any] {
            self.cell = try ObjectSerializer.deserialize(type: TableCell.self, from: raw_cell);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.cell = try container.decodeIfPresent(TableCell.self, forKey: .cell);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.cell != nil) {
            try container.encode(self.cell, forKey: .cell);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.cell?.validate();

    }

    // Sets cell. Gets or sets the table cell.
    public func setCell(cell : TableCell?) -> TableCellResponse {
        self.cell = cell;
        return self;
    }

    // Gets cell. Gets or sets the table cell.
    public func getCell() -> TableCell? {
        return self.cell;
    }
}
