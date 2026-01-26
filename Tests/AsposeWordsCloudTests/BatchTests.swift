/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BatchTests.swift">
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

// Example of how to use batch requests.
class BatchTests: BaseTestContext {
    static var allTests = [
        ("testBatch1", testBatch1),
        ("testBatch2", testBatch2)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Paragraphs";
    let localFile = "Common/test_multi_pages.docx";
    let reportingFolder = "DocumentActions/Reporting";

    // Test for simple batch request.
    func testBatch1() throws {
        let remoteFileName = "TestGetDocumentParagraphByIndex.docx";

        try super.uploadFile(
            fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), 
            path: remoteDataFolder + "/" + remoteFileName
        );

        let request1 = BatchRequest(request: GetParagraphsRequest(
            name: remoteFileName,
            nodePath: "sections/0",
            folder: remoteDataFolder
        ));

        var request2 = BatchRequest(request: GetParagraphRequest(
            name: remoteFileName,
            index: 0,
            nodePath: "sections/0",
            folder: remoteDataFolder
        ));

        let request3Body = ParagraphInsert();
        _ = request3Body.setText(text: "This is a new paragraph for your document");

        var request3 = BatchRequest(request: InsertParagraphRequest(
            name: remoteFileName,
            paragraph: request3Body,
            nodePath: "sections/0",
            folder: remoteDataFolder
        ));

        var request4 = BatchRequest(request: DeleteParagraphRequest(
            name: remoteFileName,
            index: 0,
            nodePath: "",
            folder: remoteDataFolder
        ));

        let localDataFile = try String(contentsOf: self.getLocalTestDataFolder().appendingPathComponent(reportingFolder + "/ReportData.json", isDirectory: false));
        let requestReportEngineSettings = ReportEngineSettings();
        _ = requestReportEngineSettings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
        _ = requestReportEngineSettings.setDataSourceName(dataSourceName: "persons");

        var request5 = BatchRequest(request: BuildReportOnlineRequest(
            template: request4.resultOf(),
            data: localDataFile, 
            reportEngineSettings: requestReportEngineSettings
        ));

        request5.setDependsOn(request: request4);
        request4.setDependsOn(request: request3);
        request3.setDependsOn(request: request2);
        request2.setDependsOn(request: request1);

        let result = try super.getApi().batch(requests: [request1, request2, request3, request4, request5]);
        if (!(result.count == 5)) {
            XCTFail("result.count == 5");
            return;
        }

        if (!(result[0] is ParagraphLinkCollectionResponse)) {
            XCTFail("result[0] is ParagraphLinkCollectionResponse");
            return;
        }

        if (!(result[1] is ParagraphResponse)) {
            XCTFail("result[1] is ParagraphResponse");
            return;
        }

        if (!(result[2] is ParagraphResponse)) {
            XCTFail("result[2] is ParagraphResponse");
            return;
        }

        if (!(result[3] == nil)) {
            XCTFail("result[3] == nil");
            return;
        }

        if (!(result[4] is Data)) {
            XCTFail("result[4] is Data");
            return;
        }
    }

    // Test for simple batch request.
    func testBatch2() throws {
        let remoteFileName = "TestBatchWithoutIntermediateResults.docx";

        try super.uploadFile(
            fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), 
            path: remoteDataFolder + "/" + remoteFileName
        );

        let request1 = BatchRequest(request: GetParagraphsRequest(
            name: remoteFileName,
            nodePath: "sections/0",
            folder: remoteDataFolder
        ));

        var request2 = BatchRequest(request: GetParagraphRequest(
            name: remoteFileName,
            index: 0,
            nodePath: "sections/0",
            folder: remoteDataFolder
        ));

        let request3Body = ParagraphInsert();
        _ = request3Body.setText(text: "This is a new paragraph for your document");

        var request3 = BatchRequest(request: InsertParagraphRequest(
            name: remoteFileName,
            paragraph: request3Body,
            nodePath: "sections/0",
            folder: remoteDataFolder
        ));

        var request4 = BatchRequest(request: DeleteParagraphRequest(
            name: remoteFileName,
            index: 0,
            nodePath: "",
            folder: remoteDataFolder
        ));

        let localDataFile = try String(contentsOf: self.getLocalTestDataFolder().appendingPathComponent(reportingFolder + "/ReportData.json", isDirectory: false));
        let requestReportEngineSettings = ReportEngineSettings();
        _ = requestReportEngineSettings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
        _ = requestReportEngineSettings.setDataSourceName(dataSourceName: "persons");

        var request5 = BatchRequest(request: BuildReportOnlineRequest(
            template: request4.resultOf(),
            data: localDataFile, 
            reportEngineSettings: requestReportEngineSettings
        ));

        request5.setDependsOn(request: request4);
        request4.setDependsOn(request: request3);
        request3.setDependsOn(request: request2);
        request2.setDependsOn(request: request1);

        let result = try super.getApi().batch(requests: [request1, request2, request3, request4, request5], displayIntermediateResults: false);
        if (!(result.count == 1)) {
            XCTFail("result.count == 1");
            return;
        }

        if (!(result[0] is Data)) {
            XCTFail("result[0] is Data");
            return;
        }
    }
}
