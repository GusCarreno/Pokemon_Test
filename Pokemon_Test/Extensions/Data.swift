//
//  Data.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import Foundation

extension Data {
    var prettyJSON: String? {
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []) else { return nil }
        guard let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]) else { return nil }
        return String(data: data, encoding: .utf8)
    }
}
