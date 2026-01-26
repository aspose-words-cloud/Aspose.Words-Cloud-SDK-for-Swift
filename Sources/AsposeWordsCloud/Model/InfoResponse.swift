/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InfoResponse.swift">
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

// Response with API info.
public class InfoResponse : WordsResponse {
    // Field of additionalInfo. Response with API info.
    private var _additionalInfo : [InfoAdditionalItem]? = nil;

    public var additionalInfo : [InfoAdditionalItem]? {
        get {
            return self._additionalInfo;
        }
        set {
            self._additionalInfo = newValue;
        }
    }

    // Field of name. Response with API info.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    // Field of version. Response with API info.
    private var _version : String? = nil;

    public var version : String? {
        get {
            return self._version;
        }
        set {
            self._version = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case additionalInfo = "AdditionalInfo";
        case name = "Name";
        case version = "Version";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_additionalInfo = json["AdditionalInfo"] as? [Any] {
            self.additionalInfo = try raw_additionalInfo.map {
                if let element_additionalInfo = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: InfoAdditionalItem.self, from: element_additionalInfo);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "InfoAdditionalItem");
                }
            };
        }

        self.name = json["Name"] as? String;
        self.version = json["Version"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.additionalInfo = try container.decodeIfPresent([InfoAdditionalItem].self, forKey: .additionalInfo);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.version = try container.decodeIfPresent(String.self, forKey: .version);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.additionalInfo != nil) {
            try container.encode(self.additionalInfo, forKey: .additionalInfo);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.version != nil) {
            try container.encode(self.version, forKey: .version);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.additionalInfo != nil) {
            for elementAdditionalInfo in self.additionalInfo! {
                try elementAdditionalInfo.validate();
            }
        }

    }

    // Sets additionalInfo. Gets or sets AdditionalInfo.
    public func setAdditionalInfo(additionalInfo : [InfoAdditionalItem]?) -> InfoResponse {
        self.additionalInfo = additionalInfo;
        return self;
    }

    // Gets additionalInfo. Gets or sets AdditionalInfo.
    public func getAdditionalInfo() -> [InfoAdditionalItem]? {
        return self.additionalInfo;
    }


    // Sets name. Gets or sets Name.
    public func setName(name : String?) -> InfoResponse {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets Name.
    public func getName() -> String? {
        return self.name;
    }


    // Sets version. Gets or sets Version.
    public func setVersion(version : String?) -> InfoResponse {
        self.version = version;
        return self;
    }

    // Gets version. Gets or sets Version.
    public func getVersion() -> String? {
        return self.version;
    }
}
