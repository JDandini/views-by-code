//
//  HomeBanner.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import Foundation

struct HomeBanner: Codable {
    let title: String
    let subtitle: String
    let image: String
    let action: String
    let iconImage: String
    let iconTitle: String
}

extension HomeBanner {
    enum CodingKeys: String, CodingKey {
        case title
        case subtitle
        case image
        case action
        case iconImage = "image_icon"
        case iconTitle = "image_title"
    }
}
