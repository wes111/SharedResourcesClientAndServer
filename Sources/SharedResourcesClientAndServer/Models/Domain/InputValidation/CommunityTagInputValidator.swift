//
//  CommunityTagInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation

public struct CommunityTagInputValidator: InputValidator {
    public static let fieldName: String = "Tags"
    public static let maxCharacterCount: Int = 25
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
