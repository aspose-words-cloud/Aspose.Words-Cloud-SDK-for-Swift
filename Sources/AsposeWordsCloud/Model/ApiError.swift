/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ApiError.swift">
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

// Api error.
public class ApiError : Codable, WordsApiModel {
    // Field of code. Api error.
    private var _code : String? = nil;

    public var code : String? {
        get {
            return self._code;
        }
        set {
            self._code = newValue;
        }
    }

    // Field of dateTime. Api error.
    private var _dateTime : Date? = nil;

    public var dateTime : Date? {
        get {
            return self._dateTime;
        }
        set {
            self._dateTime = newValue;
        }
    }

    // Field of description. Api error.
    private var _description : String? = nil;

    public var description : String? {
        get {
            return self._description;
        }
        set {
            self._description = newValue;
        }
    }

    // Field of innerError. Api error.
    private var _innerError : ApiError? = nil;

    public var innerError : ApiError? {
        get {
            return self._innerError;
        }
        set {
            self._innerError = newValue;
        }
    }

    // Field of message. Api error.
    private var _message : String? = nil;

    public var message : String? {
        get {
            return self._message;
        }
        set {
            self._message = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case code = "Code";
        case dateTime = "DateTime";
        case description = "Description";
        case innerError = "InnerError";
        case message = "Message";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.code = json["Code"] as? String;
        if let raw_dateTime = json["DateTime"] as? String {
            self.dateTime = ObjectSerializer.customIso8601.date(from: raw_dateTime);
        }

        self.description = json["Description"] as? String;
        if let raw_innerError = json["InnerError"] as? [String: Any] {
            self.innerError = try ObjectSerializer.deserialize(type: ApiError.self, from: raw_innerError);
        }

        self.message = json["Message"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.code = try container.decodeIfPresent(String.self, forKey: .code);
        var raw_dateTime = try container.decodeIfPresent(String.self, forKey: .dateTime);
        if (raw_dateTime != nil) {
            raw_dateTime = raw_dateTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.dateTime = ObjectSerializer.customIso8601.date(from: raw_dateTime!)!;
        }

        self.description = try container.decodeIfPresent(String.self, forKey: .description);
        self.innerError = try container.decodeIfPresent(ApiError.self, forKey: .innerError);
        self.message = try container.decodeIfPresent(String.self, forKey: .message);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.code != nil) {
            try container.encode(self.code, forKey: .code);
        }
        if (self.dateTime != nil) {
            try container.encode(self.dateTime, forKey: .dateTime);
        }
        if (self.description != nil) {
            try container.encode(self.description, forKey: .description);
        }
        if (self.innerError != nil) {
            try container.encode(self.innerError, forKey: .innerError);
        }
        if (self.message != nil) {
            try container.encode(self.message, forKey: .message);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        try self.innerError?.validate();

    }

    // Sets code. Gets or sets the API error code.
    public func setCode(code : String?) -> ApiError {
        self.code = code;
        return self;
    }

    // Gets code. Gets or sets the API error code.
    public func getCode() -> String? {
        return self.code;
    }


    // Sets dateTime. Gets or sets the server DateTime.
    public func setDateTime(dateTime : Date?) -> ApiError {
        self.dateTime = dateTime;
        return self;
    }

    // Gets dateTime. Gets or sets the server DateTime.
    public func getDateTime() -> Date? {
        return self.dateTime;
    }


    // Sets description. Gets or sets the error description.
    public func setDescription(description : String?) -> ApiError {
        self.description = description;
        return self;
    }

    // Gets description. Gets or sets the error description.
    public func getDescription() -> String? {
        return self.description;
    }


    // Sets innerError. Gets or sets the inner error.
    public func setInnerError(innerError : ApiError?) -> ApiError {
        self.innerError = innerError;
        return self;
    }

    // Gets innerError. Gets or sets the inner error.
    public func getInnerError() -> ApiError? {
        return self.innerError;
    }


    // Sets message. Gets or sets the error message.
    public func setMessage(message : String?) -> ApiError {
        self.message = message;
        return self;
    }

    // Gets message. Gets or sets the error message.
    public func getMessage() -> String? {
        return self.message;
    }
}
