//
//  CommunityCategoryInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation

public struct CommunityCategoryInputValidator: InputValidator {
    public static let fieldName: String = "Categories"
    public static let maxCharacterCount: Int = 50
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
