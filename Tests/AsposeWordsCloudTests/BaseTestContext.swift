/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BaseTestContext.swift">
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
class BaseTestContext: XCTestCase {
    private var api : WordsAPI?;
    private var baseFolder : URL?;

    public func getApi() -> WordsAPI {
        return self.api!;
    }

    public func getLocalBaseFolder() -> URL {
        return self.baseFolder!;
    }

    public func getLocalTestDataFolder() -> URL {
        return self.baseFolder!.appendingPathComponent("TestData", isDirectory: true);
    }

    public static func getRemoteTestDataFolder() -> String {
        return "Temp/SdkTests/Swift/TestData";
    }

    public static func getRemoteTestOut() -> String {
        return "TestOut/Swift";
    }

    public func uploadFile(fileContent : URL, path : String) throws {
        let req = UploadFileRequest(fileContent: InputStream(url: fileContent)!, path: path);
        let res = try getApi().uploadFile(request: req);
        XCTAssertEqual(res.getErrors()?.count, 0);
        XCTAssertEqual(res.getUploaded()?.count, 1);
    }

    override func setUp() {
        if (self.api == nil) {
            self.baseFolder = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent();

            let credsUrl = self.baseFolder!
                .appendingPathComponent("Settings", isDirectory: true)
                .appendingPathComponent("servercreds.json", isDirectory: false);

            do {
                let credsData = try Data(contentsOf: credsUrl);
                let config = try ObjectSerializer.deserializeInternal(type: Configuration.self, from: credsData);
                self.api = try WordsAPI(configuration: config);
            }
            catch {
                XCTFail("File servercreds.json not found in Settings folder of project root.");
            }
        }
    }

    override func tearDown() {

    }
}
