//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 6/24/24.
//

import Foundation

public extension JSONEncoder {
    
    static let shared: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .custom { date, encoder in
            var container = encoder.singleValueContainer()
            let dateString = DateFormatter.sharedWithFractionalSeconds.string(from: date)
            try container.encode(dateString)
        }
        return encoder
    }()
}
