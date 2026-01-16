/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableRowInsert.swift">
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
public class TableRowInsert : Codable, WordsApiModel {
    // Field of columnsCount. DTO container with a table row element.
    private var _columnsCount : Int? = nil;

    public var columnsCount : Int? {
        get {
            return self._columnsCount;
        }
        set {
            self._columnsCount = newValue;
        }
    }

    // Field of existingRowPosition. DTO container with a table row element.
    private var _existingRowPosition : Position? = nil;

    public var existingRowPosition : Position? {
        get {
            return self._existingRowPosition;
        }
        set {
            self._existingRowPosition = newValue;
        }
    }

    // Field of insertAfter. DTO container with a table row element.
    private var _insertAfter : Int? = nil;

    public var insertAfter : Int? {
        get {
            return self._insertAfter;
        }
        set {
            self._insertAfter = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case columnsCount = "ColumnsCount";
        case existingRowPosition = "ExistingRowPosition";
        case insertAfter = "InsertAfter";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.columnsCount = json["ColumnsCount"] as? Int;
        if let raw_existingRowPosition = json["ExistingRowPosition"] as? [String: Any] {
            self.existingRowPosition = try ObjectSerializer.deserialize(type: Position.self, from: raw_existingRowPosition);
        }

        self.insertAfter = json["InsertAfter"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.columnsCount = try container.decodeIfPresent(Int.self, forKey: .columnsCount);
        self.existingRowPosition = try container.decodeIfPresent(Position.self, forKey: .existingRowPosition);
        self.insertAfter = try container.decodeIfPresent(Int.self, forKey: .insertAfter);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.columnsCount != nil) {
            try container.encode(self.columnsCount, forKey: .columnsCount);
        }
        if (self.existingRowPosition != nil) {
            try container.encode(self.existingRowPosition, forKey: .existingRowPosition);
        }
        if (self.insertAfter != nil) {
            try container.encode(self.insertAfter, forKey: .insertAfter);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.columnsCount == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "columnsCount");
        }
        try self.existingRowPosition?.validate();

    }

    // Sets columnsCount. Gets or sets the count of columns. The default value is 1.
    public func setColumnsCount(columnsCount : Int?) -> TableRowInsert {
        self.columnsCount = columnsCount;
        return self;
    }

    // Gets columnsCount. Gets or sets the count of columns. The default value is 1.
    public func getColumnsCount() -> Int? {
        return self.columnsCount;
    }


    // Sets existingRowPosition. Gets or sets the position of the table row that will be used to determine the placement of a new row.
    public func setExistingRowPosition(existingRowPosition : Position?) -> TableRowInsert {
        self.existingRowPosition = existingRowPosition;
        return self;
    }

    // Gets existingRowPosition. Gets or sets the position of the table row that will be used to determine the placement of a new row.
    public func getExistingRowPosition() -> Position? {
        return self.existingRowPosition;
    }


    // Sets insertAfter. Gets or sets table row will be inserted after row with specified 0-based index.
    @available(*, deprecated, message: "This property will be removed in the future.")
    public func setInsertAfter(insertAfter : Int?) -> TableRowInsert {
        self.insertAfter = insertAfter;
        return self;
    }

    // Gets insertAfter. Gets or sets table row will be inserted after row with specified 0-based index.
    @available(*, deprecated, message: "This property will be removed in the future.")
    public func getInsertAfter() -> Int? {
        return self.insertAfter;
    }
}
