/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReportBuildOptions.swift">
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

// Specifies options controlling behavior of ReportingEngine while building a report.
public enum ReportBuildOptions : String, Codable
{
    // Enum value "_none"
    case _none = "None"

    // Enum value "allowMissingMembers"
    case allowMissingMembers = "AllowMissingMembers"

    // Enum value "removeEmptyParagraphs"
    case removeEmptyParagraphs = "RemoveEmptyParagraphs"

    // Enum value "inlineErrorMessages"
    case inlineErrorMessages = "InlineErrorMessages"

    // Enum value "useLegacyHeaderFooterVisiting"
    case useLegacyHeaderFooterVisiting = "UseLegacyHeaderFooterVisiting"

    // Enum value "respectJpegExifOrientation"
    case respectJpegExifOrientation = "RespectJpegExifOrientation"

    // Enum value "updateFieldsSyntaxAware"
    case updateFieldsSyntaxAware = "UpdateFieldsSyntaxAware"
}
