//
//  CommunityTaglineInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/19/24.
//

import Foundation

public enum CommunityTaglineField: InputField {
    public typealias Validator = CommunityTaglineInputValidator
    public static let fieldName: String = "Community Tagline"
    public static let maxCharacterCount: Int = 100
    public static var shouldTrimWhileTapping: Bool = true
}

public enum CommunityTaglineInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(CommunityTaglineField.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
