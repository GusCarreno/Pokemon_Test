//
//  ListBuilder.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import Foundation

final class ListBuilder {
    
    static func build() -> NavigationController {
        let router = ListRouter()
        let interactor = ListInteractor(router: router)
        let viewController = ListViewController(interactor: interactor)
        let navigationController = NavigationController(rootViewController: viewController)
        router.navigationController = navigationController
        return navigationController
    }
}
