/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FileTests.swift">
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

// Example of how to work with files.
class FileTests: BaseTestContext {
    static var allTests = [
        ("testUploadFile", testUploadFile),
        ("testCopyFile", testCopyFile),
        ("testMoveFile", testMoveFile),
        ("testDeleteFile", testDeleteFile),
        ("testDownloadFile", testDownloadFile)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/Storage";
    let localFile = "Common/test_multi_pages.docx";

    // Test for uploading file.
    func testUploadFile() throws {
      let remoteFileName = "TestUploadFile.docx";

      let requestFileContent = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = UploadFileRequest(fileContent: requestFileContent, path: remoteDataFolder + "/" + remoteFileName);
      let actual = try super.getApi().uploadFile(request: request);
      if (!(actual.getUploaded() != nil)) { XCTFail("actual.getUploaded() != nil"); return; }
      if (!(actual.getUploaded()?.count == 1)) { XCTFail("actual.getUploaded()?.count == 1"); return; }
      if (!(actual.getUploaded()![0] == "TestUploadFile.docx")) { XCTFail("actual.getUploaded()![0] == " + "TestUploadFile.docx"); return; }
    }

    // Test for copy file.
    func testCopyFile() throws {
      let remoteFileName = "TestCopyFileSrc.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = CopyFileRequest(destPath: remoteDataFolder + "/TestCopyFileDest.docx", srcPath: remoteDataFolder + "/" + remoteFileName);
      try super.getApi().copyFile(request: request);
    }

    // Test for move file.
    func testMoveFile() throws {
      let remoteFileName = "TestMoveFileSrc.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = MoveFileRequest(destPath: BaseTestContext.getRemoteTestOut() + "/TestMoveFileDest_" + UUID().uuidString + ".docx", srcPath: remoteDataFolder + "/" + remoteFileName);
      try super.getApi().moveFile(request: request);
    }

    // Test for delete file.
    func testDeleteFile() throws {
      let remoteFileName = "TestDeleteFile.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFileRequest(path: remoteDataFolder + "/" + remoteFileName);
      try super.getApi().deleteFile(request: request);
    }

    // Test for download file.
    func testDownloadFile() throws {
      let remoteFileName = "TestDownloadFile.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DownloadFileRequest(path: remoteDataFolder + "/" + remoteFileName);
      _ = try super.getApi().downloadFile(request: request);
    }
}
