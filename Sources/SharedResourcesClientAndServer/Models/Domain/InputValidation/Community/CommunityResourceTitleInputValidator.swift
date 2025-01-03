//
//  CommunityResourceTitleInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/21/24.
//

import Foundation
import SharedSwift

public enum CommunityResourceTitleInputValidator: InputValidator {
    public static let maxCharacterCount: Int = 75
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
