//
//  InputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/15/24.
//

import Foundation

public protocol InputValidator {
    static var validationRules: [InputValidationRule] { get }
    static var fieldName: String { get }
    
    static func unmetRequirements(for input: String) -> [InputValidationRule]
    static func isValid(input: String) -> Bool
}

public extension InputValidator {
    static func unmetRequirements(for input: String) -> [InputValidationRule] {
        validationRules.filter { !$0.validate(input: input) }
    }

    static func isValid(input: String) -> Bool {
        unmetRequirements(for: input).isEmpty
    }
}
