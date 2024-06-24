//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 11/5/23.
//

import Foundation

public extension Encodable {
    func toDictionary() throws -> [String: Any] {
        let data = try JSONEncoder.shared.encode(self)
        return try JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
    }
    
    func toJSONString() throws -> String {
        let jsonData = try JSONEncoder.shared.encode(self)
        return String(data: jsonData, encoding: String.Encoding.utf8)!
    }
}
