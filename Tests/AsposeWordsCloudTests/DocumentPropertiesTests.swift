/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentPropertiesTests.swift">
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

// Example of how to get document properties.
class DocumentPropertiesTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentProperties", testGetDocumentProperties),
        ("testGetDocumentPropertiesOnline", testGetDocumentPropertiesOnline),
        ("testGetDocumentProperty", testGetDocumentProperty),
        ("testGetDocumentPropertyOnline", testGetDocumentPropertyOnline),
        ("testDeleteDocumentProperty", testDeleteDocumentProperty),
        ("testDeleteDocumentPropertyOnline", testDeleteDocumentPropertyOnline),
        ("testUpdateDocumentProperty", testUpdateDocumentProperty),
        ("testUpdateDocumentPropertyOnline", testUpdateDocumentPropertyOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/DocumentProperties";
    let localFile = "Common/test_multi_pages.docx";

    // Test for getting document properties.
    func testGetDocumentProperties() throws {
      let remoteFileName = "TestGetDocumentProperties.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentPropertiesRequest(name: remoteFileName, folder: remoteDataFolder);
       let actual = try super.getApi().getDocumentProperties(request: request);
      if (!(actual.getDocumentProperties() != nil)) { XCTFail("actual.getDocumentProperties() != nil"); return; }
      if (!(actual.getDocumentProperties()!.getList() != nil)) { XCTFail("actual.getDocumentProperties()!.getList() != nil"); return; }
      if (!(actual.getDocumentProperties()!.getList()?.count == 27)) { XCTFail("actual.getDocumentProperties()!.getList()?.count == 27"); return; }
      if (!(actual.getDocumentProperties()!.getList()![0] != nil)) { XCTFail("actual.getDocumentProperties()!.getList()![0] != nil"); return; }
      if (!(actual.getDocumentProperties()!.getList()![0].getName() == "Author")) { XCTFail("actual.getDocumentProperties()!.getList()![0].getName() == " + "Author"); return; }
      if (!(actual.getDocumentProperties()!.getList()![0].getValue() == "")) { XCTFail("actual.getDocumentProperties()!.getList()![0].getValue() == " + ""); return; }
    }

    // Test for getting document properties online.
    func testGetDocumentPropertiesOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetDocumentPropertiesOnlineRequest(document: requestDocument);
       _ = try super.getApi().getDocumentPropertiesOnline(request: request);
    }

    // A test for GetDocumentProperty.
    func testGetDocumentProperty() throws {
      let remoteFileName = "TestGetDocumentProperty.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentPropertyRequest(name: remoteFileName, propertyName: "Author", folder: remoteDataFolder);
       let actual = try super.getApi().getDocumentProperty(request: request);
      if (!(actual.getDocumentProperty() != nil)) { XCTFail("actual.getDocumentProperty() != nil"); return; }
      if (!(actual.getDocumentProperty()!.getName() == "Author")) { XCTFail("actual.getDocumentProperty()!.getName() == " + "Author"); return; }
      if (!(actual.getDocumentProperty()!.getValue() == "")) { XCTFail("actual.getDocumentProperty()!.getValue() == " + ""); return; }
    }

    // A test for GetDocumentProperty online.
    func testGetDocumentPropertyOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetDocumentPropertyOnlineRequest(document: requestDocument, propertyName: "Author");
       _ = try super.getApi().getDocumentPropertyOnline(request: request);
    }

    // Test for deleting document property.
    func testDeleteDocumentProperty() throws {
      let remoteFileName = "TestDeleteDocumentProperty.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteDocumentPropertyRequest(name: remoteFileName, propertyName: "testProp", folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
       try super.getApi().deleteDocumentProperty(request: request);
    }

    // Test for deleting document property online.
    func testDeleteDocumentPropertyOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteDocumentPropertyOnlineRequest(document: requestDocument, propertyName: "testProp");
       _ = try super.getApi().deleteDocumentPropertyOnline(request: request);
    }

    // Test for updating document property.
    func testUpdateDocumentProperty() throws {
      let remoteFileName = "TestUpdateDocumentProperty.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProperty = DocumentPropertyCreateOrUpdate()
        .setValue(value: "Imran Anwar");
      let request = CreateOrUpdateDocumentPropertyRequest(name: remoteFileName, propertyName: "AsposeAuthor", property: requestProperty, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
       let actual = try super.getApi().createOrUpdateDocumentProperty(request: request);
      if (!(actual.getDocumentProperty() != nil)) { XCTFail("actual.getDocumentProperty() != nil"); return; }
      if (!(actual.getDocumentProperty()!.getName() == "AsposeAuthor")) { XCTFail("actual.getDocumentProperty()!.getName() == " + "AsposeAuthor"); return; }
      if (!(actual.getDocumentProperty()!.getValue() == "Imran Anwar")) { XCTFail("actual.getDocumentProperty()!.getValue() == " + "Imran Anwar"); return; }
    }

    // Test for updating document property online.
    func testUpdateDocumentPropertyOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestProperty = DocumentPropertyCreateOrUpdate()
        .setValue(value: "Imran Anwar");
      let request = CreateOrUpdateDocumentPropertyOnlineRequest(document: requestDocument, propertyName: "AsposeAuthor", property: requestProperty);
       _ = try super.getApi().createOrUpdateDocumentPropertyOnline(request: request);
    }
}
