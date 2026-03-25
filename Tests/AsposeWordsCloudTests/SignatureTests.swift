/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SignatureTests.swift">
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

// Example of how to work with signatures.
class SignatureTests: BaseTestContext {
    static var allTests = [
        ("testGetSignatures", testGetSignatures),
        ("testGetSignaturesOnline", testGetSignaturesOnline),
        ("testRemoveAllSignatures", testRemoveAllSignatures),
        ("testRemoveAllSignaturesOnline", testRemoveAllSignaturesOnline),
        ("testSignDocument", testSignDocument),
        ("testSignDocumentOnline", testSignDocumentOnline)
    ];

    let remoteFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/Signature";
    let localFolder = "DocumentActions/Signature";
    let signedDocument = "signedDocument.docx";
    let unsignedDocument = "unsignedDocument.docx";
    let certificateName = "morzal.pfx";
    let certificatePassword = "aw";

    // Test for getting all document signatures.
    func testGetSignatures() throws {
      let remoteName = "TestGetSignatures.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + signedDocument, isDirectory: false), path: remoteFolder + "/" + remoteName);

      let request = GetSignaturesRequest(name: remoteName, folder: remoteFolder);
       let actual = try super.getApi().getSignatures(request: request);
      if (!(actual.getSignatures() != nil)) { XCTFail("actual.getSignatures() != nil"); return; }
      if (!(actual.getSignatures()?.count == 1)) { XCTFail("actual.getSignatures()?.count == 1"); return; }
    }

    // Test for getting all document signatures online.
    func testGetSignaturesOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + signedDocument, isDirectory: false))!;
      let request = GetSignaturesOnlineRequest(document: requestDocument);
       let actual = try super.getApi().getSignaturesOnline(request: request);
      if (!(actual.getSignatures() != nil)) { XCTFail("actual.getSignatures() != nil"); return; }
      if (!(actual.getSignatures()?.count == 1)) { XCTFail("actual.getSignatures()?.count == 1"); return; }
    }

    // Test for removing all document signatures.
    func testRemoveAllSignatures() throws {
      let remoteName = "TestRemoveAllSignatures.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + signedDocument, isDirectory: false), path: remoteFolder + "/" + remoteName);

      let request = RemoveAllSignaturesRequest(name: remoteName, folder: remoteFolder);
       let actual = try super.getApi().removeAllSignatures(request: request);
      if (!(actual.getSignatures() != nil)) { XCTFail("actual.getSignatures() != nil"); return; }
      if (!(actual.getSignatures()?.count == 0)) { XCTFail("actual.getSignatures()?.count == 0"); return; }
    }

    // Test for removing all document signatures online.
    func testRemoveAllSignaturesOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + signedDocument, isDirectory: false))!;
      let request = RemoveAllSignaturesOnlineRequest(document: requestDocument);
       let actual = try super.getApi().removeAllSignaturesOnline(request: request);
      if (!(actual.getModel()!.getSignatures() != nil)) { XCTFail("actual.getModel()!.getSignatures() != nil"); return; }
      if (!(actual.getModel()!.getSignatures()?.count == 0)) { XCTFail("actual.getModel()!.getSignatures()?.count == 0"); return; }
    }

    // Test for signing document.
    func testSignDocument() throws {
      let remoteName = "TestSignDocument.docx";
      let remoteCertificateName = "TestCertificate.pfx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + unsignedDocument, isDirectory: false), path: remoteFolder + "/" + remoteName);
      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + certificateName, isDirectory: false), path: remoteFolder + "/" + remoteCertificateName);

      let request = SignDocumentRequest(name: remoteName, certificatePath: remoteFolder + "/" + remoteCertificateName, certificatePassword: certificatePassword, folder: remoteFolder);
       let actual = try super.getApi().signDocument(request: request);
      if (!(actual.getSignatures() != nil)) { XCTFail("actual.getSignatures() != nil"); return; }
      if (!(actual.getSignatures()?.count == 1)) { XCTFail("actual.getSignatures()?.count == 1"); return; }
    }

    // Test for signing document online.
    func testSignDocumentOnline() throws {
      let remoteCertificateName = "TestCertificateOnline.pfx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + certificateName, isDirectory: false), path: remoteFolder + "/" + remoteCertificateName);

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + unsignedDocument, isDirectory: false))!;
      let request = SignDocumentOnlineRequest(document: requestDocument, certificatePath: remoteFolder + "/" + remoteCertificateName, certificatePassword: certificatePassword);
       let actual = try super.getApi().signDocumentOnline(request: request);
      if (!(actual.getModel()!.getSignatures() != nil)) { XCTFail("actual.getModel()!.getSignatures() != nil"); return; }
      if (!(actual.getModel()!.getSignatures()?.count == 1)) { XCTFail("actual.getModel()!.getSignatures()?.count == 1"); return; }
    }
}
