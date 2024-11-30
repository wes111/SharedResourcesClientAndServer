//
//  CommunityDescriptionInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/19/24.
//

import Foundation

public struct CommunityDescriptionInputValidator: InputValidator {
    public static let fieldName: String = "Community Description"
    public static let maxCharacterCount: Int = 500
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(0),
        .maxLength(Self.maxCharacterCount),
        .onlyUsernameCharacterSet
    ]
}
