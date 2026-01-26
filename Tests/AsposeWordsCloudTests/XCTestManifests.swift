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
        testCase(BookmarkTests.allTests),
        testCase(CompatibilityTests.allTests),
        testCase(AppendDocumentTests.allTests),
        testCase(CommentTests.allTests),
        testCase(CompareDocumentTests.allTests),
        testCase(CompressDocumentTests.allTests),
        testCase(ConvertDocumentTests.allTests),
        testCase(CustomXmlPartsTests.allTests),
        testCase(DocumentTests.allTests),
        testCase(DocumentStatisticsTests.allTests),
        testCase(DocumentWithFormatTests.allTests),
        testCase(LoadWebDocumentTests.allTests),
        testCase(PasswordEncryptionTests.allTests),
        testCase(RevisionsTests.allTests),
        testCase(SignatureTests.allTests),
        testCase(SplitDocumentToFormatTests.allTests),
        testCase(DocumentPropertiesTests.allTests),
        testCase(DocumentProtectionTests.allTests),
        testCase(DrawingObjectsTests.allTests),
        testCase(FieldTests.allTests),
        testCase(FormFieldTests.allTests),
        testCase(FontTests.allTests),
        testCase(FootnoteTests.allTests),
        testCase(HeaderFooterTests.allTests),
        testCase(HyperlinkTests.allTests),
        testCase(InfoTests.allTests),
        testCase(ListsTests.allTests),
        testCase(MacrosTests.allTests),
        testCase(ExecuteMailMergeTests.allTests),
        testCase(ExecuteTemplateTests.allTests),
        testCase(ExecuteTemplateWithFieldOptionsTests.allTests),
        testCase(MailMergeFiledsTests.allTests),
        testCase(MathObjectTests.allTests),
        testCase(PageSetupTests.allTests),
        testCase(ParagraphTests.allTests),
        testCase(RangeTests.allTests),
        testCase(BuildReportTests.allTests),
        testCase(RunTests.allTests),
        testCase(SectionTests.allTests),
        testCase(FileTests.allTests),
        testCase(FolderTests.allTests),
        testCase(StructuredDocumentTagTests.allTests),
        testCase(StylesTests.allTests),
        testCase(TableTests.allTests),
        testCase(TableBorderTests.allTests),
        testCase(TextTests.allTests),
        testCase(WatermarkTests.allTests),
        testCase(ExamplesTests.allTests),
        testCase(EncryptTests.allTests),
    ]
}
#endif
