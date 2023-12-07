//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/6/23.
//

import Foundation

public struct Phone: Codable {
    public var phone: String
    
    public init(phone: String) {
        self.phone = phone
    }
}
