//
//  Product.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 29/01/21.
//

import Foundation

final class Product {
    var id: Int
    var sku: String
    var name: String
    var imageURL: URL?
    var price: Double
    var hasDiscount: Bool?
    var isAvailable: Bool
    var hasExpressDelivery: Bool?
    var fullPrice: Double?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let stringId = try container.decode(String.self, forKey: .id)
        id = Int(stringId) ?? 0
        sku = try container.decode(String.self, forKey: .sku)
        name = try container.decode(String.self, forKey: .name)
        let urlStr = try container.decode(String.self, forKey: .imageURL)
        imageURL = URL(string: urlStr)
        let priceInt = try container.decode(Int.self, forKey: .price)
        price = Double(priceInt)
        hasDiscount = try? container.decode(Bool.self, forKey: .hasDiscount)
        isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
        hasExpressDelivery = try? container.decode(Bool.self, forKey: .hasExpressDelivery)
        if let fullPriceInt = try? container.decode(Int.self, forKey: .fullPrice) {
            fullPrice = Double(fullPriceInt)
        }
    }
}

extension Product: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case sku
        case name
        case imageURL = "look_image"
        case price
        case hasDiscount = "has_discount"
        case isAvailable = "is_available"
        case hasExpressDelivery = "is_express_delivery"
        case fullPrice = "msrp"
    }

}
