/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TabStop.swift">
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

// DTO container with paragraph format tab stop.
public class TabStop : TabStopBase {
    // Field of isClear. DTO container with paragraph format tab stop.
    private var _isClear : Bool? = nil;

    public var isClear : Bool? {
        get {
            return self._isClear;
        }
        set {
            self._isClear = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case isClear = "IsClear";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.isClear = json["IsClear"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isClear = try container.decodeIfPresent(Bool.self, forKey: .isClear);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isClear != nil) {
            try container.encode(self.isClear, forKey: .isClear);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.isClear == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isClear");
        }
    }

    // Sets isClear. Gets or sets a value indicating whether this tab stop clears any existing tab stops in this position.
    public func setIsClear(isClear : Bool?) -> TabStop {
        self.isClear = isClear;
        return self;
    }

    // Gets isClear. Gets or sets a value indicating whether this tab stop clears any existing tab stops in this position.
    public func getIsClear() -> Bool? {
        return self.isClear;
    }
}
