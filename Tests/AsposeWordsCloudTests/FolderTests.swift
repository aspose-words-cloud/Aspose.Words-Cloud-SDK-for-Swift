/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FolderTests.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// Example of how to work with folders.
class FolderTests: BaseTestContext {
    static var allTests = [
        ("testCreateFolder", testCreateFolder),
        ("testDeleteFolder", testDeleteFolder),
        ("testGetFilesList", testGetFilesList),
        ("testCopyFolder", testCopyFolder),
        ("testMoveFolder", testMoveFolder)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/Storage";
    let localFile = "Common/test_multi_pages.docx";

    // Test for create folder.
    func testCreateFolder() throws {
      let request = CreateFolderRequest(path: remoteDataFolder + "/TestCreateFolder");
      try super.getApi().createFolder(request: request);
    }

    // Test for delete folder.
    func testDeleteFolder() throws {
      let testDeleteFolder = remoteDataFolder + "/TestDeleteFolder";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: testDeleteFolder + "/TestDeleteFolder.docx");

      let request = DeleteFolderRequest(path: testDeleteFolder, recursive: true);
      try super.getApi().deleteFolder(request: request);
    }

    // Test for get file list of folder.
    func testGetFilesList() throws {
      let request = GetFilesListRequest(path: remoteDataFolder);
      let actual = try super.getApi().getFilesList(request: request);
      if (!(actual.getValue() != nil)) { XCTFail("actual.getValue() != nil"); return; }
    }

    // Test for copy folder.
    func testCopyFolder() throws {
      let folderToCopy = remoteDataFolder + "/TestCopyFolder";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: folderToCopy + "Src/TestCopyFolderSrc.docx");

      let request = CopyFolderRequest(destPath: folderToCopy + "Dest", srcPath: folderToCopy + "Src");
      try super.getApi().copyFolder(request: request);
    }

    // Test for move folder.
    func testMoveFolder() throws {
      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/TestMoveFolderSrc/TestMoveFolderSrc.docx");

      let request = MoveFolderRequest(destPath: BaseTestContext.getRemoteTestOut() + "/TestMoveFolderDest_" + UUID().uuidString, srcPath: remoteDataFolder + "/TestMoveFolderSrc");
      try super.getApi().moveFolder(request: request);
    }
}
