/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="UserInformation.swift">
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

// DTO for user information.
public class UserInformation : Codable, WordsApiModel {
    // Field of address. DTO for user information.
    private var _address : String? = nil;

    public var address : String? {
        get {
            return self._address;
        }
        set {
            self._address = newValue;
        }
    }

    // Field of initials. DTO for user information.
    private var _initials : String? = nil;

    public var initials : String? {
        get {
            return self._initials;
        }
        set {
            self._initials = newValue;
        }
    }

    // Field of name. DTO for user information.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case address = "Address";
        case initials = "Initials";
        case name = "Name";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.address = json["Address"] as? String;
        self.initials = json["Initials"] as? String;
        self.name = json["Name"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.address = try container.decodeIfPresent(String.self, forKey: .address);
        self.initials = try container.decodeIfPresent(String.self, forKey: .initials);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.address != nil) {
            try container.encode(self.address, forKey: .address);
        }
        if (self.initials != nil) {
            try container.encode(self.initials, forKey: .initials);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets address. Gets or sets user address.
    public func setAddress(address : String?) -> UserInformation {
        self.address = address;
        return self;
    }

    // Gets address. Gets or sets user address.
    public func getAddress() -> String? {
        return self.address;
    }


    // Sets initials. Gets or sets user initials.
    public func setInitials(initials : String?) -> UserInformation {
        self.initials = initials;
        return self;
    }

    // Gets initials. Gets or sets user initials.
    public func getInitials() -> String? {
        return self.initials;
    }


    // Sets name. Gets or sets user name.
    public func setName(name : String?) -> UserInformation {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets user name.
    public func getName() -> String? {
        return self.name;
    }
}
