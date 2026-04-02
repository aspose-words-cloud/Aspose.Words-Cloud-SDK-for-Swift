/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="JobInfo.swift">
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

// The REST response with a job result.
public class JobInfo : Codable, WordsApiModel {
    // Gets or sets the job status.
    public enum Status : String, Codable
    {
        // Enum value "unknown"
        case unknown = "Unknown"

        // Enum value "queued"
        case queued = "Queued"

        // Enum value "processing"
        case processing = "Processing"

        // Enum value "succeded"
        case succeded = "Succeded"

        // Enum value "failed"
        case failed = "Failed"
    }

    // Field of jobId. The REST response with a job result.
    private var _jobId : String? = nil;

    public var jobId : String? {
        get {
            return self._jobId;
        }
        set {
            self._jobId = newValue;
        }
    }

    // Field of message. The REST response with a job result.
    private var _message : String? = nil;

    public var message : String? {
        get {
            return self._message;
        }
        set {
            self._message = newValue;
        }
    }

    // Field of status. The REST response with a job result.
    private var _status : Status? = nil;

    public var status : Status? {
        get {
            return self._status;
        }
        set {
            self._status = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case jobId = "JobId";
        case message = "Message";
        case status = "Status";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.jobId = json["JobId"] as? String;
        self.message = json["Message"] as? String;
        if let raw_status = json["Status"] as? String {
            self.status = Status(rawValue: raw_status);
        }

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.jobId = try container.decodeIfPresent(String.self, forKey: .jobId);
        self.message = try container.decodeIfPresent(String.self, forKey: .message);
        self.status = try container.decodeIfPresent(Status.self, forKey: .status);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.jobId != nil) {
            try container.encode(self.jobId, forKey: .jobId);
        }
        if (self.message != nil) {
            try container.encode(self.message, forKey: .message);
        }
        if (self.status != nil) {
            try container.encode(self.status, forKey: .status);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.status == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "status");
        }
    }

    // Sets jobId. Gets or sets the job id.
    public func setJobId(jobId : String?) -> JobInfo {
        self.jobId = jobId;
        return self;
    }

    // Gets jobId. Gets or sets the job id.
    public func getJobId() -> String? {
        return self.jobId;
    }


    // Sets message. Gets or sets the job message.
    public func setMessage(message : String?) -> JobInfo {
        self.message = message;
        return self;
    }

    // Gets message. Gets or sets the job message.
    public func getMessage() -> String? {
        return self.message;
    }


    // Sets status. Gets or sets the job status.
    public func setStatus(status : Status?) -> JobInfo {
        self.status = status;
        return self;
    }

    // Gets status. Gets or sets the job status.
    public func getStatus() -> Status? {
        return self.status;
    }
}
