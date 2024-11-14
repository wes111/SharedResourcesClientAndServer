//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 8/2/24.
//

import Foundation

public enum AppwriteFunction: String {
    case postComment
    case voteComment
    case votePost
    case uniqueAccountFieldIsAvailable
    
    public var id: String {
        self.rawValue
    }
    
    public var method: FunctionMethod {
        switch self {
        case .postComment:
                .post
        case .voteComment:
                .post
        case .votePost:
                .post
        case .uniqueAccountFieldIsAvailable:
                .get
        }
    }
}

public enum FunctionMethod: String, Codable {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
    case options = "OPTIONS"
}
