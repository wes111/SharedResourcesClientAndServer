//
//  CommunityResourceDescriptionInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/21/24.
//

import Foundation

public enum CommunityResourceDescriptionField: InputField {
    public typealias Validator = CommunityResourceDescriptionInputValidator
    public static let fieldName: String = "Resource Description"
    public static let maxCharacterCount: Int = 500
    public static var shouldTrimWhileTapping: Bool = false
}

public enum CommunityResourceDescriptionInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(CommunityResourceDescriptionField.maxCharacterCount),
        .onlyUsernameCharacterSet
    ]
}
