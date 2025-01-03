//
//  CommunityRuleDescriptionInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation
import SharedSwift

public enum CommunityRuleDescriptionInputValidator: InputValidator {
    public static let maxCharacterCount: Int = 500
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(0),
        .maxLength(Self.maxCharacterCount),
        .onlyTitleCharacterSet
    ]
}
