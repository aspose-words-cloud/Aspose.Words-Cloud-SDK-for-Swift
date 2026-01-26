/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListsTests.swift">
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

// Example of how to work with lists.
class ListsTests: BaseTestContext {
    static var allTests = [
        ("testGetLists", testGetLists),
        ("testGetListsOnline", testGetListsOnline),
        ("testGetList", testGetList),
        ("testGetListOnline", testGetListOnline),
        ("testUpdateList", testUpdateList),
        ("testUpdateListOnline", testUpdateListOnline),
        ("testUpdateListLevel", testUpdateListLevel),
        ("testUpdateListLevelOnline", testUpdateListLevelOnline),
        ("testInsertList", testInsertList),
        ("testInsertListOnline", testInsertListOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Lists";
    let localFile = "DocumentElements/Lists/ListsGet.doc";

    // Test for getting lists from document.
    func testGetLists() throws {
      let remoteFileName = "TestGetLists.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetListsRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getLists(request: request);
      if (!(actual.getLists() != nil)) { XCTFail("actual.getLists() != nil"); return; }
      if (!(actual.getLists()!.getListInfo() != nil)) { XCTFail("actual.getLists()!.getListInfo() != nil"); return; }
      if (!(actual.getLists()!.getListInfo()?.count == 2)) { XCTFail("actual.getLists()!.getListInfo()?.count == 2"); return; }
      if (!(actual.getLists()!.getListInfo()![0].getListId() == 1)) { XCTFail("actual.getLists()!.getListInfo()![0].getListId() == 1"); return; }
    }

    // Test for getting lists from document online.
    func testGetListsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetListsOnlineRequest(document: requestDocument);
      _ = try super.getApi().getListsOnline(request: request);
    }

    // Test for getting list from document.
    func testGetList() throws {
      let remoteFileName = "TestGetList.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetListRequest(name: remoteFileName, listId: 1, folder: remoteDataFolder);
      let actual = try super.getApi().getList(request: request);
      if (!(actual.getList() != nil)) { XCTFail("actual.getList() != nil"); return; }
      if (!(actual.getList()!.getListId() == 1)) { XCTFail("actual.getList()!.getListId() == 1"); return; }
    }

    // Test for getting list from document online.
    func testGetListOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetListOnlineRequest(document: requestDocument, listId: 1);
      _ = try super.getApi().getListOnline(request: request);
    }

    // Test for updating list from document.
    func testUpdateList() throws {
      let remoteFileName = "TestUpdateList.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestListUpdate = ListUpdate()
        .setIsRestartAtEachSection(isRestartAtEachSection: true);
      let request = UpdateListRequest(name: remoteFileName, listId: 1, listUpdate: requestListUpdate, folder: remoteDataFolder);
      _ = try super.getApi().updateList(request: request);
    }

    // Test for updating list from document online.
    func testUpdateListOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestListUpdate = ListUpdate()
        .setIsRestartAtEachSection(isRestartAtEachSection: true);
      let request = UpdateListOnlineRequest(document: requestDocument, listId: 1, listUpdate: requestListUpdate);
      let actual = try super.getApi().updateListOnline(request: request);
      if (!(actual.getModel()!.getList() != nil)) { XCTFail("actual.getModel()!.getList() != nil"); return; }
      if (!(actual.getModel()!.getList()!.getListId() == 1)) { XCTFail("actual.getModel()!.getList()!.getListId() == 1"); return; }
      if (!(actual.getModel()!.getList()!.getIsRestartAtEachSection() == true)) { XCTFail("actual.getModel()!.getList()!.getIsRestartAtEachSection() == true"); return; }
    }

    // Test for updating list level from document.
    func testUpdateListLevel() throws {
      let remoteFileName = "TestUpdateListLevel.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestListUpdate = ListLevelUpdate()
        .setAlignment(alignment: ListLevelUpdate.Alignment._right);
      let request = UpdateListLevelRequest(name: remoteFileName, listId: 1, listLevel: 1, listUpdate: requestListUpdate, folder: remoteDataFolder);
      _ = try super.getApi().updateListLevel(request: request);
    }

    // Test for updating list level from document online.
    func testUpdateListLevelOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestListUpdate = ListLevelUpdate()
        .setAlignment(alignment: ListLevelUpdate.Alignment._right);
      let request = UpdateListLevelOnlineRequest(document: requestDocument, listId: 1, listUpdate: requestListUpdate, listLevel: 1);
      let actual = try super.getApi().updateListLevelOnline(request: request);
      if (!(actual.getModel()!.getList() != nil)) { XCTFail("actual.getModel()!.getList() != nil"); return; }
      if (!(actual.getModel()!.getList()!.getListLevels() != nil)) { XCTFail("actual.getModel()!.getList()!.getListLevels() != nil"); return; }
      if (!(actual.getModel()!.getList()!.getListLevels()!.getListLevel() != nil)) { XCTFail("actual.getModel()!.getList()!.getListLevels()!.getListLevel() != nil"); return; }
      if (!(actual.getModel()!.getList()!.getListLevels()!.getListLevel()?.count == 9)) { XCTFail("actual.getModel()!.getList()!.getListLevels()!.getListLevel()?.count == 9"); return; }

    }

    // Test for inserting list from document.
    func testInsertList() throws {
      let remoteFileName = "TestInsertList.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestListInsert = ListInsert()
        .setTemplate(template: ListInsert.Template.outlineLegal);
      let request = InsertListRequest(name: remoteFileName, listInsert: requestListInsert, folder: remoteDataFolder);
      let actual = try super.getApi().insertList(request: request);
      if (!(actual.getList() != nil)) { XCTFail("actual.getList() != nil"); return; }
      if (!(actual.getList()!.getListId() == 3)) { XCTFail("actual.getList()!.getListId() == 3"); return; }
    }

    // Test for inserting list from document online.
    func testInsertListOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestListInsert = ListInsert()
        .setTemplate(template: ListInsert.Template.outlineLegal);
      let request = InsertListOnlineRequest(document: requestDocument, listInsert: requestListInsert);
      _ = try super.getApi().insertListOnline(request: request);
    }
}
