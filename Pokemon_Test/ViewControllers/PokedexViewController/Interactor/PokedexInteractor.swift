//
//  PokedexInteractor.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import UIKit

protocol PokedexInteractorProtocol {
    func selectPokemon(at indexPath: IndexPath, in collectionView: UICollectionView)
}

// MARK: -
final class PokedexInteractor: PokedexInteractorProtocol {
    
    // MARK: Private properties
    private let router: PokedexRouterProtocol
    
    // MARK: - Init
    init(router: PokedexRouterProtocol) {
        self.router = router
    }
    
    // MARK: - Public functions
    func selectPokemon(at indexPath: IndexPath, in collectionView: UICollectionView) {
        guard let cell = collectionView.cell(at: indexPath) as? PokedexCell,
              let pokemon = cell.data,
              let color = cell.backgroundColor
        else { return }

        router.routeToDetailView(pokemon: pokemon, color: color)
    }
}
