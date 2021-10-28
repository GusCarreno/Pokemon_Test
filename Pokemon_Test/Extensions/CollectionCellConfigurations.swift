//
//  CollectionCellConfigurations.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import Foundation

typealias CollectionCell = CollectionCellConfiguration<PokedexCell, PokemonDetails>

extension CollectionCellConfiguration {
    
    static func pokemonCell(from pokemon: PokemonDetails) -> CollectionCell {
        CollectionCell(data: pokemon)
    }
}
