/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReportEngineSettings.swift">
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

// Report engine settings.
public class ReportEngineSettings : Codable, WordsApiModel {
    // Gets or sets type of datasource.
    public enum DataSourceType : String, Codable
    {
        // Enum value "xml"
        case xml = "Xml"

        // Enum value "json"
        case json = "Json"

        // Enum value "csv"
        case csv = "Csv"
    }

    // Field of csvDataLoadOptions. Report engine settings.
    private var _csvDataLoadOptions : CsvDataLoadOptions? = nil;

    public var csvDataLoadOptions : CsvDataLoadOptions? {
        get {
            return self._csvDataLoadOptions;
        }
        set {
            self._csvDataLoadOptions = newValue;
        }
    }

    // Field of dataSourceName. Report engine settings.
    private var _dataSourceName : String? = nil;

    public var dataSourceName : String? {
        get {
            return self._dataSourceName;
        }
        set {
            self._dataSourceName = newValue;
        }
    }

    // Field of dataSourceType. Report engine settings.
    private var _dataSourceType : DataSourceType? = nil;

    public var dataSourceType : DataSourceType? {
        get {
            return self._dataSourceType;
        }
        set {
            self._dataSourceType = newValue;
        }
    }

    // Field of jsonDataLoadOptions. Report engine settings.
    private var _jsonDataLoadOptions : JsonDataLoadOptions? = nil;

    public var jsonDataLoadOptions : JsonDataLoadOptions? {
        get {
            return self._jsonDataLoadOptions;
        }
        set {
            self._jsonDataLoadOptions = newValue;
        }
    }

    // Field of reportBuildOptions. Report engine settings.
    private var _reportBuildOptions : [ReportBuildOptions]? = nil;

    public var reportBuildOptions : [ReportBuildOptions]? {
        get {
            return self._reportBuildOptions;
        }
        set {
            self._reportBuildOptions = newValue;
        }
    }

    // Field of xmlDataLoadOptions. Report engine settings.
    private var _xmlDataLoadOptions : XmlDataLoadOptions? = nil;

    public var xmlDataLoadOptions : XmlDataLoadOptions? {
        get {
            return self._xmlDataLoadOptions;
        }
        set {
            self._xmlDataLoadOptions = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case csvDataLoadOptions = "CsvDataLoadOptions";
        case dataSourceName = "DataSourceName";
        case dataSourceType = "DataSourceType";
        case jsonDataLoadOptions = "JsonDataLoadOptions";
        case reportBuildOptions = "ReportBuildOptions";
        case xmlDataLoadOptions = "XmlDataLoadOptions";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        if let raw_csvDataLoadOptions = json["CsvDataLoadOptions"] as? [String: Any] {
            self.csvDataLoadOptions = try ObjectSerializer.deserialize(type: CsvDataLoadOptions.self, from: raw_csvDataLoadOptions);
        }

        self.dataSourceName = json["DataSourceName"] as? String;
        if let raw_dataSourceType = json["DataSourceType"] as? String {
            self.dataSourceType = DataSourceType(rawValue: raw_dataSourceType);
        }

        if let raw_jsonDataLoadOptions = json["JsonDataLoadOptions"] as? [String: Any] {
            self.jsonDataLoadOptions = try ObjectSerializer.deserialize(type: JsonDataLoadOptions.self, from: raw_jsonDataLoadOptions);
        }

        if let raw_reportBuildOptions = json["ReportBuildOptions"] as? [Any] {
            self.reportBuildOptions = try raw_reportBuildOptions.map {
                if let element_reportBuildOptions = ReportBuildOptions(rawValue: ($0 as? String) ?? "") {
                    return element_reportBuildOptions;
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "ReportBuildOptions");
                }
            };
        }

        if let raw_xmlDataLoadOptions = json["XmlDataLoadOptions"] as? [String: Any] {
            self.xmlDataLoadOptions = try ObjectSerializer.deserialize(type: XmlDataLoadOptions.self, from: raw_xmlDataLoadOptions);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.csvDataLoadOptions = try container.decodeIfPresent(CsvDataLoadOptions.self, forKey: .csvDataLoadOptions);
        self.dataSourceName = try container.decodeIfPresent(String.self, forKey: .dataSourceName);
        self.dataSourceType = try container.decodeIfPresent(DataSourceType.self, forKey: .dataSourceType);
        self.jsonDataLoadOptions = try container.decodeIfPresent(JsonDataLoadOptions.self, forKey: .jsonDataLoadOptions);
        self.reportBuildOptions = try container.decodeIfPresent([ReportBuildOptions].self, forKey: .reportBuildOptions);
        self.xmlDataLoadOptions = try container.decodeIfPresent(XmlDataLoadOptions.self, forKey: .xmlDataLoadOptions);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.csvDataLoadOptions != nil) {
            try container.encode(self.csvDataLoadOptions, forKey: .csvDataLoadOptions);
        }
        if (self.dataSourceName != nil) {
            try container.encode(self.dataSourceName, forKey: .dataSourceName);
        }
        if (self.dataSourceType != nil) {
            try container.encode(self.dataSourceType, forKey: .dataSourceType);
        }
        if (self.jsonDataLoadOptions != nil) {
            try container.encode(self.jsonDataLoadOptions, forKey: .jsonDataLoadOptions);
        }
        if (self.reportBuildOptions != nil) {
            try container.encode(self.reportBuildOptions, forKey: .reportBuildOptions);
        }
        if (self.xmlDataLoadOptions != nil) {
            try container.encode(self.xmlDataLoadOptions, forKey: .xmlDataLoadOptions);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.dataSourceType == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "dataSourceType");
        }
        try self.csvDataLoadOptions?.validate();
        try self.jsonDataLoadOptions?.validate();
        try self.xmlDataLoadOptions?.validate();

    }

    // Sets csvDataLoadOptions. Gets or sets the options for parsing CSV data.
    public func setCsvDataLoadOptions(csvDataLoadOptions : CsvDataLoadOptions?) -> ReportEngineSettings {
        self.csvDataLoadOptions = csvDataLoadOptions;
        return self;
    }

    // Gets csvDataLoadOptions. Gets or sets the options for parsing CSV data.
    public func getCsvDataLoadOptions() -> CsvDataLoadOptions? {
        return self.csvDataLoadOptions;
    }


    // Sets dataSourceName. Gets or sets the name to reference the data source object in the template.
    public func setDataSourceName(dataSourceName : String?) -> ReportEngineSettings {
        self.dataSourceName = dataSourceName;
        return self;
    }

    // Gets dataSourceName. Gets or sets the name to reference the data source object in the template.
    public func getDataSourceName() -> String? {
        return self.dataSourceName;
    }


    // Sets dataSourceType. Gets or sets type of datasource.
    public func setDataSourceType(dataSourceType : DataSourceType?) -> ReportEngineSettings {
        self.dataSourceType = dataSourceType;
        return self;
    }

    // Gets dataSourceType. Gets or sets type of datasource.
    public func getDataSourceType() -> DataSourceType? {
        return self.dataSourceType;
    }


    // Sets jsonDataLoadOptions. Gets or sets the options for parsing JSON data.
    public func setJsonDataLoadOptions(jsonDataLoadOptions : JsonDataLoadOptions?) -> ReportEngineSettings {
        self.jsonDataLoadOptions = jsonDataLoadOptions;
        return self;
    }

    // Gets jsonDataLoadOptions. Gets or sets the options for parsing JSON data.
    public func getJsonDataLoadOptions() -> JsonDataLoadOptions? {
        return self.jsonDataLoadOptions;
    }


    // Sets reportBuildOptions. Gets or sets type of options to build report.
    public func setReportBuildOptions(reportBuildOptions : [ReportBuildOptions]?) -> ReportEngineSettings {
        self.reportBuildOptions = reportBuildOptions;
        return self;
    }

    // Gets reportBuildOptions. Gets or sets type of options to build report.
    public func getReportBuildOptions() -> [ReportBuildOptions]? {
        return self.reportBuildOptions;
    }


    // Sets xmlDataLoadOptions. Gets or sets the options for parsing XML data.
    public func setXmlDataLoadOptions(xmlDataLoadOptions : XmlDataLoadOptions?) -> ReportEngineSettings {
        self.xmlDataLoadOptions = xmlDataLoadOptions;
        return self;
    }

    // Gets xmlDataLoadOptions. Gets or sets the options for parsing XML data.
    public func getXmlDataLoadOptions() -> XmlDataLoadOptions? {
        return self.xmlDataLoadOptions;
    }
}
