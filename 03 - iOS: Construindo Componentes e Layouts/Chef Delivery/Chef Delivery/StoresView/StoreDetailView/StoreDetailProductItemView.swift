//
//  StoreDetailProductItemView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 08/04/26.
//

import SwiftUI

struct StoreDetailProductItemView: View {
    @State private var selectedProduct: ProductType?
    
    internal let product: ProductType
    
    var body: some View {
        HStack(alignment: VerticalAlignment.top, spacing: 8) {
            VStack(alignment: HorizontalAlignment.leading, spacing: 8) {
                Text(product.name)
                    .fontWeight(Font.Weight.bold)
                    .foregroundColor(Color.black)
                
                Text(product.description)
                    .foregroundColor(Color.black.opacity(0.7))
                    .multilineTextAlignment(TextAlignment.leading)
                    .lineLimit(2)
                
                Spacer()
                
                Text(product.formattedPrice)
                    .foregroundStyle(Color.black)
            }
            .padding(Edge.Set.vertical, 8)
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(15)
                .frame(height: 120)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 20, x: 6, y: 8)
        }
        .frame(height: 120)
    }
}

#Preview {
    StoreDetailProductItemView(product: storesMock[0].products[0])
}
