/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MailMergeFiledsTests.swift">
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

// Example of how to work with merge fields.
class MailMergeFiledsTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentFieldNamesOnline", testGetDocumentFieldNamesOnline),
        ("testGetDocumentFieldNames", testGetDocumentFieldNames)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/MailMerge";
    let mailMergeFolder = "DocumentActions/MailMerge";

    // Test for putting new fields.
    func testGetDocumentFieldNamesOnline() throws {
      let localDocumentFile = "SampleExecuteTemplate.docx";

      let requestTemplate = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(mailMergeFolder + "/" + localDocumentFile, isDirectory: false))!;
      let request = GetDocumentFieldNamesOnlineRequest(template: requestTemplate, useNonMergeFields: true);
       let actual = try super.getApi().getDocumentFieldNamesOnline(request: request);
      if (!(actual.getFieldNames() != nil)) { XCTFail("actual.getFieldNames() != nil"); return; }
      if (!(actual.getFieldNames()!.getNames() != nil)) { XCTFail("actual.getFieldNames()!.getNames() != nil"); return; }
      if (!(actual.getFieldNames()!.getNames()?.count == 15)) { XCTFail("actual.getFieldNames()!.getNames()?.count == 15"); return; }
      if (!(actual.getFieldNames()!.getNames()![0] == "TableStart:Order")) { XCTFail("actual.getFieldNames()!.getNames()![0] == " + "TableStart:Order"); return; }
    }

    // Test for getting mailmerge fields.
    func testGetDocumentFieldNames() throws {
      let remoteFileName = "TestGetDocumentFieldNames.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentFieldNamesRequest(name: remoteFileName, folder: remoteDataFolder);
       let actual = try super.getApi().getDocumentFieldNames(request: request);
      if (!(actual.getFieldNames() != nil)) { XCTFail("actual.getFieldNames() != nil"); return; }
      if (!(actual.getFieldNames()!.getNames() != nil)) { XCTFail("actual.getFieldNames()!.getNames() != nil"); return; }
      if (!(actual.getFieldNames()!.getNames()?.count == 0)) { XCTFail("actual.getFieldNames()!.getNames()?.count == 0"); return; }
    }
}
