/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ErrorDetails.swift">
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

// The error details.
public class ErrorDetails : Codable, WordsApiModel {
    // Field of errorDateTime. The error details.
    private var _errorDateTime : Date? = nil;

    public var errorDateTime : Date? {
        get {
            return self._errorDateTime;
        }
        set {
            self._errorDateTime = newValue;
        }
    }

    // Field of requestId. The error details.
    private var _requestId : String? = nil;

    public var requestId : String? {
        get {
            return self._requestId;
        }
        set {
            self._requestId = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case errorDateTime = "ErrorDateTime";
        case requestId = "RequestId";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_errorDateTime = json["ErrorDateTime"] as? String {
            self.errorDateTime = ObjectSerializer.customIso8601.date(from: raw_errorDateTime);
        }

        self.requestId = json["RequestId"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        var raw_errorDateTime = try container.decodeIfPresent(String.self, forKey: .errorDateTime);
        if (raw_errorDateTime != nil) {
            raw_errorDateTime = raw_errorDateTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.errorDateTime = ObjectSerializer.customIso8601.date(from: raw_errorDateTime!)!;
        }

        self.requestId = try container.decodeIfPresent(String.self, forKey: .requestId);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.errorDateTime != nil) {
            try container.encode(self.errorDateTime, forKey: .errorDateTime);
        }
        if (self.requestId != nil) {
            try container.encode(self.requestId, forKey: .requestId);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.errorDateTime == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "errorDateTime");
        }
    }

    // Sets errorDateTime. Gets or sets ErrorDateTime.
    public func setErrorDateTime(errorDateTime : Date?) -> ErrorDetails {
        self.errorDateTime = errorDateTime;
        return self;
    }

    // Gets errorDateTime. Gets or sets ErrorDateTime.
    public func getErrorDateTime() -> Date? {
        return self.errorDateTime;
    }


    // Sets requestId. Gets or sets RequestId.
    public func setRequestId(requestId : String?) -> ErrorDetails {
        self.requestId = requestId;
        return self;
    }

    // Gets requestId. Gets or sets RequestId.
    public func getRequestId() -> String? {
        return self.requestId;
    }
}
