//
//  CategoryItem.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import Foundation

struct CategoryItem {
    let name: String
    var image: String {
        name.diacriticFree
    }
}
