/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ConvertDocumentTests.swift">
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
@testable import AsposeWordsCloud

// Example of how to convert document to one of the available formats.
class ConvertDocumentTests: BaseTestContext {
    static var allTests = [
        ("testSaveAs", testSaveAs),
        ("testSaveAsOnline", testSaveAsOnline),
        ("testSaveAsOnlineHtmlMultifile", testSaveAsOnlineHtmlMultifile),
        ("testSaveAsDocx", testSaveAsDocx),
        ("testSaveAsTiff", testSaveAsTiff),
        ("testSaveAsTiffOnline", testSaveAsTiffOnline),
        ("testConvertDocument", testConvertDocument)
    ];

    let remoteFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/ConvertDocument";
    let localFolder = "DocumentActions/ConvertDocument";

    // Test for converting document to one of the available formats.
    func testSaveAs() throws {
      let localName = "test_multi_pages.docx";
      let remoteName = "TestSaveAs.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false), path: remoteFolder + "/" + remoteName);

      let requestSaveOptionsData = PdfSaveOptionsData()
        .setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/TestSaveAs.pdf");
      let request = SaveAsRequest(name: remoteName, saveOptionsData: requestSaveOptionsData as! PdfSaveOptionsData, folder: remoteFolder);
      let actual = try super.getApi().saveAs(request: request);
      if (!(actual.getSaveResult() != nil)) { XCTFail("actual.getSaveResult() != nil"); return; }
      if (!(actual.getSaveResult()!.getDestDocument() != nil)) { XCTFail("actual.getSaveResult()!.getDestDocument() != nil"); return; }
    }

    // Test for converting document online to one of the available formats.
    func testSaveAsOnline() throws {
      let localName = "test_multi_pages.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false))!;
      let requestSaveOptionsData = PdfSaveOptionsData()
        .setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/TestSaveAs.pdf");
      let request = SaveAsOnlineRequest(document: requestDocument, saveOptionsData: requestSaveOptionsData as! PdfSaveOptionsData);
      _ = try super.getApi().saveAsOnline(request: request);
    }

    // Test for converting document online to html with additional files like css and images.
    func testSaveAsOnlineHtmlMultifile() throws {
      let localName = "test_multi_pages.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false))!;
      let requestSaveOptionsData = HtmlSaveOptionsData()
        .setCssStyleSheetFileName(cssStyleSheetFileName: BaseTestContext.getRemoteTestOut() + "/TestSaveAsHtml.css")
        .setCssStyleSheetType(cssStyleSheetType: HtmlSaveOptionsData.CssStyleSheetType.external)
        .setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/TestSaveAsHtml.html");
      let request = SaveAsOnlineRequest(document: requestDocument, saveOptionsData: requestSaveOptionsData as! HtmlSaveOptionsData);
      _ = try super.getApi().saveAsOnline(request: request);
    }

    // Test for converting document to one of the available formats.
    func testSaveAsDocx() throws {
      let localName = "45.pdf";
      let remoteName = "TestSaveAsFromPdfToDoc.pdf";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName, isDirectory: false), path: remoteFolder + "/" + remoteName);

      let requestSaveOptionsData = DocxSaveOptionsData()
        .setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/TestSaveAsFromPdfToDoc.docx");
      let request = SaveAsRequest(name: remoteName, saveOptionsData: requestSaveOptionsData as! DocxSaveOptionsData, folder: remoteFolder);
      let actual = try super.getApi().saveAs(request: request);
      if (!(actual.getSaveResult() != nil)) { XCTFail("actual.getSaveResult() != nil"); return; }
      if (!(actual.getSaveResult()!.getDestDocument() != nil)) { XCTFail("actual.getSaveResult()!.getDestDocument() != nil"); return; }
    }

    // Test for converting document to one of the available formats.
    func testSaveAsTiff() throws {
      let localName = "test_multi_pages.docx";
      let remoteName = "TestSaveAsTiff.pdf";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false), path: remoteFolder + "/" + remoteName);

      let requestSaveOptions = TiffSaveOptionsData()
        .setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/abc.tiff");
      let request = SaveAsTiffRequest(name: remoteName, saveOptions: requestSaveOptions as! TiffSaveOptionsData, folder: remoteFolder);
      let actual = try super.getApi().saveAsTiff(request: request);
      if (!(actual.getSaveResult() != nil)) { XCTFail("actual.getSaveResult() != nil"); return; }
      if (!(actual.getSaveResult()!.getDestDocument() != nil)) { XCTFail("actual.getSaveResult()!.getDestDocument() != nil"); return; }
    }

    // Test for converting document to one of the available formats.
    func testSaveAsTiffOnline() throws {
      let localName = "test_multi_pages.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false))!;
      let requestSaveOptions = TiffSaveOptionsData()
        .setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/abc.tiff");
      let request = SaveAsTiffOnlineRequest(document: requestDocument, saveOptions: requestSaveOptions as! TiffSaveOptionsData);
      _ = try super.getApi().saveAsTiffOnline(request: request);
    }

    // A test for ConvertDocument.
    func testConvertDocument() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/test_uploadfile.docx", isDirectory: false))!;
      let request = ConvertDocumentRequest(document: requestDocument, format: "pdf");
      _ = try super.getApi().convertDocument(request: request);
    }
}
