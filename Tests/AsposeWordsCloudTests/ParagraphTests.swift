/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphTests.swift">
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

// Example of how to work with paragraph.
class ParagraphTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentParagraphByIndex", testGetDocumentParagraphByIndex),
        ("testGetDocumentParagraphOnline", testGetDocumentParagraphOnline),
        ("testGetDocumentParagraphByIndexWithoutNodePath", testGetDocumentParagraphByIndexWithoutNodePath),
        ("testGetDocumentParagraphs", testGetDocumentParagraphs),
        ("testGetDocumentParagraphsOnline", testGetDocumentParagraphsOnline),
        ("testGetDocumentParagraphsWithoutNodePath", testGetDocumentParagraphsWithoutNodePath),
        ("testGetDocumentParagraphRun", testGetDocumentParagraphRun),
        ("testGetDocumentParagraphRunOnline", testGetDocumentParagraphRunOnline),
        ("testGetDocumentParagraphRunFont", testGetDocumentParagraphRunFont),
        ("testGetDocumentParagraphRunFontOnline", testGetDocumentParagraphRunFontOnline),
        ("testGetParagraphRuns", testGetParagraphRuns),
        ("testGetParagraphRunsOnline", testGetParagraphRunsOnline),
        ("testUpdateRunFont", testUpdateRunFont),
        ("testUpdateRunFontOnline", testUpdateRunFontOnline),
        ("testInsertParagraph", testInsertParagraph),
        ("testInsertParagraphOnline", testInsertParagraphOnline),
        ("testInsertParagraphWithoutNodePath", testInsertParagraphWithoutNodePath),
        ("testRenderParagraph", testRenderParagraph),
        ("testRenderParagraphOnline", testRenderParagraphOnline),
        ("testRenderParagraphWithoutNodePath", testRenderParagraphWithoutNodePath),
        ("testGetParagraphFormat", testGetParagraphFormat),
        ("testGetParagraphFormatOnline", testGetParagraphFormatOnline),
        ("testGetParagraphFormatWithoutNodePath", testGetParagraphFormatWithoutNodePath),
        ("testUpdateParagraphFormat", testUpdateParagraphFormat),
        ("testUpdateParagraphFormatOnline", testUpdateParagraphFormatOnline),
        ("testDeleteParagraph", testDeleteParagraph),
        ("testDeleteParagraphOnline", testDeleteParagraphOnline),
        ("testDeleteParagraphWithoutNodePath", testDeleteParagraphWithoutNodePath),
        ("testGetParagraphListFormat", testGetParagraphListFormat),
        ("testGetParagraphListFormatOnline", testGetParagraphListFormatOnline),
        ("testGetParagraphListFormatWithoutNodePath", testGetParagraphListFormatWithoutNodePath),
        ("testUpdateParagraphListFormat", testUpdateParagraphListFormat),
        ("testUpdateParagraphListFormatOnline", testUpdateParagraphListFormatOnline),
        ("testUpdateParagraphListFormatWithoutNodePath", testUpdateParagraphListFormatWithoutNodePath),
        ("testDeleteParagraphListFormat", testDeleteParagraphListFormat),
        ("testDeleteParagraphListFormatOnline", testDeleteParagraphListFormatOnline),
        ("testDeleteParagraphListFormatWithoutNodePath", testDeleteParagraphListFormatWithoutNodePath),
        ("testGetParagraphTabStops", testGetParagraphTabStops),
        ("testGetParagraphTabStopsOnline", testGetParagraphTabStopsOnline),
        ("testGetParagraphTabStopsWithoutNodePath", testGetParagraphTabStopsWithoutNodePath),
        ("testInsertParagraphTabStops", testInsertParagraphTabStops),
        ("testInsertParagraphTabStopsOnline", testInsertParagraphTabStopsOnline),
        ("testInsertParagraphTabStopsWithoutNodePath", testInsertParagraphTabStopsWithoutNodePath),
        ("testDeleteAllParagraphTabStops", testDeleteAllParagraphTabStops),
        ("testDeleteAllParagraphTabStopsOnline", testDeleteAllParagraphTabStopsOnline),
        ("testDeleteAllParagraphTabStopsWithoutNodePath", testDeleteAllParagraphTabStopsWithoutNodePath),
        ("testDeleteParagraphTabStop", testDeleteParagraphTabStop),
        ("testDeleteParagraphTabStopOnline", testDeleteParagraphTabStopOnline),
        ("testDeleteParagraphTabStopWithoutNodePath", testDeleteParagraphTabStopWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Paragraphs";
    let localFile = "Common/test_multi_pages.docx";
    let listFolder = "DocumentElements/ParagraphListFormat";
    let tabStopFolder = "DocumentElements/Paragraphs";

    // Test for getting paragraph.
    func testGetDocumentParagraphByIndex() throws {
      let remoteFileName = "TestGetDocumentParagraphByIndex.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphRequest(name: remoteFileName, index: 0, nodePath: "sections/0", folder: remoteDataFolder);
      let actual = try super.getApi().getParagraph(request: request);
      if (!(actual.getParagraph() != nil)) { XCTFail("actual.getParagraph() != nil"); return; }
      if (!(actual.getParagraph()!.getNodeId() == "0.0.0")) { XCTFail("actual.getParagraph()!.getNodeId() == " + "0.0.0"); return; }
    }

    // Test for getting paragraph online.
    func testGetDocumentParagraphOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetParagraphOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
      _ = try super.getApi().getParagraphOnline(request: request);
    }

    // Test for getting paragraph without node path.
    func testGetDocumentParagraphByIndexWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentParagraphByIndexWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getParagraph(request: request);
      if (!(actual.getParagraph() != nil)) { XCTFail("actual.getParagraph() != nil"); return; }
      if (!(actual.getParagraph()!.getNodeId() == "0.0.0")) { XCTFail("actual.getParagraph()!.getNodeId() == " + "0.0.0"); return; }
    }

    // Test for getting all paragraphs.
    func testGetDocumentParagraphs() throws {
      let remoteFileName = "TestGetDocumentParagraphs.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphsRequest(name: remoteFileName, nodePath: "sections/0", folder: remoteDataFolder);
      let actual = try super.getApi().getParagraphs(request: request);
      if (!(actual.getParagraphs() != nil)) { XCTFail("actual.getParagraphs() != nil"); return; }
      if (!(actual.getParagraphs()!.getParagraphLinkList() != nil)) { XCTFail("actual.getParagraphs()!.getParagraphLinkList() != nil"); return; }
      if (!(actual.getParagraphs()!.getParagraphLinkList()?.count == 15)) { XCTFail("actual.getParagraphs()!.getParagraphLinkList()?.count == 15"); return; }
      if (!(actual.getParagraphs()!.getParagraphLinkList()![0].getText() == "Page 1 of 3")) { XCTFail("actual.getParagraphs()!.getParagraphLinkList()![0].getText() == " + "Page 1 of 3"); return; }
    }

    // Test for getting all paragraphs online.
    func testGetDocumentParagraphsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetParagraphsOnlineRequest(document: requestDocument, nodePath: "sections/0");
      _ = try super.getApi().getParagraphsOnline(request: request);
    }

    // Test for getting all paragraphs without node path.
    func testGetDocumentParagraphsWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentParagraphsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphsRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getParagraphs(request: request);
      if (!(actual.getParagraphs() != nil)) { XCTFail("actual.getParagraphs() != nil"); return; }
      if (!(actual.getParagraphs()!.getParagraphLinkList() != nil)) { XCTFail("actual.getParagraphs()!.getParagraphLinkList() != nil"); return; }
      if (!(actual.getParagraphs()!.getParagraphLinkList()?.count == 15)) { XCTFail("actual.getParagraphs()!.getParagraphLinkList()?.count == 15"); return; }
      if (!(actual.getParagraphs()!.getParagraphLinkList()![0].getText() == "Page 1 of 3")) { XCTFail("actual.getParagraphs()!.getParagraphLinkList()![0].getText() == " + "Page 1 of 3"); return; }
    }

    // Test for getting paragraph run.
    func testGetDocumentParagraphRun() throws {
      let remoteFileName = "TestGetDocumentParagraphRun.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetRunRequest(name: remoteFileName, paragraphPath: "paragraphs/0", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getRun(request: request);
      if (!(actual.getRun() != nil)) { XCTFail("actual.getRun() != nil"); return; }
      if (!(actual.getRun()!.getText() == "Page ")) { XCTFail("actual.getRun()!.getText() == " + "Page "); return; }
    }

    // Test for getting paragraph run online.
    func testGetDocumentParagraphRunOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/0", index: 0);
      _ = try super.getApi().getRunOnline(request: request);
    }

    // Test for getting paragraph run font.
    func testGetDocumentParagraphRunFont() throws {
      let remoteFileName = "TestGetDocumentParagraphRunFont.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetRunFontRequest(name: remoteFileName, paragraphPath: "paragraphs/0", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getRunFont(request: request);
      if (!(actual.getFont() != nil)) { XCTFail("actual.getFont() != nil"); return; }
      if (!(actual.getFont()!.getName() == "Times New Roman")) { XCTFail("actual.getFont()!.getName() == " + "Times New Roman"); return; }
    }

    // Test for getting paragraph run font online.
    func testGetDocumentParagraphRunFontOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetRunFontOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/0", index: 0);
      _ = try super.getApi().getRunFontOnline(request: request);
    }

    // Test for getting paragraph runs.
    func testGetParagraphRuns() throws {
      let remoteFileName = "TestGetParagraphRuns.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetRunsRequest(name: remoteFileName, paragraphPath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      let actual = try super.getApi().getRuns(request: request);
      if (!(actual.getRuns() != nil)) { XCTFail("actual.getRuns() != nil"); return; }
      if (!(actual.getRuns()!.getList() != nil)) { XCTFail("actual.getRuns()!.getList() != nil"); return; }
      if (!(actual.getRuns()!.getList()?.count == 6)) { XCTFail("actual.getRuns()!.getList()?.count == 6"); return; }
      if (!(actual.getRuns()!.getList()![0].getText() == "Page ")) { XCTFail("actual.getRuns()!.getList()![0].getText() == " + "Page "); return; }
    }

    // Test for getting paragraph runs online.
    func testGetParagraphRunsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetRunsOnlineRequest(document: requestDocument, paragraphPath: "sections/0/paragraphs/0");
      _ = try super.getApi().getRunsOnline(request: request);
    }

    // Test for updating paragraph run font.
    func testUpdateRunFont() throws {
      let remoteFileName = "TestUpdateRunFont.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFontDto = Font()
        .setBold(bold: true);
      let request = UpdateRunFontRequest(name: remoteFileName, paragraphPath: "paragraphs/0", index: 0, fontDto: requestFontDto, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().updateRunFont(request: request);
      if (!(actual.getFont() != nil)) { XCTFail("actual.getFont() != nil"); return; }
      if (!(actual.getFont()!.getBold() == true)) { XCTFail("actual.getFont()!.getBold() == true"); return; }
    }

    // Test for updating paragraph run font online.
    func testUpdateRunFontOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestFontDto = Font()
        .setBold(bold: true);
      let request = UpdateRunFontOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/0", fontDto: requestFontDto, index: 0);
      _ = try super.getApi().updateRunFontOnline(request: request);
    }

    // Test for adding paragraph.
    func testInsertParagraph() throws {
      let remoteFileName = "TestInsertParagraph.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestParagraph = ParagraphInsert()
        .setText(text: "This is a new paragraph for your document");
      let request = InsertParagraphRequest(name: remoteFileName, paragraph: requestParagraph, nodePath: "sections/0", folder: remoteDataFolder);
      let actual = try super.getApi().insertParagraph(request: request);
      if (!(actual.getParagraph() != nil)) { XCTFail("actual.getParagraph() != nil"); return; }
      if (!(actual.getParagraph()!.getNodeId() == "0.3.8")) { XCTFail("actual.getParagraph()!.getNodeId() == " + "0.3.8"); return; }
    }

    // Test for adding paragraph online.
    func testInsertParagraphOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestParagraph = ParagraphInsert()
        .setText(text: "This is a new paragraph for your document");
      let request = InsertParagraphOnlineRequest(document: requestDocument, paragraph: requestParagraph, nodePath: "sections/0");
      _ = try super.getApi().insertParagraphOnline(request: request);
    }

    // Test for adding paragraph without node path.
    func testInsertParagraphWithoutNodePath() throws {
      let remoteFileName = "TestInsertParagraphWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestParagraph = ParagraphInsert()
        .setText(text: "This is a new paragraph for your document");
      let request = InsertParagraphRequest(name: remoteFileName, paragraph: requestParagraph, folder: remoteDataFolder);
      let actual = try super.getApi().insertParagraph(request: request);
      if (!(actual.getParagraph() != nil)) { XCTFail("actual.getParagraph() != nil"); return; }
      if (!(actual.getParagraph()!.getNodeId() == "0.3.8")) { XCTFail("actual.getParagraph()!.getNodeId() == " + "0.3.8"); return; }
    }

    // Test for paragraph rendering.
    func testRenderParagraph() throws {
      let remoteFileName = "TestRenderParagraph.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderParagraphRequest(name: remoteFileName, format: "png", index: 0, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().renderParagraph(request: request);
    }

    // Test for paragraph rendering.
    func testRenderParagraphOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = RenderParagraphOnlineRequest(document: requestDocument, format: "png", index: 0, nodePath: "");
      _ = try super.getApi().renderParagraphOnline(request: request);
    }

    // Test for paragraph rendering without node path.
    func testRenderParagraphWithoutNodePath() throws {
      let remoteFileName = "TestRenderParagraphWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderParagraphRequest(name: remoteFileName, format: "png", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().renderParagraph(request: request);
    }

    // Test for getting paragraph format settings.
    func testGetParagraphFormat() throws {
      let remoteFileName = "TestGetDocumentParagraphs.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphFormatRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getParagraphFormat(request: request);
      if (!(actual.getParagraphFormat() != nil)) { XCTFail("actual.getParagraphFormat() != nil"); return; }
      if (!(actual.getParagraphFormat()!.getStyleName() == "Normal")) { XCTFail("actual.getParagraphFormat()!.getStyleName() == " + "Normal"); return; }
    }

    // Test for getting paragraph format settings online.
    func testGetParagraphFormatOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetParagraphFormatOnlineRequest(document: requestDocument, index: 0, nodePath: "");
      _ = try super.getApi().getParagraphFormatOnline(request: request);
    }

    // Test for getting paragraph format settings without node path.
    func testGetParagraphFormatWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentParagraphsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphFormatRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getParagraphFormat(request: request);
      if (!(actual.getParagraphFormat() != nil)) { XCTFail("actual.getParagraphFormat() != nil"); return; }
      if (!(actual.getParagraphFormat()!.getStyleName() == "Normal")) { XCTFail("actual.getParagraphFormat()!.getStyleName() == " + "Normal"); return; }
    }

    // Test for updating  paragraph format settings.
    func testUpdateParagraphFormat() throws {
      let remoteFileName = "TestGetDocumentParagraphs.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestParagraphFormatDto = ParagraphFormatUpdate()
        .setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);
      let request = UpdateParagraphFormatRequest(name: remoteFileName, index: 0, paragraphFormatDto: requestParagraphFormatDto as! ParagraphFormatUpdate, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().updateParagraphFormat(request: request);
      if (!(actual.getParagraphFormat() != nil)) { XCTFail("actual.getParagraphFormat() != nil"); return; }

    }

    // Test for updating  paragraph format settings online.
    func testUpdateParagraphFormatOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestParagraphFormatDto = ParagraphFormatUpdate()
        .setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);
      let request = UpdateParagraphFormatOnlineRequest(document: requestDocument, paragraphFormatDto: requestParagraphFormatDto as! ParagraphFormatUpdate, index: 0, nodePath: "");
      _ = try super.getApi().updateParagraphFormatOnline(request: request);
    }

    // Test for deleting  a paragraph.
    func testDeleteParagraph() throws {
      let remoteFileName = "TestDeleteParagraph.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteParagraph(request: request);
    }

    // Test for deleting  a paragraph online.
    func testDeleteParagraphOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteParagraphOnlineRequest(document: requestDocument, index: 0, nodePath: "");
      _ = try super.getApi().deleteParagraphOnline(request: request);
    }

    // Test for deleting  a paragraph without node path.
    func testDeleteParagraphWithoutNodePath() throws {
      let remoteFileName = "TestDeleteParagraphWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      try super.getApi().deleteParagraph(request: request);
    }

    // Test for getting paragraph list format.
    func testGetParagraphListFormat() throws {
      let remoteFileName = "TestParagraphGetListFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphGetListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphListFormatRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getParagraphListFormat(request: request);
      if (!(actual.getListFormat() != nil)) { XCTFail("actual.getListFormat() != nil"); return; }
      if (!(actual.getListFormat()!.getListId() == 1)) { XCTFail("actual.getListFormat()!.getListId() == 1"); return; }
    }

    // Test for getting paragraph list format online.
    func testGetParagraphListFormatOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphGetListFormat.doc", isDirectory: false))!;
      let request = GetParagraphListFormatOnlineRequest(document: requestDocument, index: 0, nodePath: "");
      _ = try super.getApi().getParagraphListFormatOnline(request: request);
    }

    // Test for getting paragraph list format without node path.
    func testGetParagraphListFormatWithoutNodePath() throws {
      let remoteFileName = "TestParagraphGetListFormatWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphGetListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphListFormatRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getParagraphListFormat(request: request);
      if (!(actual.getListFormat() != nil)) { XCTFail("actual.getListFormat() != nil"); return; }
      if (!(actual.getListFormat()!.getListId() == 1)) { XCTFail("actual.getListFormat()!.getListId() == 1"); return; }
    }

    // Test for updating paragraph list format.
    func testUpdateParagraphListFormat() throws {
      let remoteFileName = "TestUpdateParagraphListFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphUpdateListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestListFormatDto = ListFormatUpdate()
        .setListId(listId: 2);
      let request = UpdateParagraphListFormatRequest(name: remoteFileName, index: 0, listFormatDto: requestListFormatDto, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().updateParagraphListFormat(request: request);
      if (!(actual.getListFormat() != nil)) { XCTFail("actual.getListFormat() != nil"); return; }
      if (!(actual.getListFormat()!.getListId() == 2)) { XCTFail("actual.getListFormat()!.getListId() == 2"); return; }
    }

    // Test for updating paragraph list format online.
    func testUpdateParagraphListFormatOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphUpdateListFormat.doc", isDirectory: false))!;
      let requestListFormatDto = ListFormatUpdate()
        .setListId(listId: 2);
      let request = UpdateParagraphListFormatOnlineRequest(document: requestDocument, listFormatDto: requestListFormatDto, index: 0, nodePath: "");
      _ = try super.getApi().updateParagraphListFormatOnline(request: request);
    }

    // Test for updating paragraph list format without node path.
    func testUpdateParagraphListFormatWithoutNodePath() throws {
      let remoteFileName = "TestUpdateParagraphListFormatWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphUpdateListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestListFormatDto = ListFormatUpdate()
        .setListId(listId: 2);
      let request = UpdateParagraphListFormatRequest(name: remoteFileName, index: 0, listFormatDto: requestListFormatDto, folder: remoteDataFolder);
      let actual = try super.getApi().updateParagraphListFormat(request: request);
      if (!(actual.getListFormat() != nil)) { XCTFail("actual.getListFormat() != nil"); return; }
      if (!(actual.getListFormat()!.getListId() == 2)) { XCTFail("actual.getListFormat()!.getListId() == 2"); return; }
    }

    // Test for deleting paragraph list format.
    func testDeleteParagraphListFormat() throws {
      let remoteFileName = "TestDeleteParagraphListFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphDeleteListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphListFormatRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().deleteParagraphListFormat(request: request);
    }

    // Test for deleting paragraph list format online.
    func testDeleteParagraphListFormatOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphDeleteListFormat.doc", isDirectory: false))!;
      let request = DeleteParagraphListFormatOnlineRequest(document: requestDocument, index: 0, nodePath: "");
      _ = try super.getApi().deleteParagraphListFormatOnline(request: request);
    }

    // Test for deleting paragraph list format without node path.
    func testDeleteParagraphListFormatWithoutNodePath() throws {
      let remoteFileName = "TestDeleteParagraphListFormatWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphDeleteListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphListFormatRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().deleteParagraphListFormat(request: request);
    }

    // Test for getting paragraph tab stops.
    func testGetParagraphTabStops() throws {
      let remoteFileName = "TestGetParagraphTabStops.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphTabStopsRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getParagraphTabStops(request: request);
      if (!(actual.getTabStops() != nil)) { XCTFail("actual.getTabStops() != nil"); return; }
      if (!(actual.getTabStops()?.count == 2)) { XCTFail("actual.getTabStops()?.count == 2"); return; }
      if (!(actual.getTabStops()![0].getPosition() == 72.0)) { XCTFail("actual.getTabStops()![0].getPosition() == 72.0"); return; }
    }

    // Test for getting paragraph tab stops online.
    func testGetParagraphTabStopsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false))!;
      let request = GetParagraphTabStopsOnlineRequest(document: requestDocument, index: 0, nodePath: "");
      _ = try super.getApi().getParagraphTabStopsOnline(request: request);
    }

    // Test for getting paragraph tab stops without node path.
    func testGetParagraphTabStopsWithoutNodePath() throws {
      let remoteFileName = "TestGetParagraphTabStopsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphTabStopsRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getParagraphTabStops(request: request);
      if (!(actual.getTabStops() != nil)) { XCTFail("actual.getTabStops() != nil"); return; }
      if (!(actual.getTabStops()?.count == 2)) { XCTFail("actual.getTabStops()?.count == 2"); return; }
      if (!(actual.getTabStops()![0].getPosition() == 72.0)) { XCTFail("actual.getTabStops()![0].getPosition() == 72.0"); return; }
    }

    // Test for inserting paragraph tab stop.
    func testInsertParagraphTabStops() throws {
      let remoteFileName = "TestInsertOrUpdateParagraphTabStop.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestTabStopInsertDto = TabStopInsert()
        .setAlignment(alignment: TabStopInsert.Alignment._left)
        .setLeader(leader: TabStopInsert.Leader._none)
        .setPosition(position: 100.0);
      let request = InsertOrUpdateParagraphTabStopRequest(name: remoteFileName, index: 0, tabStopInsertDto: requestTabStopInsertDto as! TabStopInsert, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().insertOrUpdateParagraphTabStop(request: request);
      if (!(actual.getTabStops() != nil)) { XCTFail("actual.getTabStops() != nil"); return; }
      if (!(actual.getTabStops()?.count == 3)) { XCTFail("actual.getTabStops()?.count == 3"); return; }
      if (!(actual.getTabStops()![1].getPosition() == 100.0)) { XCTFail("actual.getTabStops()![1].getPosition() == 100.0"); return; }


    }

    // Test for inserting paragraph tab stop online.
    func testInsertParagraphTabStopsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false))!;
      let requestTabStopInsertDto = TabStopInsert()
        .setAlignment(alignment: TabStopInsert.Alignment._left)
        .setLeader(leader: TabStopInsert.Leader._none)
        .setPosition(position: 72);
      let request = InsertOrUpdateParagraphTabStopOnlineRequest(document: requestDocument, tabStopInsertDto: requestTabStopInsertDto as! TabStopInsert, index: 0, nodePath: "");
      _ = try super.getApi().insertOrUpdateParagraphTabStopOnline(request: request);
    }

    // Test for inserting paragraph tab stop without node path.
    func testInsertParagraphTabStopsWithoutNodePath() throws {
      let remoteFileName = "TestInsertOrUpdateParagraphTabStopWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestTabStopInsertDto = TabStopInsert()
        .setAlignment(alignment: TabStopInsert.Alignment._left)
        .setLeader(leader: TabStopInsert.Leader._none)
        .setPosition(position: 100.0);
      let request = InsertOrUpdateParagraphTabStopRequest(name: remoteFileName, index: 0, tabStopInsertDto: requestTabStopInsertDto as! TabStopInsert, folder: remoteDataFolder);
      let actual = try super.getApi().insertOrUpdateParagraphTabStop(request: request);
      if (!(actual.getTabStops() != nil)) { XCTFail("actual.getTabStops() != nil"); return; }
      if (!(actual.getTabStops()?.count == 3)) { XCTFail("actual.getTabStops()?.count == 3"); return; }
      if (!(actual.getTabStops()![1].getPosition() == 100.0)) { XCTFail("actual.getTabStops()![1].getPosition() == 100.0"); return; }


    }

    // Test for deleting all paragraph tab stops.
    func testDeleteAllParagraphTabStops() throws {
      let remoteFileName = "TestDeleteAllParagraphTabStops.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteAllParagraphTabStopsRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().deleteAllParagraphTabStops(request: request);
      if (!(actual.getTabStops() != nil)) { XCTFail("actual.getTabStops() != nil"); return; }
      if (!(actual.getTabStops()?.count == 0)) { XCTFail("actual.getTabStops()?.count == 0"); return; }
    }

    // Test for deleting all paragraph tab stops online.
    func testDeleteAllParagraphTabStopsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false))!;
      let request = DeleteAllParagraphTabStopsOnlineRequest(document: requestDocument, index: 0, nodePath: "");
      _ = try super.getApi().deleteAllParagraphTabStopsOnline(request: request);
    }

    // Test for deleting all paragraph tab stops without node path.
    func testDeleteAllParagraphTabStopsWithoutNodePath() throws {
      let remoteFileName = "TestDeleteAllParagraphTabStopsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteAllParagraphTabStopsRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().deleteAllParagraphTabStops(request: request);
      if (!(actual.getTabStops() != nil)) { XCTFail("actual.getTabStops() != nil"); return; }
      if (!(actual.getTabStops()?.count == 0)) { XCTFail("actual.getTabStops()?.count == 0"); return; }
    }

    // Test for deleting a tab stops.
    func testDeleteParagraphTabStop() throws {
      let remoteFileName = "TestDeleteParagraphTabStop.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphTabStopRequest(name: remoteFileName, position: 72.0, index: 0, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().deleteParagraphTabStop(request: request);
      if (!(actual.getTabStops() != nil)) { XCTFail("actual.getTabStops() != nil"); return; }
      if (!(actual.getTabStops()?.count == 1)) { XCTFail("actual.getTabStops()?.count == 1"); return; }
    }

    // Test for deleting a tab stops online.
    func testDeleteParagraphTabStopOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false))!;
      let request = DeleteParagraphTabStopOnlineRequest(document: requestDocument, position: 72.0, index: 0, nodePath: "");
      _ = try super.getApi().deleteParagraphTabStopOnline(request: request);
    }

    // Test for deleting a tab stops without node path.
    func testDeleteParagraphTabStopWithoutNodePath() throws {
      let remoteFileName = "TestDeleteParagraphTabStopWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphTabStopRequest(name: remoteFileName, position: 72.0, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().deleteParagraphTabStop(request: request);
      if (!(actual.getTabStops() != nil)) { XCTFail("actual.getTabStops() != nil"); return; }
      if (!(actual.getTabStops()?.count == 1)) { XCTFail("actual.getTabStops()?.count == 1"); return; }
    }
}
