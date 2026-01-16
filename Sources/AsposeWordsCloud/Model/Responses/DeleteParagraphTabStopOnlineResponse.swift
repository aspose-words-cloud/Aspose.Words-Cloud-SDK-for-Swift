/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DeleteParagraphTabStopOnlineResponse.swift">
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

import Foundation

// Response model for deleteParagraphTabStopOnline operation.
public class DeleteParagraphTabStopOnlineResponse {
    private let model : TabStopsResponse?;
    private let document : [String: Data]?;

    private enum CodingKeys: String, CodingKey {
        case model;
        case document;
        case invalidCodingKey;
    }

    // Initializes a new instance of the DeleteParagraphTabStopOnlineResponse class.
    public init(model : TabStopsResponse?, document : [String: Data]?) {
        self.model = model;
        self.document = document;
    }

    // The REST response with an array of tab stops.
    // This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs/{0}/tabstops" REST API requests.
    public func getModel() -> TabStopsResponse? {
        return self.model;
    }

    // The document after modification.
    public func getDocument() -> [String: Data]? {
        return self.document;
    }
}
