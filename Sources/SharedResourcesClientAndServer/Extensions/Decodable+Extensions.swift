//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 5/19/24.
//

import Foundation

public extension Decodable {
    
    // Decode a dictionary with values that do not conform to 'Codable' (e.g. 'Any') to
    // a Decodable struct.
    // swiftlint:disable:next line_length
    // https://stackoverflow.com/questions/68209205/how-to-directly-convert-a-dictionary-to-a-codable-instance-in-swift
    init<Key: Hashable>(_ dict: [Key: Any]) throws {
        let data = try JSONSerialization.data(withJSONObject: dict, options: [])
        self = try JSONDecoder.shared.decode(Self.self, from: data)
    }
}
