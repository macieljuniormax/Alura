//
//  DataSourceMock.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import Foundation

let categoriesMock: [Category] = [
    Category(id: 1, name: "Restaurantes", image: "restaurantes"),
    Category(id: 2, name: "Mercado", image: "mercado"),
    Category(id: 3, name: "Farmácia", image: "farmacia"),
    Category(id: 4, name: "Pet", image: "petshop"),
    Category(id: 5, name: "Descontos", image: "descontos"),
    Category(id: 6, name: "Bebidas", image: "bebidas"),
    Category(id: 7, name: "Gourmet", image: "gourmet"),
]

let bannersMock: [Banner] = [
    Banner(id: 1, image: "barbecue"),
    Banner(id: 2, image: "brazilian-meal"),
    Banner(id: 3, image: "pokes"),
]

let storesMock: [Store] = [
    Store(id: 1, name: "Açaí Panda", image: "acai-panda-logo"),
    Store(id: 2, name: "Max Bakery", image: "bakery-logo"),
    Store(id: 3, name: "Cabron", image: "carbron-logo"),
    Store(id: 4, name: "Food Court", image: "food-court-logo"),
    Store(id: 5, name: "Monstro Burger", image: "monstro-burger-logo")
]
