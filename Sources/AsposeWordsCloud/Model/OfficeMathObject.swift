/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OfficeMathObject.swift">
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

// DTO container with an OfficeMath object.
public class OfficeMathObject : OfficeMathLink {
    // Gets or sets the display format type of the OfficeMath object. This display format defines whether an equation is displayed inline with the text or displayed on its own line.
    // Display format type has effect for top level Office Math only.Returned display format type is always Inline for nested Office Math.
    public enum DisplayType : String, Codable
    {
        // Enum value "display"
        case display = "Display"

        // Enum value "inline"
        case inline = "Inline"
    }

    // Gets or sets the justification of the OfficeMath object.
    // Justification cannot be set to the Office Math with display format type Inline.Inline justification cannot be set to the Office Math with display format type Display.Corresponding DisplayType has to be set before setting Office Math justification.
    public enum Justification : String, Codable
    {
        // Enum value "centerGroup"
        case centerGroup = "CenterGroup"

        // Enum value "_default"
        case _default = "Default"

        // Enum value "center"
        case center = "Center"

        // Enum value "_left"
        case _left = "Left"

        // Enum value "_right"
        case _right = "Right"

        // Enum value "inline"
        case inline = "Inline"
    }

    // Gets or sets the type of the OfficeMath object.
    public enum MathObjectType : String, Codable
    {
        // Enum value "oMath"
        case oMath = "OMath"

        // Enum value "oMathPara"
        case oMathPara = "OMathPara"

        // Enum value "accent"
        case accent = "Accent"

        // Enum value "bar"
        case bar = "Bar"

        // Enum value "borderBox"
        case borderBox = "BorderBox"

        // Enum value "box"
        case box = "Box"

        // Enum value "delimiter"
        case delimiter = "Delimiter"

        // Enum value "degree"
        case degree = "Degree"

        // Enum value "argument"
        case argument = "Argument"

        // Enum value "array"
        case array = "Array"

        // Enum value "fraction"
        case fraction = "Fraction"

        // Enum value "denominator"
        case denominator = "Denominator"

        // Enum value "numerator"
        case numerator = "Numerator"

        // Enum value "function"
        case function = "Function"

        // Enum value "functionName"
        case functionName = "FunctionName"

        // Enum value "groupCharacter"
        case groupCharacter = "GroupCharacter"

        // Enum value "limit"
        case limit = "Limit"

        // Enum value "lowerLimit"
        case lowerLimit = "LowerLimit"

        // Enum value "upperLimit"
        case upperLimit = "UpperLimit"

        // Enum value "matrix"
        case matrix = "Matrix"

        // Enum value "matrixRow"
        case matrixRow = "MatrixRow"

        // Enum value "nAry"
        case nAry = "NAry"

        // Enum value "phantom"
        case phantom = "Phantom"

        // Enum value "radical"
        case radical = "Radical"

        // Enum value "subscriptPart"
        case subscriptPart = "SubscriptPart"

        // Enum value "superscriptPart"
        case superscriptPart = "SuperscriptPart"

        // Enum value "preSubSuperscript"
        case preSubSuperscript = "PreSubSuperscript"

        // Enum value "_subscript"
        case _subscript = "Subscript"

        // Enum value "subSuperscript"
        case subSuperscript = "SubSuperscript"

        // Enum value "superscript"
        case superscript = "Superscript"

        // Enum value "_none"
        case _none = "None"
    }

    // Field of content. DTO container with an OfficeMath object.
    private var _content : StoryChildNodes? = nil;

    public var content : StoryChildNodes? {
        get {
            return self._content;
        }
        set {
            self._content = newValue;
        }
    }

    // Field of displayType. DTO container with an OfficeMath object.
    private var _displayType : DisplayType? = nil;

    public var displayType : DisplayType? {
        get {
            return self._displayType;
        }
        set {
            self._displayType = newValue;
        }
    }

    // Field of justification. DTO container with an OfficeMath object.
    private var _justification : Justification? = nil;

    public var justification : Justification? {
        get {
            return self._justification;
        }
        set {
            self._justification = newValue;
        }
    }

    // Field of mathObjectType. DTO container with an OfficeMath object.
    private var _mathObjectType : MathObjectType? = nil;

    public var mathObjectType : MathObjectType? {
        get {
            return self._mathObjectType;
        }
        set {
            self._mathObjectType = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case content = "Content";
        case displayType = "DisplayType";
        case justification = "Justification";
        case mathObjectType = "MathObjectType";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_content = json["Content"] as? [String: Any] {
            self.content = try ObjectSerializer.deserialize(type: StoryChildNodes.self, from: raw_content);
        }

        if let raw_displayType = json["DisplayType"] as? String {
            self.displayType = DisplayType(rawValue: raw_displayType);
        }

        if let raw_justification = json["Justification"] as? String {
            self.justification = Justification(rawValue: raw_justification);
        }

        if let raw_mathObjectType = json["MathObjectType"] as? String {
            self.mathObjectType = MathObjectType(rawValue: raw_mathObjectType);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.content = try container.decodeIfPresent(StoryChildNodes.self, forKey: .content);
        self.displayType = try container.decodeIfPresent(DisplayType.self, forKey: .displayType);
        self.justification = try container.decodeIfPresent(Justification.self, forKey: .justification);
        self.mathObjectType = try container.decodeIfPresent(MathObjectType.self, forKey: .mathObjectType);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.content != nil) {
            try container.encode(self.content, forKey: .content);
        }
        if (self.displayType != nil) {
            try container.encode(self.displayType, forKey: .displayType);
        }
        if (self.justification != nil) {
            try container.encode(self.justification, forKey: .justification);
        }
        if (self.mathObjectType != nil) {
            try container.encode(self.mathObjectType, forKey: .mathObjectType);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        try self.content?.validate();

    }

    // Sets content. Gets or sets the content of a footnote.
    public func setContent(content : StoryChildNodes?) -> OfficeMathObject {
        self.content = content;
        return self;
    }

    // Gets content. Gets or sets the content of a footnote.
    public func getContent() -> StoryChildNodes? {
        return self.content;
    }


    // Sets displayType. Gets or sets the display format type of the OfficeMath object. This display format defines whether an equation is displayed inline with the text or displayed on its own line. Display format type has effect for top level Office Math only.Returned display format type is always Inline for nested Office Math.
    public func setDisplayType(displayType : DisplayType?) -> OfficeMathObject {
        self.displayType = displayType;
        return self;
    }

    // Gets displayType. Gets or sets the display format type of the OfficeMath object. This display format defines whether an equation is displayed inline with the text or displayed on its own line. Display format type has effect for top level Office Math only.Returned display format type is always Inline for nested Office Math.
    public func getDisplayType() -> DisplayType? {
        return self.displayType;
    }


    // Sets justification. Gets or sets the justification of the OfficeMath object. Justification cannot be set to the Office Math with display format type Inline.Inline justification cannot be set to the Office Math with display format type Display.Corresponding DisplayType has to be set before setting Office Math justification.
    public func setJustification(justification : Justification?) -> OfficeMathObject {
        self.justification = justification;
        return self;
    }

    // Gets justification. Gets or sets the justification of the OfficeMath object. Justification cannot be set to the Office Math with display format type Inline.Inline justification cannot be set to the Office Math with display format type Display.Corresponding DisplayType has to be set before setting Office Math justification.
    public func getJustification() -> Justification? {
        return self.justification;
    }


    // Sets mathObjectType. Gets or sets the type of the OfficeMath object.
    public func setMathObjectType(mathObjectType : MathObjectType?) -> OfficeMathObject {
        self.mathObjectType = mathObjectType;
        return self;
    }

    // Gets mathObjectType. Gets or sets the type of the OfficeMath object.
    public func getMathObjectType() -> MathObjectType? {
        return self.mathObjectType;
    }
}
