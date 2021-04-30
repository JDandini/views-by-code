//
//  UILabelStyle.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import UIKit

enum TextStyle {
    case paragraph
    case headerTitle
    case headerSubtitle
    case paragraphBold
    case link
}

extension TextStyle {
    var font: UIFont {
        switch self {
        case .headerTitle: return .h2
        case .link: return .link
        case .paragraph: return .paragraph
        case .paragraphBold: return .paragraphBold
        case .headerSubtitle: return .h4
        }
    }

    var textColor: UIColor {
        switch self {
        case .link:
            return .systemBlue
        default:
            return .black
        }
    }

    var alignment: NSTextAlignment {
        return .left
    }
}
