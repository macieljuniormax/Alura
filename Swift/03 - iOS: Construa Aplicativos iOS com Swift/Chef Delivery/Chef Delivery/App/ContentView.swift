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
    @State private var storesType: [StoreType] = []
    
    private var homeService = HomeService()
    
    // MARK: - View
    var body: some View {
        NavigationView {
            VStack {
                NavigationBar()
                
                ScrollView(Axis.Set.vertical, showsIndicators: true) {
                    VStack {
                        CategoryGridView()
                        
                        CarouselTabView()
                        
                        StoresContainerView()
                    }
                }
            }
        }
        .onAppear {
            Task {
                await getStores()
            }
        }
    }
    
    // MARK: - Methods
    func getStores() async {
        do {
            let result = try await homeService.fetchData()
            self.storesType = result
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
