/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompareDocumentTests.swift">
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

// Example of document comparison.
class CompareDocumentTests: BaseTestContext {
    static var allTests = [
        ("testCompareDocument", testCompareDocument),
        ("testCompareDocumentOnline", testCompareDocumentOnline),
        ("testCompareTwoDocumentOnline", testCompareTwoDocumentOnline),
        ("testCompareDocumentWithPassword", testCompareDocumentWithPassword)
    ];

    let remoteFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/CompareDocument";
    let localFolder = "DocumentActions/CompareDocument";

    // Test for document comparison.
    func testCompareDocument() throws {
      let localName1 = "compareTestDoc1.doc";
      let localName2 = "compareTestDoc2.doc";
      let remoteName1 = "TestCompareDocument1.doc";
      let remoteName2 = "TestCompareDocument2.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName1, isDirectory: false), path: remoteFolder + "/" + remoteName1);
      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName2, isDirectory: false), path: remoteFolder + "/" + remoteName2);

      let requestCompareDataFileReference = FileReference(remoteFilePath: remoteFolder + "/" + remoteName2);
      let requestCompareData = CompareData()
        .setAuthor(author: "author")
        .setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!)
        .setFileReference(fileReference: requestCompareDataFileReference);
      let request = CompareDocumentRequest(name: remoteName1, compareData: requestCompareData, folder: remoteFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/TestCompareDocumentOut.doc");
       let actual = try super.getApi().compareDocument(request: request);
      if (!(actual.getDocument() != nil)) { XCTFail("actual.getDocument() != nil"); return; }
      if (!(actual.getDocument()!.getFileName() == "TestCompareDocumentOut.doc")) { XCTFail("actual.getDocument()!.getFileName() == " + "TestCompareDocumentOut.doc"); return; }
    }

    // Test for document comparison online.
    func testCompareDocumentOnline() throws {
      let localName1 = "compareTestDoc1.doc";
      let localName2 = "compareTestDoc2.doc";
      let remoteName2 = "TestCompareDocument2.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName2, isDirectory: false), path: remoteFolder + "/" + remoteName2);

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName1, isDirectory: false))!;
      let requestCompareDataFileReference = FileReference(remoteFilePath: remoteFolder + "/" + remoteName2);
      let requestCompareData = CompareData()
        .setAuthor(author: "author")
        .setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!)
        .setFileReference(fileReference: requestCompareDataFileReference);
      let request = CompareDocumentOnlineRequest(document: requestDocument, compareData: requestCompareData, destFileName: BaseTestContext.getRemoteTestOut() + "/TestCompareDocumentOut.doc");
       _ = try super.getApi().compareDocumentOnline(request: request);
    }

    // Test for document comparison online.
    func testCompareTwoDocumentOnline() throws {
      let localName1 = "compareTestDoc1.doc";
      let localName2 = "compareTestDoc2.doc";
      let remoteName2 = "TestCompareDocument2.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName2, isDirectory: false), path: remoteFolder + "/" + remoteName2);

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName1, isDirectory: false))!;
      let requestCompareDataFileReferenceStream = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName2, isDirectory: false))!;
      let requestCompareDataFileReference = FileReference(localFileContent: requestCompareDataFileReferenceStream);
      let requestCompareData = CompareData()
        .setAuthor(author: "author")
        .setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!)
        .setFileReference(fileReference: requestCompareDataFileReference);
      let request = CompareDocumentOnlineRequest(document: requestDocument, compareData: requestCompareData, destFileName: BaseTestContext.getRemoteTestOut() + "/TestCompareDocumentOut.doc");
       _ = try super.getApi().compareDocumentOnline(request: request);
    }

    // Test for document comparison with password protection.
    func testCompareDocumentWithPassword() throws {
      let localName = "DocWithPassword.docx";
      let remoteName1 = "TestCompareDocument1.docx";
      let remoteName2 = "TestCompareDocument2.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false), path: remoteFolder + "/" + remoteName1);
      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false), path: remoteFolder + "/" + remoteName2);

      let requestCompareDataFileReference = FileReference(remoteFilePath: remoteFolder + "/" + remoteName2, password: "12345");
      let requestCompareData = CompareData()
        .setAuthor(author: "author")
        .setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!)
        .setFileReference(fileReference: requestCompareDataFileReference);
      let request = CompareDocumentRequest(name: remoteName1, compareData: requestCompareData, folder: remoteFolder, password: "12345", destFileName: BaseTestContext.getRemoteTestOut() + "/TestCompareDocumentOut.docx");
       let actual = try super.getApi().compareDocument(request: request);
      if (!(actual.getDocument() != nil)) { XCTFail("actual.getDocument() != nil"); return; }
      if (!(actual.getDocument()!.getFileName() == "TestCompareDocumentOut.docx")) { XCTFail("actual.getDocument()!.getFileName() == " + "TestCompareDocumentOut.docx"); return; }
    }
}
