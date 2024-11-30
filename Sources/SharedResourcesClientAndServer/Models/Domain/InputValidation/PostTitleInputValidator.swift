//
//  PostTitleInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/22/24.
//

import Foundation

public struct PostTitleInputValidator: InputValidator {
    public static let fieldName: String = "Post Title"
    public static let maxCharacterCount: Int = 100
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
