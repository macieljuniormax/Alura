//
//  ContentView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    // MARK: - Atributtes
    @State private var stores: [StoreType] = []
    @State private var isLoading: Bool = true
    
    private var homeService = HomeService()
    
    // MARK: - View
    var body: some View {
        NavigationView {
            if isLoading {
                ProgressView()
            } else {
                VStack {
                    NavigationBar()
                    
                    ScrollView(Axis.Set.vertical, showsIndicators: true) {
                        VStack {
                            CategoryGridView()
                            
                            CarouselTabView()
                            
                            StoresContainerView(stores: stores)
                        }
                    }
                }
            }
        }
        .task {
            await getStoresWithAlamofire()
        }
    }
    
    // MARK: - Methods
    func getStores() async {
        do {
            let result = try await homeService.fetchData()
            self.stores = result
        } catch RequestError.invalidUrl {
            print("URL inválida")
        } catch RequestError.errorRequest(let error) {
            print("Erro na requisição: \(error)")
        } catch {
            print("Erro inesperado: \(error.localizedDescription)")
        }
        
        self.isLoading = false
    }
    
    func getStoresWithAlamofire() async {
        do {
            let stores = try await homeService.fetchDataWithAlamofire()
            self.stores = stores
        } catch RequestError.invalidUrl {
            print("URL inválida")
        } catch RequestError.errorRequest(let error) {
            print("Erro na requisição: \(error)")
        } catch {
            print("Erro inesperado: \(error.localizedDescription)")
        }
    }
}

#Preview {
    ContentView()
}
