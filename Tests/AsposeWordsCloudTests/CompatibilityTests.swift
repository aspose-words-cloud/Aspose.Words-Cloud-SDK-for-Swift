/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompatibilityTests.swift">
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

// Example of how to work with compatibility options.
class CompatibilityTests: BaseTestContext {
    static var allTests = [
        ("testOptimizeDocument", testOptimizeDocument),
        ("testOptimizeDocumentOnline", testOptimizeDocumentOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/Compatibility";
    let localFile = "Common/test_multi_pages.docx";

    // Test for optimize document to specific MS Word version.
    func testOptimizeDocument() throws {
      let remoteFileName = "TestOptimizeDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestOptions = OptimizationOptions()
        .setMsWordVersion(msWordVersion: OptimizationOptions.MsWordVersion.word2002);
      let request = OptimizeDocumentRequest(name: remoteFileName, options: requestOptions, folder: remoteDataFolder);
      try super.getApi().optimizeDocument(request: request);
    }

    // Test for optimize document to specific MS Word version.
    func testOptimizeDocumentOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestOptions = OptimizationOptions()
        .setMsWordVersion(msWordVersion: OptimizationOptions.MsWordVersion.word2002);
      let request = OptimizeDocumentOnlineRequest(document: requestDocument, options: requestOptions);
      _ = try super.getApi().optimizeDocumentOnline(request: request);
    }
}
