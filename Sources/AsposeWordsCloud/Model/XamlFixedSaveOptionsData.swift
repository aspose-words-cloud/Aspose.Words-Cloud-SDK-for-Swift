/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XamlFixedSaveOptionsData.swift">
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

// Container class for xaml fixed save options.
public class XamlFixedSaveOptionsData : FixedPageSaveOptionsData {
    // Field of resourcesFolder. Container class for xaml fixed save options.
    private var _resourcesFolder : String? = nil;

    public var resourcesFolder : String? {
        get {
            return self._resourcesFolder;
        }
        set {
            self._resourcesFolder = newValue;
        }
    }

    // Field of resourcesFolderAlias. Container class for xaml fixed save options.
    private var _resourcesFolderAlias : String? = nil;

    public var resourcesFolderAlias : String? {
        get {
            return self._resourcesFolderAlias;
        }
        set {
            self._resourcesFolderAlias = newValue;
        }
    }

    // Field of saveFormat. Container class for xaml fixed save options.
    private final let _saveFormat : String? = "xamlfixed";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case resourcesFolder = "ResourcesFolder";
        case resourcesFolderAlias = "ResourcesFolderAlias";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.resourcesFolder = json["ResourcesFolder"] as? String;
        self.resourcesFolderAlias = json["ResourcesFolderAlias"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.resourcesFolder = try container.decodeIfPresent(String.self, forKey: .resourcesFolder);
        self.resourcesFolderAlias = try container.decodeIfPresent(String.self, forKey: .resourcesFolderAlias);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.resourcesFolder != nil) {
            try container.encode(self.resourcesFolder, forKey: .resourcesFolder);
        }
        if (self.resourcesFolderAlias != nil) {
            try container.encode(self.resourcesFolderAlias, forKey: .resourcesFolderAlias);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets resourcesFolder. Gets or sets the physical folder where resources (images and fonts) are saved when exporting a document to fixed page Xaml format. The default value is null. When you save a Document in fixed page Xaml format, Aspose.Words needs to save all images embedded in the document as standalone files. ResourcesFolder allows you to specify where the images will be saved and ResourcesFolderAlias allows to specify how the image URIs will be constructed.If you save a document into a file and provide a file name, Aspose.Words, by default, saves the images in the same folder where the document file is saved. Use ResourcesFolder to override this behavior.If you save a document into a stream, Aspose.Words does not have a folder where to save the images, but still needs to save the images somewhere. In this case, you need to specify an accessible folder by using the ResourcesFolder property.
    public func setResourcesFolder(resourcesFolder : String?) -> XamlFixedSaveOptionsData {
        self.resourcesFolder = resourcesFolder;
        return self;
    }

    // Gets resourcesFolder. Gets or sets the physical folder where resources (images and fonts) are saved when exporting a document to fixed page Xaml format. The default value is null. When you save a Document in fixed page Xaml format, Aspose.Words needs to save all images embedded in the document as standalone files. ResourcesFolder allows you to specify where the images will be saved and ResourcesFolderAlias allows to specify how the image URIs will be constructed.If you save a document into a file and provide a file name, Aspose.Words, by default, saves the images in the same folder where the document file is saved. Use ResourcesFolder to override this behavior.If you save a document into a stream, Aspose.Words does not have a folder where to save the images, but still needs to save the images somewhere. In this case, you need to specify an accessible folder by using the ResourcesFolder property.
    public func getResourcesFolder() -> String? {
        return self.resourcesFolder;
    }


    // Sets resourcesFolderAlias. Gets or sets the name of the folder used to construct image URIs written into an fixed page Xaml document. The default value is null. When you save a Document in fixed page Xaml format, Aspose.Words needs to save all images embedded in the document as standalone files. ResourcesFolder allows you to specify where the images will be saved and ResourcesFolderAlias allows to specify how the image URIs will be constructed.
    public func setResourcesFolderAlias(resourcesFolderAlias : String?) -> XamlFixedSaveOptionsData {
        self.resourcesFolderAlias = resourcesFolderAlias;
        return self;
    }

    // Gets resourcesFolderAlias. Gets or sets the name of the folder used to construct image URIs written into an fixed page Xaml document. The default value is null. When you save a Document in fixed page Xaml format, Aspose.Words needs to save all images embedded in the document as standalone files. ResourcesFolder allows you to specify where the images will be saved and ResourcesFolderAlias allows to specify how the image URIs will be constructed.
    public func getResourcesFolderAlias() -> String? {
        return self.resourcesFolderAlias;
    }
}
