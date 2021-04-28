//
//  Displayable.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 29/01/21.
//

import UIKit

protocol Reusable {
    static var identifier: String { get }
}

extension UICollectionViewCell: Reusable {
    static var identifier: String { return String(describing: self) }
}

protocol Displayable {
    associatedtype DisplayType
    var display: DisplayType? { get }

    func configure(with displayItem: DisplayType)
}
