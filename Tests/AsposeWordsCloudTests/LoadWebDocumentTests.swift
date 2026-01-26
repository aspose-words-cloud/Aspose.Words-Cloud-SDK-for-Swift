/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="LoadWebDocumentTests.swift">
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

// Example of how to load web document.
class LoadWebDocumentTests: BaseTestContext {
    static var allTests = [
        ("testLoadWebDocument", testLoadWebDocument),
        ("testLoadWebDocumentOnline", testLoadWebDocumentOnline)
    ];

    // Test for loading web document.
    func testLoadWebDocument() throws {
      let requestDataSaveOptions = DocSaveOptionsData()
        .setDmlEffectsRenderingMode(dmlEffectsRenderingMode: DocSaveOptionsData.DmlEffectsRenderingMode._none)
        .setDmlRenderingMode(dmlRenderingMode: DocSaveOptionsData.DmlRenderingMode.drawingML)
        .setFileName(fileName: "google.doc")
        .setZipOutput(zipOutput: false);
      let requestData = LoadWebDocumentData()
        .setSaveOptions(saveOptions: requestDataSaveOptions as! DocSaveOptionsData)
        .setLoadingDocumentUrl(loadingDocumentUrl: "http://google.com");
      let request = LoadWebDocumentRequest(data: requestData);
      let actual = try super.getApi().loadWebDocument(request: request);
      if (!(actual.getSaveResult() != nil)) { XCTFail("actual.getSaveResult() != nil"); return; }
      if (!(actual.getSaveResult()!.getDestDocument() != nil)) { XCTFail("actual.getSaveResult()!.getDestDocument() != nil"); return; }
      if (!(actual.getSaveResult()!.getDestDocument()!.getHref() == "google.doc")) { XCTFail("actual.getSaveResult()!.getDestDocument()!.getHref() == " + "google.doc"); return; }
    }

    // Test for loading web document online.
    func testLoadWebDocumentOnline() throws {
      let requestDataSaveOptions = DocSaveOptionsData()
        .setDmlEffectsRenderingMode(dmlEffectsRenderingMode: DocSaveOptionsData.DmlEffectsRenderingMode._none)
        .setDmlRenderingMode(dmlRenderingMode: DocSaveOptionsData.DmlRenderingMode.drawingML)
        .setFileName(fileName: "google.doc")
        .setZipOutput(zipOutput: false);
      let requestData = LoadWebDocumentData()
        .setSaveOptions(saveOptions: requestDataSaveOptions as! DocSaveOptionsData)
        .setLoadingDocumentUrl(loadingDocumentUrl: "http://google.com");
      let request = LoadWebDocumentOnlineRequest(data: requestData);
      _ = try super.getApi().loadWebDocumentOnline(request: request);
    }
}
