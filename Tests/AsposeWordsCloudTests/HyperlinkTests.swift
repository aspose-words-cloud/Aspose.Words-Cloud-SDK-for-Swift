/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HyperlinkTests.swift">
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

// Example of how to work with hyperlinks.
class HyperlinkTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentHyperlinkByIndex", testGetDocumentHyperlinkByIndex),
        ("testGetDocumentHyperlinkByIndexOnline", testGetDocumentHyperlinkByIndexOnline),
        ("testGetDocumentHyperlinks", testGetDocumentHyperlinks),
        ("testGetDocumentHyperlinksOnline", testGetDocumentHyperlinksOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Hyperlink";
    let localFile = "Common/test_doc.docx";

    // Test for getting hyperlink by specified index.
    func testGetDocumentHyperlinkByIndex() throws {
      let remoteFileName = "TestGetDocumentHyperlinkByIndex.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentHyperlinkByIndexRequest(name: remoteFileName, hyperlinkIndex: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getDocumentHyperlinkByIndex(request: request);
      if (!(actual.getHyperlink() != nil)) { XCTFail("actual.getHyperlink() != nil"); return; }
      if (!(actual.getHyperlink()!.getDisplayText() == "Aspose")) { XCTFail("actual.getHyperlink()!.getDisplayText() == " + "Aspose"); return; }
    }

    // Test for getting hyperlink by specified index online.
    func testGetDocumentHyperlinkByIndexOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetDocumentHyperlinkByIndexOnlineRequest(document: requestDocument, hyperlinkIndex: 0);
      _ = try super.getApi().getDocumentHyperlinkByIndexOnline(request: request);
    }

    // Test for getting hyperlinks.
    func testGetDocumentHyperlinks() throws {
      let remoteFileName = "TestGetDocumentHyperlinks.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentHyperlinksRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getDocumentHyperlinks(request: request);
      if (!(actual.getHyperlinks() != nil)) { XCTFail("actual.getHyperlinks() != nil"); return; }
      if (!(actual.getHyperlinks()!.getHyperlinkList() != nil)) { XCTFail("actual.getHyperlinks()!.getHyperlinkList() != nil"); return; }
      if (!(actual.getHyperlinks()!.getHyperlinkList()?.count == 2)) { XCTFail("actual.getHyperlinks()!.getHyperlinkList()?.count == 2"); return; }
      if (!(actual.getHyperlinks()!.getHyperlinkList()![0].getDisplayText() == "Aspose")) { XCTFail("actual.getHyperlinks()!.getHyperlinkList()![0].getDisplayText() == " + "Aspose"); return; }
    }

    // Test for getting hyperlinks online.
    func testGetDocumentHyperlinksOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetDocumentHyperlinksOnlineRequest(document: requestDocument);
      _ = try super.getApi().getDocumentHyperlinksOnline(request: request);
    }
}
