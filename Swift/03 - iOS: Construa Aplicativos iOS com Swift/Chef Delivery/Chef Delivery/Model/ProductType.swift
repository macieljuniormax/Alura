//
//  ProductType.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 07/04/26.
//

import Foundation

struct ProductType: Identifiable, Decodable, Encodable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ \(price.formatPrice())"
    }
}
