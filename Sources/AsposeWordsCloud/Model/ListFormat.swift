/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListFormat.swift">
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

// DTO container with a paragraph list format element.
public class ListFormat : LinkElement {
    // Field of listLevelNumber. DTO container with a paragraph list format element.
    private var _listLevelNumber : Int? = nil;

    public var listLevelNumber : Int? {
        get {
            return self._listLevelNumber;
        }
        set {
            self._listLevelNumber = newValue;
        }
    }

    // Field of listId. DTO container with a paragraph list format element.
    private var _listId : Int? = nil;

    public var listId : Int? {
        get {
            return self._listId;
        }
        set {
            self._listId = newValue;
        }
    }

    // Field of isListItem. DTO container with a paragraph list format element.
    private var _isListItem : Bool? = nil;

    public var isListItem : Bool? {
        get {
            return self._isListItem;
        }
        set {
            self._isListItem = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case listLevelNumber = "ListLevelNumber";
        case listId = "ListId";
        case isListItem = "IsListItem";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.listLevelNumber = json["ListLevelNumber"] as? Int;
        self.listId = json["ListId"] as? Int;
        self.isListItem = json["IsListItem"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.listLevelNumber = try container.decodeIfPresent(Int.self, forKey: .listLevelNumber);
        self.listId = try container.decodeIfPresent(Int.self, forKey: .listId);
        self.isListItem = try container.decodeIfPresent(Bool.self, forKey: .isListItem);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.listLevelNumber != nil) {
            try container.encode(self.listLevelNumber, forKey: .listLevelNumber);
        }
        if (self.listId != nil) {
            try container.encode(self.listId, forKey: .listId);
        }
        if (self.isListItem != nil) {
            try container.encode(self.isListItem, forKey: .isListItem);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.listLevelNumber == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "listLevelNumber");
        }
        if (self.isListItem == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "isListItem");
        }
    }

    // Sets listLevelNumber. Gets or sets the list level number (0 to 8) for the paragraph. In Word documents, lists may consist of 1 or 9 levels, numbered 0 to 8. Has effect only when the Aspose.Words.ListFormat.List property is set to reference a valid list. Aspose.Words.ListFormat.List.
    public func setListLevelNumber(listLevelNumber : Int?) -> ListFormat {
        self.listLevelNumber = listLevelNumber;
        return self;
    }

    // Gets listLevelNumber. Gets or sets the list level number (0 to 8) for the paragraph. In Word documents, lists may consist of 1 or 9 levels, numbered 0 to 8. Has effect only when the Aspose.Words.ListFormat.List property is set to reference a valid list. Aspose.Words.ListFormat.List.
    public func getListLevelNumber() -> Int? {
        return self.listLevelNumber;
    }


    // Sets listId. Gets or sets the list id of this paragraph. The list that is being assigned to this property must belong to the current document.The list that is being assigned to this property must not be a list style definition.
    public func setListId(listId : Int?) -> ListFormat {
        self.listId = listId;
        return self;
    }

    // Gets listId. Gets or sets the list id of this paragraph. The list that is being assigned to this property must belong to the current document.The list that is being assigned to this property must not be a list style definition.
    public func getListId() -> Int? {
        return self.listId;
    }


    // Sets isListItem. Gets or sets a value indicating whether the paragraph has bulleted or numbered formatting applied to it.
    public func setIsListItem(isListItem : Bool?) -> ListFormat {
        self.isListItem = isListItem;
        return self;
    }

    // Gets isListItem. Gets or sets a value indicating whether the paragraph has bulleted or numbered formatting applied to it.
    public func getIsListItem() -> Bool? {
        return self.isListItem;
    }
}
