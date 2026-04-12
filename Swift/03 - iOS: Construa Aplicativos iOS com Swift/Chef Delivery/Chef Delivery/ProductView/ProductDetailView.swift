//
//  ProductDetailView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 08/04/26.
//

import SwiftUI

struct ProductDetailView: View {
    @State private var productQuantity: Int = 1
    
    internal let product: ProductType
    internal var homeService: HomeService = HomeService()
    
    var body: some View {
        ProductDetailHeaderView(product: product)
        
        Spacer()
        
        ProductDetailQuantityView(productQuantity: $productQuantity)
        
        Spacer()
        
        ProductDetailButtonView(onButtonPress: {
            Task {
                await confirmOrder()
            }
        })
    }
    
    // MARK: - Methods
    func confirmOrder() async {
        do {
            let result = try await homeService.confirmOrder(product: product)
            print(result.message)
        } catch RequestError.invalidUrl {
            print("URL inválida")
        } catch RequestError.errorRequest(let error) {
            print("Erro na requisição: \(error)")
        } catch {
            print("Erro inesperado: \(error.localizedDescription)")
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ProductDetailView(product: storesMock[0].products[0])
}

struct ProductDetailButtonView: View {
    // MARK: - Methods
    internal let onButtonPress: () -> Void
    
    var body: some View {
        Button {
            onButtonPress()
                
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Enviar Pedido")
            }
            .padding()
        }
        .buttonStyle(.glass)
        .foregroundColor(Color.red500)
        .fontWeight(Font.Weight.bold)
    }
}
