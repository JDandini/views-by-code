//
//  Benefits.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import Foundation

struct Benefits: Codable {
    let title: String
    let perks: [Perk]
}

struct Perk: Codable {
    let title: String
    let subtitle: String
    let image: String
}
