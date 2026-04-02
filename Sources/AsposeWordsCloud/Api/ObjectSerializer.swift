/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ObjectSerializer.swift">
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

// Helper class for serialize or deserialize swift objects to string or binary format.
class ObjectSerializer {
    private init() { }

    private struct CustomKey : CodingKey {
        var stringValue: String;
        var intValue: Int?;

        init?(stringValue: String) {
            self.stringValue = stringValue;
            self.intValue = nil;
        }

        init?(intValue: Int) {
            self.stringValue = String(intValue);
            self.intValue = intValue;
        }
    }

    private static let modelsFactory:[String: WordsApiModel.Type?] = [
        "ApiError, _": ApiError.self,
        "AvailableFontsResponse, _": AvailableFontsResponse.self,
        "Azw3SaveOptionsData, _": Azw3SaveOptionsData.self,
        "BmpSaveOptionsData, _": BmpSaveOptionsData.self,
        "Bookmark, _": Bookmark.self,
        "BookmarkData, _": BookmarkData.self,
        "BookmarkInsert, _": BookmarkInsert.self,
        "BookmarkResponse, _": BookmarkResponse.self,
        "Bookmarks, _": Bookmarks.self,
        "BookmarksOutlineLevelData, _": BookmarksOutlineLevelData.self,
        "BookmarksResponse, _": BookmarksResponse.self,
        "Border, _": Border.self,
        "BorderResponse, _": BorderResponse.self,
        "BordersCollection, _": BordersCollection.self,
        "BordersResponse, _": BordersResponse.self,
        "Comment, _": Comment.self,
        "CommentInsert, _": CommentInsert.self,
        "CommentLink, _": CommentLink.self,
        "CommentRangeEnd, _": CommentRangeEnd.self,
        "CommentRangeStart, _": CommentRangeStart.self,
        "CommentResponse, _": CommentResponse.self,
        "CommentsCollection, _": CommentsCollection.self,
        "CommentsResponse, _": CommentsResponse.self,
        "CommentUpdate, _": CommentUpdate.self,
        "CompareData, _": CompareData.self,
        "CompareOptions, _": CompareOptions.self,
        "CompressOptions, _": CompressOptions.self,
        "CompressResponse, _": CompressResponse.self,
        "CsvDataLoadOptions, _": CsvDataLoadOptions.self,
        "CustomXmlPart, _": CustomXmlPart.self,
        "CustomXmlPartInsert, _": CustomXmlPartInsert.self,
        "CustomXmlPartLink, _": CustomXmlPartLink.self,
        "CustomXmlPartResponse, _": CustomXmlPartResponse.self,
        "CustomXmlPartsCollection, _": CustomXmlPartsCollection.self,
        "CustomXmlPartsResponse, _": CustomXmlPartsResponse.self,
        "CustomXmlPartUpdate, _": CustomXmlPartUpdate.self,
        "DigitalSignatureDetails, _": DigitalSignatureDetails.self,
        "DoclingSaveOptionsData, _": DoclingSaveOptionsData.self,
        "DocmSaveOptionsData, _": DocmSaveOptionsData.self,
        "DocSaveOptionsData, _": DocSaveOptionsData.self,
        "Document, _": Document.self,
        "DocumentEntry, _": DocumentEntry.self,
        "DocumentEntryList, _": DocumentEntryList.self,
        "DocumentPosition, _": DocumentPosition.self,
        "DocumentProperties, _": DocumentProperties.self,
        "DocumentPropertiesResponse, _": DocumentPropertiesResponse.self,
        "DocumentProperty, _": DocumentProperty.self,
        "DocumentPropertyCreateOrUpdate, _": DocumentPropertyCreateOrUpdate.self,
        "DocumentPropertyResponse, _": DocumentPropertyResponse.self,
        "DocumentResponse, _": DocumentResponse.self,
        "DocumentStatData, _": DocumentStatData.self,
        "DocxSaveOptionsData, _": DocxSaveOptionsData.self,
        "DotmSaveOptionsData, _": DotmSaveOptionsData.self,
        "DotSaveOptionsData, _": DotSaveOptionsData.self,
        "DotxSaveOptionsData, _": DotxSaveOptionsData.self,
        "DownsampleOptionsData, _": DownsampleOptionsData.self,
        "DrawingObject, _": DrawingObject.self,
        "DrawingObjectCollection, _": DrawingObjectCollection.self,
        "DrawingObjectInsert, _": DrawingObjectInsert.self,
        "DrawingObjectLink, _": DrawingObjectLink.self,
        "DrawingObjectResponse, _": DrawingObjectResponse.self,
        "DrawingObjectsResponse, _": DrawingObjectsResponse.self,
        "DrawingObjectUpdate, _": DrawingObjectUpdate.self,
        "EmfSaveOptionsData, _": EmfSaveOptionsData.self,
        "EpsSaveOptionsData, _": EpsSaveOptionsData.self,
        "EpubSaveOptionsData, _": EpubSaveOptionsData.self,
        "InternalError, _": InternalError.self,
        "ErrorDetails, _": ErrorDetails.self,
        "Field, _": Field.self,
        "FieldCollection, _": FieldCollection.self,
        "FieldInsert, _": FieldInsert.self,
        "FieldLink, _": FieldLink.self,
        "FieldNames, _": FieldNames.self,
        "FieldNamesResponse, _": FieldNamesResponse.self,
        "FieldOptions, _": FieldOptions.self,
        "FieldResponse, _": FieldResponse.self,
        "FieldsResponse, _": FieldsResponse.self,
        "FieldUpdate, _": FieldUpdate.self,
        "FileLink, _": FileLink.self,
        "FilesList, _": FilesList.self,
        "FilesUploadResult, _": FilesUploadResult.self,
        "FlatOpcMacroSaveOptionsData, _": FlatOpcMacroSaveOptionsData.self,
        "FlatOpcSaveOptionsData, _": FlatOpcSaveOptionsData.self,
        "FlatOpcTemplateMacroSaveOptionsData, _": FlatOpcTemplateMacroSaveOptionsData.self,
        "FlatOpcTemplateSaveOptionsData, _": FlatOpcTemplateSaveOptionsData.self,
        "Font, _": Font.self,
        "FontInfo, _": FontInfo.self,
        "FontResponse, _": FontResponse.self,
        "Footnote, _": Footnote.self,
        "FootnoteCollection, _": FootnoteCollection.self,
        "FootnoteInsert, _": FootnoteInsert.self,
        "FootnoteLink, _": FootnoteLink.self,
        "FootnoteResponse, _": FootnoteResponse.self,
        "FootnotesResponse, _": FootnotesResponse.self,
        "FootnotesStatData, _": FootnotesStatData.self,
        "FootnoteUpdate, _": FootnoteUpdate.self,
        "FormFieldCheckbox, _": FormFieldCheckbox.self,
        "FormFieldCheckboxLink, _": FormFieldCheckboxLink.self,
        "FormFieldCollection, _": FormFieldCollection.self,
        "FormFieldDropDown, _": FormFieldDropDown.self,
        "FormFieldDropDownLink, _": FormFieldDropDownLink.self,
        "FormFieldResponse, _": FormFieldResponse.self,
        "FormFieldsResponse, _": FormFieldsResponse.self,
        "FormFieldTextInput, _": FormFieldTextInput.self,
        "FormFieldTextInputLink, _": FormFieldTextInputLink.self,
        "GifSaveOptionsData, _": GifSaveOptionsData.self,
        "HeaderFooter, _": HeaderFooter.self,
        "HeaderFooterLink, _": HeaderFooterLink.self,
        "HeaderFooterLinkCollection, _": HeaderFooterLinkCollection.self,
        "HeaderFooterResponse, _": HeaderFooterResponse.self,
        "HeaderFootersResponse, _": HeaderFootersResponse.self,
        "HtmlFixedSaveOptionsData, _": HtmlFixedSaveOptionsData.self,
        "HtmlSaveOptionsData, _": HtmlSaveOptionsData.self,
        "Hyperlink, _": Hyperlink.self,
        "HyperlinkResponse, _": HyperlinkResponse.self,
        "Hyperlinks, _": Hyperlinks.self,
        "HyperlinksResponse, _": HyperlinksResponse.self,
        "ImageEntry, _": ImageEntry.self,
        "ImageEntryList, _": ImageEntryList.self,
        "InfoAdditionalItem, _": InfoAdditionalItem.self,
        "InfoResponse, _": InfoResponse.self,
        "JobInfo, _": JobInfo.self,
        "JpegSaveOptionsData, _": JpegSaveOptionsData.self,
        "JsonDataLoadOptions, _": JsonDataLoadOptions.self,
        "Link, _": Link.self,
        "LinkElement, _": LinkElement.self,
        "ListFormat, _": ListFormat.self,
        "ListFormatUpdate, _": ListFormatUpdate.self,
        "ListInfo, _": ListInfo.self,
        "ListInsert, _": ListInsert.self,
        "ListLevel, _": ListLevel.self,
        "ListLevels, _": ListLevels.self,
        "ListLevelUpdate, _": ListLevelUpdate.self,
        "ListResponse, _": ListResponse.self,
        "Lists, _": Lists.self,
        "ListsResponse, _": ListsResponse.self,
        "ListUpdate, _": ListUpdate.self,
        "LoadWebDocumentData, _": LoadWebDocumentData.self,
        "MarkdownSaveOptionsData, _": MarkdownSaveOptionsData.self,
        "MetafileRenderingOptionsData, _": MetafileRenderingOptionsData.self,
        "MhtmlSaveOptionsData, _": MhtmlSaveOptionsData.self,
        "ModificationOperationResult, _": ModificationOperationResult.self,
        "NodeLink, _": NodeLink.self,
        "OdtSaveOptionsData, _": OdtSaveOptionsData.self,
        "OfficeMathLink, _": OfficeMathLink.self,
        "OfficeMathObject, _": OfficeMathObject.self,
        "OfficeMathObjectResponse, _": OfficeMathObjectResponse.self,
        "OfficeMathObjectsCollection, _": OfficeMathObjectsCollection.self,
        "OfficeMathObjectsResponse, _": OfficeMathObjectsResponse.self,
        "OpenXpsSaveOptionsData, _": OpenXpsSaveOptionsData.self,
        "OptimizationOptions, _": OptimizationOptions.self,
        "OttSaveOptionsData, _": OttSaveOptionsData.self,
        "OutlineOptionsData, _": OutlineOptionsData.self,
        "PageNumber, _": PageNumber.self,
        "PageSetup, _": PageSetup.self,
        "PageStatData, _": PageStatData.self,
        "Paragraph, _": Paragraph.self,
        "ParagraphFormat, _": ParagraphFormat.self,
        "ParagraphFormatResponse, _": ParagraphFormatResponse.self,
        "ParagraphFormatUpdate, _": ParagraphFormatUpdate.self,
        "ParagraphInsert, _": ParagraphInsert.self,
        "ParagraphLink, _": ParagraphLink.self,
        "ParagraphLinkCollection, _": ParagraphLinkCollection.self,
        "ParagraphLinkCollectionResponse, _": ParagraphLinkCollectionResponse.self,
        "ParagraphListFormatResponse, _": ParagraphListFormatResponse.self,
        "ParagraphResponse, _": ParagraphResponse.self,
        "PclSaveOptionsData, _": PclSaveOptionsData.self,
        "PdfDigitalSignatureDetailsData, _": PdfDigitalSignatureDetailsData.self,
        "PdfEncryptionDetailsData, _": PdfEncryptionDetailsData.self,
        "PdfPermissions, _": nil,
        "PdfSaveOptionsData, _": PdfSaveOptionsData.self,
        "PngSaveOptionsData, _": PngSaveOptionsData.self,
        "PositionAfterNode, _": PositionAfterNode.self,
        "PositionBeforeNode, _": PositionBeforeNode.self,
        "PositionInsideNode, _": PositionInsideNode.self,
        "PreferredWidth, _": PreferredWidth.self,
        "ProtectionData, _": ProtectionData.self,
        "ProtectionDataResponse, _": ProtectionDataResponse.self,
        "ProtectionRequest, _": ProtectionRequest.self,
        "ProtectionRequestV2, _": ProtectionRequestV2.self,
        "PsSaveOptionsData, _": PsSaveOptionsData.self,
        "PublicKeyResponse, _": PublicKeyResponse.self,
        "RangeDocument, _": RangeDocument.self,
        "RangeTextResponse, _": RangeTextResponse.self,
        "ReplaceRange, _": ReplaceRange.self,
        "ReplaceTextParameters, _": ReplaceTextParameters.self,
        "ReplaceTextResponse, _": ReplaceTextResponse.self,
        "ReportBuildOptions, _": nil,
        "ReportEngineSettings, _": ReportEngineSettings.self,
        "Revision, _": Revision.self,
        "RevisionCollection, _": RevisionCollection.self,
        "RevisionsModificationResponse, _": RevisionsModificationResponse.self,
        "RevisionsResponse, _": RevisionsResponse.self,
        "RtfSaveOptionsData, _": RtfSaveOptionsData.self,
        "Run, _": Run.self,
        "RunInsert, _": RunInsert.self,
        "RunLink, _": RunLink.self,
        "RunResponse, _": RunResponse.self,
        "Runs, _": Runs.self,
        "RunsResponse, _": RunsResponse.self,
        "RunUpdate, _": RunUpdate.self,
        "SaveResponse, _": SaveResponse.self,
        "SaveResult, _": SaveResult.self,
        "SearchResponse, _": SearchResponse.self,
        "SearchResult, _": SearchResult.self,
        "SearchResultsCollection, _": SearchResultsCollection.self,
        "Section, _": Section.self,
        "SectionLink, _": SectionLink.self,
        "SectionLinkCollection, _": SectionLinkCollection.self,
        "SectionLinkCollectionResponse, _": SectionLinkCollectionResponse.self,
        "SectionPageSetupResponse, _": SectionPageSetupResponse.self,
        "SectionResponse, _": SectionResponse.self,
        "Shading, _": Shading.self,
        "Signature, _": Signature.self,
        "SignatureCollectionResponse, _": SignatureCollectionResponse.self,
        "SignOptions, _": SignOptions.self,
        "SplitDocumentResponse, _": SplitDocumentResponse.self,
        "SplitDocumentResult, _": SplitDocumentResult.self,
        "StatDataResponse, _": StatDataResponse.self,
        "StorageFile, _": StorageFile.self,
        "StoryChildNodes, _": StoryChildNodes.self,
        "StructuredDocumentTag, _": StructuredDocumentTag.self,
        "StructuredDocumentTagCollection, _": StructuredDocumentTagCollection.self,
        "StructuredDocumentTagInsert, _": StructuredDocumentTagInsert.self,
        "StructuredDocumentTagListItem, _": StructuredDocumentTagListItem.self,
        "StructuredDocumentTagResponse, _": StructuredDocumentTagResponse.self,
        "StructuredDocumentTagsResponse, _": StructuredDocumentTagsResponse.self,
        "StructuredDocumentTagUpdate, _": StructuredDocumentTagUpdate.self,
        "Style, _": Style.self,
        "StyleApply, _": StyleApply.self,
        "StyleCopy, _": StyleCopy.self,
        "StyleInsert, _": StyleInsert.self,
        "StyleResponse, _": StyleResponse.self,
        "StylesResponse, _": StylesResponse.self,
        "StyleUpdate, _": StyleUpdate.self,
        "SvgSaveOptionsData, _": SvgSaveOptionsData.self,
        "Table, _": Table.self,
        "TableCell, _": TableCell.self,
        "TableCellFormat, _": TableCellFormat.self,
        "TableCellFormatResponse, _": TableCellFormatResponse.self,
        "TableCellInsert, _": TableCellInsert.self,
        "TableCellResponse, _": TableCellResponse.self,
        "TableInsert, _": TableInsert.self,
        "TableLink, _": TableLink.self,
        "TableLinkCollection, _": TableLinkCollection.self,
        "TableLinkCollectionResponse, _": TableLinkCollectionResponse.self,
        "TableProperties, _": TableProperties.self,
        "TablePropertiesResponse, _": TablePropertiesResponse.self,
        "TableResponse, _": TableResponse.self,
        "TableRow, _": TableRow.self,
        "TableRowFormat, _": TableRowFormat.self,
        "TableRowFormatResponse, _": TableRowFormatResponse.self,
        "TableRowInsert, _": TableRowInsert.self,
        "TableRowResponse, _": TableRowResponse.self,
        "TabStop, _": TabStop.self,
        "TabStopInsert, _": TabStopInsert.self,
        "TabStopsResponse, _": TabStopsResponse.self,
        "TextSaveOptionsData, _": TextSaveOptionsData.self,
        "TiffSaveOptionsData, _": TiffSaveOptionsData.self,
        "TimeZoneInfoData, _": TimeZoneInfoData.self,
        "TranslateNodeIdResponse, _": TranslateNodeIdResponse.self,
        "UserInformation, _": UserInformation.self,
        "WatermarkDataImage, _": WatermarkDataImage.self,
        "WatermarkDataText, _": WatermarkDataText.self,
        "WatermarkText, _": WatermarkText.self,
        "WordMLSaveOptionsData, _": WordMLSaveOptionsData.self,
        "WordsApiErrorResponse, _": WordsApiErrorResponse.self,
        "WordsApiLink, _": WordsApiLink.self,
        "WordsResponse, _": WordsResponse.self,
        "XamlFixedSaveOptionsData, _": XamlFixedSaveOptionsData.self,
        "XamlFlowPackSaveOptionsData, _": XamlFlowPackSaveOptionsData.self,
        "XamlFlowSaveOptionsData, _": XamlFlowSaveOptionsData.self,
        "XmlColor, _": XmlColor.self,
        "XmlDataLoadOptions, _": XmlDataLoadOptions.self,
        "XpsSaveOptionsData, _": XpsSaveOptionsData.self
    ];

    // Serialize given object to string
    public static func serializeToString<T : Encodable>(value : T) throws -> String {
        if (value is WordsApiModel) {
            // Serialize to JSON when ApiModel object
            return String(decoding: try customEncoder.encode(value), as: UTF8.self);
        }
        if (value is URL) {
            // Read file from URL as String (For local and remote files)
            return try String(contentsOf: value as! URL);
        }
        else {
            // Stringify unknown type
            return String(describing: value);
        }
    }

    // Serialize given object as binary data for using as request body
    public static func serializeBody<T : Encodable>(value: T) throws -> Data {
        if (value is String) {
            // Make JSON string when String object.
            let result = "\"\(value)\"".data(using: .utf8);
            if (result == nil) {
                throw WordsApiError.invalidTypeSerialization(typeName: String(describing: type(of: value)));
            }
            return result!;
        }
        else {
            // For other types use default binary serializer
            return try serialize(value: value);
        }
    }

    // Serialize file stream as binary data
    public static func serializeFile(value: InputStream) throws -> Data {
        var result = Data();
        value.open();
        defer {
            value.close();
        }

        let bufferSize = 1024;
        let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: bufferSize);
        defer {
            buffer.deallocate();
        }
        while (value.hasBytesAvailable) {
            let read = value.read(buffer, maxLength: bufferSize);
            if (read < 0) {
                //Stream error occured
                throw value.streamError!;
            } else if (read == 0) {
                //EOF
                break;
            }
            result.append(buffer, count: read);
        }
        return result;
    }

    // Serialize given object as binary data
    public static func serialize<T : Encodable>(value: T) throws -> Data {
        if (value is WordsApiModel) {
            // Serialize to JSON when ApiModel object
            return try customEncoder.encode(value);
        }
        if (value is URL) {
            // Read file from URL as bytes (For local and remote files)
            return try Data(contentsOf: value as! URL);
        }
        else {
             // Stringify unknown type and convert to binary
            let result = String(describing: value).data(using: .utf8);
            if (result == nil) {
                throw WordsApiError.invalidTypeSerialization(typeName: String(describing: type(of: value)));
            }
            return result!;
        }
    }

    // Create an instance of T, from JSON data
    public static func deserialize<T>(type: T.Type, from data: Data) throws -> T where T : WordsApiModel {
        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
            let inhType = (json["$type"] as? String) ?? "\(type), _";
            if let classtype = modelsFactory[inhType] as? WordsApiModel.Type {
                return try classtype.init(from: json) as! T;
            }
        }

        throw WordsApiError.invalidTypeDeserialization(typeName: String(describing: type));
    }

    // Create an instance of T, from JSON map
    public static func deserialize<T>(type: T.Type, from json: [String: Any]) throws -> T where T : WordsApiModel {
        let inhType = (json["$type"] as? String) ?? "\(type), _";
        if let classtype = modelsFactory[inhType] as? WordsApiModel.Type {
            return try classtype.init(from: json) as! T;
        }

        throw WordsApiError.invalidTypeDeserialization(typeName: String(describing: type));
    }

    // Create an instance of T, from JSON decoder
    public static func deserializeInternal<T>(type: T.Type, from data: Data) throws -> T where T : Decodable {
        return try customDecoder.decode(type, from: data);
    }

    // Parse files collection
    public static func parseFilesCollection(part: ResponseFormParam) throws -> [String : Data] {
        return try parseFilesCollection(data: part.getBody(), headers: part.getHeaders());
    }

    // Parse files collection
    public static func parseFilesCollection(data: Data, headers: [String : String]) throws -> [String : Data] {
        var result = [String : Data]();
        let contentType = headers["Content-Type"];
        if (contentType?.starts(with: "multipart/mixed") == true) {
            let parts = try parseMultipart(data: data);
            for part in parts {
                var filename = "";
                let disposition = part.getHeaders()["Content-Disposition"];
                if (disposition == nil) {
                    continue;
                }

                let dispparts = disposition!.split(separator: ";");
                for disppart in dispparts {
                    let dispparttrim = disppart.trimmingCharacters(in: .whitespaces);
                    if (dispparttrim.starts(with: "filename=")) {
                        let subparts = dispparttrim.split(separator: "=");
                        if (subparts.count == 2) {
                            filename = subparts[1].trimmingCharacters(in: CharacterSet(charactersIn: " \""));
                        }
                    }
                }

                result[filename] = part.getBody();
            }
        }
        else {
            result[""] = data;
        }

        return result;
    }

    // Deserialize an multipart response
    public static func parseMultipart(data: Data) throws -> [ResponseFormParam] {
        var result = [ResponseFormParam]();
        if (!data.starts(with: "--".data(using: .utf8)!)) {
           throw WordsApiError.invalidMultipartResponse(message: "Boundary not found");
        }

        let newLineData = "\r\n".data(using: .utf8)!;
        let boundaryEndIndex = data.range(of: newLineData);
        if (boundaryEndIndex == nil || boundaryEndIndex!.isEmpty) {
            throw WordsApiError.invalidMultipartResponse(message: "Boundary not found");
        }

        let boundary = data.subdata(in: data.startIndex..<boundaryEndIndex!.lowerBound);
        let parts = ObjectSerializer.splitData(data: data, separator: boundary);
        let dispositionSeparator = "\r\n\r\n".data(using: .utf8)!;

        for part in parts {
            let partDataBounds = part.range(of: dispositionSeparator);
            if (partDataBounds == nil || partDataBounds!.isEmpty) {
                throw WordsApiError.invalidMultipartResponse(message: "Part content not found");
            }

            let headData = part.subdata(in: part.startIndex..<partDataBounds!.lowerBound);
            let headContent = String(decoding: headData, as: UTF8.self);
            var headers = [String : String]();

            for headerRawData in headContent.components(separatedBy: "\r\n") {
                let headerData = headerRawData.trimmingCharacters(in: .whitespacesAndNewlines);
                if (!headerData.isEmpty) {
                    let headerParts = headerData.split(separator: ":");
                    if (headerParts.count == 2) {
                        let headerKey = headerParts[0].trimmingCharacters(in: .whitespaces);
                        let headerValue = headerParts[1].trimmingCharacters(in: .whitespaces);
                        headers[headerKey] = headerValue;
                    }
                }
            }

            let bodyData = part.subdata(in: partDataBounds!.upperBound..<part.endIndex);
            result.append(ResponseFormParam(body: bodyData, headers: headers));
        }

        return result;
    }

    // Get multipart by name
    public static func getMultipartByName(multipart: [ResponseFormParam], name: String) throws -> ResponseFormParam {
        for part in multipart {
            let disposition = part.getHeaders()["Content-Disposition"];
            if (disposition == nil) {
                continue;
            }

            var partName: String? = nil;
            for componentRawData in disposition!.components(separatedBy: ";") {
                let componentData = componentRawData.trimmingCharacters(in: .whitespacesAndNewlines);
                if (!componentData.isEmpty) {
                    let componentDataParts = componentData.split(separator: "=");
                    if (componentDataParts.count == 2) {
                        let componentKey = componentDataParts[0].trimmingCharacters(in: .whitespaces);
                        let componentValue = componentDataParts[1].trimmingCharacters(in: CharacterSet(charactersIn: " \""));
                        if (componentKey == "name") {
                            partName = componentValue;
                            break;
                        }
                    }
                }
            }

            if (partName != nil && partName == name)
            {
               return part;
            }
        }

        throw WordsApiError.invalidMultipartResponse(message: "Part " + name + " not found in multipart data.");
    }

    // Split data into parts
    public static func splitData(data: Data, separator: Data) -> [Data] {
        let endIndex = separator.count;
        var chunks: [Data] = [];
        var pos = 0;
        while let r = data[pos...].range(of: separator) {
            if (r.lowerBound > pos) {
                chunks.append(data[pos..<r.lowerBound]);
            }

            pos = r.upperBound;
        }

        if (pos < endIndex) {
            chunks.append(data[pos..<endIndex]);
        }

        return chunks;
    }

    // Create an instance of T, from batch part data
    public static func deserializeBatchPart(request: WordsApiRequest, partData: ResponseFormParam) throws -> Any? {
        let separator = "\r\n\r\n".data(using: .utf8)!;
        let data = partData.getBody();
        let partDataBounds = data.range(of: separator);
        if (partDataBounds == nil || partDataBounds!.isEmpty) {
            throw WordsApiError.invalidMultipartResponse(message: "Body content not found");
        }

        let headData = data.subdata(in: data.startIndex..<partDataBounds!.lowerBound);
        let headContent = String(decoding: headData, as: UTF8.self);
        let headParts = headContent.components(separatedBy: "\r\n");
        if (headParts.count == 0) {
            throw WordsApiError.invalidMultipartResponse(message: "Head content not found");
        }

        let codeContent = headParts[0].split(separator: " ", maxSplits: 1, omittingEmptySubsequences: true);
        if (codeContent.count != 2) {
            throw WordsApiError.invalidMultipartResponse(message: "Head content not found");
        }

        let codeStatus = Int(codeContent[0]);
        if (codeStatus == nil) {
            throw WordsApiError.invalidMultipartResponse(message: "Failed to parse head content");
        }

        var headers = [String : String]();
        for headerLine in headParts {
            if (!headerLine.contains(":")) {
                continue;
            }

            let headerParts = headerLine.components(separatedBy: ":");
            if (headerParts.count == 2) {
                headers[headerParts[0].trimmingCharacters(in: .whitespacesAndNewlines)] = headerParts[1].trimmingCharacters(in: .whitespacesAndNewlines);
            }
        }

        let bodyData = data.subdata(in: partDataBounds!.upperBound..<data.endIndex);
        if (codeStatus != 200) {
            let errorMessage = String(decoding: bodyData, as: UTF8.self);
            return WordsApiError.requestError(errorCode: codeStatus!, message: errorMessage);
        }

        return try request.deserializeResponse(data: bodyData, headers: headers);
    }

    public static func deserializeJobInfoPart(partData: ResponseFormParam) throws -> JobInfo {
        return try ObjectSerializer.deserialize(type: JobInfo.self, from: partData.getBody());
    }

    public static func deserializeHttpResponsePart(request: WordsApiRequest, partData: ResponseFormParam) throws -> Any? {
        let separator = "\r\n\r\n".data(using: .utf8)!;
        let data = partData.getBody();
        let httpPrefix = "HTTP/".data(using: .utf8)!;

        if (!data.starts(with: httpPrefix)) {
            return try request.deserializeResponse(data: partData.getBody(), headers: partData.getHeaders());
        }

        let partDataBounds = data.range(of: separator);
        if (partDataBounds == nil || partDataBounds!.isEmpty) {
            throw WordsApiError.invalidMultipartResponse(message: "Body content not found");
        }

        let headData = data.subdata(in: data.startIndex..<partDataBounds!.lowerBound);
        let headContent = String(decoding: headData, as: UTF8.self);
        let headParts = headContent.components(separatedBy: "\r\n");
        if (headParts.count == 0) {
            throw WordsApiError.invalidMultipartResponse(message: "Head content not found");
        }

        let statusLine = headParts[0].split(separator: " ", omittingEmptySubsequences: true);
        if (statusLine.count < 2 || !statusLine[0].starts(with: "HTTP/")) {
            throw WordsApiError.invalidMultipartResponse(message: "Failed to parse HTTP response part.");
        }

        let codeStatus = Int(statusLine[1]);
        if (codeStatus == nil) {
            throw WordsApiError.invalidMultipartResponse(message: "Failed to parse HTTP response part.");
        }

        var headers = [String : String]();
        for headerLine in headParts.dropFirst() {
            if (!headerLine.contains(":")) {
                continue;
            }

            let headerParts = headerLine.components(separatedBy: ":");
            if (headerParts.count >= 2) {
                headers[headerParts[0].trimmingCharacters(in: .whitespacesAndNewlines)] = headerParts.dropFirst().joined(separator: ":").trimmingCharacters(in: .whitespacesAndNewlines);
            }
        }

        let bodyData = data.subdata(in: partDataBounds!.upperBound..<data.endIndex);
        if (codeStatus! >= 200 && codeStatus! < 300) {
            return try request.deserializeResponse(data: bodyData, headers: headers);
        }

        throw WordsApiError.requestError(errorCode: codeStatus!, message: String(decoding: bodyData, as: UTF8.self));
    }

    // Configuration for DateTime serialization/deserialization
    public static let customIso8601: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'";
        formatter.calendar = Calendar(identifier: .iso8601);
        formatter.timeZone = TimeZone(secondsFromGMT: 0);
        formatter.locale = Locale(identifier: "en_US_POSIX");
        return formatter;
    }()

    // Custom JSON encoder
    private static let customEncoder: JSONEncoder = {
        let encoder = JSONEncoder();
        encoder.dateEncodingStrategy = .formatted(customIso8601);
        return encoder;
    }();

    // Custom JSON decoder
    private static let customDecoder: JSONDecoder = {
        let decoder = JSONDecoder();
        decoder.dateDecodingStrategy = .formatted(customIso8601);
        return decoder;
    }();
}
