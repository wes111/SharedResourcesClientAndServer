//
//  CommunityTaglineInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/19/24.
//

import Foundation

public struct CommunityTaglineInputValidator: InputValidator {
    public static let fieldName: String = "Community Tagline"
    public static let maxCharacterCount: Int = 100
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
