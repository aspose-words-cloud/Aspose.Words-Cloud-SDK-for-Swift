/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompressDocumentTests.swift">
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

// Example of how to compress document for reduce document size.
class CompressDocumentTests: BaseTestContext {
    static var allTests = [
        ("testCompressDocument", testCompressDocument),
        ("testCompressDocumentOnline", testCompressDocumentOnline)
    ];

    let remoteFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/CompressDocument";
    let localFolder = "DocumentActions/CompressDocument";

    // Test for compression document.
    func testCompressDocument() throws {
      let localName = "TestCompress.docx";
      let remoteName = "TestCompress.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName, isDirectory: false), path: remoteFolder + "/" + remoteName);

      let requestCompressOptions = CompressOptions();
      let request = CompressDocumentRequest(name: remoteName, compressOptions: requestCompressOptions, folder: remoteFolder);
      let actual = try super.getApi().compressDocument(request: request);
      if (!(actual.getDocument() != nil)) { XCTFail("actual.getDocument() != nil"); return; }
    }

    // Test for compression document online.
    func testCompressDocumentOnline() throws {
      let localName = "TestCompress.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName, isDirectory: false))!;
      let requestCompressOptions = CompressOptions();
      let request = CompressDocumentOnlineRequest(document: requestDocument, compressOptions: requestCompressOptions);
      _ = try super.getApi().compressDocumentOnline(request: request);
    }
}
