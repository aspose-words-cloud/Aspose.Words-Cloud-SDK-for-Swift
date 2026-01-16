/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FileReference.swift">
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

// File content special model.
public class FileReference : Codable, WordsApiModel {
    // File source.
    private var _source : String;
    public var source : String {
        get {
            return self._source;
        }
    }

    // File reference.
    private var _reference : String;
    public var reference : String {
        get {
            return self._reference;
        }
    }

    // File content for multipart request.
    private var _content : InputStream?;
    public var content : InputStream {
        get {
            return self._content!;
        }
    }

    // Password.
    private var _password : String?;
    public var password : String? {
        get {
            return self._password;
        }
    }

    // Encrypted password.
    private var _encryptedPassword : String?;
    public var encryptedPassword : String? {
        get {
            return self._encryptedPassword;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case source = "Source";
        case reference = "Reference";
        case password = "Password";
        case encryptedPassword = "EncryptedPassword";
        case invalidCodingKey;
    }

    public init(remoteFilePath : String, password : String? = nil) {
        self._source = "Storage";
        self._reference = remoteFilePath;
        self._content = nil;
        self._password = password;
        self._encryptedPassword = nil;
    }

    public init(localFileContent : InputStream, password : String? = nil) {
        self._source = "Request";
        self._reference = UUID().uuidString;
        self._content = localFileContent;
        self._password = password;
        self._encryptedPassword = nil;
    }

    public required init(from decoder: Decoder) throws {
        throw WordsApiError.invalidTypeDeserialization(typeName: "FileReference");
    }

    public required init(from json: [String: Any]) throws {
        throw WordsApiError.invalidTypeDeserialization(typeName: "FileReference");
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.source, forKey: .source);
        try container.encode(self.reference, forKey: .reference);
        try container.encode(self.password, forKey: .password);
        try container.encode(self.encryptedPassword, forKey: .encryptedPassword);
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
        resultFilesContent.append(self);
    }

    public func validate() throws {
        // Do nothing
    }

    public func encryptPassword(_ encryptedPassword : String?) {
        self._password = nil;
        self._encryptedPassword = encryptedPassword;
    }
}
