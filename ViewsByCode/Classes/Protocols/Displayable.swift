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

extension UICollectionReusableView: Reusable {
    static var identifier: String { return String(describing: self) }
}

extension UITableViewCell: Reusable {
    static var identifier: String { return String(describing: self) }
}

protocol Displayable {
    associatedtype DisplayType
    func configure(with displayItem: DisplayType)
}
