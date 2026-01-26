/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="JsonDataLoadOptions.swift">
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

// Represents options for parsing JSON data.
// An instance of this class can be passed into constructors of Aspose.Words.Reporting.JsonDataSource.
public class JsonDataLoadOptions : Codable, WordsApiModel {
    // Gets or sets a mode for parsing JSON simple values (null, boolean, number, integer,
    // and string) while loading JSON. Such a mode does not affect parsing of date-time
    // values. The default is Aspose.Words.Reporting.JsonSimpleValueParseMode.Loose.
    public enum SimpleValueParseMode : String, Codable
    {
        // Enum value "loose"
        case loose = "Loose"

        // Enum value "strict"
        case strict = "Strict"
    }

    // Field of alwaysGenerateRootObject. Represents options for parsing JSON data. An instance of this class can be passed into constructors of Aspose.Words.Reporting.JsonDataSource.
    private var _alwaysGenerateRootObject : Bool? = nil;

    public var alwaysGenerateRootObject : Bool? {
        get {
            return self._alwaysGenerateRootObject;
        }
        set {
            self._alwaysGenerateRootObject = newValue;
        }
    }

    // Field of exactDateTimeParseFormats. Represents options for parsing JSON data. An instance of this class can be passed into constructors of Aspose.Words.Reporting.JsonDataSource.
    private var _exactDateTimeParseFormats : [String]? = nil;

    public var exactDateTimeParseFormats : [String]? {
        get {
            return self._exactDateTimeParseFormats;
        }
        set {
            self._exactDateTimeParseFormats = newValue;
        }
    }

    // Field of simpleValueParseMode. Represents options for parsing JSON data. An instance of this class can be passed into constructors of Aspose.Words.Reporting.JsonDataSource.
    private var _simpleValueParseMode : SimpleValueParseMode? = nil;

    public var simpleValueParseMode : SimpleValueParseMode? {
        get {
            return self._simpleValueParseMode;
        }
        set {
            self._simpleValueParseMode = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case alwaysGenerateRootObject = "AlwaysGenerateRootObject";
        case exactDateTimeParseFormats = "ExactDateTimeParseFormats";
        case simpleValueParseMode = "SimpleValueParseMode";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.alwaysGenerateRootObject = json["AlwaysGenerateRootObject"] as? Bool;
        if let raw_exactDateTimeParseFormats = json["ExactDateTimeParseFormats"] as? [Any] {
            self.exactDateTimeParseFormats = try raw_exactDateTimeParseFormats.map {
                if let element_exactDateTimeParseFormats = $0 as? String {
                    return element_exactDateTimeParseFormats;
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "String");
                }
            };
        }

        if let raw_simpleValueParseMode = json["SimpleValueParseMode"] as? String {
            self.simpleValueParseMode = SimpleValueParseMode(rawValue: raw_simpleValueParseMode);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alwaysGenerateRootObject = try container.decodeIfPresent(Bool.self, forKey: .alwaysGenerateRootObject);
        self.exactDateTimeParseFormats = try container.decodeIfPresent([String].self, forKey: .exactDateTimeParseFormats);
        self.simpleValueParseMode = try container.decodeIfPresent(SimpleValueParseMode.self, forKey: .simpleValueParseMode);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alwaysGenerateRootObject != nil) {
            try container.encode(self.alwaysGenerateRootObject, forKey: .alwaysGenerateRootObject);
        }
        if (self.exactDateTimeParseFormats != nil) {
            try container.encode(self.exactDateTimeParseFormats, forKey: .exactDateTimeParseFormats);
        }
        if (self.simpleValueParseMode != nil) {
            try container.encode(self.simpleValueParseMode, forKey: .simpleValueParseMode);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.alwaysGenerateRootObject == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "alwaysGenerateRootObject");
        }
        if (self.simpleValueParseMode == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "simpleValueParseMode");
        }
    }

    // Sets alwaysGenerateRootObject. Gets or sets a value indicating whether a generated data source will always contain an object for a JSON root element. If a JSON root element contains a single complex property, such an object is not created by default. The default value is false.
    public func setAlwaysGenerateRootObject(alwaysGenerateRootObject : Bool?) -> JsonDataLoadOptions {
        self.alwaysGenerateRootObject = alwaysGenerateRootObject;
        return self;
    }

    // Gets alwaysGenerateRootObject. Gets or sets a value indicating whether a generated data source will always contain an object for a JSON root element. If a JSON root element contains a single complex property, such an object is not created by default. The default value is false.
    public func getAlwaysGenerateRootObject() -> Bool? {
        return self.alwaysGenerateRootObject;
    }


    // Sets exactDateTimeParseFormats. Gets or sets exact formats for parsing JSON date-time values while loading JSON. The default is null. Strings encoded using Microsoft® JSON date-time format (for example, "/Date(1224043200000)/") are always recognized as date-time values regardless of a value of this property. The property defines additional formats to be used while parsing date-time values from strings in the following way: • When Aspose.Words.Reporting.JsonDataLoadOptions.ExactDateTimeParseFormats is null, the ISO-8601 format and all date-time formats supported for the current, English USA, and English New Zealand cultures are used additionally in the mentioned order. • When Aspose.Words.Reporting.JsonDataLoadOptions.ExactDateTimeParseFormats contains strings, they are used as additional date-time formats utilizing the current culture. • When Aspose.Words.Reporting.JsonDataLoadOptions.ExactDateTimeParseFormats is empty, no additional date-time formats are used.
    public func setExactDateTimeParseFormats(exactDateTimeParseFormats : [String]?) -> JsonDataLoadOptions {
        self.exactDateTimeParseFormats = exactDateTimeParseFormats;
        return self;
    }

    // Gets exactDateTimeParseFormats. Gets or sets exact formats for parsing JSON date-time values while loading JSON. The default is null. Strings encoded using Microsoft® JSON date-time format (for example, "/Date(1224043200000)/") are always recognized as date-time values regardless of a value of this property. The property defines additional formats to be used while parsing date-time values from strings in the following way: • When Aspose.Words.Reporting.JsonDataLoadOptions.ExactDateTimeParseFormats is null, the ISO-8601 format and all date-time formats supported for the current, English USA, and English New Zealand cultures are used additionally in the mentioned order. • When Aspose.Words.Reporting.JsonDataLoadOptions.ExactDateTimeParseFormats contains strings, they are used as additional date-time formats utilizing the current culture. • When Aspose.Words.Reporting.JsonDataLoadOptions.ExactDateTimeParseFormats is empty, no additional date-time formats are used.
    public func getExactDateTimeParseFormats() -> [String]? {
        return self.exactDateTimeParseFormats;
    }


    // Sets simpleValueParseMode. Gets or sets a mode for parsing JSON simple values (null, boolean, number, integer, and string) while loading JSON. Such a mode does not affect parsing of date-time values. The default is Aspose.Words.Reporting.JsonSimpleValueParseMode.Loose.
    public func setSimpleValueParseMode(simpleValueParseMode : SimpleValueParseMode?) -> JsonDataLoadOptions {
        self.simpleValueParseMode = simpleValueParseMode;
        return self;
    }

    // Gets simpleValueParseMode. Gets or sets a mode for parsing JSON simple values (null, boolean, number, integer, and string) while loading JSON. Such a mode does not affect parsing of date-time values. The default is Aspose.Words.Reporting.JsonSimpleValueParseMode.Loose.
    public func getSimpleValueParseMode() -> SimpleValueParseMode? {
        return self.simpleValueParseMode;
    }
}
