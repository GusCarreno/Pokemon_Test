//
//  APIModels.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import Foundation

struct APIResponse: Decodable {
    let next: String
    let results: [APIItem]
}

struct APIItem: Decodable {
    let name: String
    let url: String
}
