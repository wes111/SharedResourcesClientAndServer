//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 5/17/24.
//

import Foundation

// TODO: - This should be removed. The decoding/encoding strategy needed
// is defined in shared instances, so this is not needed...
public struct DateWrapper: Decodable {
    public let date: Date

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let dateString = try container.decode(String.self)
        
        guard let date = ISO8601DateFormatter.sharedWithFractionalSeconds.date(from: dateString) else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Invalid date format"
            )
        }
        self.date = date
    }
}
