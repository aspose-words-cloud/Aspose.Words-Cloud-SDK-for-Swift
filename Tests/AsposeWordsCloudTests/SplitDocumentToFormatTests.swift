/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SplitDocumentToFormatTests.swift">
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

// Example of how to split document and return result with specified format and page range.
class SplitDocumentToFormatTests: BaseTestContext {
    static var allTests = [
        ("testSplitDocument", testSplitDocument),
        ("testSplitDocumentOnline", testSplitDocumentOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/SplitDocument";
    let localFile = "Common/test_multi_pages.docx";

    // Test for document splitting.
    func testSplitDocument() throws {
      let remoteFileName = "TestSplitDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = SplitDocumentRequest(name: remoteFileName, format: "text", folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/TestSplitDocument.text", from: 1, to: 2);
       let actual = try super.getApi().splitDocument(request: request);
      if (!(actual.getSplitResult() != nil)) { XCTFail("actual.getSplitResult() != nil"); return; }
      if (!(actual.getSplitResult()!.getPages() != nil)) { XCTFail("actual.getSplitResult()!.getPages() != nil"); return; }
      if (!(actual.getSplitResult()!.getPages()?.count == 2)) { XCTFail("actual.getSplitResult()!.getPages()?.count == 2"); return; }
    }

    // Test for document splitting online.
    func testSplitDocumentOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = SplitDocumentOnlineRequest(document: requestDocument, format: "text", destFileName: BaseTestContext.getRemoteTestOut() + "/TestSplitDocument.text", from: 1, to: 2);
       _ = try super.getApi().splitDocumentOnline(request: request);
    }
}
