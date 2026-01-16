/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="EncryptTests.swift">
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
class EncryptTests: BaseTestContext {
    static var allTests = [
        ("testEncrypt", testEncrypt),
        ("testIsEncryptionAllowed", testIsEncryptionAllowed)
    ];

    // Test for encrypt.
    func testEncrypt() throws {

#if os(Linux)        
        var thrownError: Error?

        XCTAssertThrowsError(try super.getApi().encrypt(data: "12345")) {
            thrownError = $0
        }

        XCTAssertTrue(
            thrownError is WordsApiError,
            "Unexpected error type: \(type(of: thrownError))"
        )
#else          
        let result = try super.getApi().encrypt(data: "12345");

        XCTAssertFalse(result.isEmpty);
#endif
    }

    // Test for isEncrypted.
    func testIsEncryptionAllowed() throws {

        let result = super.getApi().isEncryptionAllowed();

#if os(Linux) 
        XCTAssertFalse(result);
#else
        XCTAssertTrue(result);
#endif     
    }

}
