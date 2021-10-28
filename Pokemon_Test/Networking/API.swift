//
//  API.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import Foundation
import Combine

class API {
    static let agent = NetworkAgent()
    static let baseURL = URL(string: "https://pokeapi.co/api/v2/")!
    static var cancellables = Set<AnyCancellable>()
    
    enum ItemType: String {
        case pokemons = "pokemon"
        case items = "item"
    }
}
