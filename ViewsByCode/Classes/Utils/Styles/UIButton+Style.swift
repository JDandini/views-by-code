//
//  UIButton+Style.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 29/04/21.
//

import UIKit

extension UIButton {
    convenience init(style: TextStyle) {
        self.init(type: .system)
        tintColor = style.textColor
        titleLabel?.font = style.font
        titleLabel?.textAlignment = style.alignment
    }
}
