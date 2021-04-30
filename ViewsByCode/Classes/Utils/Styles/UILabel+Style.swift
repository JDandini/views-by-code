//
//  UILabel+Style.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import UIKit

extension UILabel {
    convenience init(style: TextStyle) {
        self.init()
        font = style.font
        textColor = style.textColor
        textAlignment = style.alignment
        numberOfLines = 0
    }
}
