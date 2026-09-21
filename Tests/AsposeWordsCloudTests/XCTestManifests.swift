/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XCTestManifests.swift">
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

import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BatchTests.allTests),
        testCase(StylesTests.allTests),
        testCase(WatermarkTests.allTests),
        testCase(CompatibilityTests.allTests),
        testCase(RunTests.allTests),
        testCase(DocumentPropertiesTests.allTests),
        testCase(PageSetupTests.allTests),
        testCase(InfoTests.allTests),
        testCase(SectionTests.allTests),
        testCase(MathObjectTests.allTests),
        testCase(ListsTests.allTests),
        testCase(StructuredDocumentTagTests.allTests),
        testCase(TextTests.allTests),
        testCase(DocumentProtectionTests.allTests),
        testCase(FontTests.allTests),
        testCase(FieldTests.allTests),
        testCase(FormFieldTests.allTests),
        testCase(MailMergeFiledsTests.allTests),
        testCase(ExecuteTemplateTests.allTests),
        testCase(ExecuteMailMergeTests.allTests),
        testCase(ExecuteTemplateWithFieldOptionsTests.allTests),
        testCase(BuildReportTests.allTests),
        testCase(DocumentStatisticsTests.allTests),
        testCase(DocumentTests.allTests),
        testCase(CompareDocumentTests.allTests),
        testCase(PasswordEncryptionTests.allTests),
        testCase(RevisionsTests.allTests),
        testCase(AppendDocumentTests.allTests),
        testCase(CompressDocumentTests.allTests),
        testCase(SignatureTests.allTests),
        testCase(SplitDocumentToFormatTests.allTests),
        testCase(DocumentWithFormatTests.allTests),
        testCase(CommentTests.allTests),
        testCase(LoadWebDocumentTests.allTests),
        testCase(ConvertDocumentTests.allTests),
        testCase(CustomXmlPartsTests.allTests),
        testCase(BookmarkTests.allTests),
        testCase(ParagraphTests.allTests),
        testCase(DrawingObjectsTests.allTests),
        testCase(RangeTests.allTests),
        testCase(FileTests.allTests),
        testCase(FolderTests.allTests),
        testCase(HyperlinkTests.allTests),
        testCase(MacrosTests.allTests),
        testCase(TableTests.allTests),
        testCase(TableBorderTests.allTests),
        testCase(HeaderFooterTests.allTests),
        testCase(FootnoteTests.allTests),
        testCase(ExamplesTests.allTests),
        testCase(EncryptTests.allTests),
    ]
}
#endif
