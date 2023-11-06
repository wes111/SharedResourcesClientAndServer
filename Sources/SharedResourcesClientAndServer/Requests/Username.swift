//
//  File.swift
//  Created by Wesley Luntsford on 11/5/23.
//

import Foundation

public struct Username: Codable {
    public var userName: String
    
    public init(userName: String) {
        self.userName = userName
    }
}
