//
//  CommunityDescriptionInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/19/24.
//

import Foundation

public enum CommunityDescriptionField: InputField {
    public typealias Validator = CommunityDescriptionInputValidator
    public static let fieldName: String = "Community Description"
    public static let maxCharacterCount: Int = 500
    public static var shouldTrimWhileTapping: Bool = false
}

public enum CommunityDescriptionInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(0),
        .maxLength(CommunityDescriptionField.maxCharacterCount),
        .onlyUsernameCharacterSet
    ]
}
