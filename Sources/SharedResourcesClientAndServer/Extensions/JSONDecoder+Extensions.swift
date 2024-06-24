//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 6/24/24.
//

import Foundation

public extension JSONDecoder {
    
    static let shared: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .custom { decoder in
            let container = try decoder.singleValueContainer()
            let dateString = try container.decode(String.self)
            if let date = ISO8601DateFormatter.sharedWithFractionalSeconds.date(from: dateString) {
                return date
            } else {
                throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid date format")
            }
        }
        return decoder
    }()
}
