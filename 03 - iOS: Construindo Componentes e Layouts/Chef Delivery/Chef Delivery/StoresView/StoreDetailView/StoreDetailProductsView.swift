//
//  StoreDetailProductView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 08/04/26.
//

import SwiftUI

struct StoreDetailProductsView: View {
    @State private var selectedProduct: ProductType?
    
    internal let products: [ProductType]
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading, spacing: 16) {
            Text("Produtos")
                .font(Font.title2)
                .fontWeight(Font.Weight.bold)
                .padding(Edge.Set.horizontal, 16)
            
            ForEach(products) { product in
                Button {
                    selectedProduct = product
                } label: {
                    StoreDetailProductItemView(product: product)
                }
                .sheet(item: $selectedProduct) { product in
                    ProductDetailView(product: product)
                }
            }
            .padding(Edge.Set.horizontal, 16)
        }
    }
}

#Preview {
    StoreDetailProductsView(products: storesMock[0].products)
}
