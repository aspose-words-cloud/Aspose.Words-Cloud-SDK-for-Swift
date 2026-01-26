/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RunInsert.swift">
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

// Run element for insert.
public class RunInsert : RunBase {
    // Field of position. Run element for insert.
    private var _position : Position? = nil;

    public var position : Position? {
        get {
            return self._position;
        }
        set {
            self._position = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case position = "Position";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_position = json["Position"] as? [String: Any] {
            self.position = try ObjectSerializer.deserialize(type: Position.self, from: raw_position);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.position = try container.decodeIfPresent(Position.self, forKey: .position);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.position?.validate();

    }

    // Sets position. Gets or sets the position of the node that will be used to determine the placement of a new run.
    public func setPosition(position : Position?) -> RunInsert {
        self.position = position;
        return self;
    }

    // Gets position. Gets or sets the position of the node that will be used to determine the placement of a new run.
    public func getPosition() -> Position? {
        return self.position;
    }
}
