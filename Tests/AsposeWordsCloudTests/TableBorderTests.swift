/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableBorderTests.swift">
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

// Example of how to work with table borders.
class TableBorderTests: BaseTestContext {
    static var allTests = [
        ("testGetBorders", testGetBorders),
        ("testGetBordersOnline", testGetBordersOnline),
        ("testGetBorder", testGetBorder),
        ("testGetBorderOnline", testGetBorderOnline),
        ("testDeleteBorders", testDeleteBorders),
        ("testDeleteBordersOnline", testDeleteBordersOnline),
        ("testDeleteBorder", testDeleteBorder),
        ("testDeleteBorderOnline", testDeleteBorderOnline),
        ("testUpdateBorder", testUpdateBorder),
        ("testUpdateBorderOnline", testUpdateBorderOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Tables";
    let localFile = "DocumentElements/Tables/TablesGet.docx";

    // Test for getting borders.
    func testGetBorders() throws {
      let remoteFileName = "TestGetBorders.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetBordersRequest(name: remoteFileName, nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      let actual = try super.getApi().getBorders(request: request);
      if (!(actual.getBorders() != nil)) { XCTFail("actual.getBorders() != nil"); return; }
      if (!(actual.getBorders()!.getList() != nil)) { XCTFail("actual.getBorders()!.getList() != nil"); return; }
      if (!(actual.getBorders()!.getList()?.count == 6)) { XCTFail("actual.getBorders()!.getList()?.count == 6"); return; }
      if (!(actual.getBorders()!.getList()![0].getColor() != nil)) { XCTFail("actual.getBorders()!.getList()![0].getColor() != nil"); return; }
      if (!(actual.getBorders()!.getList()![0].getColor()!.getWeb() == "#000000")) { XCTFail("actual.getBorders()!.getList()![0].getColor()!.getWeb() == " + "#000000"); return; }
    }

    // Test for getting borders online.
    func testGetBordersOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetBordersOnlineRequest(document: requestDocument, nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().getBordersOnline(request: request);
    }

    // Test for getting border.
    func testGetBorder() throws {
      let remoteFileName = "TestGetBorder.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetBorderRequest(name: remoteFileName, borderType: "left", nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      let actual = try super.getApi().getBorder(request: request);
      if (!(actual.getBorder() != nil)) { XCTFail("actual.getBorder() != nil"); return; }
      if (!(actual.getBorder()!.getColor() != nil)) { XCTFail("actual.getBorder()!.getColor() != nil"); return; }
      if (!(actual.getBorder()!.getColor()!.getWeb() == "#000000")) { XCTFail("actual.getBorder()!.getColor()!.getWeb() == " + "#000000"); return; }
    }

    // Test for getting border online.
    func testGetBorderOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetBorderOnlineRequest(document: requestDocument, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().getBorderOnline(request: request);
    }

    // Test for deleting borders.
    func testDeleteBorders() throws {
      let remoteFileName = "TestDeleteBorders.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteBordersRequest(name: remoteFileName, nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      _ = try super.getApi().deleteBorders(request: request);
    }

    // Test for deleting borders online.
    func testDeleteBordersOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteBordersOnlineRequest(document: requestDocument, nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().deleteBordersOnline(request: request);
    }

    // Test for deleting border.
    func testDeleteBorder() throws {
      let remoteFileName = "TestDeleteBorder.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteBorderRequest(name: remoteFileName, borderType: "left", nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      _ = try super.getApi().deleteBorder(request: request);
    }

    // Test for deleting border online.
    func testDeleteBorderOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteBorderOnlineRequest(document: requestDocument, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().deleteBorderOnline(request: request);
    }

    // Test for updating border.
    func testUpdateBorder() throws {
      let remoteFileName = "TestUpdateBorder.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestBorderPropertiesColor = XmlColor()
        .setWeb(web: "#AABBCC");
      let requestBorderProperties = Border()
        .setBorderType(borderType: Border.BorderType._left)
        .setColor(color: requestBorderPropertiesColor)
        .setDistanceFromText(distanceFromText: 6.0)
        .setLineStyle(lineStyle: Border.LineStyle.dashDotStroker)
        .setLineWidth(lineWidth: 2.0)
        .setShadow(shadow: true);
      let request = UpdateBorderRequest(name: remoteFileName, borderType: "left", borderProperties: requestBorderProperties, nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      let actual = try super.getApi().updateBorder(request: request);
      if (!(actual.getBorder() != nil)) { XCTFail("actual.getBorder() != nil"); return; }
      if (!(actual.getBorder()!.getColor() != nil)) { XCTFail("actual.getBorder()!.getColor() != nil"); return; }
      if (!(actual.getBorder()!.getColor()!.getWeb() == "#AABBCC")) { XCTFail("actual.getBorder()!.getColor()!.getWeb() == " + "#AABBCC"); return; }
      if (!(actual.getBorder()!.getDistanceFromText() == 6.0)) { XCTFail("actual.getBorder()!.getDistanceFromText() == 6.0"); return; }
      if (!(actual.getBorder()!.getLineWidth() == 2.0)) { XCTFail("actual.getBorder()!.getLineWidth() == 2.0"); return; }
      if (!(actual.getBorder()!.getShadow() == true)) { XCTFail("actual.getBorder()!.getShadow() == true"); return; }
    }

    // Test for updating border online.
    func testUpdateBorderOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestBorderPropertiesColor = XmlColor()
        .setWeb(web: "#AABBCC");
      let requestBorderProperties = Border()
        .setBorderType(borderType: Border.BorderType._left)
        .setColor(color: requestBorderPropertiesColor)
        .setDistanceFromText(distanceFromText: 6)
        .setLineStyle(lineStyle: Border.LineStyle.dashDotStroker)
        .setLineWidth(lineWidth: 2)
        .setShadow(shadow: true);
      let request = UpdateBorderOnlineRequest(document: requestDocument, borderProperties: requestBorderProperties, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().updateBorderOnline(request: request);
    }
}
