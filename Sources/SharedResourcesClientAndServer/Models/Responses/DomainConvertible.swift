//
//  DomainConvertible.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 10/23/24.
//

import Foundation

public protocol DomainConvertible: Decodable {
    associatedtype DomainModel
    
    static var collection: Collection { get }
    func toDomain() -> DomainModel
}
