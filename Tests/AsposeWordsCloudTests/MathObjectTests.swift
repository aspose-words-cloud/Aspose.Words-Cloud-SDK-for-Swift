/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MathObjectTests.swift">
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

// Example of how to work with MathObjects.
class MathObjectTests: BaseTestContext {
    static var allTests = [
        ("testGetOfficeMathObjects", testGetOfficeMathObjects),
        ("testGetOfficeMathObjectsOnline", testGetOfficeMathObjectsOnline),
        ("testGetOfficeMathObjectsWithoutNodePath", testGetOfficeMathObjectsWithoutNodePath),
        ("testGetOfficeMathObject", testGetOfficeMathObject),
        ("testGetOfficeMathObjectOnline", testGetOfficeMathObjectOnline),
        ("testGetOfficeMathObjectWithoutNodePath", testGetOfficeMathObjectWithoutNodePath),
        ("testRenderMathObject", testRenderMathObject),
        ("testRenderMathObjectOnline", testRenderMathObjectOnline),
        ("testRenderMathObjectWithoutNodePath", testRenderMathObjectWithoutNodePath),
        ("testDeleteOfficeMathObject", testDeleteOfficeMathObject),
        ("testDeleteOfficeMathObjectOnline", testDeleteOfficeMathObjectOnline),
        ("testDeleteOfficeMathObjectWithoutNodePath", testDeleteOfficeMathObjectWithoutNodePath),
        ("testDeleteOfficeMathObjects", testDeleteOfficeMathObjects),
        ("testDeleteOfficeMathObjectsOnline", testDeleteOfficeMathObjectsOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/MathObjects";
    let localFile = "DocumentElements/MathObjects/MathObjects.docx";

    // Test for getting mathObjects.
    func testGetOfficeMathObjects() throws {
      let remoteFileName = "TestGetOfficeMathObjects.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetOfficeMathObjectsRequest(name: remoteFileName, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getOfficeMathObjects(request: request);
      if (!(actual.getOfficeMathObjects() != nil)) { XCTFail("actual.getOfficeMathObjects() != nil"); return; }
      if (!(actual.getOfficeMathObjects()!.getList() != nil)) { XCTFail("actual.getOfficeMathObjects()!.getList() != nil"); return; }
      if (!(actual.getOfficeMathObjects()!.getList()?.count == 16)) { XCTFail("actual.getOfficeMathObjects()!.getList()?.count == 16"); return; }
      if (!(actual.getOfficeMathObjects()!.getList()![0].getNodeId() == "0.0.0.0")) { XCTFail("actual.getOfficeMathObjects()!.getList()![0].getNodeId() == " + "0.0.0.0"); return; }
    }

    // Test for getting mathObjects online.
    func testGetOfficeMathObjectsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetOfficeMathObjectsOnlineRequest(document: requestDocument, nodePath: "");
      _ = try super.getApi().getOfficeMathObjectsOnline(request: request);
    }

    // Test for getting mathObjects without node path.
    func testGetOfficeMathObjectsWithoutNodePath() throws {
      let remoteFileName = "TestGetOfficeMathObjectsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetOfficeMathObjectsRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getOfficeMathObjects(request: request);
      if (!(actual.getOfficeMathObjects() != nil)) { XCTFail("actual.getOfficeMathObjects() != nil"); return; }
      if (!(actual.getOfficeMathObjects()!.getList() != nil)) { XCTFail("actual.getOfficeMathObjects()!.getList() != nil"); return; }
      if (!(actual.getOfficeMathObjects()!.getList()?.count == 16)) { XCTFail("actual.getOfficeMathObjects()!.getList()?.count == 16"); return; }
      if (!(actual.getOfficeMathObjects()!.getList()![0].getNodeId() == "0.0.0.0")) { XCTFail("actual.getOfficeMathObjects()!.getList()![0].getNodeId() == " + "0.0.0.0"); return; }
    }

    // Test for getting mathObject.
    func testGetOfficeMathObject() throws {
      let remoteFileName = "TestGetOfficeMathObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetOfficeMathObjectRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getOfficeMathObject(request: request);
      if (!(actual.getOfficeMathObject() != nil)) { XCTFail("actual.getOfficeMathObject() != nil"); return; }
      if (!(actual.getOfficeMathObject()!.getNodeId() == "0.0.0.0")) { XCTFail("actual.getOfficeMathObject()!.getNodeId() == " + "0.0.0.0"); return; }
    }

    // Test for getting mathObject online.
    func testGetOfficeMathObjectOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetOfficeMathObjectOnlineRequest(document: requestDocument, index: 0, nodePath: "");
      _ = try super.getApi().getOfficeMathObjectOnline(request: request);
    }

    // Test for getting mathObject without node path.
    func testGetOfficeMathObjectWithoutNodePath() throws {
      let remoteFileName = "TestGetOfficeMathObjectWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetOfficeMathObjectRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getOfficeMathObject(request: request);
      if (!(actual.getOfficeMathObject() != nil)) { XCTFail("actual.getOfficeMathObject() != nil"); return; }
      if (!(actual.getOfficeMathObject()!.getNodeId() == "0.0.0.0")) { XCTFail("actual.getOfficeMathObject()!.getNodeId() == " + "0.0.0.0"); return; }
    }

    // Test for rendering mathObject.
    func testRenderMathObject() throws {
      let remoteFileName = "TestRenderMathObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderMathObjectRequest(name: remoteFileName, format: "png", index: 0, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().renderMathObject(request: request);
    }

    // Test for rendering mathObject.
    func testRenderMathObjectOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = RenderMathObjectOnlineRequest(document: requestDocument, format: "png", index: 0, nodePath: "");
      _ = try super.getApi().renderMathObjectOnline(request: request);
    }

    // Test for rendering mathObject without node path.
    func testRenderMathObjectWithoutNodePath() throws {
      let remoteFileName = "TestRenderMathObjectWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderMathObjectRequest(name: remoteFileName, format: "png", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().renderMathObject(request: request);
    }

    // Test for deleting mathObject.
    func testDeleteOfficeMathObject() throws {
      let remoteFileName = "TestDeleteOfficeMathObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteOfficeMathObjectRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteOfficeMathObject(request: request);
    }

    // Test for deleting mathObject online.
    func testDeleteOfficeMathObjectOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteOfficeMathObjectOnlineRequest(document: requestDocument, index: 0, nodePath: "");
      _ = try super.getApi().deleteOfficeMathObjectOnline(request: request);
    }

    // Test for deleting mathObject without node path.
    func testDeleteOfficeMathObjectWithoutNodePath() throws {
      let remoteFileName = "TestDeleteOfficeMathObjectWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteOfficeMathObjectRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      try super.getApi().deleteOfficeMathObject(request: request);
    }

    // Test for deleting math objects.
    func testDeleteOfficeMathObjects() throws {
      let remoteFileName = "TestDeleteOfficeMathObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteOfficeMathObjectsRequest(name: remoteFileName, folder: remoteDataFolder);
      try super.getApi().deleteOfficeMathObjects(request: request);
    }

    // Test for deleting math objects online.
    func testDeleteOfficeMathObjectsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteOfficeMathObjectsOnlineRequest(document: requestDocument);
      _ = try super.getApi().deleteOfficeMathObjectsOnline(request: request);
    }
}
