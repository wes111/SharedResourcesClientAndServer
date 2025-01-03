//
//  CommunityTaglineInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/19/24.
//

import Foundation
import SharedSwift

public enum CommunityTaglineInputValidator: InputValidator {
    public static let maxCharacterCount: Int = 100
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(Self.maxCharacterCount),
        .onlyTitleCharacterSet
    ]
}
