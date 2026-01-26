/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HeaderFooterLink.swift">
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

// HeaderFooter link element.
public class HeaderFooterLink : LinkElement {
    // Gets or sets the paragraph's text.
    public enum ModelType : String, Codable
    {
        // Enum value "headerEven"
        case headerEven = "HeaderEven"

        // Enum value "headerPrimary"
        case headerPrimary = "HeaderPrimary"

        // Enum value "footerEven"
        case footerEven = "FooterEven"

        // Enum value "footerPrimary"
        case footerPrimary = "FooterPrimary"

        // Enum value "headerFirst"
        case headerFirst = "HeaderFirst"

        // Enum value "footerFirst"
        case footerFirst = "FooterFirst"
    }

    // Field of type. HeaderFooter link element.
    private var _type : ModelType? = nil;

    public var type : ModelType? {
        get {
            return self._type;
        }
        set {
            self._type = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case type = "Type";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_type = json["Type"] as? String {
            self.type = ModelType(rawValue: raw_type);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.type = try container.decodeIfPresent(ModelType.self, forKey: .type);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.type != nil) {
            try container.encode(self.type, forKey: .type);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.type == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "type");
        }
    }

    // Sets type. Gets or sets the paragraph's text.
    public func setType(type : ModelType?) -> HeaderFooterLink {
        self.type = type;
        return self;
    }

    // Gets type. Gets or sets the paragraph's text.
    public func getType() -> ModelType? {
        return self.type;
    }
}
