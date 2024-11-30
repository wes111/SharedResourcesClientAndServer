//
//  CommunityNameInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/19/24.
//

import Foundation

public struct CommunityNameInputValidator: InputValidator {
    public static let fieldName: String = "Community Name"
    public static let maxCharacterCount: Int = 50
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
