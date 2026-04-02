/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CustomXmlPartsTests.swift">
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

// Example of how to use custom xml parts in documents.
class CustomXmlPartsTests: BaseTestContext {
    static var allTests = [
        ("testGetCustomXmlPart", testGetCustomXmlPart),
        ("testGetCustomXmlPartOnline", testGetCustomXmlPartOnline),
        ("testGetCustomXmlParts", testGetCustomXmlParts),
        ("testGetCustomXmlPartsOnline", testGetCustomXmlPartsOnline),
        ("testInsertCustomXmlPart", testInsertCustomXmlPart),
        ("testInsertCustomXmlPartOnline", testInsertCustomXmlPartOnline),
        ("testUpdateCustomXmlPart", testUpdateCustomXmlPart),
        ("testUpdateCustomXmlPartOnline", testUpdateCustomXmlPartOnline),
        ("testDeleteCustomXmlPart", testDeleteCustomXmlPart),
        ("testDeleteCustomXmlPartOnline", testDeleteCustomXmlPartOnline),
        ("testDeleteCustomXmlParts", testDeleteCustomXmlParts),
        ("testDeleteCustomXmlPartsOnline", testDeleteCustomXmlPartsOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/CustomXmlParts";
    let localFile = "DocumentElements/CustomXmlParts/MultipleCustomXmlParts.docx";

    // Test for getting custom xml part by specified index.
    func testGetCustomXmlPart() throws {
      let remoteFileName = "TestGetCustomXmlPart.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetCustomXmlPartRequest(name: remoteFileName, customXmlPartIndex: 0, folder: remoteDataFolder);
       let actual = try super.getApi().getCustomXmlPart(request: request);
      if (!(actual.getCustomXmlPart() != nil)) { XCTFail("actual.getCustomXmlPart() != nil"); return; }
      if (!(actual.getCustomXmlPart()!.getId() == "aspose")) { XCTFail("actual.getCustomXmlPart()!.getId() == " + "aspose"); return; }
      if (!(actual.getCustomXmlPart()!.getData() == "<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>")) { XCTFail("actual.getCustomXmlPart()!.getData() == " + "<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>"); return; }
    }

    // Test for getting custom xml part by specified index online.
    func testGetCustomXmlPartOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetCustomXmlPartOnlineRequest(document: requestDocument, customXmlPartIndex: 0);
       let actual = try super.getApi().getCustomXmlPartOnline(request: request);
      if (!(actual.getCustomXmlPart() != nil)) { XCTFail("actual.getCustomXmlPart() != nil"); return; }
      if (!(actual.getCustomXmlPart()!.getId() == "aspose")) { XCTFail("actual.getCustomXmlPart()!.getId() == " + "aspose"); return; }
      if (!(actual.getCustomXmlPart()!.getData() == "<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>")) { XCTFail("actual.getCustomXmlPart()!.getData() == " + "<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>"); return; }
    }

    // Test for getting all custom xml parts from document.
    func testGetCustomXmlParts() throws {
      let remoteFileName = "TestGetCustomXmlParts.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetCustomXmlPartsRequest(name: remoteFileName, folder: remoteDataFolder);
       let actual = try super.getApi().getCustomXmlParts(request: request);
      if (!(actual.getCustomXmlParts() != nil)) { XCTFail("actual.getCustomXmlParts() != nil"); return; }
      if (!(actual.getCustomXmlParts()!.getCustomXmlPartsList() != nil)) { XCTFail("actual.getCustomXmlParts()!.getCustomXmlPartsList() != nil"); return; }
      if (!(actual.getCustomXmlParts()!.getCustomXmlPartsList()?.count == 2)) { XCTFail("actual.getCustomXmlParts()!.getCustomXmlPartsList()?.count == 2"); return; }
      if (!(actual.getCustomXmlParts()!.getCustomXmlPartsList()![0].getId() == "aspose")) { XCTFail("actual.getCustomXmlParts()!.getCustomXmlPartsList()![0].getId() == " + "aspose"); return; }
      if (!(actual.getCustomXmlParts()!.getCustomXmlPartsList()![0].getData() == "<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>")) { XCTFail("actual.getCustomXmlParts()!.getCustomXmlPartsList()![0].getData() == " + "<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>"); return; }
    }

    // Test for getting all custom xml parts from document online.
    func testGetCustomXmlPartsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetCustomXmlPartsOnlineRequest(document: requestDocument);
       let actual = try super.getApi().getCustomXmlPartsOnline(request: request);
      if (!(actual.getCustomXmlParts() != nil)) { XCTFail("actual.getCustomXmlParts() != nil"); return; }
      if (!(actual.getCustomXmlParts()!.getCustomXmlPartsList() != nil)) { XCTFail("actual.getCustomXmlParts()!.getCustomXmlPartsList() != nil"); return; }
      if (!(actual.getCustomXmlParts()!.getCustomXmlPartsList()?.count == 2)) { XCTFail("actual.getCustomXmlParts()!.getCustomXmlPartsList()?.count == 2"); return; }
      if (!(actual.getCustomXmlParts()!.getCustomXmlPartsList()![0].getId() == "aspose")) { XCTFail("actual.getCustomXmlParts()!.getCustomXmlPartsList()![0].getId() == " + "aspose"); return; }
      if (!(actual.getCustomXmlParts()!.getCustomXmlPartsList()![0].getData() == "<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>")) { XCTFail("actual.getCustomXmlParts()!.getCustomXmlPartsList()![0].getData() == " + "<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>"); return; }
    }

    // Test for adding custom xml part.
    func testInsertCustomXmlPart() throws {
      let remoteFileName = "TestInsertCustomXmlPart.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestCustomXmlPart = CustomXmlPartInsert()
        .setId(id: "hello")
        .setData(data: "<data>Hello world</data>");
      let request = InsertCustomXmlPartRequest(name: remoteFileName, customXmlPart: requestCustomXmlPart as! CustomXmlPartInsert, folder: remoteDataFolder);
       let actual = try super.getApi().insertCustomXmlPart(request: request);
      if (!(actual.getCustomXmlPart() != nil)) { XCTFail("actual.getCustomXmlPart() != nil"); return; }
      if (!(actual.getCustomXmlPart()!.getId() == "hello")) { XCTFail("actual.getCustomXmlPart()!.getId() == " + "hello"); return; }
      if (!(actual.getCustomXmlPart()!.getData() == "<data>Hello world</data>")) { XCTFail("actual.getCustomXmlPart()!.getData() == " + "<data>Hello world</data>"); return; }
    }

    // Test for adding custom xml part online.
    func testInsertCustomXmlPartOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestCustomXmlPart = CustomXmlPartInsert()
        .setId(id: "hello")
        .setData(data: "<data>Hello world</data>");
      let request = InsertCustomXmlPartOnlineRequest(document: requestDocument, customXmlPart: requestCustomXmlPart as! CustomXmlPartInsert);
       let actual = try super.getApi().insertCustomXmlPartOnline(request: request);
      if (!(actual.getModel()!.getCustomXmlPart() != nil)) { XCTFail("actual.getModel()!.getCustomXmlPart() != nil"); return; }
      if (!(actual.getModel()!.getCustomXmlPart()!.getId() == "hello")) { XCTFail("actual.getModel()!.getCustomXmlPart()!.getId() == " + "hello"); return; }
      if (!(actual.getModel()!.getCustomXmlPart()!.getData() == "<data>Hello world</data>")) { XCTFail("actual.getModel()!.getCustomXmlPart()!.getData() == " + "<data>Hello world</data>"); return; }
    }

    // Test for updating custom xml part.
    func testUpdateCustomXmlPart() throws {
      let remoteFileName = "TestUpdateCustomXmlPart.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestCustomXmlPart = CustomXmlPartUpdate()
        .setData(data: "<data>Hello world</data>");
      let request = UpdateCustomXmlPartRequest(name: remoteFileName, customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart as! CustomXmlPartUpdate, folder: remoteDataFolder);
       let actual = try super.getApi().updateCustomXmlPart(request: request);
      if (!(actual.getCustomXmlPart() != nil)) { XCTFail("actual.getCustomXmlPart() != nil"); return; }
      if (!(actual.getCustomXmlPart()!.getId() == "aspose")) { XCTFail("actual.getCustomXmlPart()!.getId() == " + "aspose"); return; }
      if (!(actual.getCustomXmlPart()!.getData() == "<data>Hello world</data>")) { XCTFail("actual.getCustomXmlPart()!.getData() == " + "<data>Hello world</data>"); return; }
    }

    // Test for updating custom xml part online.
    func testUpdateCustomXmlPartOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestCustomXmlPart = CustomXmlPartUpdate()
        .setData(data: "<data>Hello world</data>");
      let request = UpdateCustomXmlPartOnlineRequest(document: requestDocument, customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart as! CustomXmlPartUpdate);
       let actual = try super.getApi().updateCustomXmlPartOnline(request: request);
      if (!(actual.getModel()!.getCustomXmlPart() != nil)) { XCTFail("actual.getModel()!.getCustomXmlPart() != nil"); return; }
      if (!(actual.getModel()!.getCustomXmlPart()!.getId() == "aspose")) { XCTFail("actual.getModel()!.getCustomXmlPart()!.getId() == " + "aspose"); return; }
      if (!(actual.getModel()!.getCustomXmlPart()!.getData() == "<data>Hello world</data>")) { XCTFail("actual.getModel()!.getCustomXmlPart()!.getData() == " + "<data>Hello world</data>"); return; }
    }

    // A test for DeleteCustomXmlPart.
    func testDeleteCustomXmlPart() throws {
      let remoteFileName = "TestDeleteCustomXmlPart.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteCustomXmlPartRequest(name: remoteFileName, customXmlPartIndex: 0, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
       try super.getApi().deleteCustomXmlPart(request: request);
    }

    // A test for DeleteCustomXmlPart online.
    func testDeleteCustomXmlPartOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteCustomXmlPartOnlineRequest(document: requestDocument, customXmlPartIndex: 0);
       _ = try super.getApi().deleteCustomXmlPartOnline(request: request);
    }

    // A test for DeleteCustomXmlParts.
    func testDeleteCustomXmlParts() throws {
      let remoteFileName = "TestDeleteCustomXmlPart.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteCustomXmlPartsRequest(name: remoteFileName, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
       try super.getApi().deleteCustomXmlParts(request: request);
    }

    // A test for DeleteCustomXmlParts online.
    func testDeleteCustomXmlPartsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteCustomXmlPartsOnlineRequest(document: requestDocument);
       _ = try super.getApi().deleteCustomXmlPartsOnline(request: request);
    }
}
