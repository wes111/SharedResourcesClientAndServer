//
//  CommunityNameInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/19/24.
//

import Foundation
import SharedSwift

public enum CommunityNameInputValidator: InputValidator {
    public static let maxCharacterCount: Int = 50
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
