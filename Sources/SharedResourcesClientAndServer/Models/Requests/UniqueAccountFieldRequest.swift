//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/10/23.
//

import Foundation

public struct UniqueAccountFieldRequest: Codable {
    public var field: UniqueAccountField
    
    public init(field: UniqueAccountField) {
        self.field = field
    }
}

extension UniqueAccountFieldRequest: FunctionCreatable {
    public var function: AppwriteFunction {
        .uniqueAccountFieldIsAvailable
    }
    
    public typealias ResponseModel = UniqueAccountFieldAvailableDTO
    
    public var creationId: String? {
        nil
    }
}
