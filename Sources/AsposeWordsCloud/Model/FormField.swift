/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormField.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// FromField.
public class FormField : NodeLink {
    // Field of name. FromField.
    private var _name : String? = nil;

    public var name : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    // Field of enabled. FromField.
    private var _enabled : Bool? = nil;

    public var enabled : Bool? {
        get {
            return self._enabled;
        }
        set {
            self._enabled = newValue;
        }
    }

    // Field of statusText. FromField.
    private var _statusText : String? = nil;

    public var statusText : String? {
        get {
            return self._statusText;
        }
        set {
            self._statusText = newValue;
        }
    }

    // Field of ownStatus. FromField.
    private var _ownStatus : Bool? = nil;

    public var ownStatus : Bool? {
        get {
            return self._ownStatus;
        }
        set {
            self._ownStatus = newValue;
        }
    }

    // Field of helpText. FromField.
    private var _helpText : String? = nil;

    public var helpText : String? {
        get {
            return self._helpText;
        }
        set {
            self._helpText = newValue;
        }
    }

    // Field of ownHelp. FromField.
    private var _ownHelp : Bool? = nil;

    public var ownHelp : Bool? {
        get {
            return self._ownHelp;
        }
        set {
            self._ownHelp = newValue;
        }
    }

    // Field of calculateOnExit. FromField.
    private var _calculateOnExit : Bool? = nil;

    public var calculateOnExit : Bool? {
        get {
            return self._calculateOnExit;
        }
        set {
            self._calculateOnExit = newValue;
        }
    }

    // Field of entryMacro. FromField.
    private var _entryMacro : String? = nil;

    public var entryMacro : String? {
        get {
            return self._entryMacro;
        }
        set {
            self._entryMacro = newValue;
        }
    }

    // Field of exitMacro. FromField.
    private var _exitMacro : String? = nil;

    public var exitMacro : String? {
        get {
            return self._exitMacro;
        }
        set {
            self._exitMacro = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case name = "Name";
        case enabled = "Enabled";
        case statusText = "StatusText";
        case ownStatus = "OwnStatus";
        case helpText = "HelpText";
        case ownHelp = "OwnHelp";
        case calculateOnExit = "CalculateOnExit";
        case entryMacro = "EntryMacro";
        case exitMacro = "ExitMacro";
        case invalidCodingKey;
    }

    internal override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.name = json["Name"] as? String;
        self.enabled = json["Enabled"] as? Bool;
        self.statusText = json["StatusText"] as? String;
        self.ownStatus = json["OwnStatus"] as? Bool;
        self.helpText = json["HelpText"] as? String;
        self.ownHelp = json["OwnHelp"] as? Bool;
        self.calculateOnExit = json["CalculateOnExit"] as? Bool;
        self.entryMacro = json["EntryMacro"] as? String;
        self.exitMacro = json["ExitMacro"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled);
        self.statusText = try container.decodeIfPresent(String.self, forKey: .statusText);
        self.ownStatus = try container.decodeIfPresent(Bool.self, forKey: .ownStatus);
        self.helpText = try container.decodeIfPresent(String.self, forKey: .helpText);
        self.ownHelp = try container.decodeIfPresent(Bool.self, forKey: .ownHelp);
        self.calculateOnExit = try container.decodeIfPresent(Bool.self, forKey: .calculateOnExit);
        self.entryMacro = try container.decodeIfPresent(String.self, forKey: .entryMacro);
        self.exitMacro = try container.decodeIfPresent(String.self, forKey: .exitMacro);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.enabled != nil) {
            try container.encode(self.enabled, forKey: .enabled);
        }
        if (self.statusText != nil) {
            try container.encode(self.statusText, forKey: .statusText);
        }
        if (self.ownStatus != nil) {
            try container.encode(self.ownStatus, forKey: .ownStatus);
        }
        if (self.helpText != nil) {
            try container.encode(self.helpText, forKey: .helpText);
        }
        if (self.ownHelp != nil) {
            try container.encode(self.ownHelp, forKey: .ownHelp);
        }
        if (self.calculateOnExit != nil) {
            try container.encode(self.calculateOnExit, forKey: .calculateOnExit);
        }
        if (self.entryMacro != nil) {
            try container.encode(self.entryMacro, forKey: .entryMacro);
        }
        if (self.exitMacro != nil) {
            try container.encode(self.exitMacro, forKey: .exitMacro);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.name == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "name");
        }
    }

    // Sets name. Gets or sets the form field name.
    public func setName(name : String?) -> FormField {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the form field name.
    public func getName() -> String? {
        return self.name;
    }


    // Sets enabled. Gets or sets a value indicating whether a form field is enabled. If a form field is enabled, its contents can be changed as the form is filled in.
    public func setEnabled(enabled : Bool?) -> FormField {
        self.enabled = enabled;
        return self;
    }

    // Gets enabled. Gets or sets a value indicating whether a form field is enabled. If a form field is enabled, its contents can be changed as the form is filled in.
    public func getEnabled() -> Bool? {
        return self.enabled;
    }


    // Sets statusText. Gets or sets text, displayed in the status bar when a form field has the focus. If the OwnStatus property is set to true, the StatusText property specifies the status bar text. If the OwnStatus property is set to false, the StatusText property specifies the name of an AutoText entry that contains status bar text for the form field.
    public func setStatusText(statusText : String?) -> FormField {
        self.statusText = statusText;
        return self;
    }

    // Gets statusText. Gets or sets text, displayed in the status bar when a form field has the focus. If the OwnStatus property is set to true, the StatusText property specifies the status bar text. If the OwnStatus property is set to false, the StatusText property specifies the name of an AutoText entry that contains status bar text for the form field.
    public func getStatusText() -> String? {
        return self.statusText;
    }


    // Sets ownStatus. Gets or sets a value indicating whether the source of the text that's displayed in the status bar when a form field has the focus. If true, the text specified by the StatusText property is displayed. If false, the text of the AutoText entry specified by the StatusText property is displayed.
    public func setOwnStatus(ownStatus : Bool?) -> FormField {
        self.ownStatus = ownStatus;
        return self;
    }

    // Gets ownStatus. Gets or sets a value indicating whether the source of the text that's displayed in the status bar when a form field has the focus. If true, the text specified by the StatusText property is displayed. If false, the text of the AutoText entry specified by the StatusText property is displayed.
    public func getOwnStatus() -> Bool? {
        return self.ownStatus;
    }


    // Sets helpText. Gets or sets text, displayed in a message box when the form field has the focus and the user presses F1. If the OwnHelp property is set to True, HelpText specifies the text string value. If OwnHelp is set to False, HelpText specifies the name of an AutoText entry that contains help text for the form field.
    public func setHelpText(helpText : String?) -> FormField {
        self.helpText = helpText;
        return self;
    }

    // Gets helpText. Gets or sets text, displayed in a message box when the form field has the focus and the user presses F1. If the OwnHelp property is set to True, HelpText specifies the text string value. If OwnHelp is set to False, HelpText specifies the name of an AutoText entry that contains help text for the form field.
    public func getHelpText() -> String? {
        return self.helpText;
    }


    // Sets ownHelp. Gets or sets a value indicating whether the source of the text that's displayed in a message box when a form field has the focus and the user presses F1. If true, the text specified by the HelpText property is displayed. If False, the text in the AutoText entry specified by the HelpText property is displayed.
    public func setOwnHelp(ownHelp : Bool?) -> FormField {
        self.ownHelp = ownHelp;
        return self;
    }

    // Gets ownHelp. Gets or sets a value indicating whether the source of the text that's displayed in a message box when a form field has the focus and the user presses F1. If true, the text specified by the HelpText property is displayed. If False, the text in the AutoText entry specified by the HelpText property is displayed.
    public func getOwnHelp() -> Bool? {
        return self.ownHelp;
    }


    // Sets calculateOnExit. Gets or sets a value indicating whether references to the specified form field are automatically updated whenever the field is exited. Setting CalculateOnExit only affects the behavior of the form field when the document is opened in Microsoft Word. Aspose.Words never updates references to the form field.
    public func setCalculateOnExit(calculateOnExit : Bool?) -> FormField {
        self.calculateOnExit = calculateOnExit;
        return self;
    }

    // Gets calculateOnExit. Gets or sets a value indicating whether references to the specified form field are automatically updated whenever the field is exited. Setting CalculateOnExit only affects the behavior of the form field when the document is opened in Microsoft Word. Aspose.Words never updates references to the form field.
    public func getCalculateOnExit() -> Bool? {
        return self.calculateOnExit;
    }


    // Sets entryMacro. Gets or sets the entry macro name for the form field. The entry macro runs when the form field gets the focus in Microsoft Word.
    public func setEntryMacro(entryMacro : String?) -> FormField {
        self.entryMacro = entryMacro;
        return self;
    }

    // Gets entryMacro. Gets or sets the entry macro name for the form field. The entry macro runs when the form field gets the focus in Microsoft Word.
    public func getEntryMacro() -> String? {
        return self.entryMacro;
    }


    // Sets exitMacro. Gets or sets the exit macro name for the form field. The exit macro runs when the form field loses the focus in Microsoft Word.
    public func setExitMacro(exitMacro : String?) -> FormField {
        self.exitMacro = exitMacro;
        return self;
    }

    // Gets exitMacro. Gets or sets the exit macro name for the form field. The exit macro runs when the form field loses the focus in Microsoft Word.
    public func getExitMacro() -> String? {
        return self.exitMacro;
    }
}
