/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FieldTests.swift">
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

// Example of how to work with field.
class FieldTests: BaseTestContext {
    static var allTests = [
        ("testGetFields", testGetFields),
        ("testGetFieldsOnline", testGetFieldsOnline),
        ("testGetFieldsWithoutNodePath", testGetFieldsWithoutNodePath),
        ("testGetField", testGetField),
        ("testGetFieldOnline", testGetFieldOnline),
        ("testGetFieldWithoutNodePath", testGetFieldWithoutNodePath),
        ("testInsertField", testInsertField),
        ("testInsertFieldOnline", testInsertFieldOnline),
        ("testInsertFieldWithoutNodePath", testInsertFieldWithoutNodePath),
        ("testUpdateField", testUpdateField),
        ("testUpdateFieldOnline", testUpdateFieldOnline),
        ("testInsertPageNumbers", testInsertPageNumbers),
        ("testInsertPageNumbersOnline", testInsertPageNumbersOnline),
        ("testDeleteField", testDeleteField),
        ("testDeleteFieldOnline", testDeleteFieldOnline),
        ("testDeleteFieldWithoutNodePath", testDeleteFieldWithoutNodePath),
        ("testDeleteParagraphFields", testDeleteParagraphFields),
        ("testDeleteParagraphFieldsWithoutNodePath", testDeleteParagraphFieldsWithoutNodePath),
        ("testDeleteSectionFields", testDeleteSectionFields),
        ("testDeleteSectionFieldsWithoutNodePath", testDeleteSectionFieldsWithoutNodePath),
        ("testDeleteSectionParagraphFields", testDeleteSectionParagraphFields),
        ("testDeleteDocumentFields", testDeleteDocumentFields),
        ("testDeleteDocumentFieldsOnline", testDeleteDocumentFieldsOnline),
        ("testUpdateDocumentFields", testUpdateDocumentFields),
        ("testUpdateDocumentFieldsOnline", testUpdateDocumentFieldsOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Fields";
    let textFolder = "DocumentElements/Text";
    let fieldFolder = "DocumentElements/Fields";

    // Test for getting fields.
    func testGetFields() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestGetFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFieldsRequest(name: remoteFileName, nodePath: "sections/0", folder: remoteDataFolder);
      let actual = try super.getApi().getFields(request: request);
      if (!(actual.getFields() != nil)) { XCTFail("actual.getFields() != nil"); return; }
      if (!(actual.getFields()!.getList() != nil)) { XCTFail("actual.getFields()!.getList() != nil"); return; }
      if (!(actual.getFields()!.getList()?.count == 1)) { XCTFail("actual.getFields()!.getList()?.count == 1"); return; }
      if (!(actual.getFields()!.getList()![0].getResult() == "1")) { XCTFail("actual.getFields()!.getList()![0].getResult() == " + "1"); return; }
    }

    // Test for getting fields online.
    func testGetFieldsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/GetField.docx", isDirectory: false))!;
      let request = GetFieldsOnlineRequest(document: requestDocument, nodePath: "sections/0");
      _ = try super.getApi().getFieldsOnline(request: request);
    }

    // Test for getting fields without node path.
    func testGetFieldsWithoutNodePath() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestGetFieldsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getFields(request: request);
      if (!(actual.getFields() != nil)) { XCTFail("actual.getFields() != nil"); return; }
      if (!(actual.getFields()!.getList() != nil)) { XCTFail("actual.getFields()!.getList() != nil"); return; }
      if (!(actual.getFields()!.getList()?.count == 1)) { XCTFail("actual.getFields()!.getList()?.count == 1"); return; }
      if (!(actual.getFields()!.getList()![0].getResult() == "1")) { XCTFail("actual.getFields()!.getList()![0].getResult() == " + "1"); return; }
    }

    // Test for getting field by index.
    func testGetField() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestGetField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFieldRequest(name: remoteFileName, index: 0, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      let actual = try super.getApi().getField(request: request);
      if (!(actual.getField() != nil)) { XCTFail("actual.getField() != nil"); return; }
      if (!(actual.getField()!.getResult() == "1")) { XCTFail("actual.getField()!.getResult() == " + "1"); return; }
    }

    // Test for getting field by index online.
    func testGetFieldOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/GetField.docx", isDirectory: false))!;
      let request = GetFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0/paragraphs/0");
      _ = try super.getApi().getFieldOnline(request: request);
    }

    // Test for getting field by index without node path.
    func testGetFieldWithoutNodePath() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestGetFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFieldRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getField(request: request);
      if (!(actual.getField() != nil)) { XCTFail("actual.getField() != nil"); return; }
      if (!(actual.getField()!.getResult() == "1")) { XCTFail("actual.getField()!.getResult() == " + "1"); return; }
    }

    // Test for putting field.
    func testInsertField() throws {
      let localFileName = "SampleWordDocument.docx";
      let remoteFileName = "TestInsertField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(textFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestField = FieldInsert()
        .setFieldCode(fieldCode: "{ NUMPAGES }");
      let request = InsertFieldRequest(name: remoteFileName, field: requestField as! FieldInsert, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      let actual = try super.getApi().insertField(request: request);
      if (!(actual.getField() != nil)) { XCTFail("actual.getField() != nil"); return; }
      if (!(actual.getField()!.getFieldCode() == "{ NUMPAGES }")) { XCTFail("actual.getField()!.getFieldCode() == " + "{ NUMPAGES }"); return; }
      if (!(actual.getField()!.getNodeId() == "0.0.0.1")) { XCTFail("actual.getField()!.getNodeId() == " + "0.0.0.1"); return; }
    }

    // Test for putting field online.
    func testInsertFieldOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/GetField.docx", isDirectory: false))!;
      let requestField = FieldInsert()
        .setFieldCode(fieldCode: "{ NUMPAGES }");
      let request = InsertFieldOnlineRequest(document: requestDocument, field: requestField as! FieldInsert, nodePath: "sections/0/paragraphs/0");
      _ = try super.getApi().insertFieldOnline(request: request);
    }

    // Test for putting field without node path.
    func testInsertFieldWithoutNodePath() throws {
      let localFileName = "SampleWordDocument.docx";
      let remoteFileName = "TestInsertFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(textFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestField = FieldInsert()
        .setFieldCode(fieldCode: "{ NUMPAGES }");
      let request = InsertFieldRequest(name: remoteFileName, field: requestField as! FieldInsert, folder: remoteDataFolder);
      let actual = try super.getApi().insertField(request: request);
      if (!(actual.getField() != nil)) { XCTFail("actual.getField() != nil"); return; }
      if (!(actual.getField()!.getFieldCode() == "{ NUMPAGES }")) { XCTFail("actual.getField()!.getFieldCode() == " + "{ NUMPAGES }"); return; }
      if (!(actual.getField()!.getNodeId() == "5.0.22.0")) { XCTFail("actual.getField()!.getNodeId() == " + "5.0.22.0"); return; }
    }

    // Test for posting field.
    func testUpdateField() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestUpdateField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestField = FieldUpdate()
        .setFieldCode(fieldCode: "{ NUMPAGES }");
      let request = UpdateFieldRequest(name: remoteFileName, index: 0, field: requestField as! FieldUpdate, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      let actual = try super.getApi().updateField(request: request);
      if (!(actual.getField() != nil)) { XCTFail("actual.getField() != nil"); return; }
      if (!(actual.getField()!.getFieldCode() == "{ NUMPAGES }")) { XCTFail("actual.getField()!.getFieldCode() == " + "{ NUMPAGES }"); return; }
      if (!(actual.getField()!.getNodeId() == "0.0.0.0")) { XCTFail("actual.getField()!.getNodeId() == " + "0.0.0.0"); return; }
    }

    // Test for posting field online.
    func testUpdateFieldOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/GetField.docx", isDirectory: false))!;
      let requestField = FieldUpdate()
        .setFieldCode(fieldCode: "{ NUMPAGES }");
      let request = UpdateFieldOnlineRequest(document: requestDocument, field: requestField as! FieldUpdate, index: 0, nodePath: "sections/0/paragraphs/0");
      _ = try super.getApi().updateFieldOnline(request: request);
    }

    // Test for inserting page numbers field.
    func testInsertPageNumbers() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestInsertPageNumbers.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestPageNumber = PageNumber()
        .setAlignment(alignment: "center")
        .setFormat(format: "{PAGE} of {NUMPAGES}")
        .setIsTop(isTop: true)
        .setSetPageNumberOnFirstPage(setPageNumberOnFirstPage: true);
      let request = InsertPageNumbersRequest(name: remoteFileName, pageNumber: requestPageNumber, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().insertPageNumbers(request: request);
      if (!(actual.getDocument() != nil)) { XCTFail("actual.getDocument() != nil"); return; }
      if (!(actual.getDocument()!.getFileName() == "TestInsertPageNumbers.docx")) { XCTFail("actual.getDocument()!.getFileName() == " + "TestInsertPageNumbers.docx"); return; }
    }

    // Test for inserting page numbers field online.
    func testInsertPageNumbersOnline() throws {
      let localFileName = "test_multi_pages.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false))!;
      let requestPageNumber = PageNumber()
        .setAlignment(alignment: "center")
        .setFormat(format: "{PAGE} of {NUMPAGES}")
        .setIsTop(isTop: true)
        .setSetPageNumberOnFirstPage(setPageNumberOnFirstPage: true);
      let request = InsertPageNumbersOnlineRequest(document: requestDocument, pageNumber: requestPageNumber);
      _ = try super.getApi().insertPageNumbersOnline(request: request);
    }

    // Test for deleting field.
    func testDeleteField() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestDeleteField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldRequest(name: remoteFileName, index: 0, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      try super.getApi().deleteField(request: request);
    }

    // Test for deleting field online.
    func testDeleteFieldOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/GetField.docx", isDirectory: false))!;
      let request = DeleteFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0/paragraphs/0");
      _ = try super.getApi().deleteFieldOnline(request: request);
    }

    // Test for deleting field without node path.
    func testDeleteFieldWithoutNodePath() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestDeleteFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      try super.getApi().deleteField(request: request);
    }

    // Test for deleting paragraph fields.
    func testDeleteParagraphFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteParagraphFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, nodePath: "paragraphs/0", folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting paragraph fields without node path.
    func testDeleteParagraphFieldsWithoutNodePath() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteParagraphFieldsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting section fields.
    func testDeleteSectionFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteSectionFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, nodePath: "sections/0", folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting section fields without node path.
    func testDeleteSectionFieldsWithoutNodePath() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteSectionFieldsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting paragraph fields in section.
    func testDeleteSectionParagraphFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteSectionParagraphFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting fields.
    func testDeleteDocumentFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteSectionParagraphFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting fields online.
    func testDeleteDocumentFieldsOnline() throws {
      let localFileName = "Common/test_multi_pages.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFileName, isDirectory: false))!;
      let request = DeleteFieldsOnlineRequest(document: requestDocument, nodePath: "");
      _ = try super.getApi().deleteFieldsOnline(request: request);
    }

    // Test for posting updated fields.
    func testUpdateDocumentFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestUpdateDocumentFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = UpdateFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().updateFields(request: request);
      if (!(actual.getDocument() != nil)) { XCTFail("actual.getDocument() != nil"); return; }
      if (!(actual.getDocument()!.getFileName() == "TestUpdateDocumentFields.docx")) { XCTFail("actual.getDocument()!.getFileName() == " + "TestUpdateDocumentFields.docx"); return; }
    }

    // Test for posting updated fields online.
    func testUpdateDocumentFieldsOnline() throws {
      let localFile = "Common/test_multi_pages.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = UpdateFieldsOnlineRequest(document: requestDocument);
      _ = try super.getApi().updateFieldsOnline(request: request);
    }
}
