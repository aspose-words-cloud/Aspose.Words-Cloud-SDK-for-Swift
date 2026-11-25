/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DrawingObjectInsertData.swift">
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

// Drawing object element for insert with the image passed by reference.
public class DrawingObjectInsertData : DrawingObjectInsert {
    // Field of imageReference. Drawing object element for insert with the image passed by reference.
    private var _imageReference : FileReference? = nil;

    public var imageReference : FileReference? {
        get {
            return self._imageReference;
        }
        set {
            self._imageReference = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case imageReference = "ImageReference";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_imageReference = json["ImageReference"] as? [String: Any] {
            self.imageReference = try ObjectSerializer.deserialize(type: FileReference.self, from: raw_imageReference);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.imageReference = try container.decodeIfPresent(FileReference.self, forKey: .imageReference);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.imageReference != nil) {
            try container.encode(self.imageReference, forKey: .imageReference);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
        super.collectFilesContent(&resultFilesContent);
        if (self.imageReference != nil)
        {
            self.imageReference!.collectFilesContent(&resultFilesContent);
        }

    }

    public override func validate() throws {
        try super.validate();
        if (self.imageReference == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "imageReference");
        }
        try self.imageReference?.validate();

    }

    // Sets imageReference. Gets or sets the reference to the image file. Source "Storage": the reference is either a storage path to the image located in the folder of the document or in one of its subfolders, or an absolute HTTP(S) URL to download the image from. For online methods any storage path is allowed. Source "Request": the reference is the name of the multipart request part that contains the image.
    public func setImageReference(imageReference : FileReference?) -> DrawingObjectInsertData {
        self.imageReference = imageReference;
        return self;
    }

    // Gets imageReference. Gets or sets the reference to the image file. Source "Storage": the reference is either a storage path to the image located in the folder of the document or in one of its subfolders, or an absolute HTTP(S) URL to download the image from. For online methods any storage path is allowed. Source "Request": the reference is the name of the multipart request part that contains the image.
    public func getImageReference() -> FileReference? {
        return self.imageReference;
    }
}
