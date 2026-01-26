/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MetafileRenderingOptionsData.swift">
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

// Container class for options of metafile rendering.
public class MetafileRenderingOptionsData : Codable, WordsApiModel {
    // Gets or sets the option that controls how EMF+ Dual metafiles should be rendered.
    public enum EmfPlusDualRenderingMode : String, Codable
    {
        // Enum value "emfPlusWithFallback"
        case emfPlusWithFallback = "EmfPlusWithFallback"

        // Enum value "emfPlus"
        case emfPlus = "EmfPlus"

        // Enum value "emf"
        case emf = "Emf"
    }

    // Gets or sets the option that controls how metafile images should be rendered.
    public enum RenderingMode : String, Codable
    {
        // Enum value "vectorWithFallback"
        case vectorWithFallback = "VectorWithFallback"

        // Enum value "vector"
        case vector = "Vector"

        // Enum value "bitmap"
        case bitmap = "Bitmap"
    }

    // Field of emfPlusDualRenderingMode. Container class for options of metafile rendering.
    private var _emfPlusDualRenderingMode : EmfPlusDualRenderingMode? = nil;

    public var emfPlusDualRenderingMode : EmfPlusDualRenderingMode? {
        get {
            return self._emfPlusDualRenderingMode;
        }
        set {
            self._emfPlusDualRenderingMode = newValue;
        }
    }

    // Field of emulateRasterOperations. Container class for options of metafile rendering.
    private var _emulateRasterOperations : Bool? = nil;

    public var emulateRasterOperations : Bool? {
        get {
            return self._emulateRasterOperations;
        }
        set {
            self._emulateRasterOperations = newValue;
        }
    }

    // Field of emulateRenderingToSizeOnPage. Container class for options of metafile rendering.
    private var _emulateRenderingToSizeOnPage : Bool? = nil;

    public var emulateRenderingToSizeOnPage : Bool? {
        get {
            return self._emulateRenderingToSizeOnPage;
        }
        set {
            self._emulateRenderingToSizeOnPage = newValue;
        }
    }

    // Field of emulateRenderingToSizeOnPageResolution. Container class for options of metafile rendering.
    private var _emulateRenderingToSizeOnPageResolution : Int? = nil;

    public var emulateRenderingToSizeOnPageResolution : Int? {
        get {
            return self._emulateRenderingToSizeOnPageResolution;
        }
        set {
            self._emulateRenderingToSizeOnPageResolution = newValue;
        }
    }

    // Field of renderingMode. Container class for options of metafile rendering.
    private var _renderingMode : RenderingMode? = nil;

    public var renderingMode : RenderingMode? {
        get {
            return self._renderingMode;
        }
        set {
            self._renderingMode = newValue;
        }
    }

    // Field of useEmfEmbeddedToWmf. Container class for options of metafile rendering.
    private var _useEmfEmbeddedToWmf : Bool? = nil;

    public var useEmfEmbeddedToWmf : Bool? {
        get {
            return self._useEmfEmbeddedToWmf;
        }
        set {
            self._useEmfEmbeddedToWmf = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case emfPlusDualRenderingMode = "EmfPlusDualRenderingMode";
        case emulateRasterOperations = "EmulateRasterOperations";
        case emulateRenderingToSizeOnPage = "EmulateRenderingToSizeOnPage";
        case emulateRenderingToSizeOnPageResolution = "EmulateRenderingToSizeOnPageResolution";
        case renderingMode = "RenderingMode";
        case useEmfEmbeddedToWmf = "UseEmfEmbeddedToWmf";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_emfPlusDualRenderingMode = json["EmfPlusDualRenderingMode"] as? String {
            self.emfPlusDualRenderingMode = EmfPlusDualRenderingMode(rawValue: raw_emfPlusDualRenderingMode);
        }

        self.emulateRasterOperations = json["EmulateRasterOperations"] as? Bool;
        self.emulateRenderingToSizeOnPage = json["EmulateRenderingToSizeOnPage"] as? Bool;
        self.emulateRenderingToSizeOnPageResolution = json["EmulateRenderingToSizeOnPageResolution"] as? Int;
        if let raw_renderingMode = json["RenderingMode"] as? String {
            self.renderingMode = RenderingMode(rawValue: raw_renderingMode);
        }

        self.useEmfEmbeddedToWmf = json["UseEmfEmbeddedToWmf"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.emfPlusDualRenderingMode = try container.decodeIfPresent(EmfPlusDualRenderingMode.self, forKey: .emfPlusDualRenderingMode);
        self.emulateRasterOperations = try container.decodeIfPresent(Bool.self, forKey: .emulateRasterOperations);
        self.emulateRenderingToSizeOnPage = try container.decodeIfPresent(Bool.self, forKey: .emulateRenderingToSizeOnPage);
        self.emulateRenderingToSizeOnPageResolution = try container.decodeIfPresent(Int.self, forKey: .emulateRenderingToSizeOnPageResolution);
        self.renderingMode = try container.decodeIfPresent(RenderingMode.self, forKey: .renderingMode);
        self.useEmfEmbeddedToWmf = try container.decodeIfPresent(Bool.self, forKey: .useEmfEmbeddedToWmf);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.emfPlusDualRenderingMode != nil) {
            try container.encode(self.emfPlusDualRenderingMode, forKey: .emfPlusDualRenderingMode);
        }
        if (self.emulateRasterOperations != nil) {
            try container.encode(self.emulateRasterOperations, forKey: .emulateRasterOperations);
        }
        if (self.emulateRenderingToSizeOnPage != nil) {
            try container.encode(self.emulateRenderingToSizeOnPage, forKey: .emulateRenderingToSizeOnPage);
        }
        if (self.emulateRenderingToSizeOnPageResolution != nil) {
            try container.encode(self.emulateRenderingToSizeOnPageResolution, forKey: .emulateRenderingToSizeOnPageResolution);
        }
        if (self.renderingMode != nil) {
            try container.encode(self.renderingMode, forKey: .renderingMode);
        }
        if (self.useEmfEmbeddedToWmf != nil) {
            try container.encode(self.useEmfEmbeddedToWmf, forKey: .useEmfEmbeddedToWmf);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets emfPlusDualRenderingMode. Gets or sets the option that controls how EMF+ Dual metafiles should be rendered.
    public func setEmfPlusDualRenderingMode(emfPlusDualRenderingMode : EmfPlusDualRenderingMode?) -> MetafileRenderingOptionsData {
        self.emfPlusDualRenderingMode = emfPlusDualRenderingMode;
        return self;
    }

    // Gets emfPlusDualRenderingMode. Gets or sets the option that controls how EMF+ Dual metafiles should be rendered.
    public func getEmfPlusDualRenderingMode() -> EmfPlusDualRenderingMode? {
        return self.emfPlusDualRenderingMode;
    }


    // Sets emulateRasterOperations. Gets or sets a value indicating whether the raster operations should be emulated. Specific raster operations could be used in metafiles. They can not be rendered directly to vector graphics. Emulating raster operations requires partial rasterization of the resulting vector graphics which may affect the metafile rendering performance. When this value is set to true, Aspose.Words emulates the raster operations. The resulting output maybe partially rasterized and performance might be slower. When this value is set to false, Aspose.Words does not emulate the raster operations. When Aspose.Words encounters a raster operation in a metafile it fallbacks to rendering the metafile into a bitmap by using the operating system. This option is used only when metafile is rendered as vector graphics. The default value is true.
    public func setEmulateRasterOperations(emulateRasterOperations : Bool?) -> MetafileRenderingOptionsData {
        self.emulateRasterOperations = emulateRasterOperations;
        return self;
    }

    // Gets emulateRasterOperations. Gets or sets a value indicating whether the raster operations should be emulated. Specific raster operations could be used in metafiles. They can not be rendered directly to vector graphics. Emulating raster operations requires partial rasterization of the resulting vector graphics which may affect the metafile rendering performance. When this value is set to true, Aspose.Words emulates the raster operations. The resulting output maybe partially rasterized and performance might be slower. When this value is set to false, Aspose.Words does not emulate the raster operations. When Aspose.Words encounters a raster operation in a metafile it fallbacks to rendering the metafile into a bitmap by using the operating system. This option is used only when metafile is rendered as vector graphics. The default value is true.
    public func getEmulateRasterOperations() -> Bool? {
        return self.emulateRasterOperations;
    }


    // Sets emulateRenderingToSizeOnPage. Gets or sets a value determining whether metafile rendering emulates the display of the metafile according to the size on page or the display of the metafile in its default size.
    public func setEmulateRenderingToSizeOnPage(emulateRenderingToSizeOnPage : Bool?) -> MetafileRenderingOptionsData {
        self.emulateRenderingToSizeOnPage = emulateRenderingToSizeOnPage;
        return self;
    }

    // Gets emulateRenderingToSizeOnPage. Gets or sets a value determining whether metafile rendering emulates the display of the metafile according to the size on page or the display of the metafile in its default size.
    public func getEmulateRenderingToSizeOnPage() -> Bool? {
        return self.emulateRenderingToSizeOnPage;
    }


    // Sets emulateRenderingToSizeOnPageResolution. Gets or sets the resolution in pixels per inch for the emulation of metafile rendering to the size on page. This option is used only when EmulateRenderingToSizeOnPage is set to true.The default value is 96. This is a default display resolution. I.e. metafile rendering will emulate the display of the metafile in MS Word with a 100% zoom factor.
    public func setEmulateRenderingToSizeOnPageResolution(emulateRenderingToSizeOnPageResolution : Int?) -> MetafileRenderingOptionsData {
        self.emulateRenderingToSizeOnPageResolution = emulateRenderingToSizeOnPageResolution;
        return self;
    }

    // Gets emulateRenderingToSizeOnPageResolution. Gets or sets the resolution in pixels per inch for the emulation of metafile rendering to the size on page. This option is used only when EmulateRenderingToSizeOnPage is set to true.The default value is 96. This is a default display resolution. I.e. metafile rendering will emulate the display of the metafile in MS Word with a 100% zoom factor.
    public func getEmulateRenderingToSizeOnPageResolution() -> Int? {
        return self.emulateRenderingToSizeOnPageResolution;
    }


    // Sets renderingMode. Gets or sets the option that controls how metafile images should be rendered.
    public func setRenderingMode(renderingMode : RenderingMode?) -> MetafileRenderingOptionsData {
        self.renderingMode = renderingMode;
        return self;
    }

    // Gets renderingMode. Gets or sets the option that controls how metafile images should be rendered.
    public func getRenderingMode() -> RenderingMode? {
        return self.renderingMode;
    }


    // Sets useEmfEmbeddedToWmf. Gets or sets the flag, that controls how WMF metafiles with embedded EMF metafiles should be rendered.
    public func setUseEmfEmbeddedToWmf(useEmfEmbeddedToWmf : Bool?) -> MetafileRenderingOptionsData {
        self.useEmfEmbeddedToWmf = useEmfEmbeddedToWmf;
        return self;
    }

    // Gets useEmfEmbeddedToWmf. Gets or sets the flag, that controls how WMF metafiles with embedded EMF metafiles should be rendered.
    public func getUseEmfEmbeddedToWmf() -> Bool? {
        return self.useEmfEmbeddedToWmf;
    }
}
