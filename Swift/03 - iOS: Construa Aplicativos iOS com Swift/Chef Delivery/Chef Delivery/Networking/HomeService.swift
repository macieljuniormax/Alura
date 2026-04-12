//
//  HomeService.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 09/04/26.
//

import Foundation

enum RequestError: Error {
    case invalidUrl
    case errorRequest(error: String)
}

struct OrderResponse: Decodable {
    let message: String
}

struct HomeService {
    func fetchData() async throws -> [StoreType] {
        guard let url = URL(string: "https://private-f25198-macielcustodio.apiary-mock.com/home") else {
            throw RequestError.invalidUrl
        }
        
        var request: URLRequest = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        return try JSONDecoder().decode([StoreType].self, from: data)
    }
    
    func confirmOrder(product: ProductType) async throws -> OrderResponse {
        guard let url = URL(string: "https://private-f25198-macielcustodio.apiary-mock.com/home") else {
            throw RequestError.invalidUrl
        }
        
        var request: URLRequest = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = try JSONEncoder().encode(product)
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        return try JSONDecoder().decode(OrderResponse.self, from: data)
    }
}
