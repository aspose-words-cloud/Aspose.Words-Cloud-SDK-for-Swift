/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InternalError.swift">
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

// Error.
public class InternalError : Codable, WordsApiModel {
    // Field of code. Error.
    private var _code : String? = nil;

    public var code : String? {
        get {
            return self._code;
        }
        set {
            self._code = newValue;
        }
    }

    // Field of description. Error.
    private var _description : String? = nil;

    public var description : String? {
        get {
            return self._description;
        }
        set {
            self._description = newValue;
        }
    }

    // Field of innerError. Error.
    private var _innerError : ErrorDetails? = nil;

    public var innerError : ErrorDetails? {
        get {
            return self._innerError;
        }
        set {
            self._innerError = newValue;
        }
    }

    // Field of message. Error.
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
        case description = "Description";
        case innerError = "InnerError";
        case message = "Message";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.code = json["Code"] as? String;
        self.description = json["Description"] as? String;
        if let raw_innerError = json["InnerError"] as? [String: Any] {
            self.innerError = try ObjectSerializer.deserialize(type: ErrorDetails.self, from: raw_innerError);
        }

        self.message = json["Message"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.code = try container.decodeIfPresent(String.self, forKey: .code);
        self.description = try container.decodeIfPresent(String.self, forKey: .description);
        self.innerError = try container.decodeIfPresent(ErrorDetails.self, forKey: .innerError);
        self.message = try container.decodeIfPresent(String.self, forKey: .message);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.code != nil) {
            try container.encode(self.code, forKey: .code);
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

    // Sets code. Gets or sets Code.
    public func setCode(code : String?) -> InternalError {
        self.code = code;
        return self;
    }

    // Gets code. Gets or sets Code.
    public func getCode() -> String? {
        return self.code;
    }


    // Sets description. Gets or sets Description.
    public func setDescription(description : String?) -> InternalError {
        self.description = description;
        return self;
    }

    // Gets description. Gets or sets Description.
    public func getDescription() -> String? {
        return self.description;
    }


    // Sets innerError. Gets or sets InnerError.
    public func setInnerError(innerError : ErrorDetails?) -> InternalError {
        self.innerError = innerError;
        return self;
    }

    // Gets innerError. Gets or sets InnerError.
    public func getInnerError() -> ErrorDetails? {
        return self.innerError;
    }


    // Sets message. Gets or sets Message.
    public func setMessage(message : String?) -> InternalError {
        self.message = message;
        return self;
    }

    // Gets message. Gets or sets Message.
    public func getMessage() -> String? {
        return self.message;
    }
}
