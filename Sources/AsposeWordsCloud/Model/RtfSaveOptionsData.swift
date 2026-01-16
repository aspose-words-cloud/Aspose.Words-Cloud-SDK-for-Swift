/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RtfSaveOptionsData.swift">
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

// Container class for rtf save options.
public class RtfSaveOptionsData : SaveOptionsData {
    // Field of exportCompactSize. Container class for rtf save options.
    private var _exportCompactSize : Bool? = nil;

    public var exportCompactSize : Bool? {
        get {
            return self._exportCompactSize;
        }
        set {
            self._exportCompactSize = newValue;
        }
    }

    // Field of exportImagesForOldReaders. Container class for rtf save options.
    private var _exportImagesForOldReaders : Bool? = nil;

    public var exportImagesForOldReaders : Bool? {
        get {
            return self._exportImagesForOldReaders;
        }
        set {
            self._exportImagesForOldReaders = newValue;
        }
    }

    // Field of prettyFormat. Container class for rtf save options.
    private var _prettyFormat : Bool? = nil;

    public var prettyFormat : Bool? {
        get {
            return self._prettyFormat;
        }
        set {
            self._prettyFormat = newValue;
        }
    }

    // Field of saveImagesAsWmf. Container class for rtf save options.
    private var _saveImagesAsWmf : Bool? = nil;

    public var saveImagesAsWmf : Bool? {
        get {
            return self._saveImagesAsWmf;
        }
        set {
            self._saveImagesAsWmf = newValue;
        }
    }

    // Field of saveFormat. Container class for rtf save options.
    private final let _saveFormat : String? = "rtf";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case exportCompactSize = "ExportCompactSize";
        case exportImagesForOldReaders = "ExportImagesForOldReaders";
        case prettyFormat = "PrettyFormat";
        case saveImagesAsWmf = "SaveImagesAsWmf";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.exportCompactSize = json["ExportCompactSize"] as? Bool;
        self.exportImagesForOldReaders = json["ExportImagesForOldReaders"] as? Bool;
        self.prettyFormat = json["PrettyFormat"] as? Bool;
        self.saveImagesAsWmf = json["SaveImagesAsWmf"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.exportCompactSize = try container.decodeIfPresent(Bool.self, forKey: .exportCompactSize);
        self.exportImagesForOldReaders = try container.decodeIfPresent(Bool.self, forKey: .exportImagesForOldReaders);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
        self.saveImagesAsWmf = try container.decodeIfPresent(Bool.self, forKey: .saveImagesAsWmf);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.exportCompactSize != nil) {
            try container.encode(self.exportCompactSize, forKey: .exportCompactSize);
        }
        if (self.exportImagesForOldReaders != nil) {
            try container.encode(self.exportImagesForOldReaders, forKey: .exportImagesForOldReaders);
        }
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
        if (self.saveImagesAsWmf != nil) {
            try container.encode(self.saveImagesAsWmf, forKey: .saveImagesAsWmf);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets exportCompactSize. Gets or sets a value indicating whether to make output RTF documents smaller in size, but if they contain RTL (right-to-left) text, it will not be displayed correctly.
    public func setExportCompactSize(exportCompactSize : Bool?) -> RtfSaveOptionsData {
        self.exportCompactSize = exportCompactSize;
        return self;
    }

    // Gets exportCompactSize. Gets or sets a value indicating whether to make output RTF documents smaller in size, but if they contain RTL (right-to-left) text, it will not be displayed correctly.
    public func getExportCompactSize() -> Bool? {
        return self.exportCompactSize;
    }


    // Sets exportImagesForOldReaders. Gets or sets a value indicating whether the keywords for "old readers" are written to RTF or not.
    public func setExportImagesForOldReaders(exportImagesForOldReaders : Bool?) -> RtfSaveOptionsData {
        self.exportImagesForOldReaders = exportImagesForOldReaders;
        return self;
    }

    // Gets exportImagesForOldReaders. Gets or sets a value indicating whether the keywords for "old readers" are written to RTF or not.
    public func getExportImagesForOldReaders() -> Bool? {
        return self.exportImagesForOldReaders;
    }


    // Sets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func setPrettyFormat(prettyFormat : Bool?) -> RtfSaveOptionsData {
        self.prettyFormat = prettyFormat;
        return self;
    }

    // Gets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }


    // Sets saveImagesAsWmf. Gets or sets a value indicating whether when true all images will be saved as WMF. This option might help to avoid WordPad warning messages.
    public func setSaveImagesAsWmf(saveImagesAsWmf : Bool?) -> RtfSaveOptionsData {
        self.saveImagesAsWmf = saveImagesAsWmf;
        return self;
    }

    // Gets saveImagesAsWmf. Gets or sets a value indicating whether when true all images will be saved as WMF. This option might help to avoid WordPad warning messages.
    public func getSaveImagesAsWmf() -> Bool? {
        return self.saveImagesAsWmf;
    }
}
