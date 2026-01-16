/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MhtmlSaveOptionsData.swift">
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

// Container class for mhtml save options.
public class MhtmlSaveOptionsData : HtmlSaveOptionsData {
    // Field of exportCidUrlsForMhtmlResources. Container class for mhtml save options.
    private var _exportCidUrlsForMhtmlResources : Bool? = nil;

    public var exportCidUrlsForMhtmlResources : Bool? {
        get {
            return self._exportCidUrlsForMhtmlResources;
        }
        set {
            self._exportCidUrlsForMhtmlResources = newValue;
        }
    }

    // Field of saveFormat. Container class for mhtml save options.
    private final let _saveFormat : String? = "mht";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case exportCidUrlsForMhtmlResources = "ExportCidUrlsForMhtmlResources";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.exportCidUrlsForMhtmlResources = json["ExportCidUrlsForMhtmlResources"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.exportCidUrlsForMhtmlResources = try container.decodeIfPresent(Bool.self, forKey: .exportCidUrlsForMhtmlResources);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.exportCidUrlsForMhtmlResources != nil) {
            try container.encode(self.exportCidUrlsForMhtmlResources, forKey: .exportCidUrlsForMhtmlResources);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets exportCidUrlsForMhtmlResources. Gets or sets a value indicating whether to use CID (Content-ID) URLs to reference resources (images, fonts, CSS) included in MHTML documents. The default value is false. By default, resources in MHTML documents are referenced by file name (for example, "image.png"), which are matched against "Content-Location" headers of MIME parts. This option enables an alternative method, where references to resource files are written as CID (Content-ID) URLs (for example, "cid:image.png") and are matched against "Content-ID" headers. In theory, there should be no difference between the two referencing methods and either of them should work fine in any browser or mail agent. In practice, however, some agents fail to fetch resources by file name. If your browser or mail agent refuses to load resources included in an MTHML document (doesn't show images or doesn't load CSS styles), try exporting the document with CID URLs.
    public func setExportCidUrlsForMhtmlResources(exportCidUrlsForMhtmlResources : Bool?) -> MhtmlSaveOptionsData {
        self.exportCidUrlsForMhtmlResources = exportCidUrlsForMhtmlResources;
        return self;
    }

    // Gets exportCidUrlsForMhtmlResources. Gets or sets a value indicating whether to use CID (Content-ID) URLs to reference resources (images, fonts, CSS) included in MHTML documents. The default value is false. By default, resources in MHTML documents are referenced by file name (for example, "image.png"), which are matched against "Content-Location" headers of MIME parts. This option enables an alternative method, where references to resource files are written as CID (Content-ID) URLs (for example, "cid:image.png") and are matched against "Content-ID" headers. In theory, there should be no difference between the two referencing methods and either of them should work fine in any browser or mail agent. In practice, however, some agents fail to fetch resources by file name. If your browser or mail agent refuses to load resources included in an MTHML document (doesn't show images or doesn't load CSS styles), try exporting the document with CID URLs.
    public func getExportCidUrlsForMhtmlResources() -> Bool? {
        return self.exportCidUrlsForMhtmlResources;
    }
}
