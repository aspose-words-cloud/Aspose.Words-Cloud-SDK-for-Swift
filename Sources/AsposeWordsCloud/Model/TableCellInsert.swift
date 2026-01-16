/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableCellInsert.swift">
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

// DTO container with a table cell.
public class TableCellInsert : Codable, WordsApiModel {
    // Field of existingCellPosition. DTO container with a table cell.
    private var _existingCellPosition : Position? = nil;

    public var existingCellPosition : Position? {
        get {
            return self._existingCellPosition;
        }
        set {
            self._existingCellPosition = newValue;
        }
    }

    // Field of insertAfter. DTO container with a table cell.
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
        case existingCellPosition = "ExistingCellPosition";
        case insertAfter = "InsertAfter";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_existingCellPosition = json["ExistingCellPosition"] as? [String: Any] {
            self.existingCellPosition = try ObjectSerializer.deserialize(type: Position.self, from: raw_existingCellPosition);
        }

        self.insertAfter = json["InsertAfter"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.existingCellPosition = try container.decodeIfPresent(Position.self, forKey: .existingCellPosition);
        self.insertAfter = try container.decodeIfPresent(Int.self, forKey: .insertAfter);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.existingCellPosition != nil) {
            try container.encode(self.existingCellPosition, forKey: .existingCellPosition);
        }
        if (self.insertAfter != nil) {
            try container.encode(self.insertAfter, forKey: .insertAfter);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.existingCellPosition?.validate();

    }

    // Sets existingCellPosition. Gets or sets the position of the table cell that will be used to determine the placement of a new cell.
    public func setExistingCellPosition(existingCellPosition : Position?) -> TableCellInsert {
        self.existingCellPosition = existingCellPosition;
        return self;
    }

    // Gets existingCellPosition. Gets or sets the position of the table cell that will be used to determine the placement of a new cell.
    public func getExistingCellPosition() -> Position? {
        return self.existingCellPosition;
    }


    // Sets insertAfter. Gets or sets the 0-based index, the table cell will be inserted after.
    @available(*, deprecated, message: "This property will be removed in the future.")
    public func setInsertAfter(insertAfter : Int?) -> TableCellInsert {
        self.insertAfter = insertAfter;
        return self;
    }

    // Gets insertAfter. Gets or sets the 0-based index, the table cell will be inserted after.
    @available(*, deprecated, message: "This property will be removed in the future.")
    public func getInsertAfter() -> Int? {
        return self.insertAfter;
    }
}
