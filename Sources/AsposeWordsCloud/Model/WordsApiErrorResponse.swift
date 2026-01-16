/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsApiErrorResponse.swift">
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

// The REST response with an API error.
public class WordsApiErrorResponse : WordsResponse {
    // Field of error. The REST response with an API error.
    private var _error : ApiError? = nil;

    public var error : ApiError? {
        get {
            return self._error;
        }
        set {
            self._error = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case error = "Error";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_error = json["Error"] as? [String: Any] {
            self.error = try ObjectSerializer.deserialize(type: ApiError.self, from: raw_error);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.error = try container.decodeIfPresent(ApiError.self, forKey: .error);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.error != nil) {
            try container.encode(self.error, forKey: .error);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.error?.validate();

    }

    // Sets error. Gets or sets the API error.
    public func setError(error : ApiError?) -> WordsApiErrorResponse {
        self.error = error;
        return self;
    }

    // Gets error. Gets or sets the API error.
    public func getError() -> ApiError? {
        return self.error;
    }
}
