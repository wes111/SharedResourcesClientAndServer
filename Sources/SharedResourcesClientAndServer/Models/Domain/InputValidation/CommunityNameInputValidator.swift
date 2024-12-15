//
//  CommunityNameInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/19/24.
//

import Foundation

public enum CommunityNameField: InputField {
    public typealias Validator = CommunityNameInputValidator
    public static let fieldName: String = "Community Name"
    public static let maxCharacterCount: Int = 50
    public static var shouldTrimWhileTapping: Bool = true
}

public enum CommunityNameInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(CommunityNameField.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
