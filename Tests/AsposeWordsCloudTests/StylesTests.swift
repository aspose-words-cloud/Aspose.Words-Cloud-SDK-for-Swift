/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StylesTests.swift">
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

// Example of how to work with styles.
class StylesTests: BaseTestContext {
    static var allTests = [
        ("testGetStyles", testGetStyles),
        ("testGetStylesOnline", testGetStylesOnline),
        ("testGetStyle", testGetStyle),
        ("testGetStyleOnline", testGetStyleOnline),
        ("testUpdateStyle", testUpdateStyle),
        ("testUpdateStyleOnline", testUpdateStyleOnline),
        ("testInsertStyle", testInsertStyle),
        ("testInsertStyleOnline", testInsertStyleOnline),
        ("testCopyStyle", testCopyStyle),
        ("testCopyStyleOnline", testCopyStyleOnline),
        ("testGetStyleFromDocumentElement", testGetStyleFromDocumentElement),
        ("testGetStyleFromDocumentElementOnline", testGetStyleFromDocumentElementOnline),
        ("testApplyStyleToDocumentElement", testApplyStyleToDocumentElement),
        ("testApplyStyleToDocumentElementOnline", testApplyStyleToDocumentElementOnline),
        ("testCopyStylesFromTemplate", testCopyStylesFromTemplate)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Styles";
    let localFile = "DocumentElements/Styles/GetStyles.docx";

    // Test for getting styles from document.
    func testGetStyles() throws {
      let remoteFileName = "TestGetStyles.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetStylesRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getStyles(request: request);
      if (!(actual.getStyles() != nil)) { XCTFail("actual.getStyles() != nil"); return; }
      if (!(actual.getStyles()?.count == 22)) { XCTFail("actual.getStyles()?.count == 22"); return; }
      if (!(actual.getStyles()![0].getName() == "Default Paragraph Font")) { XCTFail("actual.getStyles()![0].getName() == " + "Default Paragraph Font"); return; }
    }

    // Test for getting styles from document online.
    func testGetStylesOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetStylesOnlineRequest(document: requestDocument);
      _ = try super.getApi().getStylesOnline(request: request);
    }

    // Test for getting style from document.
    func testGetStyle() throws {
      let remoteFileName = "TestGetStyle.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetStyleRequest(name: remoteFileName, styleName: "Heading 1", folder: remoteDataFolder);
      let actual = try super.getApi().getStyle(request: request);
      if (!(actual.getStyle() != nil)) { XCTFail("actual.getStyle() != nil"); return; }
      if (!(actual.getStyle()!.getName() == "Heading 1")) { XCTFail("actual.getStyle()!.getName() == " + "Heading 1"); return; }
    }

    // Test for getting style from document online.
    func testGetStyleOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetStyleOnlineRequest(document: requestDocument, styleName: "Heading 1");
      _ = try super.getApi().getStyleOnline(request: request);
    }

    // Test for updating style from document.
    func testUpdateStyle() throws {
      let remoteFileName = "TestUpdateStyle.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStyleUpdate = StyleUpdate()
        .setName(name: "My Style");
      let request = UpdateStyleRequest(name: remoteFileName, styleName: "Heading 1", styleUpdate: requestStyleUpdate, folder: remoteDataFolder);
      let actual = try super.getApi().updateStyle(request: request);
      if (!(actual.getStyle() != nil)) { XCTFail("actual.getStyle() != nil"); return; }
      if (!(actual.getStyle()!.getName() == "My Style")) { XCTFail("actual.getStyle()!.getName() == " + "My Style"); return; }
    }

    // Test for updating style from document online.
    func testUpdateStyleOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestStyleUpdate = StyleUpdate()
        .setName(name: "My Style");
      let request = UpdateStyleOnlineRequest(document: requestDocument, styleName: "Heading 1", styleUpdate: requestStyleUpdate);
      _ = try super.getApi().updateStyleOnline(request: request);
    }

    // Test for inserting style from document.
    func testInsertStyle() throws {
      let remoteFileName = "TestInsertStyle.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStyleInsert = StyleInsert()
        .setStyleName(styleName: "My Style")
        .setStyleType(styleType: StyleInsert.StyleType.paragraph);
      let request = InsertStyleRequest(name: remoteFileName, styleInsert: requestStyleInsert, folder: remoteDataFolder);
      let actual = try super.getApi().insertStyle(request: request);
      if (!(actual.getStyle() != nil)) { XCTFail("actual.getStyle() != nil"); return; }
      if (!(actual.getStyle()!.getName() == "My Style")) { XCTFail("actual.getStyle()!.getName() == " + "My Style"); return; }
    }

    // Test for inserting style from document online.
    func testInsertStyleOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestStyleInsert = StyleInsert()
        .setStyleName(styleName: "My Style")
        .setStyleType(styleType: StyleInsert.StyleType.paragraph);
      let request = InsertStyleOnlineRequest(document: requestDocument, styleInsert: requestStyleInsert);
      _ = try super.getApi().insertStyleOnline(request: request);
    }

    // Test for coping style from document.
    func testCopyStyle() throws {
      let remoteFileName = "TestCopyStyle.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStyleCopy = StyleCopy()
        .setStyleName(styleName: "Heading 1");
      let request = CopyStyleRequest(name: remoteFileName, styleCopy: requestStyleCopy, folder: remoteDataFolder);
      let actual = try super.getApi().copyStyle(request: request);
      if (!(actual.getStyle() != nil)) { XCTFail("actual.getStyle() != nil"); return; }
      if (!(actual.getStyle()!.getName() == "Heading 1_0")) { XCTFail("actual.getStyle()!.getName() == " + "Heading 1_0"); return; }
    }

    // Test for coping style from document online.
    func testCopyStyleOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestStyleCopy = StyleCopy()
        .setStyleName(styleName: "Heading 1");
      let request = CopyStyleOnlineRequest(document: requestDocument, styleCopy: requestStyleCopy);
      _ = try super.getApi().copyStyleOnline(request: request);
    }

    // Test for getting style from document element.
    func testGetStyleFromDocumentElement() throws {
      let remoteFileName = "TestGetStyleFromDocumentElement.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetStyleFromDocumentElementRequest(name: remoteFileName, styledNodePath: "paragraphs/1/paragraphFormat", folder: remoteDataFolder);
      let actual = try super.getApi().getStyleFromDocumentElement(request: request);
      if (!(actual.getStyle() != nil)) { XCTFail("actual.getStyle() != nil"); return; }
      if (!(actual.getStyle()!.getName() == "TOC 1")) { XCTFail("actual.getStyle()!.getName() == " + "TOC 1"); return; }
    }

    // Test for getting style from document element online.
    func testGetStyleFromDocumentElementOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetStyleFromDocumentElementOnlineRequest(document: requestDocument, styledNodePath: "paragraphs/1/paragraphFormat");
      _ = try super.getApi().getStyleFromDocumentElementOnline(request: request);
    }

    // Test for applying style to document element.
    func testApplyStyleToDocumentElement() throws {
      let remoteFileName = "TestApplyStyleToDocumentElement.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStyleApply = StyleApply()
        .setStyleName(styleName: "Heading 1");
      let request = ApplyStyleToDocumentElementRequest(name: remoteFileName, styledNodePath: "paragraphs/1/paragraphFormat", styleApply: requestStyleApply, folder: remoteDataFolder);
      _ = try super.getApi().applyStyleToDocumentElement(request: request);
    }

    // Test for applying style to document element online.
    func testApplyStyleToDocumentElementOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestStyleApply = StyleApply()
        .setStyleName(styleName: "Heading 1");
      let request = ApplyStyleToDocumentElementOnlineRequest(document: requestDocument, styledNodePath: "paragraphs/1/paragraphFormat", styleApply: requestStyleApply);
      _ = try super.getApi().applyStyleToDocumentElementOnline(request: request);
    }

    // Test for copying styles from a template.
    func testCopyStylesFromTemplate() throws {
      let remoteFileName = "TestCopyStylesFromTemplate.docx";
      let templateFolder = "DocumentElements/Styles";
      let templateName = "StyleTemplate.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);
      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(templateFolder + "/" + templateName, isDirectory: false), path: remoteDataFolder + "/" + templateName);

      let request = CopyStylesFromTemplateRequest(name: remoteFileName, templateName: templateName, folder: remoteDataFolder);
      _ = try super.getApi().copyStylesFromTemplate(request: request);
    }
}
