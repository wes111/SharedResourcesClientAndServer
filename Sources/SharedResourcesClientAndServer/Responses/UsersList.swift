//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/9/23.
//

import Foundation

public struct UsersList: Codable {
    public var list: [User]
    
    public init(list: [User]) {
        self.list = list
    }
}
