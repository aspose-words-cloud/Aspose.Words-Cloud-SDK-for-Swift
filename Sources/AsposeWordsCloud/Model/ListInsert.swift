/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListInsert.swift">
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

// Insert document to document list.
public class ListInsert : Codable, WordsApiModel {
    // Gets or sets the option that controls how list should be restarted at each section.
    // This option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if Aspose.Words.Saving.OoxmlCompliance is higher then Aspose.Words.Saving.OoxmlCompliance.Ecma376_2006.
    public enum Template : String, Codable
    {
        // Enum value "bulletDefault"
        case bulletDefault = "BulletDefault"

        // Enum value "bulletDisk"
        case bulletDisk = "BulletDisk"

        // Enum value "bulletCircle"
        case bulletCircle = "BulletCircle"

        // Enum value "bulletSquare"
        case bulletSquare = "BulletSquare"

        // Enum value "bulletDiamonds"
        case bulletDiamonds = "BulletDiamonds"

        // Enum value "bulletArrowHead"
        case bulletArrowHead = "BulletArrowHead"

        // Enum value "bulletTick"
        case bulletTick = "BulletTick"

        // Enum value "numberDefault"
        case numberDefault = "NumberDefault"

        // Enum value "numberArabicDot"
        case numberArabicDot = "NumberArabicDot"

        // Enum value "numberArabicParenthesis"
        case numberArabicParenthesis = "NumberArabicParenthesis"

        // Enum value "numberUppercaseRomanDot"
        case numberUppercaseRomanDot = "NumberUppercaseRomanDot"

        // Enum value "numberUppercaseLetterDot"
        case numberUppercaseLetterDot = "NumberUppercaseLetterDot"

        // Enum value "numberLowercaseLetterParenthesis"
        case numberLowercaseLetterParenthesis = "NumberLowercaseLetterParenthesis"

        // Enum value "numberLowercaseLetterDot"
        case numberLowercaseLetterDot = "NumberLowercaseLetterDot"

        // Enum value "numberLowercaseRomanDot"
        case numberLowercaseRomanDot = "NumberLowercaseRomanDot"

        // Enum value "outlineNumbers"
        case outlineNumbers = "OutlineNumbers"

        // Enum value "outlineLegal"
        case outlineLegal = "OutlineLegal"

        // Enum value "outlineBullets"
        case outlineBullets = "OutlineBullets"

        // Enum value "outlineHeadingsArticleSection"
        case outlineHeadingsArticleSection = "OutlineHeadingsArticleSection"

        // Enum value "outlineHeadingsLegal"
        case outlineHeadingsLegal = "OutlineHeadingsLegal"

        // Enum value "outlineHeadingsNumbers"
        case outlineHeadingsNumbers = "OutlineHeadingsNumbers"

        // Enum value "outlineHeadingsChapter"
        case outlineHeadingsChapter = "OutlineHeadingsChapter"
    }

    // Field of template. Insert document to document list.
    private var _template : Template? = nil;

    public var template : Template? {
        get {
            return self._template;
        }
        set {
            self._template = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case template = "Template";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_template = json["Template"] as? String {
            self.template = Template(rawValue: raw_template);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.template = try container.decodeIfPresent(Template.self, forKey: .template);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.template != nil) {
            try container.encode(self.template, forKey: .template);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.template == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "template");
        }
    }

    // Sets template. Gets or sets the option that controls how list should be restarted at each section. This option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if Aspose.Words.Saving.OoxmlCompliance is higher then Aspose.Words.Saving.OoxmlCompliance.Ecma376_2006.
    public func setTemplate(template : Template?) -> ListInsert {
        self.template = template;
        return self;
    }

    // Gets template. Gets or sets the option that controls how list should be restarted at each section. This option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if Aspose.Words.Saving.OoxmlCompliance is higher then Aspose.Words.Saving.OoxmlCompliance.Ecma376_2006.
    public func getTemplate() -> Template? {
        return self.template;
    }
}
