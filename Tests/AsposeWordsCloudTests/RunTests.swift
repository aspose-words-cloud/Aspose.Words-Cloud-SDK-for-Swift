/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RunTests.swift">
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

// Example of how to work with runs.
class RunTests: BaseTestContext {
    static var allTests = [
        ("testUpdateRun", testUpdateRun),
        ("testUpdateRunOnline", testUpdateRunOnline),
        ("testInsertRun", testInsertRun),
        ("testInsertRunOnline", testInsertRunOnline),
        ("testDeleteRun", testDeleteRun),
        ("testDeleteRunOnline", testDeleteRunOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Runs";
    let localFile = "DocumentElements/Runs/Run.doc";

    // Test for updating run.
    func testUpdateRun() throws {
      let remoteFileName = "TestUpdateRun.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestRun = RunUpdate()
        .setText(text: "run with text");
      let request = UpdateRunRequest(name: remoteFileName, paragraphPath: "paragraphs/1", index: 0, run: requestRun as! RunUpdate, folder: remoteDataFolder);
       let actual = try super.getApi().updateRun(request: request);
      if (!(actual.getRun() != nil)) { XCTFail("actual.getRun() != nil"); return; }
      if (!(actual.getRun()!.getText() == "run with text")) { XCTFail("actual.getRun()!.getText() == " + "run with text"); return; }
    }

    // Test for updating run online.
    func testUpdateRunOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestRun = RunUpdate()
        .setText(text: "run with text");
      let request = UpdateRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/1", run: requestRun as! RunUpdate, index: 0);
       _ = try super.getApi().updateRunOnline(request: request);
    }

    // Test for adding run.
    func testInsertRun() throws {
      let remoteFileName = "TestInsertRun.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestRun = RunInsert()
        .setText(text: "run with text");
      let request = InsertRunRequest(name: remoteFileName, run: requestRun as! RunInsert, paragraphPath: "paragraphs/1", folder: remoteDataFolder);
       let actual = try super.getApi().insertRun(request: request);
      if (!(actual.getRun() != nil)) { XCTFail("actual.getRun() != nil"); return; }
      if (!(actual.getRun()!.getText() == "run with text")) { XCTFail("actual.getRun()!.getText() == " + "run with text"); return; }
      if (!(actual.getRun()!.getNodeId() == "0.0.1.3")) { XCTFail("actual.getRun()!.getNodeId() == " + "0.0.1.3"); return; }
    }

    // Test for adding run online.
    func testInsertRunOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestRun = RunInsert()
        .setText(text: "run with text");
      let request = InsertRunOnlineRequest(document: requestDocument, run: requestRun as! RunInsert, paragraphPath: "paragraphs/1");
       _ = try super.getApi().insertRunOnline(request: request);
    }

    // Test for deleting run.
    func testDeleteRun() throws {
      let remoteFileName = "TestDeleteRun.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteRunRequest(name: remoteFileName, paragraphPath: "paragraphs/1", index: 0, folder: remoteDataFolder);
       try super.getApi().deleteRun(request: request);
    }

    // Test for deleting run online.
    func testDeleteRunOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/1", index: 0);
       _ = try super.getApi().deleteRunOnline(request: request);
    }
}
