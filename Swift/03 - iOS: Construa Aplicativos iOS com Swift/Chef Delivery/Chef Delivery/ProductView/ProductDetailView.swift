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
    
    var body: some View {
        ProductDetailHeaderView(product: product)
        
        Spacer()
        
        ProductDetailQuantityView(productQuantity: $productQuantity)
        
        Spacer()
        
        ProductDetailButtonView()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ProductDetailView(product: storesMock[0].products[0])
}

struct ProductDetailButtonView: View {
    var body: some View {
        Button {
            print("O botão foi pressionado 🔘")
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
