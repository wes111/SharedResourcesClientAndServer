//
//  CommunityRuleTitleInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation

public struct CommunityRuleTitleInputValidator: InputValidator {
    public static let fieldName: String = "Rule Title"
    public static let maxCharacterCount: Int = 75
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
