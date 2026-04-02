/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentWithFormatTests.swift">
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

// Example of how to get document with different format.
class DocumentWithFormatTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentWithFormat", testGetDocumentWithFormat),
        ("testGetDocumentWithFormatAndOutPath", testGetDocumentWithFormatAndOutPath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/DocumentWithFormat";
    let localFile = "Common/test_multi_pages.docx";

    // Test for getting document with specified format.
    func testGetDocumentWithFormat() throws {
      let remoteFileName = "TestGetDocumentWithFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentWithFormatRequest(name: remoteFileName, format: "text", folder: remoteDataFolder);
       _ = try super.getApi().getDocumentWithFormat(request: request);
    }

    // Test for getting document with specified format.
    func testGetDocumentWithFormatAndOutPath() throws {
      let remoteFileName = "TestGetDocumentWithFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentWithFormatRequest(name: remoteFileName, format: "text", folder: remoteDataFolder, outPath: BaseTestContext.getRemoteTestOut() + "/TestGetDocumentWithFormatAndOutPath.text");
       _ = try super.getApi().getDocumentWithFormat(request: request);
    }
}
