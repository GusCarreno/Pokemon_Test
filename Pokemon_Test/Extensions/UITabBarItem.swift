//
//  UITabBarItem.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import UIKit

extension UITabBarItem {
    static func pokedex(title: String?) -> UITabBarItem {
        UITabBarItem(title: title, image: .pokedex, tag: 0)
    }
    
    static func items(title: String?) -> UITabBarItem {
        UITabBarItem(title: title, image: .items, tag: 1)
    }
}
