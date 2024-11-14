//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/10/23.
//

import Foundation

public struct UniqueAccountFieldAvailableDTO: Codable {
    public var isAvailable: Bool
    
    public init(isAvailable: Bool) {
        self.isAvailable = isAvailable
    }
}

extension UniqueAccountFieldAvailableDTO: DomainConvertible {
    public typealias DomainModel = UniqueAccountFieldAvailable
    
    public static var collection: Collection {
        .none
    }
    
    public func toDomain() -> UniqueAccountFieldAvailable {
        .init(isAvailable: isAvailable)
    }
}
