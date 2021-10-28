//
//  ItemsViewModel.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import UIKit

extension ItemsViewController {
    
    // MARK: -
    struct ViewModel {
        let title: String?
        var cleanTitle: String? { title?.cleaned }
    }
}
