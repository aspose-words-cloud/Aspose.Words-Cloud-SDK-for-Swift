/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentStatisticsTests.swift">
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

// Example of how to get document statistics.
class DocumentStatisticsTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentStatistics", testGetDocumentStatistics),
        ("testGetDocumentStatisticsOnline", testGetDocumentStatisticsOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/Statistics";
    let localFile = "Common/test_multi_pages.docx";

    // Test for document classification.
    func testGetDocumentStatistics() throws {
      let remoteFileName = "TestGetDocumentStatistics.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentStatisticsRequest(name: remoteFileName, folder: remoteDataFolder);
       let actual = try super.getApi().getDocumentStatistics(request: request);
      if (!(actual.getStatData() != nil)) { XCTFail("actual.getStatData() != nil"); return; }
      if (!(actual.getStatData()!.getWordCount() == 10)) { XCTFail("actual.getStatData()!.getWordCount() == 10"); return; }
    }

    // Test for document classification online.
    func testGetDocumentStatisticsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetDocumentStatisticsOnlineRequest(document: requestDocument);
       _ = try super.getApi().getDocumentStatisticsOnline(request: request);
    }
}
