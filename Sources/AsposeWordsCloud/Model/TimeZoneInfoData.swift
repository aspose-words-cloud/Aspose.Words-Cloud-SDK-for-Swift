/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TimeZoneInfoData.swift">
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

// Class to specify TimeZoneInfo parameters.
public class TimeZoneInfoData : Codable, WordsApiModel {
    // Field of baseUtcOffset. Class to specify TimeZoneInfo parameters.
    private var _baseUtcOffset : String? = nil;

    public var baseUtcOffset : String? {
        get {
            return self._baseUtcOffset;
        }
        set {
            self._baseUtcOffset = newValue;
        }
    }

    // Field of displayName. Class to specify TimeZoneInfo parameters.
    private var _displayName : String? = nil;

    public var displayName : String? {
        get {
            return self._displayName;
        }
        set {
            self._displayName = newValue;
        }
    }

    // Field of id. Class to specify TimeZoneInfo parameters.
    private var _id : String? = nil;

    public var id : String? {
        get {
            return self._id;
        }
        set {
            self._id = newValue;
        }
    }

    // Field of standardDisplayName. Class to specify TimeZoneInfo parameters.
    private var _standardDisplayName : String? = nil;

    public var standardDisplayName : String? {
        get {
            return self._standardDisplayName;
        }
        set {
            self._standardDisplayName = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case baseUtcOffset = "BaseUtcOffset";
        case displayName = "DisplayName";
        case id = "Id";
        case standardDisplayName = "StandardDisplayName";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.baseUtcOffset = json["BaseUtcOffset"] as? String;
        self.displayName = json["DisplayName"] as? String;
        self.id = json["Id"] as? String;
        self.standardDisplayName = json["StandardDisplayName"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.baseUtcOffset = try container.decodeIfPresent(String.self, forKey: .baseUtcOffset);
        self.displayName = try container.decodeIfPresent(String.self, forKey: .displayName);
        self.id = try container.decodeIfPresent(String.self, forKey: .id);
        self.standardDisplayName = try container.decodeIfPresent(String.self, forKey: .standardDisplayName);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.baseUtcOffset != nil) {
            try container.encode(self.baseUtcOffset, forKey: .baseUtcOffset);
        }
        if (self.displayName != nil) {
            try container.encode(self.displayName, forKey: .displayName);
        }
        if (self.id != nil) {
            try container.encode(self.id, forKey: .id);
        }
        if (self.standardDisplayName != nil) {
            try container.encode(self.standardDisplayName, forKey: .standardDisplayName);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets baseUtcOffset. Gets or sets base utc offset in hh:mm:ss format.
    public func setBaseUtcOffset(baseUtcOffset : String?) -> TimeZoneInfoData {
        self.baseUtcOffset = baseUtcOffset;
        return self;
    }

    // Gets baseUtcOffset. Gets or sets base utc offset in hh:mm:ss format.
    public func getBaseUtcOffset() -> String? {
        return self.baseUtcOffset;
    }


    // Sets displayName. Gets or sets display name.
    public func setDisplayName(displayName : String?) -> TimeZoneInfoData {
        self.displayName = displayName;
        return self;
    }

    // Gets displayName. Gets or sets display name.
    public func getDisplayName() -> String? {
        return self.displayName;
    }


    // Sets id. Gets or sets an Id string for CustomTimeZoneInfo.
    public func setId(id : String?) -> TimeZoneInfoData {
        self.id = id;
        return self;
    }

    // Gets id. Gets or sets an Id string for CustomTimeZoneInfo.
    public func getId() -> String? {
        return self.id;
    }


    // Sets standardDisplayName. Gets or sets standard display name.
    public func setStandardDisplayName(standardDisplayName : String?) -> TimeZoneInfoData {
        self.standardDisplayName = standardDisplayName;
        return self;
    }

    // Gets standardDisplayName. Gets or sets standard display name.
    public func getStandardDisplayName() -> String? {
        return self.standardDisplayName;
    }
}
