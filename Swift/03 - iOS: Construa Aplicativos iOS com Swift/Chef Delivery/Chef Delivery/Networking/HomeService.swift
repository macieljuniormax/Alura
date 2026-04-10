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

struct HomeService {
    func fetchData() async throws -> Result<[StoreType], RequestError> {
        guard let url = URL(string: "https://private-f25198-macielcustodio.apiary-mock.com/home") else {
            return .failure(.invalidUrl)
        }
        
        var request: URLRequest = URLRequest(url: url)
        request.httpMethod = "GET"
        
        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            let storesObjetc = try JSONDecoder().decode([StoreType].self, from: data)
            
            return .success(storesObjetc)
        } catch {
            return .failure(.errorRequest(error: error.localizedDescription))
        }
    }
}
