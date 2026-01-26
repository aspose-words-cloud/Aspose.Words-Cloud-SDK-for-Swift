/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TabStopBase.swift">
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

// Base class for paragraph format tab stop DTO.
public class TabStopBase : Codable, WordsApiModel {
    // Gets or sets the alignment of text at this tab stop.
    public enum Alignment : String, Codable
    {
        // Enum value "_left"
        case _left = "Left"

        // Enum value "center"
        case center = "Center"

        // Enum value "_right"
        case _right = "Right"

        // Enum value "decimal"
        case decimal = "Decimal"

        // Enum value "bar"
        case bar = "Bar"

        // Enum value "list"
        case list = "List"

        // Enum value "clear"
        case clear = "Clear"
    }

    // Gets or sets the type of the leader line displayed under the tab character.
    public enum Leader : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "dots"
        case dots = "Dots"

        // Enum value "dashes"
        case dashes = "Dashes"

        // Enum value "line"
        case line = "Line"

        // Enum value "heavy"
        case heavy = "Heavy"

        // Enum value "middleDot"
        case middleDot = "MiddleDot"
    }

    // Field of alignment. Base class for paragraph format tab stop DTO.
    private var _alignment : Alignment? = nil;

    public var alignment : Alignment? {
        get {
            return self._alignment;
        }
        set {
            self._alignment = newValue;
        }
    }

    // Field of leader. Base class for paragraph format tab stop DTO.
    private var _leader : Leader? = nil;

    public var leader : Leader? {
        get {
            return self._leader;
        }
        set {
            self._leader = newValue;
        }
    }

    // Field of position. Base class for paragraph format tab stop DTO.
    private var _position : Double? = nil;

    public var position : Double? {
        get {
            return self._position;
        }
        set {
            self._position = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case alignment = "Alignment";
        case leader = "Leader";
        case position = "Position";
        case invalidCodingKey;
    }

    internal init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_alignment = json["Alignment"] as? String {
            self.alignment = Alignment(rawValue: raw_alignment);
        }

        if let raw_leader = json["Leader"] as? String {
            self.leader = Leader(rawValue: raw_leader);
        }

        self.position = json["Position"] as? Double;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alignment = try container.decodeIfPresent(Alignment.self, forKey: .alignment);
        self.leader = try container.decodeIfPresent(Leader.self, forKey: .leader);
        self.position = try container.decodeIfPresent(Double.self, forKey: .position);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alignment != nil) {
            try container.encode(self.alignment, forKey: .alignment);
        }
        if (self.leader != nil) {
            try container.encode(self.leader, forKey: .leader);
        }
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.alignment == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "alignment");
        }
        if (self.leader == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "leader");
        }
        if (self.position == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "position");
        }
    }

    // Sets alignment. Gets or sets the alignment of text at this tab stop.
    public func setAlignment(alignment : Alignment?) -> TabStopBase {
        self.alignment = alignment;
        return self;
    }

    // Gets alignment. Gets or sets the alignment of text at this tab stop.
    public func getAlignment() -> Alignment? {
        return self.alignment;
    }


    // Sets leader. Gets or sets the type of the leader line displayed under the tab character.
    public func setLeader(leader : Leader?) -> TabStopBase {
        self.leader = leader;
        return self;
    }

    // Gets leader. Gets or sets the type of the leader line displayed under the tab character.
    public func getLeader() -> Leader? {
        return self.leader;
    }


    // Sets position. Gets or sets the position of the tab stop in points.
    public func setPosition(position : Double?) -> TabStopBase {
        self.position = position;
        return self;
    }

    // Gets position. Gets or sets the position of the tab stop in points.
    public func getPosition() -> Double? {
        return self.position;
    }
}
