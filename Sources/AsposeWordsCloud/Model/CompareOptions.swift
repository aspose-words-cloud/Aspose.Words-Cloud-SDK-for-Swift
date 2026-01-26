/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompareOptions.swift">
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

// DTO container with compare documents options.
public class CompareOptions : Codable, WordsApiModel {
    // Gets or sets the option indicating whether changes are tracked by character or by word.
    public enum Granularity : String, Codable
    {
        // Enum value "charLevel"
        case charLevel = "CharLevel"

        // Enum value "wordLevel"
        case wordLevel = "WordLevel"
    }

    // Gets or sets the option that controls which document shall be used as a target during comparison.
    public enum Target : String, Codable
    {
        // Enum value "current"
        case current = "Current"

        // Enum value "new"
        case new = "New"
    }

    // Field of acceptAllRevisionsBeforeComparison. DTO container with compare documents options.
    private var _acceptAllRevisionsBeforeComparison : Bool? = nil;

    public var acceptAllRevisionsBeforeComparison : Bool? {
        get {
            return self._acceptAllRevisionsBeforeComparison;
        }
        set {
            self._acceptAllRevisionsBeforeComparison = newValue;
        }
    }

    // Field of granularity. DTO container with compare documents options.
    private var _granularity : Granularity? = nil;

    public var granularity : Granularity? {
        get {
            return self._granularity;
        }
        set {
            self._granularity = newValue;
        }
    }

    // Field of ignoreCaseChanges. DTO container with compare documents options.
    private var _ignoreCaseChanges : Bool? = nil;

    public var ignoreCaseChanges : Bool? {
        get {
            return self._ignoreCaseChanges;
        }
        set {
            self._ignoreCaseChanges = newValue;
        }
    }

    // Field of ignoreComments. DTO container with compare documents options.
    private var _ignoreComments : Bool? = nil;

    public var ignoreComments : Bool? {
        get {
            return self._ignoreComments;
        }
        set {
            self._ignoreComments = newValue;
        }
    }

    // Field of ignoreFields. DTO container with compare documents options.
    private var _ignoreFields : Bool? = nil;

    public var ignoreFields : Bool? {
        get {
            return self._ignoreFields;
        }
        set {
            self._ignoreFields = newValue;
        }
    }

    // Field of ignoreFootnotes. DTO container with compare documents options.
    private var _ignoreFootnotes : Bool? = nil;

    public var ignoreFootnotes : Bool? {
        get {
            return self._ignoreFootnotes;
        }
        set {
            self._ignoreFootnotes = newValue;
        }
    }

    // Field of ignoreFormatting. DTO container with compare documents options.
    private var _ignoreFormatting : Bool? = nil;

    public var ignoreFormatting : Bool? {
        get {
            return self._ignoreFormatting;
        }
        set {
            self._ignoreFormatting = newValue;
        }
    }

    // Field of ignoreHeadersAndFooters. DTO container with compare documents options.
    private var _ignoreHeadersAndFooters : Bool? = nil;

    public var ignoreHeadersAndFooters : Bool? {
        get {
            return self._ignoreHeadersAndFooters;
        }
        set {
            self._ignoreHeadersAndFooters = newValue;
        }
    }

    // Field of ignoreTables. DTO container with compare documents options.
    private var _ignoreTables : Bool? = nil;

    public var ignoreTables : Bool? {
        get {
            return self._ignoreTables;
        }
        set {
            self._ignoreTables = newValue;
        }
    }

    // Field of ignoreTextboxes. DTO container with compare documents options.
    private var _ignoreTextboxes : Bool? = nil;

    public var ignoreTextboxes : Bool? {
        get {
            return self._ignoreTextboxes;
        }
        set {
            self._ignoreTextboxes = newValue;
        }
    }

    // Field of target. DTO container with compare documents options.
    private var _target : Target? = nil;

    public var target : Target? {
        get {
            return self._target;
        }
        set {
            self._target = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case acceptAllRevisionsBeforeComparison = "AcceptAllRevisionsBeforeComparison";
        case granularity = "Granularity";
        case ignoreCaseChanges = "IgnoreCaseChanges";
        case ignoreComments = "IgnoreComments";
        case ignoreFields = "IgnoreFields";
        case ignoreFootnotes = "IgnoreFootnotes";
        case ignoreFormatting = "IgnoreFormatting";
        case ignoreHeadersAndFooters = "IgnoreHeadersAndFooters";
        case ignoreTables = "IgnoreTables";
        case ignoreTextboxes = "IgnoreTextboxes";
        case target = "Target";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.acceptAllRevisionsBeforeComparison = json["AcceptAllRevisionsBeforeComparison"] as? Bool;
        if let raw_granularity = json["Granularity"] as? String {
            self.granularity = Granularity(rawValue: raw_granularity);
        }

        self.ignoreCaseChanges = json["IgnoreCaseChanges"] as? Bool;
        self.ignoreComments = json["IgnoreComments"] as? Bool;
        self.ignoreFields = json["IgnoreFields"] as? Bool;
        self.ignoreFootnotes = json["IgnoreFootnotes"] as? Bool;
        self.ignoreFormatting = json["IgnoreFormatting"] as? Bool;
        self.ignoreHeadersAndFooters = json["IgnoreHeadersAndFooters"] as? Bool;
        self.ignoreTables = json["IgnoreTables"] as? Bool;
        self.ignoreTextboxes = json["IgnoreTextboxes"] as? Bool;
        if let raw_target = json["Target"] as? String {
            self.target = Target(rawValue: raw_target);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.acceptAllRevisionsBeforeComparison = try container.decodeIfPresent(Bool.self, forKey: .acceptAllRevisionsBeforeComparison);
        self.granularity = try container.decodeIfPresent(Granularity.self, forKey: .granularity);
        self.ignoreCaseChanges = try container.decodeIfPresent(Bool.self, forKey: .ignoreCaseChanges);
        self.ignoreComments = try container.decodeIfPresent(Bool.self, forKey: .ignoreComments);
        self.ignoreFields = try container.decodeIfPresent(Bool.self, forKey: .ignoreFields);
        self.ignoreFootnotes = try container.decodeIfPresent(Bool.self, forKey: .ignoreFootnotes);
        self.ignoreFormatting = try container.decodeIfPresent(Bool.self, forKey: .ignoreFormatting);
        self.ignoreHeadersAndFooters = try container.decodeIfPresent(Bool.self, forKey: .ignoreHeadersAndFooters);
        self.ignoreTables = try container.decodeIfPresent(Bool.self, forKey: .ignoreTables);
        self.ignoreTextboxes = try container.decodeIfPresent(Bool.self, forKey: .ignoreTextboxes);
        self.target = try container.decodeIfPresent(Target.self, forKey: .target);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.acceptAllRevisionsBeforeComparison != nil) {
            try container.encode(self.acceptAllRevisionsBeforeComparison, forKey: .acceptAllRevisionsBeforeComparison);
        }
        if (self.granularity != nil) {
            try container.encode(self.granularity, forKey: .granularity);
        }
        if (self.ignoreCaseChanges != nil) {
            try container.encode(self.ignoreCaseChanges, forKey: .ignoreCaseChanges);
        }
        if (self.ignoreComments != nil) {
            try container.encode(self.ignoreComments, forKey: .ignoreComments);
        }
        if (self.ignoreFields != nil) {
            try container.encode(self.ignoreFields, forKey: .ignoreFields);
        }
        if (self.ignoreFootnotes != nil) {
            try container.encode(self.ignoreFootnotes, forKey: .ignoreFootnotes);
        }
        if (self.ignoreFormatting != nil) {
            try container.encode(self.ignoreFormatting, forKey: .ignoreFormatting);
        }
        if (self.ignoreHeadersAndFooters != nil) {
            try container.encode(self.ignoreHeadersAndFooters, forKey: .ignoreHeadersAndFooters);
        }
        if (self.ignoreTables != nil) {
            try container.encode(self.ignoreTables, forKey: .ignoreTables);
        }
        if (self.ignoreTextboxes != nil) {
            try container.encode(self.ignoreTextboxes, forKey: .ignoreTextboxes);
        }
        if (self.target != nil) {
            try container.encode(self.target, forKey: .target);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
    }

    // Sets acceptAllRevisionsBeforeComparison. Gets or sets whether accept revisions before comparison or not.
    public func setAcceptAllRevisionsBeforeComparison(acceptAllRevisionsBeforeComparison : Bool?) -> CompareOptions {
        self.acceptAllRevisionsBeforeComparison = acceptAllRevisionsBeforeComparison;
        return self;
    }

    // Gets acceptAllRevisionsBeforeComparison. Gets or sets whether accept revisions before comparison or not.
    public func getAcceptAllRevisionsBeforeComparison() -> Bool? {
        return self.acceptAllRevisionsBeforeComparison;
    }


    // Sets granularity. Gets or sets the option indicating whether changes are tracked by character or by word.
    public func setGranularity(granularity : Granularity?) -> CompareOptions {
        self.granularity = granularity;
        return self;
    }

    // Gets granularity. Gets or sets the option indicating whether changes are tracked by character or by word.
    public func getGranularity() -> Granularity? {
        return self.granularity;
    }


    // Sets ignoreCaseChanges. Gets or sets a value indicating whether documents comparison is case insensitive. By default comparison is case sensitive.
    public func setIgnoreCaseChanges(ignoreCaseChanges : Bool?) -> CompareOptions {
        self.ignoreCaseChanges = ignoreCaseChanges;
        return self;
    }

    // Gets ignoreCaseChanges. Gets or sets a value indicating whether documents comparison is case insensitive. By default comparison is case sensitive.
    public func getIgnoreCaseChanges() -> Bool? {
        return self.ignoreCaseChanges;
    }


    // Sets ignoreComments. Gets or sets a value indicating whether comments content is ignored. By default comments are not ignored.
    public func setIgnoreComments(ignoreComments : Bool?) -> CompareOptions {
        self.ignoreComments = ignoreComments;
        return self;
    }

    // Gets ignoreComments. Gets or sets a value indicating whether comments content is ignored. By default comments are not ignored.
    public func getIgnoreComments() -> Bool? {
        return self.ignoreComments;
    }


    // Sets ignoreFields. Gets or sets a value indicating whether fields content is ignored. By default fields are not ignored.
    public func setIgnoreFields(ignoreFields : Bool?) -> CompareOptions {
        self.ignoreFields = ignoreFields;
        return self;
    }

    // Gets ignoreFields. Gets or sets a value indicating whether fields content is ignored. By default fields are not ignored.
    public func getIgnoreFields() -> Bool? {
        return self.ignoreFields;
    }


    // Sets ignoreFootnotes. Gets or sets a value indicating whether footnotes/endnotes content is ignored. By default footnotes/endnotes are not ignored.
    public func setIgnoreFootnotes(ignoreFootnotes : Bool?) -> CompareOptions {
        self.ignoreFootnotes = ignoreFootnotes;
        return self;
    }

    // Gets ignoreFootnotes. Gets or sets a value indicating whether footnotes/endnotes content is ignored. By default footnotes/endnotes are not ignored.
    public func getIgnoreFootnotes() -> Bool? {
        return self.ignoreFootnotes;
    }


    // Sets ignoreFormatting. Gets or sets a value indicating whether formatting is ignored. By default document formatting is not ignored.
    public func setIgnoreFormatting(ignoreFormatting : Bool?) -> CompareOptions {
        self.ignoreFormatting = ignoreFormatting;
        return self;
    }

    // Gets ignoreFormatting. Gets or sets a value indicating whether formatting is ignored. By default document formatting is not ignored.
    public func getIgnoreFormatting() -> Bool? {
        return self.ignoreFormatting;
    }


    // Sets ignoreHeadersAndFooters. Gets or sets a value indicating whether headers and footers content is ignored. By default headers and footers are not ignored.
    public func setIgnoreHeadersAndFooters(ignoreHeadersAndFooters : Bool?) -> CompareOptions {
        self.ignoreHeadersAndFooters = ignoreHeadersAndFooters;
        return self;
    }

    // Gets ignoreHeadersAndFooters. Gets or sets a value indicating whether headers and footers content is ignored. By default headers and footers are not ignored.
    public func getIgnoreHeadersAndFooters() -> Bool? {
        return self.ignoreHeadersAndFooters;
    }


    // Sets ignoreTables. Gets or sets a value indicating whether tables content is ignored. By default tables are not ignored.
    public func setIgnoreTables(ignoreTables : Bool?) -> CompareOptions {
        self.ignoreTables = ignoreTables;
        return self;
    }

    // Gets ignoreTables. Gets or sets a value indicating whether tables content is ignored. By default tables are not ignored.
    public func getIgnoreTables() -> Bool? {
        return self.ignoreTables;
    }


    // Sets ignoreTextboxes. Gets or sets a value indicating whether textboxes content is ignored. By default textboxes are not ignored.
    public func setIgnoreTextboxes(ignoreTextboxes : Bool?) -> CompareOptions {
        self.ignoreTextboxes = ignoreTextboxes;
        return self;
    }

    // Gets ignoreTextboxes. Gets or sets a value indicating whether textboxes content is ignored. By default textboxes are not ignored.
    public func getIgnoreTextboxes() -> Bool? {
        return self.ignoreTextboxes;
    }


    // Sets target. Gets or sets the option that controls which document shall be used as a target during comparison.
    public func setTarget(target : Target?) -> CompareOptions {
        self.target = target;
        return self;
    }

    // Gets target. Gets or sets the option that controls which document shall be used as a target during comparison.
    public func getTarget() -> Target? {
        return self.target;
    }
}
