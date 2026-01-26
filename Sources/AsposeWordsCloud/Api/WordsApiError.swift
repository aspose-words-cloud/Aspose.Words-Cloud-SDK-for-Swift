/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsApiError.swift">
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

public enum WordsApiError : LocalizedError {
    case requestError(errorCode: Int, message: String?)
    case requiredArgumentError(argumentName: String)
    case requiredParameterError(paramName: String)
    case invalidTypeSerialization(typeName: String)
    case invalidTypeDeserialization(typeName: String)
    case invalidMultipartResponse(message: String)
    case badHostAddress(hostName: String)
    case notSupportedMethod(methodName: String)

    public var errorDescription: String? {
        switch self {
            case let .requestError(errorCode, message):
                return "Request error: \(errorCode); Description: \(message ?? "")";
            case let .requiredArgumentError(argumentName):
                return "Required argument \(argumentName) not present.";
            case let .requiredParameterError(paramName):
                return "Required parameter \(paramName) is null.";
            case let .invalidTypeSerialization(typeName):
                return "Failed to serialize type '\(typeName)'.";
            case let .invalidTypeDeserialization(typeName):
                return "Failed to deserialize type '\(typeName)'.";
            case let .invalidMultipartResponse(message):
                return "Failed to parse multipart response: \(message).";
            case let .badHostAddress(hostName):
                return "Unable to resolve hostname address '\(hostName)' as url.";
            case let .notSupportedMethod(methodName):
                return "Method '\(methodName)' is not supported.";
        }
    }
}
