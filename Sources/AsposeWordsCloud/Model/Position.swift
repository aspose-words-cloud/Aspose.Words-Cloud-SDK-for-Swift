/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Position.swift">
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

// Describes the location of the node.
public class Position : Codable, WordsApiModel {
    // Field of nodeId. Describes the location of the node.
    private var _nodeId : String? = nil;

    public var nodeId : String? {
        get {
            return self._nodeId;
        }
        set {
            self._nodeId = newValue;
        }
    }

    // Field of type. Describes the location of the node.
    private final let _type : String? = nil;

    public var type : String? {
        get {
            return self._type;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case nodeId = "NodeId";
        case type = "Type";
        case invalidCodingKey;
    }

    internal init() {
    }

    public required init(from json: [String: Any]) throws {
        self.nodeId = json["NodeId"] as? String;

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.nodeId = try container.decodeIfPresent(String.self, forKey: .nodeId);

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.nodeId != nil) {
            try container.encode(self.nodeId, forKey: .nodeId);
        }
        if (self.type != nil) {
            try container.encode(self.type, forKey: .type);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.nodeId == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "nodeId");
        }
    }

    // Sets nodeId. Gets or sets the node id.
    public func setNodeId(nodeId : String?) -> Position {
        self.nodeId = nodeId;
        return self;
    }

    // Gets nodeId. Gets or sets the node id.
    public func getNodeId() -> String? {
        return self.nodeId;
    }


    // Gets type. Gets position type.
    public func getType() -> String? {
        return self.type;
    }
}
