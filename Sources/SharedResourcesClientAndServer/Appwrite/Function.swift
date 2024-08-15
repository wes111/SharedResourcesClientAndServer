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
}
