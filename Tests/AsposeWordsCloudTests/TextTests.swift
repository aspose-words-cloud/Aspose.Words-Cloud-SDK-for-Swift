/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TextTests.swift">
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

// Example of how to work with macros.
class TextTests: BaseTestContext {
    static var allTests = [
        ("testReplaceText", testReplaceText),
        ("testReplaceTextOnline", testReplaceTextOnline),
        ("testSearch", testSearch),
        ("testSearchOnline", testSearchOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Text";

    // Test for replacing text.
    func testReplaceText() throws {
      let remoteFileName = "TestReplaceText.docx";
      let localFile = "Common/test_multi_pages.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestReplaceText = ReplaceTextParameters()
        .setIsMatchCase(isMatchCase: true)
        .setIsMatchWholeWord(isMatchWholeWord: false)
        .setIsOldValueRegex(isOldValueRegex: false)
        .setNewValue(newValue: "Aspose testing")
        .setOldValue(oldValue: "Testing");
      let request = ReplaceTextRequest(name: remoteFileName, replaceText: requestReplaceText, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().replaceText(request: request);
      if (!(actual.getMatches() == 3)) { XCTFail("actual.getMatches() == 3"); return; }
    }

    // Test for replacing text online.
    func testReplaceTextOnline() throws {
      let localFile = "Common/test_multi_pages.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestReplaceText = ReplaceTextParameters()
        .setIsMatchCase(isMatchCase: true)
        .setIsMatchWholeWord(isMatchWholeWord: false)
        .setIsOldValueRegex(isOldValueRegex: false)
        .setNewValue(newValue: "aspose new")
        .setOldValue(oldValue: "aspose");
      let request = ReplaceTextOnlineRequest(document: requestDocument, replaceText: requestReplaceText);
      _ = try super.getApi().replaceTextOnline(request: request);
    }

    // Test for searching.
    func testSearch() throws {
      let remoteFileName = "TestSearch.docx";
      let localFile = "DocumentElements/Text/SampleWordDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = SearchRequest(name: remoteFileName, pattern: "aspose", folder: remoteDataFolder);
      let actual = try super.getApi().search(request: request);
      if (!(actual.getSearchResults() != nil)) { XCTFail("actual.getSearchResults() != nil"); return; }
      if (!(actual.getSearchResults()!.getResultsList() != nil)) { XCTFail("actual.getSearchResults()!.getResultsList() != nil"); return; }
      if (!(actual.getSearchResults()!.getResultsList()?.count == 23)) { XCTFail("actual.getSearchResults()!.getResultsList()?.count == 23"); return; }
      if (!(actual.getSearchResults()!.getResultsList()![0].getRangeStart() != nil)) { XCTFail("actual.getSearchResults()!.getResultsList()![0].getRangeStart() != nil"); return; }
      if (!(actual.getSearchResults()!.getResultsList()![0].getRangeStart()!.getOffset() == 65)) { XCTFail("actual.getSearchResults()!.getResultsList()![0].getRangeStart()!.getOffset() == 65"); return; }
    }

    // Test for searching online.
    func testSearchOnline() throws {
      let localFile = "DocumentElements/Text/SampleWordDocument.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = SearchOnlineRequest(document: requestDocument, pattern: "aspose");
      _ = try super.getApi().searchOnline(request: request);
    }
}
