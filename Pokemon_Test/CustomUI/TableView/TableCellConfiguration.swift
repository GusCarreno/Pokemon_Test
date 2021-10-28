//
//  TableCellConfiguration.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import UIKit

protocol ConfigurableCell {
    associatedtype DataType
    
    var data: DataType? { get }
    func configure(with data: DataType)
}

// MARK: -
protocol TableCellConfigurator {
    static var cellType: UITableViewCell.Type? { get }
    static var reuseId: String { get }
    var rowHeight: CGFloat { get }
    func configureCell(_ cell: UITableViewCell)
}

// MARK: -
final class TableCellConfiguration<Cell: ConfigurableCell, Data>: TableCellConfigurator where Data == Cell.DataType {
    
    // MARK: Public properties
    static var cellType: UITableViewCell.Type? { Cell.self as? UITableViewCell.Type }
    static var reuseId: String { String(describing: Cell.self) }
    
    let rowHeight: CGFloat
    let data: Data
    
    // MARK: - Init
    init(data: Data, rowHeight: CGFloat = 60.0) {
        self.data = data
        self.rowHeight = rowHeight
    }
    
    // MARK: - Public functions
    func configureCell(_ cell: UITableViewCell) {
        guard let cell = cell as? Cell else { return }
        cell.configure(with: data)
    }
}
