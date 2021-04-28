//
//  Hero.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import UIKit

struct Hero: Codable {
    let action: String
    let image: String
    var uiImage: UIImage? { UIImage(named: image) }
}
