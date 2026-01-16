/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ImageEntryList.swift">
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

// Represents a list of images which will be appended to the original resource document or image.
public class ImageEntryList : BaseEntryList {
    // Field of appendEachImageOnNewPage. Represents a list of images which will be appended to the original resource document or image.
    private var _appendEachImageOnNewPage : Bool? = nil;

    public var appendEachImageOnNewPage : Bool? {
        get {
            return self._appendEachImageOnNewPage;
        }
        set {
            self._appendEachImageOnNewPage = newValue;
        }
    }

    // Field of imageEntries. Represents a list of images which will be appended to the original resource document or image.
    private var _imageEntries : [ImageEntry]? = nil;

    public var imageEntries : [ImageEntry]? {
        get {
            return self._imageEntries;
        }
        set {
            self._imageEntries = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case appendEachImageOnNewPage = "AppendEachImageOnNewPage";
        case imageEntries = "ImageEntries";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.appendEachImageOnNewPage = json["AppendEachImageOnNewPage"] as? Bool;
        if let raw_imageEntries = json["ImageEntries"] as? [Any] {
            self.imageEntries = try raw_imageEntries.map {
                if let element_imageEntries = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: ImageEntry.self, from: element_imageEntries);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "ImageEntry");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.appendEachImageOnNewPage = try container.decodeIfPresent(Bool.self, forKey: .appendEachImageOnNewPage);
        self.imageEntries = try container.decodeIfPresent([ImageEntry].self, forKey: .imageEntries);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.appendEachImageOnNewPage != nil) {
            try container.encode(self.appendEachImageOnNewPage, forKey: .appendEachImageOnNewPage);
        }
        if (self.imageEntries != nil) {
            try container.encode(self.imageEntries, forKey: .imageEntries);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
        super.collectFilesContent(&resultFilesContent);
        if (self.imageEntries != nil)
        {
            for element in self.imageEntries! {
                element.collectFilesContent(&resultFilesContent);
            }
        }

    }

    public override func validate() throws {
        try super.validate();
        if (self.imageEntries == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "imageEntries");
        }
        if (self.imageEntries != nil) {
            for elementImageEntries in self.imageEntries! {
                try elementImageEntries.validate();
            }
        }

    }

    // Sets appendEachImageOnNewPage. Gets or sets a value indicating whether each image should be added to a new page in the document. This value only has an effect when adding images to a document that supports pagination.
    public func setAppendEachImageOnNewPage(appendEachImageOnNewPage : Bool?) -> ImageEntryList {
        self.appendEachImageOnNewPage = appendEachImageOnNewPage;
        return self;
    }

    // Gets appendEachImageOnNewPage. Gets or sets a value indicating whether each image should be added to a new page in the document. This value only has an effect when adding images to a document that supports pagination.
    public func getAppendEachImageOnNewPage() -> Bool? {
        return self.appendEachImageOnNewPage;
    }


    // Sets imageEntries. Gets or sets the list of images.
    public func setImageEntries(imageEntries : [ImageEntry]?) -> ImageEntryList {
        self.imageEntries = imageEntries;
        return self;
    }

    // Gets imageEntries. Gets or sets the list of images.
    public func getImageEntries() -> [ImageEntry]? {
        return self.imageEntries;
    }
}
