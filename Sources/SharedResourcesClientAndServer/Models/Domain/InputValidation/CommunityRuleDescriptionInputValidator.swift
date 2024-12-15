//
//  CommunityRuleDescriptionInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation

public enum CommunityRuleDescriptionField: InputField {
    public typealias Validator = CommunityRuleDescriptionInputValidator
    public static let fieldName: String = "Rule Description"
    public static let maxCharacterCount: Int = 500
    public static var shouldTrimWhileTapping: Bool = false
}

public enum CommunityRuleDescriptionInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(0),
        .maxLength(CommunityRuleDescriptionField.maxCharacterCount),
        .onlyUsernameCharacterSet
    ]
}
