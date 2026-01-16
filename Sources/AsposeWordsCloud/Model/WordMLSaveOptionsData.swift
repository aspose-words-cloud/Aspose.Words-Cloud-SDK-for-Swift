/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordMLSaveOptionsData.swift">
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

// Container class for wml save options.
public class WordMLSaveOptionsData : SaveOptionsData {
    // Field of prettyFormat. Container class for wml save options.
    private var _prettyFormat : Bool? = nil;

    public var prettyFormat : Bool? {
        get {
            return self._prettyFormat;
        }
        set {
            self._prettyFormat = newValue;
        }
    }

    // Field of saveFormat. Container class for wml save options.
    private final let _saveFormat : String? = "wml";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case prettyFormat = "PrettyFormat";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.prettyFormat = json["PrettyFormat"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func setPrettyFormat(prettyFormat : Bool?) -> WordMLSaveOptionsData {
        self.prettyFormat = prettyFormat;
        return self;
    }

    // Gets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }
}
