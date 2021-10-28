//
//  UICollectionViewFlowLayout.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import UIKit

extension UICollectionViewFlowLayout {
    static var pokedexLayout: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 20.0
        layout.minimumLineSpacing = spacing
        layout.footerReferenceSize = CGSize(width: 400, height: 100)
        layout.minimumInteritemSpacing = spacing
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: 0, right: spacing)
        return layout
    }
}
