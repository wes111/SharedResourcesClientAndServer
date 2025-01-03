//
//  CommunityResourceDescriptionInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/21/24.
//

import Foundation
import SharedSwift

public enum CommunityResourceDescriptionInputValidator: InputValidator {
    public static let maxCharacterCount: Int = 500
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(Self.maxCharacterCount),
        .onlyTitleCharacterSet
    ]
}
