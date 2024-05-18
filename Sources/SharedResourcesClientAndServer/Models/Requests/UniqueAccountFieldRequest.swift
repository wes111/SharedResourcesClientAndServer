//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/10/23.
//

import Foundation

public struct UniqueAccountFieldRequest: Codable {
    public var field: UniqueAccountField
    public var value: String
    
    public init(field: UniqueAccountField, value: String) {
        self.field = field
        self.value = value
    }
}
