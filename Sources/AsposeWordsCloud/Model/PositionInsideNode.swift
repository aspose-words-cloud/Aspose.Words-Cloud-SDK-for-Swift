/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PositionInsideNode.swift">
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

// DTO container with a new position in the document tree.
public class PositionInsideNode : Position {
    // Field of type. DTO container with a new position in the document tree.
    private final let _type : String? = "Inside";

    override public var type : String? {
        get {
            return self._type;
        }
    }

    // Field of offset. DTO container with a new position in the document tree.
    private var _offset : Int? = nil;

    public var offset : Int? {
        get {
            return self._offset;
        }
        set {
            self._offset = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case offset = "Offset";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.offset = json["Offset"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.offset = try container.decodeIfPresent(Int.self, forKey: .offset);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.offset != nil) {
            try container.encode(self.offset, forKey: .offset);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets offset. Gets or sets the offset in the node.
    public func setOffset(offset : Int?) -> PositionInsideNode {
        self.offset = offset;
        return self;
    }

    // Gets offset. Gets or sets the offset in the node.
    public func getOffset() -> Int? {
        return self.offset;
    }
}
