//
//  TabBarController.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabbar()
        
        tabBar.barTintColor = .darkGrey
        tabBar.tintColor = .pokedexRed
        tabBar.isTranslucent = false
    }
    
    // MARK: - Private functions
    private func setupTabbar() {
        let pokedexView = PokedexViewBuilder.build()
        pokedexView.tabBarItem = .pokedex(title: pokedexView.title)

        let itemsView = ListBuilder.build()
        itemsView.tabBarItem = .items(title: itemsView.title)
        setViewControllers([pokedexView, itemsView], animated: false)
    }
}
