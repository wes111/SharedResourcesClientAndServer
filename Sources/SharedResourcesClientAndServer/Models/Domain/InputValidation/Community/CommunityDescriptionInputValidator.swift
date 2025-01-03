//
//  CommunityDescriptionInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/19/24.
//

import Foundation
import SharedSwift

public enum CommunityDescriptionInputValidator: InputValidator {
    public static let maxCharacterCount: Int = 500
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(0),
        .maxLength(Self.maxCharacterCount),
        .onlyTitleCharacterSet
    ]
}
