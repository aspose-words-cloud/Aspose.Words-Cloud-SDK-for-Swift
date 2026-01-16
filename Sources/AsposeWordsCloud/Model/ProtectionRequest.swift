/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ProtectionRequest.swift">
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

// Request on changing of protection.
public class ProtectionRequest : ProtectionRequestBase {
    // Field of newPassword. Request on changing of protection.
    private var _newPassword : String? = nil;

    public var newPassword : String? {
        get {
            return self._newPassword;
        }
        set {
            self._newPassword = newValue;
        }
    }

    // Field of password. Request on changing of protection.
    private var _password : String? = nil;

    public var password : String? {
        get {
            return self._password;
        }
        set {
            self._password = newValue;
        }
    }

    // Field of protectionType. Request on changing of protection.
    private var _protectionType : String? = nil;

    public var protectionType : String? {
        get {
            return self._protectionType;
        }
        set {
            self._protectionType = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case newPassword = "NewPassword";
        case password = "Password";
        case protectionType = "ProtectionType";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.newPassword = json["NewPassword"] as? String;
        self.password = json["Password"] as? String;
        self.protectionType = json["ProtectionType"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.newPassword = try container.decodeIfPresent(String.self, forKey: .newPassword);
        self.password = try container.decodeIfPresent(String.self, forKey: .password);
        self.protectionType = try container.decodeIfPresent(String.self, forKey: .protectionType);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.newPassword != nil) {
            try container.encode(self.newPassword, forKey: .newPassword);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.protectionType != nil) {
            try container.encode(self.protectionType, forKey: .protectionType);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.password == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "password");
        }
    }

    // Sets newPassword. Gets or sets the new password.
    public func setNewPassword(newPassword : String?) -> ProtectionRequest {
        self.newPassword = newPassword;
        return self;
    }

    // Gets newPassword. Gets or sets the new password.
    public func getNewPassword() -> String? {
        return self.newPassword;
    }


    // Sets password. Gets or sets the current password.
    public func setPassword(password : String?) -> ProtectionRequest {
        self.password = password;
        return self;
    }

    // Gets password. Gets or sets the current password.
    public func getPassword() -> String? {
        return self.password;
    }


    // Sets protectionType. Gets or sets the new type of protection.
    public func setProtectionType(protectionType : String?) -> ProtectionRequest {
        self.protectionType = protectionType;
        return self;
    }

    // Gets protectionType. Gets or sets the new type of protection.
    public func getProtectionType() -> String? {
        return self.protectionType;
    }
}
