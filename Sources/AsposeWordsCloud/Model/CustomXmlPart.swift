/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CustomXmlPart.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// DTO container with a CustomXmlPart.
public class CustomXmlPart : CustomXmlPartLink {
    // Field of id. DTO container with a CustomXmlPart.
    private var _id : String? = nil;

    public var id : String? {
        get {
            return self._id;
        }
        set {
            self._id = newValue;
        }
    }

    // Field of data. DTO container with a CustomXmlPart.
    private var _data : String? = nil;

    public var data : String? {
        get {
            return self._data;
        }
        set {
            self._data = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case id = "Id";
        case data = "Data";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.id = json["Id"] as? String;
        self.data = json["Data"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.id = try container.decodeIfPresent(String.self, forKey: .id);
        self.data = try container.decodeIfPresent(String.self, forKey: .data);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.id != nil) {
            try container.encode(self.id, forKey: .id);
        }
        if (self.data != nil) {
            try container.encode(self.data, forKey: .data);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.data == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "data");
        }
    }

    // Sets id. Gets or sets the custom xml part id. Cannot be null.
    public func setId(id : String?) -> CustomXmlPart {
        self.id = id;
        return self;
    }

    // Gets id. Gets or sets the custom xml part id. Cannot be null.
    public func getId() -> String? {
        return self.id;
    }


    // Sets data. Gets or sets the custom xml part data. Cannot be null.Default is an empty string.
    public func setData(data : String?) -> CustomXmlPart {
        self.data = data;
        return self;
    }

    // Gets data. Gets or sets the custom xml part data. Cannot be null.Default is an empty string.
    public func getData() -> String? {
        return self.data;
    }
}
