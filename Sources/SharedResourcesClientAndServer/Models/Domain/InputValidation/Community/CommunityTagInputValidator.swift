//
//  CommunityTagInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation
import SharedSwift

public enum CommunityTagInputValidator: InputValidator {
    public static let maxCharacterCount: Int = 25
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
