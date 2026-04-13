/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StructuredDocumentTagTests.swift">
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

// Example of how to use structured document tags.
class StructuredDocumentTagTests: BaseTestContext {
    static var allTests = [
        ("testGetStructuredDocumentTags", testGetStructuredDocumentTags),
        ("testGetStructuredDocumentTagsOnline", testGetStructuredDocumentTagsOnline),
        ("testGetStructuredDocumentTag", testGetStructuredDocumentTag),
        ("testGetStructuredDocumentTagOnline", testGetStructuredDocumentTagOnline),
        ("testInsertStructuredDocumentTag", testInsertStructuredDocumentTag),
        ("testInsertStructuredDocumentTagOnline", testInsertStructuredDocumentTagOnline),
        ("testDeleteStructuredDocumentTag", testDeleteStructuredDocumentTag),
        ("testDeleteStructuredDocumentTagOnline", testDeleteStructuredDocumentTagOnline),
        ("testUpdateStructuredDocumentTag", testUpdateStructuredDocumentTag),
        ("testUpdateStructuredDocumentTagOnline", testUpdateStructuredDocumentTagOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/StructuredDocumentTag";
    let localFile = "DocumentElements/StructuredDocumentTag/StructuredDocumentTag.docx";

    // Test for getting SDT objects from document.
    func testGetStructuredDocumentTags() throws {
      let remoteFileName = "TestGetStructuredDocumentTags.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetStructuredDocumentTagsRequest(name: remoteFileName, nodePath: "sections/0/body/paragraphs/0", folder: remoteDataFolder);
       _ = try super.getApi().getStructuredDocumentTags(request: request);
    }

    // Test for getting SDT objects from document online.
    func testGetStructuredDocumentTagsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetStructuredDocumentTagsOnlineRequest(document: requestDocument, nodePath: "sections/0/body/paragraphs/0");
       _ = try super.getApi().getStructuredDocumentTagsOnline(request: request);
    }

    // Test for getting SDT object from document.
    func testGetStructuredDocumentTag() throws {
      let remoteFileName = "TestGetStructuredDocumentTag.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetStructuredDocumentTagRequest(name: remoteFileName, index: 0, nodePath: "sections/0/body/paragraphs/0", folder: remoteDataFolder);
       _ = try super.getApi().getStructuredDocumentTag(request: request);
    }

    // Test for getting SDT object from document online.
    func testGetStructuredDocumentTagOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetStructuredDocumentTagOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0/body/paragraphs/0");
       _ = try super.getApi().getStructuredDocumentTagOnline(request: request);
    }

    // Test for adding SDT object.
    func testInsertStructuredDocumentTag() throws {
      let remoteFileName = "TestInsetStructuredDocumentTag.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStructuredDocumentTag = StructuredDocumentTagInsert()
        .setLevel(level: StructuredDocumentTagInsert.Level.inline)
        .setSdtType(sdtType: StructuredDocumentTagInsert.SdtType.comboBox);
      let request = InsertStructuredDocumentTagRequest(name: remoteFileName, structuredDocumentTag: requestStructuredDocumentTag, nodePath: "sections/0/body/paragraphs/0", folder: remoteDataFolder);
       _ = try super.getApi().insertStructuredDocumentTag(request: request);
    }

    // Test for adding SDT object online.
    func testInsertStructuredDocumentTagOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestStructuredDocumentTag = StructuredDocumentTagInsert()
        .setLevel(level: StructuredDocumentTagInsert.Level.inline)
        .setSdtType(sdtType: StructuredDocumentTagInsert.SdtType.comboBox);
      let request = InsertStructuredDocumentTagOnlineRequest(document: requestDocument, structuredDocumentTag: requestStructuredDocumentTag, nodePath: "sections/0/body/paragraphs/0");
       _ = try super.getApi().insertStructuredDocumentTagOnline(request: request);
    }

    // Test for deleting SDT object.
    func testDeleteStructuredDocumentTag() throws {
      let remoteFileName = "TestDeleteStructuredDocumentTag.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteStructuredDocumentTagRequest(name: remoteFileName, index: 0, nodePath: "sections/0/body/paragraphs/0", folder: remoteDataFolder);
       try super.getApi().deleteStructuredDocumentTag(request: request);
    }

    // Test for deleting SDT object online.
    func testDeleteStructuredDocumentTagOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteStructuredDocumentTagOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0/body/paragraphs/0");
       _ = try super.getApi().deleteStructuredDocumentTagOnline(request: request);
    }

    // Test for updating SDT object.
    func testUpdateStructuredDocumentTag() throws {
      let remoteFileName = "TestUpdateStructuredDocumentTag.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStructuredDocumentTagListItems0 = StructuredDocumentTagListItem()
        .setDisplayText(displayText: "Aspose Words")
        .setValue(value: "1");
      let requestStructuredDocumentTagListItems1 = StructuredDocumentTagListItem()
        .setDisplayText(displayText: "Hello world")
        .setValue(value: "2");
      let requestStructuredDocumentTagListItems = [
        requestStructuredDocumentTagListItems0,
      requestStructuredDocumentTagListItems1
      ];
      let requestStructuredDocumentTag = StructuredDocumentTagUpdate()
        .setListItems(listItems: requestStructuredDocumentTagListItems);
      let request = UpdateStructuredDocumentTagRequest(name: remoteFileName, index: 0, structuredDocumentTag: requestStructuredDocumentTag as! StructuredDocumentTagUpdate, nodePath: "sections/0/body/paragraphs/0", folder: remoteDataFolder);
       _ = try super.getApi().updateStructuredDocumentTag(request: request);
    }

    // Test for updating SDT object online.
    func testUpdateStructuredDocumentTagOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestStructuredDocumentTagListItems0 = StructuredDocumentTagListItem()
        .setDisplayText(displayText: "Aspose Words")
        .setValue(value: "1");
      let requestStructuredDocumentTagListItems1 = StructuredDocumentTagListItem()
        .setDisplayText(displayText: "Hello world")
        .setValue(value: "2");
      let requestStructuredDocumentTagListItems = [
        requestStructuredDocumentTagListItems0,
      requestStructuredDocumentTagListItems1
      ];
      let requestStructuredDocumentTag = StructuredDocumentTagUpdate()
        .setListItems(listItems: requestStructuredDocumentTagListItems);
      let request = UpdateStructuredDocumentTagOnlineRequest(document: requestDocument, structuredDocumentTag: requestStructuredDocumentTag as! StructuredDocumentTagUpdate, index: 0, nodePath: "sections/0/body/paragraphs/0");
       _ = try super.getApi().updateStructuredDocumentTagOnline(request: request);
    }
}
