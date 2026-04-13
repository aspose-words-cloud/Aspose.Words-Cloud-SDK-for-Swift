/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentProtectionTests.swift">
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

// Example of how to set document protection.
class DocumentProtectionTests: BaseTestContext {
    static var allTests = [
        ("testProtectDocument", testProtectDocument),
        ("testProtectDocumentOnline", testProtectDocumentOnline),
        ("testGetDocumentProtection", testGetDocumentProtection),
        ("testGetDocumentProtectionOnline", testGetDocumentProtectionOnline),
        ("testDeleteUnprotectDocument", testDeleteUnprotectDocument),
        ("testDeleteUnprotectDocumentOnline", testDeleteUnprotectDocumentOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/DocumentProtection";
    let localFile = "Common/test_multi_pages.docx";

    // Test for setting document protection.
    func testProtectDocument() throws {
      let remoteFileName = "TestProtectDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProtectionRequest = ProtectionRequestV2()
        .setProtectionPassword(protectionPassword: "123")
        .setProtectionType(protectionType: ProtectionRequestV2.ProtectionType.readOnly);
      let request = ProtectDocumentRequest(name: remoteFileName, protectionRequest: requestProtectionRequest, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
       let actual = try super.getApi().protectDocument(request: request);
      if (!(actual.getProtectionData() != nil)) { XCTFail("actual.getProtectionData() != nil"); return; }

    }

    // Test for setting document protection.
    func testProtectDocumentOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestProtectionRequest = ProtectionRequestV2()
        .setProtectionPassword(protectionPassword: "123")
        .setProtectionType(protectionType: ProtectionRequestV2.ProtectionType.readOnly);
      let request = ProtectDocumentOnlineRequest(document: requestDocument, protectionRequest: requestProtectionRequest);
       _ = try super.getApi().protectDocumentOnline(request: request);
    }

    // Test for getting document protection.
    func testGetDocumentProtection() throws {
      let localFilePath = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx";
      let remoteFileName = "TestGetDocumentProtection.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFilePath, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentProtectionRequest(name: remoteFileName, folder: remoteDataFolder);
       _ = try super.getApi().getDocumentProtection(request: request);
    }

    // Test for getting document protection.
    func testGetDocumentProtectionOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetDocumentProtectionOnlineRequest(document: requestDocument);
       _ = try super.getApi().getDocumentProtectionOnline(request: request);
    }

    // Test for deleting unprotect document.
    func testDeleteUnprotectDocument() throws {
      let localFilePath = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx";
      let remoteFileName = "TestDeleteUnprotectDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFilePath, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = UnprotectDocumentRequest(name: remoteFileName, folder: remoteDataFolder);
       let actual = try super.getApi().unprotectDocument(request: request);
      if (!(actual.getProtectionData() != nil)) { XCTFail("actual.getProtectionData() != nil"); return; }

    }

    // Test for deleting unprotect document.
    func testDeleteUnprotectDocumentOnline() throws {
      let localFilePath = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFilePath, isDirectory: false))!;
      let request = UnprotectDocumentOnlineRequest(document: requestDocument);
       _ = try super.getApi().unprotectDocumentOnline(request: request);
    }
}
