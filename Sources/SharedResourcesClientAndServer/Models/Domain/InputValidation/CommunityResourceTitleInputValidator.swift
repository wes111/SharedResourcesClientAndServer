//
//  CommunityResourceTitleInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/21/24.
//

import Foundation

public enum CommunityResourceTitleField: InputField {
    public typealias Validator = CommunityResourceTitleInputValidator
    public static let fieldName: String = "Resource Title"
    public static let maxCharacterCount: Int = 75
    public static var shouldTrimWhileTapping: Bool = true
}

public enum CommunityResourceTitleInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(CommunityResourceTitleField.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
