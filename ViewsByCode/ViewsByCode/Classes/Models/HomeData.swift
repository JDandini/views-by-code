//
//  HomeData.swift
//  ViewsByCode
//
//  Created by Javier Castañeda on 28/04/21.
//

import Foundation

struct HomeData: Codable {
    let hero: [Hero]
    let allCategories: CategorySection
    let fixedCategories: CategorySection
    let seasonProducts: SeasonSection
    let arBanner: HomeBanner
    let storesBanner: HomeBanner
    let benefits: Benefits
}

extension  HomeData {
    enum CodingKeys: String, CodingKey {
        case hero
        case allCategories = "all_categories"
        case fixedCategories = "fixed_categories"
        case seasonProducts = "season_products"
        case arBanner = "ar_banner"
        case storesBanner = "stores_banner"
        case benefits
    }
}
