//
//  Creatable.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/2/24.
//

import Foundation

/// A protocol that defines the requirements for types representing creation requests for backend storage.
/// Conforming types are encodable requests that can specify an optional identifier and a designated backend collection,
/// and provide a mapped response type for use after creation.
///
/// Conformance to `Creatable` enables uniform handling of request objects that are sent to backend collections
/// for new entity creation.
///
/// - Associated Type:
///   - `ResponseModel`: The type to which the response will be converted after the creation request is processed.
///
/// - Properties:
///   - `objectId`: An optional identifier. If `nil`, a unique identifier is assumed to be generated on creation.
///   - `collection`: The backend collection associated with the entity.
///
/// - Requirements:
///   Conforming types must implement the `Encodable` and `Sendable` protocols.
public protocol Creatable: Encodable, Sendable {
    associatedtype ResponseModel: DomainConvertible
    
    var creationId: String? { get } // nil means a unqiue id should be created.
}

public protocol FunctionCreatable: Creatable {
    var function: AppwriteFunction { get }
}


