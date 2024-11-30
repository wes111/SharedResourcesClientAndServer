//
//  CommunityResourceDescriptionInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/21/24.
//

import Foundation

public struct CommunityResourceDescriptionInputValidator: InputValidator {
    public static let fieldName: String = "Resource Description"
    public static let maxCharacterCount: Int = 500
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(Self.maxCharacterCount),
        .onlyUsernameCharacterSet
    ]
}
