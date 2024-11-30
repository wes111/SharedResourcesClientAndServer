//
//  PostBodyInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/22/24.
//

import Foundation

public struct PostBodyInputValidator: InputValidator {
    public static let fieldName: String = "Post Content"
    public static let maxCharacterCount: Int = 500
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyUsernameCharacterSet
    ]
}
