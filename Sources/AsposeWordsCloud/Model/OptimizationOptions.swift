/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OptimizationOptions.swift">
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

// Container class for the document optimization options.
public class OptimizationOptions : Codable, WordsApiModel {
    // Gets or sets the specific MSWord version.
    public enum MsWordVersion : String, Codable
    {
        // Enum value "word2000"
        case word2000 = "Word2000"

        // Enum value "word2002"
        case word2002 = "Word2002"

        // Enum value "word2003"
        case word2003 = "Word2003"

        // Enum value "word2007"
        case word2007 = "Word2007"

        // Enum value "word2010"
        case word2010 = "Word2010"

        // Enum value "word2013"
        case word2013 = "Word2013"

        // Enum value "word2016"
        case word2016 = "Word2016"

        // Enum value "word2019"
        case word2019 = "Word2019"
    }

    // Field of msWordVersion. Container class for the document optimization options.
    private var _msWordVersion : MsWordVersion? = nil;

    public var msWordVersion : MsWordVersion? {
        get {
            return self._msWordVersion;
        }
        set {
            self._msWordVersion = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case msWordVersion = "MsWordVersion";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_msWordVersion = json["MsWordVersion"] as? String {
            self.msWordVersion = MsWordVersion(rawValue: raw_msWordVersion);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.msWordVersion = try container.decodeIfPresent(MsWordVersion.self, forKey: .msWordVersion);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.msWordVersion != nil) {
            try container.encode(self.msWordVersion, forKey: .msWordVersion);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.msWordVersion == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "msWordVersion");
        }
    }

    // Sets msWordVersion. Gets or sets the specific MSWord version.
    public func setMsWordVersion(msWordVersion : MsWordVersion?) -> OptimizationOptions {
        self.msWordVersion = msWordVersion;
        return self;
    }

    // Gets msWordVersion. Gets or sets the specific MSWord version.
    public func getMsWordVersion() -> MsWordVersion? {
        return self.msWordVersion;
    }
}
