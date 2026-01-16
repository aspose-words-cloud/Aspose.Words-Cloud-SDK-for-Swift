/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RevisionsModificationResponse.swift">
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

// The REST response with a result of the modification operations for the revisions collection (now these are acceptAll and rejectAll).
public class RevisionsModificationResponse : WordsResponse {
    // Field of result. The REST response with a result of the modification operations for the revisions collection (now these are acceptAll and rejectAll).
    private var _result : ModificationOperationResult? = nil;

    public var result : ModificationOperationResult? {
        get {
            return self._result;
        }
        set {
            self._result = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case result = "Result";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_result = json["Result"] as? [String: Any] {
            self.result = try ObjectSerializer.deserialize(type: ModificationOperationResult.self, from: raw_result);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.result = try container.decodeIfPresent(ModificationOperationResult.self, forKey: .result);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.result != nil) {
            try container.encode(self.result, forKey: .result);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.result?.validate();

    }

    // Sets result. Gets or sets the result of the modification operations for the revisions collection.
    public func setResult(result : ModificationOperationResult?) -> RevisionsModificationResponse {
        self.result = result;
        return self;
    }

    // Gets result. Gets or sets the result of the modification operations for the revisions collection.
    public func getResult() -> ModificationOperationResult? {
        return self.result;
    }
}
