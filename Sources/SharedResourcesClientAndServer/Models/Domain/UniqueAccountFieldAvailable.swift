//
//  UniqueAccountFieldAvailable.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/10/24.
//

import Foundation

public struct UniqueAccountFieldAvailable: Sendable {
    public var isAvailable: Bool
    
    public init(isAvailable: Bool) {
        self.isAvailable = isAvailable
    }
}
