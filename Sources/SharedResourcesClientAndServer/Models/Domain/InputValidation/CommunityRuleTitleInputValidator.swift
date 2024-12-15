//
//  CommunityRuleTitleInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation

public enum CommunityRuleTitleField: InputField {
    public typealias Validator = CommunityRuleTitleInputValidator
    public static let fieldName: String = "Rule Title"
    public static let maxCharacterCount: Int = 75
    public static var shouldTrimWhileTapping: Bool = true
}

public enum CommunityRuleTitleInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(CommunityRuleTitleField.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
