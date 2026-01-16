/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PdfEncryptionDetailsData.swift">
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

// Container class for details of encryption.
public class PdfEncryptionDetailsData : Codable, WordsApiModel {
    // Field of ownerPassword. Container class for details of encryption.
    private var _ownerPassword : String? = nil;

    public var ownerPassword : String? {
        get {
            return self._ownerPassword;
        }
        set {
            self._ownerPassword = newValue;
        }
    }

    // Field of permissions. Container class for details of encryption.
    private var _permissions : [PdfPermissions]? = nil;

    public var permissions : [PdfPermissions]? {
        get {
            return self._permissions;
        }
        set {
            self._permissions = newValue;
        }
    }

    // Field of userPassword. Container class for details of encryption.
    private var _userPassword : String? = nil;

    public var userPassword : String? {
        get {
            return self._userPassword;
        }
        set {
            self._userPassword = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case ownerPassword = "OwnerPassword";
        case permissions = "Permissions";
        case userPassword = "UserPassword";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.ownerPassword = json["OwnerPassword"] as? String;
        if let raw_permissions = json["Permissions"] as? [Any] {
            self.permissions = try raw_permissions.map {
                if let element_permissions = PdfPermissions(rawValue: ($0 as? String) ?? "") {
                    return element_permissions;
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "PdfPermissions");
                }
            };
        }

        self.userPassword = json["UserPassword"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.ownerPassword = try container.decodeIfPresent(String.self, forKey: .ownerPassword);
        self.permissions = try container.decodeIfPresent([PdfPermissions].self, forKey: .permissions);
        self.userPassword = try container.decodeIfPresent(String.self, forKey: .userPassword);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.ownerPassword != nil) {
            try container.encode(self.ownerPassword, forKey: .ownerPassword);
        }
        if (self.permissions != nil) {
            try container.encode(self.permissions, forKey: .permissions);
        }
        if (self.userPassword != nil) {
            try container.encode(self.userPassword, forKey: .userPassword);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets ownerPassword. Gets or sets the owner password for the encrypted PDF document.
    public func setOwnerPassword(ownerPassword : String?) -> PdfEncryptionDetailsData {
        self.ownerPassword = ownerPassword;
        return self;
    }

    // Gets ownerPassword. Gets or sets the owner password for the encrypted PDF document.
    public func getOwnerPassword() -> String? {
        return self.ownerPassword;
    }


    // Sets permissions. Gets or sets the operations that are allowed to a user on the encrypted PDF document.
    public func setPermissions(permissions : [PdfPermissions]?) -> PdfEncryptionDetailsData {
        self.permissions = permissions;
        return self;
    }

    // Gets permissions. Gets or sets the operations that are allowed to a user on the encrypted PDF document.
    public func getPermissions() -> [PdfPermissions]? {
        return self.permissions;
    }


    // Sets userPassword. Gets or sets the user password required for opening the encrypted PDF document.
    public func setUserPassword(userPassword : String?) -> PdfEncryptionDetailsData {
        self.userPassword = userPassword;
        return self;
    }

    // Gets userPassword. Gets or sets the user password required for opening the encrypted PDF document.
    public func getUserPassword() -> String? {
        return self.userPassword;
    }
}
