//
//  File.swift
//  Created by Wesley Luntsford on 11/5/23.
//

import Foundation

// TODO: REMOVE!
public struct UsernameAvailable: Codable {
    public var isAvailable: Bool
    
    public init(isAvailable: Bool) {
        self.isAvailable = isAvailable
    }
}
