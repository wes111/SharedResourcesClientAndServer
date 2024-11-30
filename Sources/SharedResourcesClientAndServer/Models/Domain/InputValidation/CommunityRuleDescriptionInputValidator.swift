//
//  CommunityRuleDescriptionInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation

public struct CommunityRuleDescriptionInputValidator: InputValidator {
    public static let fieldName: String = "Rule Description"
    public static let maxCharacterCount: Int = 500
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(0),
        .maxLength(Self.maxCharacterCount),
        .onlyUsernameCharacterSet
    ]
}
