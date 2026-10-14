/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="AdvancedCompareOptions.swift">
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

// Allows to set advanced compare options.
public class AdvancedCompareOptions : Codable, WordsApiModel {
    // Field of compareListDefinitions. Allows to set advanced compare options.
    private var _compareListDefinitions : Bool? = nil;

    public var compareListDefinitions : Bool? {
        get {
            return self._compareListDefinitions;
        }
        set {
            self._compareListDefinitions = newValue;
        }
    }

    // Field of ignoreDmlUniqueId. Allows to set advanced compare options.
    private var _ignoreDmlUniqueId : Bool? = nil;

    public var ignoreDmlUniqueId : Bool? {
        get {
            return self._ignoreDmlUniqueId;
        }
        set {
            self._ignoreDmlUniqueId = newValue;
        }
    }

    // Field of ignoreStoreItemId. Allows to set advanced compare options.
    private var _ignoreStoreItemId : Bool? = nil;

    public var ignoreStoreItemId : Bool? {
        get {
            return self._ignoreStoreItemId;
        }
        set {
            self._ignoreStoreItemId = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case compareListDefinitions = "CompareListDefinitions";
        case ignoreDmlUniqueId = "IgnoreDmlUniqueId";
        case ignoreStoreItemId = "IgnoreStoreItemId";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.compareListDefinitions = json["CompareListDefinitions"] as? Bool;
        self.ignoreDmlUniqueId = json["IgnoreDmlUniqueId"] as? Bool;
        self.ignoreStoreItemId = json["IgnoreStoreItemId"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.compareListDefinitions = try container.decodeIfPresent(Bool.self, forKey: .compareListDefinitions);
        self.ignoreDmlUniqueId = try container.decodeIfPresent(Bool.self, forKey: .ignoreDmlUniqueId);
        self.ignoreStoreItemId = try container.decodeIfPresent(Bool.self, forKey: .ignoreStoreItemId);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.compareListDefinitions != nil) {
            try container.encode(self.compareListDefinitions, forKey: .compareListDefinitions);
        }
        if (self.ignoreDmlUniqueId != nil) {
            try container.encode(self.ignoreDmlUniqueId, forKey: .ignoreDmlUniqueId);
        }
        if (self.ignoreStoreItemId != nil) {
            try container.encode(self.ignoreStoreItemId, forKey: .ignoreStoreItemId);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets compareListDefinitions. Gets or sets the value indicating whether list definition contents are compared instead of list definition Ids. Default value is false.
    public func setCompareListDefinitions(compareListDefinitions : Bool?) -> AdvancedCompareOptions {
        self.compareListDefinitions = compareListDefinitions;
        return self;
    }

    // Gets compareListDefinitions. Gets or sets the value indicating whether list definition contents are compared instead of list definition Ids. Default value is false.
    public func getCompareListDefinitions() -> Bool? {
        return self.compareListDefinitions;
    }


    // Sets ignoreDmlUniqueId. Gets or sets the value indicating whether to ignore difference in DrawingML unique Id. Default value is false.
    public func setIgnoreDmlUniqueId(ignoreDmlUniqueId : Bool?) -> AdvancedCompareOptions {
        self.ignoreDmlUniqueId = ignoreDmlUniqueId;
        return self;
    }

    // Gets ignoreDmlUniqueId. Gets or sets the value indicating whether to ignore difference in DrawingML unique Id. Default value is false.
    public func getIgnoreDmlUniqueId() -> Bool? {
        return self.ignoreDmlUniqueId;
    }


    // Sets ignoreStoreItemId. Gets or sets the value indicating whether to ignore difference in StructuredDocumentTag store item Id. Default value is false.
    public func setIgnoreStoreItemId(ignoreStoreItemId : Bool?) -> AdvancedCompareOptions {
        self.ignoreStoreItemId = ignoreStoreItemId;
        return self;
    }

    // Gets ignoreStoreItemId. Gets or sets the value indicating whether to ignore difference in StructuredDocumentTag store item Id. Default value is false.
    public func getIgnoreStoreItemId() -> Bool? {
        return self.ignoreStoreItemId;
    }
}
