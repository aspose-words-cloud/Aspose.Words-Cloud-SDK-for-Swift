/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableRow.swift">
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

// DTO container with a table row element.
public class TableRow : NodeLink {
    // Field of tableCellList. DTO container with a table row element.
    private var _tableCellList : [TableCell]? = nil;

    public var tableCellList : [TableCell]? {
        get {
            return self._tableCellList;
        }
        set {
            self._tableCellList = newValue;
        }
    }

    // Field of rowFormat. DTO container with a table row element.
    private var _rowFormat : TableRowFormat? = nil;

    public var rowFormat : TableRowFormat? {
        get {
            return self._rowFormat;
        }
        set {
            self._rowFormat = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case tableCellList = "TableCellList";
        case rowFormat = "RowFormat";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_tableCellList = json["TableCellList"] as? [Any] {
            self.tableCellList = try raw_tableCellList.map {
                if let element_tableCellList = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: TableCell.self, from: element_tableCellList);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "TableCell");
                }
            };
        }

        if let raw_rowFormat = json["RowFormat"] as? [String: Any] {
            self.rowFormat = try ObjectSerializer.deserialize(type: TableRowFormat.self, from: raw_rowFormat);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.tableCellList = try container.decodeIfPresent([TableCell].self, forKey: .tableCellList);
        self.rowFormat = try container.decodeIfPresent(TableRowFormat.self, forKey: .rowFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.tableCellList != nil) {
            try container.encode(self.tableCellList, forKey: .tableCellList);
        }
        if (self.rowFormat != nil) {
            try container.encode(self.rowFormat, forKey: .rowFormat);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.tableCellList != nil) {
            for elementTableCellList in self.tableCellList! {
                try elementTableCellList.validate();
            }
        }
        try self.rowFormat?.validate();

    }

    // Sets tableCellList. Gets or sets the collection of rows.
    public func setTableCellList(tableCellList : [TableCell]?) -> TableRow {
        self.tableCellList = tableCellList;
        return self;
    }

    // Gets tableCellList. Gets or sets the collection of rows.
    public func getTableCellList() -> [TableCell]? {
        return self.tableCellList;
    }


    // Sets rowFormat. Gets or sets the formatting properties of a row.
    public func setRowFormat(rowFormat : TableRowFormat?) -> TableRow {
        self.rowFormat = rowFormat;
        return self;
    }

    // Gets rowFormat. Gets or sets the formatting properties of a row.
    public func getRowFormat() -> TableRowFormat? {
        return self.rowFormat;
    }
}
