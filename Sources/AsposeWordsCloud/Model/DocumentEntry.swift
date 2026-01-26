/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentEntry.swift">
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

// Represents a document which will be appended to the original resource document.
public class DocumentEntry : BaseEntry {
    // Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
    public enum ImportFormatMode : String, Codable
    {
        // Enum value "useDestinationStyles"
        case useDestinationStyles = "UseDestinationStyles"

        // Enum value "keepSourceFormatting"
        case keepSourceFormatting = "KeepSourceFormatting"

        // Enum value "keepDifferentStyles"
        case keepDifferentStyles = "KeepDifferentStyles"
    }

    // Field of encryptedPassword. Represents a document which will be appended to the original resource document.
    private var _encryptedPassword : String? = nil;

    public var encryptedPassword : String? {
        get {
            return self._encryptedPassword;
        }
        set {
            self._encryptedPassword = newValue;
        }
    }

    // Field of importFormatMode. Represents a document which will be appended to the original resource document.
    private var _importFormatMode : ImportFormatMode? = nil;

    public var importFormatMode : ImportFormatMode? {
        get {
            return self._importFormatMode;
        }
        set {
            self._importFormatMode = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case encryptedPassword = "EncryptedPassword";
        case importFormatMode = "ImportFormatMode";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.encryptedPassword = json["EncryptedPassword"] as? String;
        if let raw_importFormatMode = json["ImportFormatMode"] as? String {
            self.importFormatMode = ImportFormatMode(rawValue: raw_importFormatMode);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.encryptedPassword = try container.decodeIfPresent(String.self, forKey: .encryptedPassword);
        self.importFormatMode = try container.decodeIfPresent(ImportFormatMode.self, forKey: .importFormatMode);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.encryptedPassword != nil) {
            try container.encode(self.encryptedPassword, forKey: .encryptedPassword);
        }
        if (self.importFormatMode != nil) {
            try container.encode(self.importFormatMode, forKey: .importFormatMode);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
        super.collectFilesContent(&resultFilesContent);
    }

    public override func validate() throws {
        try super.validate();
        if (self.importFormatMode == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "importFormatMode");
        }
    }

    // Sets encryptedPassword. Gets or sets document password encrypted on API public key. The default value is null (the document has no password).
    @available(*, deprecated, message: "This field is deprecated and used only for backward compatibility. Please use 'Password' or 'EncryptedPassword' from 'FileReference' instead.")
    public func setEncryptedPassword(encryptedPassword : String?) -> DocumentEntry {
        self.encryptedPassword = encryptedPassword;
        return self;
    }

    // Gets encryptedPassword. Gets or sets document password encrypted on API public key. The default value is null (the document has no password).
    @available(*, deprecated, message: "This field is deprecated and used only for backward compatibility. Please use 'Password' or 'EncryptedPassword' from 'FileReference' instead.")
    public func getEncryptedPassword() -> String? {
        return self.encryptedPassword;
    }


    // Sets importFormatMode. Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
    public func setImportFormatMode(importFormatMode : ImportFormatMode?) -> DocumentEntry {
        self.importFormatMode = importFormatMode;
        return self;
    }

    // Gets importFormatMode. Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
    public func getImportFormatMode() -> ImportFormatMode? {
        return self.importFormatMode;
    }
}
