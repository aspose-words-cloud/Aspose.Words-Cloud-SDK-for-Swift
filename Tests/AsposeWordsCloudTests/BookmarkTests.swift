/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BookmarkTests.swift">
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

// Example of how to get all bookmarks from document.
class BookmarkTests: BaseTestContext {
    static var allTests = [
        ("testGetBookmarks", testGetBookmarks),
        ("testGetBookmarksOnline", testGetBookmarksOnline),
        ("testGetBookmarkByName", testGetBookmarkByName),
        ("testGetBookmarkByNameOnline", testGetBookmarkByNameOnline),
        ("testUpdateBookmark", testUpdateBookmark),
        ("testUpdateBookmarkOnline", testUpdateBookmarkOnline),
        ("testDeleteBookmark", testDeleteBookmark),
        ("testDeleteBookmarkOnline", testDeleteBookmarkOnline),
        ("testDeleteBookmarks", testDeleteBookmarks),
        ("testDeleteBookmarksOnline", testDeleteBookmarksOnline),
        ("testInsertBookmark", testInsertBookmark),
        ("testInsertBookmarkOnline", testInsertBookmarkOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Bookmarks";
    let localFile = "Common/test_multi_pages.docx";
    let bookmarkName = "aspose";

    // Test for getting bookmarks from document.
    func testGetBookmarks() throws {
      let remoteFileName = "TestGetDocumentBookmarks.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetBookmarksRequest(name: remoteFileName, folder: remoteDataFolder);
       _ = try super.getApi().getBookmarks(request: request);
    }

    // Test for getting bookmarks from document online.
    func testGetBookmarksOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetBookmarksOnlineRequest(document: requestDocument);
       _ = try super.getApi().getBookmarksOnline(request: request);
    }

    // Test for getting bookmark by specified name.
    func testGetBookmarkByName() throws {
      let remoteFileName = "TestGetDocumentBookmarkByName.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetBookmarkByNameRequest(name: remoteFileName, bookmarkName: bookmarkName, folder: remoteDataFolder);
       _ = try super.getApi().getBookmarkByName(request: request);
    }

    // Test for getting bookmark by specified name online.
    func testGetBookmarkByNameOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetBookmarkByNameOnlineRequest(document: requestDocument, bookmarkName: bookmarkName);
       _ = try super.getApi().getBookmarkByNameOnline(request: request);
    }

    // Test for updating existed bookmark.
    func testUpdateBookmark() throws {
      let remoteFileName = "TestUpdateDocumentBookmark.docx";
      let bookmarkText = "This will be the text for Aspose";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestBookmarkData = BookmarkData()
        .setName(name: bookmarkName)
        .setText(text: bookmarkText);
      let request = UpdateBookmarkRequest(name: remoteFileName, bookmarkName: bookmarkName, bookmarkData: requestBookmarkData, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
       _ = try super.getApi().updateBookmark(request: request);
    }

    // Test for updating existed bookmark online.
    func testUpdateBookmarkOnline() throws {
      let remoteFileName = "TestUpdateDocumentBookmark.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestBookmarkData = BookmarkData()
        .setName(name: bookmarkName)
        .setText(text: "This will be the text for Aspose");
      let request = UpdateBookmarkOnlineRequest(document: requestDocument, bookmarkName: bookmarkName, bookmarkData: requestBookmarkData, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
       _ = try super.getApi().updateBookmarkOnline(request: request);
    }

    // Test for deleting bookmark by specified name.
    func testDeleteBookmark() throws {
      let remoteFileName = "TestDeleteBookmark.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteBookmarkRequest(name: remoteFileName, bookmarkName: bookmarkName, folder: remoteDataFolder);
       try super.getApi().deleteBookmark(request: request);
    }

    // Test for deleting bookmark by specified name online.
    func testDeleteBookmarkOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteBookmarkOnlineRequest(document: requestDocument, bookmarkName: bookmarkName);
       _ = try super.getApi().deleteBookmarkOnline(request: request);
    }

    // Test for deleting all bookmarks from document.
    func testDeleteBookmarks() throws {
      let remoteFileName = "TestDeleteBookmarks.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteBookmarksRequest(name: remoteFileName, folder: remoteDataFolder);
       try super.getApi().deleteBookmarks(request: request);
    }

    // Test for deleting all bookmarks from document online.
    func testDeleteBookmarksOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteBookmarksOnlineRequest(document: requestDocument);
       _ = try super.getApi().deleteBookmarksOnline(request: request);
    }

    // Test for inserting new bookmark.
    func testInsertBookmark() throws {
      let remoteFileName = "TestInsertBookmark.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestBookmarkStartRange = PositionInsideNode()
        .setOffset(offset: 0)
        .setNodeId(nodeId: "0.0.0.0");
      let requestBookmarkEndRange = PositionInsideNode()
        .setOffset(offset: 0)
        .setNodeId(nodeId: "0.0.0.0");
      let requestBookmark = BookmarkInsert()
        .setName(name: "new_bookmark")
        .setText(text: "Some text")
        .setStartRange(startRange: requestBookmarkStartRange as! PositionInsideNode)
        .setEndRange(endRange: requestBookmarkEndRange as! PositionInsideNode);
      let request = InsertBookmarkRequest(name: remoteFileName, bookmark: requestBookmark, folder: remoteDataFolder);
       _ = try super.getApi().insertBookmark(request: request);
    }

    // Test for inserting new bookmark online.
    func testInsertBookmarkOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestBookmarkStartRange = PositionInsideNode()
        .setOffset(offset: 0)
        .setNodeId(nodeId: "0.0.0.0");
      let requestBookmarkEndRange = PositionInsideNode()
        .setOffset(offset: 0)
        .setNodeId(nodeId: "0.0.0.0");
      let requestBookmark = BookmarkInsert()
        .setName(name: "new_bookmark")
        .setText(text: "Some text")
        .setStartRange(startRange: requestBookmarkStartRange as! PositionInsideNode)
        .setEndRange(endRange: requestBookmarkEndRange as! PositionInsideNode);
      let request = InsertBookmarkOnlineRequest(document: requestDocument, bookmark: requestBookmark);
       _ = try super.getApi().insertBookmarkOnline(request: request);
    }
}
