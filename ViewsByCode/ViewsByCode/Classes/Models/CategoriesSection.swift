//
//  CategoriesSection.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import Foundation

struct CategorySection: Codable {
    let title: String?
    let subtitle: String?
    let button: ButtonData?
    let categories: [String]
}

struct ButtonData: Codable {
    let title: String
    let action: String
}
