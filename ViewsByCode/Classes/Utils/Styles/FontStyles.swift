//
//  Styles.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import UIKit

extension UIFont {
    class var h1: UIFont {
        UIFont.systemFont(ofSize: 30, weight: .bold)
    }

    class var h2: UIFont {
        UIFont.systemFont(ofSize: 25, weight: .bold)
    }

    class var h3: UIFont {
        UIFont.systemFont(ofSize: 20, weight: .medium)
    }

    class var h4: UIFont {
        UIFont.systemFont(ofSize: 18, weight: .regular)
    }

    class var paragraphBold: UIFont {
        UIFont.systemFont(ofSize: 16, weight: .bold)
    }

    class var paragraph: UIFont {
        UIFont.systemFont(ofSize: 16, weight: .regular)
    }

    class var link: UIFont {
        UIFont.systemFont(ofSize: 13, weight: .bold)
    }
}
