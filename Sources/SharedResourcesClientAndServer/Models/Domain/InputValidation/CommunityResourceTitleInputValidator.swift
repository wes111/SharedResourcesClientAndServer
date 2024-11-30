//
//  CommunityResourceTitleInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/21/24.
//

import Foundation

public struct CommunityResourceTitleInputValidator: InputValidator {
    public static let fieldName: String = "Resource Title"
    public static let maxCharacterCount: Int = 75
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
