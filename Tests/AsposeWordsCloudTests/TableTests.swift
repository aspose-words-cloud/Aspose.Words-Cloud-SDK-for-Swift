/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableTests.swift">
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

// Example of how to work wtih table.
class TableTests: BaseTestContext {
    static var allTests = [
        ("testGetTables", testGetTables),
        ("testGetTablesOnline", testGetTablesOnline),
        ("testGetTablesWithoutNodePath", testGetTablesWithoutNodePath),
        ("testGetTable", testGetTable),
        ("testGetTableOnline", testGetTableOnline),
        ("testGetTableWithoutNodePath", testGetTableWithoutNodePath),
        ("testDeleteTable", testDeleteTable),
        ("testDeleteTableOnline", testDeleteTableOnline),
        ("testDeleteTableWithoutNodePath", testDeleteTableWithoutNodePath),
        ("testInsertTable", testInsertTable),
        ("testInsertTableOnline", testInsertTableOnline),
        ("testInsertTableWithoutNodePath", testInsertTableWithoutNodePath),
        ("testGetTableProperties", testGetTableProperties),
        ("testGetTablePropertiesOnline", testGetTablePropertiesOnline),
        ("testGetTablePropertiesWithoutNodePath", testGetTablePropertiesWithoutNodePath),
        ("testUpdateTableProperties", testUpdateTableProperties),
        ("testUpdateTablePropertiesOnline", testUpdateTablePropertiesOnline),
        ("testUpdateTablePropertiesWithoutNodePath", testUpdateTablePropertiesWithoutNodePath),
        ("testGetTableRow", testGetTableRow),
        ("testGetTableRowOnline", testGetTableRowOnline),
        ("testDeleteTableRow", testDeleteTableRow),
        ("testDeleteTableRowOnline", testDeleteTableRowOnline),
        ("testInsertTableRow", testInsertTableRow),
        ("testInsertTableRowOnline", testInsertTableRowOnline),
        ("testGetTableRowFormat", testGetTableRowFormat),
        ("testGetTableRowFormatOnline", testGetTableRowFormatOnline),
        ("testUpdateTableRowFormat", testUpdateTableRowFormat),
        ("testUpdateTableRowFormatOnline", testUpdateTableRowFormatOnline),
        ("testGetTableCell", testGetTableCell),
        ("testGetTableCellOnline", testGetTableCellOnline),
        ("testDeleteTableCell", testDeleteTableCell),
        ("testDeleteTableCellOnline", testDeleteTableCellOnline),
        ("testInsertTableCell", testInsertTableCell),
        ("testInsertTableCellOnline", testInsertTableCellOnline),
        ("testGetTableCellFormat", testGetTableCellFormat),
        ("testGetTableCellFormatOnline", testGetTableCellFormatOnline),
        ("testUpdateTableCellFormat", testUpdateTableCellFormat),
        ("testUpdateTableCellFormatOnline", testUpdateTableCellFormatOnline),
        ("testRenderTable", testRenderTable),
        ("testRenderTableOnline", testRenderTableOnline),
        ("testRenderTableWithoutNodePath", testRenderTableWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Tables";
    let localFile = "DocumentElements/Tables/TablesGet.docx";

    // Test for getting tables.
    func testGetTables() throws {
      let remoteFileName = "TestGetTables.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablesRequest(name: remoteFileName, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getTables(request: request);
      if (!(actual.getTables() != nil)) { XCTFail("actual.getTables() != nil"); return; }
      if (!(actual.getTables()!.getTableLinkList() != nil)) { XCTFail("actual.getTables()!.getTableLinkList() != nil"); return; }
      if (!(actual.getTables()!.getTableLinkList()?.count == 5)) { XCTFail("actual.getTables()!.getTableLinkList()?.count == 5"); return; }
      if (!(actual.getTables()!.getTableLinkList()![0].getNodeId() == "0.0.1")) { XCTFail("actual.getTables()!.getTableLinkList()![0].getNodeId() == " + "0.0.1"); return; }
    }

    // Test for getting tables online.
    func testGetTablesOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetTablesOnlineRequest(document: requestDocument, nodePath: "");
      _ = try super.getApi().getTablesOnline(request: request);
    }

    // Test for getting tables without node path.
    func testGetTablesWithoutNodePath() throws {
      let remoteFileName = "TestGetTablesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablesRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getTables(request: request);
      if (!(actual.getTables() != nil)) { XCTFail("actual.getTables() != nil"); return; }
      if (!(actual.getTables()!.getTableLinkList() != nil)) { XCTFail("actual.getTables()!.getTableLinkList() != nil"); return; }
      if (!(actual.getTables()!.getTableLinkList()?.count == 5)) { XCTFail("actual.getTables()!.getTableLinkList()?.count == 5"); return; }
      if (!(actual.getTables()!.getTableLinkList()![0].getNodeId() == "0.0.1")) { XCTFail("actual.getTables()!.getTableLinkList()![0].getNodeId() == " + "0.0.1"); return; }
    }

    // Test for getting table.
    func testGetTable() throws {
      let remoteFileName = "TestGetTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRequest(name: remoteFileName, index: 1, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getTable(request: request);
      if (!(actual.getTable() != nil)) { XCTFail("actual.getTable() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList() != nil)) { XCTFail("actual.getTable()!.getTableRowList() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList()?.count == 1)) { XCTFail("actual.getTable()!.getTableRowList()?.count == 1"); return; }
      if (!(actual.getTable()!.getTableRowList()![0].getTableCellList() != nil)) { XCTFail("actual.getTable()!.getTableRowList()![0].getTableCellList() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList()![0].getTableCellList()?.count == 2)) { XCTFail("actual.getTable()!.getTableRowList()![0].getTableCellList()?.count == 2"); return; }
    }

    // Test for getting table online.
    func testGetTableOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetTableOnlineRequest(document: requestDocument, index: 1, nodePath: "");
      _ = try super.getApi().getTableOnline(request: request);
    }

    // Test for getting table without node path.
    func testGetTableWithoutNodePath() throws {
      let remoteFileName = "TestGetTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRequest(name: remoteFileName, index: 1, folder: remoteDataFolder);
      let actual = try super.getApi().getTable(request: request);
      if (!(actual.getTable() != nil)) { XCTFail("actual.getTable() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList() != nil)) { XCTFail("actual.getTable()!.getTableRowList() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList()?.count == 1)) { XCTFail("actual.getTable()!.getTableRowList()?.count == 1"); return; }
      if (!(actual.getTable()!.getTableRowList()![0].getTableCellList() != nil)) { XCTFail("actual.getTable()!.getTableRowList()![0].getTableCellList() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList()![0].getTableCellList()?.count == 2)) { XCTFail("actual.getTable()!.getTableRowList()![0].getTableCellList()?.count == 2"); return; }
    }

    // Test for deleting table.
    func testDeleteTable() throws {
      let remoteFileName = "TestDeleteTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableRequest(name: remoteFileName, index: 1, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteTable(request: request);
    }

    // Test for deleting table online.
    func testDeleteTableOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteTableOnlineRequest(document: requestDocument, index: 1, nodePath: "");
      _ = try super.getApi().deleteTableOnline(request: request);
    }

    // Test for deleting table without node path.
    func testDeleteTableWithoutNodePath() throws {
      let remoteFileName = "TestDeleteTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableRequest(name: remoteFileName, index: 1, folder: remoteDataFolder);
      try super.getApi().deleteTable(request: request);
    }

    // Test for adding table.
    func testInsertTable() throws {
      let remoteFileName = "TestInsertTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestTable = TableInsert()
        .setColumnsCount(columnsCount: 5)
        .setRowsCount(rowsCount: 4);
      let request = InsertTableRequest(name: remoteFileName, table: requestTable, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().insertTable(request: request);
      if (!(actual.getTable() != nil)) { XCTFail("actual.getTable() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList() != nil)) { XCTFail("actual.getTable()!.getTableRowList() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList()?.count == 4)) { XCTFail("actual.getTable()!.getTableRowList()?.count == 4"); return; }
      if (!(actual.getTable()!.getTableRowList()![0].getTableCellList() != nil)) { XCTFail("actual.getTable()!.getTableRowList()![0].getTableCellList() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList()![0].getTableCellList()?.count == 5)) { XCTFail("actual.getTable()!.getTableRowList()![0].getTableCellList()?.count == 5"); return; }
    }

    // Test for adding table online.
    func testInsertTableOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestTable = TableInsert()
        .setColumnsCount(columnsCount: 5)
        .setRowsCount(rowsCount: 4);
      let request = InsertTableOnlineRequest(document: requestDocument, table: requestTable, nodePath: "");
      _ = try super.getApi().insertTableOnline(request: request);
    }

    // Test for adding table without node path.
    func testInsertTableWithoutNodePath() throws {
      let remoteFileName = "TestInsertTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestTable = TableInsert()
        .setColumnsCount(columnsCount: 5)
        .setRowsCount(rowsCount: 4);
      let request = InsertTableRequest(name: remoteFileName, table: requestTable, folder: remoteDataFolder);
      let actual = try super.getApi().insertTable(request: request);
      if (!(actual.getTable() != nil)) { XCTFail("actual.getTable() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList() != nil)) { XCTFail("actual.getTable()!.getTableRowList() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList()?.count == 4)) { XCTFail("actual.getTable()!.getTableRowList()?.count == 4"); return; }
      if (!(actual.getTable()!.getTableRowList()![0].getTableCellList() != nil)) { XCTFail("actual.getTable()!.getTableRowList()![0].getTableCellList() != nil"); return; }
      if (!(actual.getTable()!.getTableRowList()![0].getTableCellList()?.count == 5)) { XCTFail("actual.getTable()!.getTableRowList()![0].getTableCellList()?.count == 5"); return; }
    }

    // Test for getting document properties.
    func testGetTableProperties() throws {
      let remoteFileName = "TestGetTableProperties.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablePropertiesRequest(name: remoteFileName, index: 1, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getTableProperties(request: request);
      if (!(actual.getProperties() != nil)) { XCTFail("actual.getProperties() != nil"); return; }
      if (!(actual.getProperties()!.getStyleName() == "Table Grid")) { XCTFail("actual.getProperties()!.getStyleName() == " + "Table Grid"); return; }
    }

    // Test for getting document properties online.
    func testGetTablePropertiesOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetTablePropertiesOnlineRequest(document: requestDocument, index: 1, nodePath: "");
      _ = try super.getApi().getTablePropertiesOnline(request: request);
    }

    // Test for getting document properties without node path.
    func testGetTablePropertiesWithoutNodePath() throws {
      let remoteFileName = "TestGetTablePropertiesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablePropertiesRequest(name: remoteFileName, index: 1, folder: remoteDataFolder);
      let actual = try super.getApi().getTableProperties(request: request);
      if (!(actual.getProperties() != nil)) { XCTFail("actual.getProperties() != nil"); return; }
      if (!(actual.getProperties()!.getStyleName() == "Table Grid")) { XCTFail("actual.getProperties()!.getStyleName() == " + "Table Grid"); return; }
    }

    // Test for updating table properties.
    func testUpdateTableProperties() throws {
      let remoteFileName = "TestUpdateTableProperties.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProperties = TableProperties()
        .setAlignment(alignment: TableProperties.Alignment._right)
        .setAllowAutoFit(allowAutoFit: false)
        .setBidi(bidi: true)
        .setBottomPadding(bottomPadding: 1)
        .setCellSpacing(cellSpacing: 2.0)
        .setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
      let request = UpdateTablePropertiesRequest(name: remoteFileName, index: 1, properties: requestProperties, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().updateTableProperties(request: request);
      if (!(actual.getProperties() != nil)) { XCTFail("actual.getProperties() != nil"); return; }
      if (!(actual.getProperties()!.getAllowAutoFit() == false)) { XCTFail("actual.getProperties()!.getAllowAutoFit() == false"); return; }
      if (!(actual.getProperties()!.getBidi() == true)) { XCTFail("actual.getProperties()!.getBidi() == true"); return; }
      if (!(actual.getProperties()!.getBottomPadding() == 1.0)) { XCTFail("actual.getProperties()!.getBottomPadding() == 1.0"); return; }
      if (!(actual.getProperties()!.getCellSpacing() == 2.0)) { XCTFail("actual.getProperties()!.getCellSpacing() == 2.0"); return; }
    }

    // Test for updating table properties online.
    func testUpdateTablePropertiesOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestProperties = TableProperties()
        .setAlignment(alignment: TableProperties.Alignment._right)
        .setAllowAutoFit(allowAutoFit: false)
        .setBidi(bidi: true)
        .setBottomPadding(bottomPadding: 1)
        .setCellSpacing(cellSpacing: 2)
        .setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
      let request = UpdateTablePropertiesOnlineRequest(document: requestDocument, properties: requestProperties, index: 1, nodePath: "");
      _ = try super.getApi().updateTablePropertiesOnline(request: request);
    }

    // Test for updating table properties without node path.
    func testUpdateTablePropertiesWithoutNodePath() throws {
      let remoteFileName = "TestUpdateTablePropertiesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProperties = TableProperties()
        .setAlignment(alignment: TableProperties.Alignment._right)
        .setAllowAutoFit(allowAutoFit: false)
        .setBidi(bidi: true)
        .setBottomPadding(bottomPadding: 1.0)
        .setCellSpacing(cellSpacing: 2.0)
        .setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
      let request = UpdateTablePropertiesRequest(name: remoteFileName, index: 1, properties: requestProperties, folder: remoteDataFolder);
      let actual = try super.getApi().updateTableProperties(request: request);
      if (!(actual.getProperties() != nil)) { XCTFail("actual.getProperties() != nil"); return; }
      if (!(actual.getProperties()!.getAllowAutoFit() == false)) { XCTFail("actual.getProperties()!.getAllowAutoFit() == false"); return; }
      if (!(actual.getProperties()!.getBidi() == true)) { XCTFail("actual.getProperties()!.getBidi() == true"); return; }
      if (!(actual.getProperties()!.getBottomPadding() == 1.0)) { XCTFail("actual.getProperties()!.getBottomPadding() == 1.0"); return; }
      if (!(actual.getProperties()!.getCellSpacing() == 2.0)) { XCTFail("actual.getProperties()!.getCellSpacing() == 2.0"); return; }
    }

    // Test for getting table row.
    func testGetTableRow() throws {
      let remoteFileName = "TestGetTableRow.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRowRequest(name: remoteFileName, tablePath: "tables/1", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getTableRow(request: request);
      if (!(actual.getRow() != nil)) { XCTFail("actual.getRow() != nil"); return; }
      if (!(actual.getRow()!.getTableCellList() != nil)) { XCTFail("actual.getRow()!.getTableCellList() != nil"); return; }
      if (!(actual.getRow()!.getTableCellList()?.count == 2)) { XCTFail("actual.getRow()!.getTableCellList()?.count == 2"); return; }
    }

    // Test for getting table row online.
    func testGetTableRowOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetTableRowOnlineRequest(document: requestDocument, tablePath: "tables/1", index: 0);
      _ = try super.getApi().getTableRowOnline(request: request);
    }

    // Test for deleting table row.
    func testDeleteTableRow() throws {
      let remoteFileName = "TestDeleteTableRow.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableRowRequest(name: remoteFileName, tablePath: "tables/1", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteTableRow(request: request);
    }

    // Test for deleting table row online.
    func testDeleteTableRowOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteTableRowOnlineRequest(document: requestDocument, tablePath: "tables/1", index: 0);
      _ = try super.getApi().deleteTableRowOnline(request: request);
    }

    // Test for adding row.
    func testInsertTableRow() throws {
      let remoteFileName = "TestInsertTableRow.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestRow = TableRowInsert()
        .setColumnsCount(columnsCount: 5);
      let request = InsertTableRowRequest(name: remoteFileName, row: requestRow, nodePath: "sections/0/tables/2", folder: remoteDataFolder);
      let actual = try super.getApi().insertTableRow(request: request);
      if (!(actual.getRow() != nil)) { XCTFail("actual.getRow() != nil"); return; }
      if (!(actual.getRow()!.getTableCellList() != nil)) { XCTFail("actual.getRow()!.getTableCellList() != nil"); return; }
      if (!(actual.getRow()!.getTableCellList()?.count == 5)) { XCTFail("actual.getRow()!.getTableCellList()?.count == 5"); return; }
    }

    // Test for adding row online.
    func testInsertTableRowOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestRow = TableRowInsert()
        .setColumnsCount(columnsCount: 5);
      let request = InsertTableRowOnlineRequest(document: requestDocument, row: requestRow, nodePath: "sections/0/tables/2");
      _ = try super.getApi().insertTableRowOnline(request: request);
    }

    // Test for getting row format.
    func testGetTableRowFormat() throws {
      let remoteFileName = "TestGetTableRowFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRowFormatRequest(name: remoteFileName, tablePath: "sections/0/tables/2", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getTableRowFormat(request: request);
      if (!(actual.getRowFormat() != nil)) { XCTFail("actual.getRowFormat() != nil"); return; }
      if (!(actual.getRowFormat()!.getAllowBreakAcrossPages() == true)) { XCTFail("actual.getRowFormat()!.getAllowBreakAcrossPages() == true"); return; }
    }

    // Test for getting row format online.
    func testGetTableRowFormatOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetTableRowFormatOnlineRequest(document: requestDocument, tablePath: "sections/0/tables/2", index: 0);
      _ = try super.getApi().getTableRowFormatOnline(request: request);
    }

    // Test updating row format.
    func testUpdateTableRowFormat() throws {
      let remoteFileName = "TestUpdateTableRowFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormat = TableRowFormat()
        .setHeight(height: 10.0)
        .setHeightRule(heightRule: TableRowFormat.HeightRule.exactly)
        .setAllowBreakAcrossPages(allowBreakAcrossPages: true)
        .setHeadingFormat(headingFormat: true);
      let request = UpdateTableRowFormatRequest(name: remoteFileName, tablePath: "sections/0/tables/2", index: 0, format: requestFormat, folder: remoteDataFolder);
      let actual = try super.getApi().updateTableRowFormat(request: request);
      if (!(actual.getRowFormat() != nil)) { XCTFail("actual.getRowFormat() != nil"); return; }
      if (!(actual.getRowFormat()!.getAllowBreakAcrossPages() == true)) { XCTFail("actual.getRowFormat()!.getAllowBreakAcrossPages() == true"); return; }
      if (!(actual.getRowFormat()!.getHeadingFormat() == true)) { XCTFail("actual.getRowFormat()!.getHeadingFormat() == true"); return; }
      if (!(actual.getRowFormat()!.getHeight() == 10.0)) { XCTFail("actual.getRowFormat()!.getHeight() == 10.0"); return; }
    }

    // Test updating row format online.
    func testUpdateTableRowFormatOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestFormat = TableRowFormat()
        .setHeight(height: 10)
        .setHeightRule(heightRule: TableRowFormat.HeightRule.auto)
        .setAllowBreakAcrossPages(allowBreakAcrossPages: true)
        .setHeadingFormat(headingFormat: true);
      let request = UpdateTableRowFormatOnlineRequest(document: requestDocument, tablePath: "sections/0/tables/2", format: requestFormat, index: 0);
      _ = try super.getApi().updateTableRowFormatOnline(request: request);
    }

    // Test for getting table cell.
    func testGetTableCell() throws {
      let remoteFileName = "TestGetTableCell.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableCellRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getTableCell(request: request);
      if (!(actual.getCell() != nil)) { XCTFail("actual.getCell() != nil"); return; }
      if (!(actual.getCell()!.getNodeId() == "0.0.5.0.0")) { XCTFail("actual.getCell()!.getNodeId() == " + "0.0.5.0.0"); return; }
    }

    // Test for getting table cell online.
    func testGetTableCellOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetTableCellOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
      _ = try super.getApi().getTableCellOnline(request: request);
    }

    // Test for deleting cell.
    func testDeleteTableCell() throws {
      let remoteFileName = "TestDeleteTableCell.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableCellRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteTableCell(request: request);
    }

    // Test for deleting cell online.
    func testDeleteTableCellOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteTableCellOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
      _ = try super.getApi().deleteTableCellOnline(request: request);
    }

    // Test for adding cell.
    func testInsertTableCell() throws {
      let remoteFileName = "TestInsertTableCell.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestCell = TableCellInsert();
      let request = InsertTableCellRequest(name: remoteFileName, cell: requestCell, tableRowPath: "sections/0/tables/2/rows/0", folder: remoteDataFolder);
      let actual = try super.getApi().insertTableCell(request: request);
      if (!(actual.getCell() != nil)) { XCTFail("actual.getCell() != nil"); return; }
      if (!(actual.getCell()!.getNodeId() == "0.0.5.0.3")) { XCTFail("actual.getCell()!.getNodeId() == " + "0.0.5.0.3"); return; }
    }

    // Test for adding cell online.
    func testInsertTableCellOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestCell = TableCellInsert();
      let request = InsertTableCellOnlineRequest(document: requestDocument, cell: requestCell, tableRowPath: "sections/0/tables/2/rows/0");
      _ = try super.getApi().insertTableCellOnline(request: request);
    }

    // Test for getting cell format.
    func testGetTableCellFormat() throws {
      let remoteFileName = "TestGetTableCellFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableCellFormatRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getTableCellFormat(request: request);
      if (!(actual.getCellFormat() != nil)) { XCTFail("actual.getCellFormat() != nil"); return; }
      if (!(actual.getCellFormat()!.getWrapText() == true)) { XCTFail("actual.getCellFormat()!.getWrapText() == true"); return; }
    }

    // Test for getting cell format online.
    func testGetTableCellFormatOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetTableCellFormatOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
      _ = try super.getApi().getTableCellFormatOnline(request: request);
    }

    // Test for updating cell format.
    func testUpdateTableCellFormat() throws {
      let remoteFileName = "TestUpdateTableCellFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormat = TableCellFormat()
        .setBottomPadding(bottomPadding: 5.0)
        .setFitText(fitText: true)
        .setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first)
        .setWrapText(wrapText: true);
      let request = UpdateTableCellFormatRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, format: requestFormat, folder: remoteDataFolder);
      let actual = try super.getApi().updateTableCellFormat(request: request);
      if (!(actual.getCellFormat() != nil)) { XCTFail("actual.getCellFormat() != nil"); return; }
      if (!(actual.getCellFormat()!.getBottomPadding() == 5.0)) { XCTFail("actual.getCellFormat()!.getBottomPadding() == 5.0"); return; }
      if (!(actual.getCellFormat()!.getFitText() == true)) { XCTFail("actual.getCellFormat()!.getFitText() == true"); return; }
      if (!(actual.getCellFormat()!.getWrapText() == true)) { XCTFail("actual.getCellFormat()!.getWrapText() == true"); return; }
    }

    // Test for updating cell format online.
    func testUpdateTableCellFormatOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestFormat = TableCellFormat()
        .setBottomPadding(bottomPadding: 5)
        .setFitText(fitText: true)
        .setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first)
        .setWrapText(wrapText: true);
      let request = UpdateTableCellFormatOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", format: requestFormat, index: 0);
      _ = try super.getApi().updateTableCellFormatOnline(request: request);
    }

    // Test for table rendering.
    func testRenderTable() throws {
      let remoteFileName = "TestRenderTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderTableRequest(name: remoteFileName, format: "png", index: 0, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().renderTable(request: request);
    }

    // Test for table rendering.
    func testRenderTableOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = RenderTableOnlineRequest(document: requestDocument, format: "png", index: 0, nodePath: "");
      _ = try super.getApi().renderTableOnline(request: request);
    }

    // Test for table rendering without node path.
    func testRenderTableWithoutNodePath() throws {
      let remoteFileName = "TestRenderTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderTableRequest(name: remoteFileName, format: "png", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().renderTable(request: request);
    }
}
