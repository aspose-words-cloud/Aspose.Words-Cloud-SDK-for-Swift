/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PreferredWidth.swift">
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

// DTO container with a preferred width value.
public class PreferredWidth : Codable, WordsApiModel {
    // Gets or sets the unit of measure used for this preferred width value.
    public enum ModelType : String, Codable
    {
        // Enum value "auto"
        case auto = "Auto"

        // Enum value "percent"
        case percent = "Percent"

        // Enum value "points"
        case points = "Points"
    }

    // Field of type. DTO container with a preferred width value.
    private var _type : ModelType? = nil;

    public var type : ModelType? {
        get {
            return self._type;
        }
        set {
            self._type = newValue;
        }
    }

    // Field of value. DTO container with a preferred width value.
    private var _value : Double? = nil;

    public var value : Double? {
        get {
            return self._value;
        }
        set {
            self._value = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case type = "Type";
        case value = "Value";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_type = json["Type"] as? String {
            self.type = ModelType(rawValue: raw_type);
        }

        self.value = json["Value"] as? Double;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.type = try container.decodeIfPresent(ModelType.self, forKey: .type);
        self.value = try container.decodeIfPresent(Double.self, forKey: .value);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.type != nil) {
            try container.encode(self.type, forKey: .type);
        }
        if (self.value != nil) {
            try container.encode(self.value, forKey: .value);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.type == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "type");
        }
    }

    // Sets type. Gets or sets the unit of measure used for this preferred width value.
    public func setType(type : ModelType?) -> PreferredWidth {
        self.type = type;
        return self;
    }

    // Gets type. Gets or sets the unit of measure used for this preferred width value.
    public func getType() -> ModelType? {
        return self.type;
    }


    // Sets value. Gets or sets the preferred width value. The unit of measure is specified in the Type property.
    public func setValue(value : Double?) -> PreferredWidth {
        self.value = value;
        return self;
    }

    // Gets value. Gets or sets the preferred width value. The unit of measure is specified in the Type property.
    public func getValue() -> Double? {
        return self.value;
    }
}
