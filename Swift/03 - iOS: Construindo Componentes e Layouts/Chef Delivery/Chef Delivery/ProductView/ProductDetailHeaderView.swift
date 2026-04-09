//
//  ProductDetailHeaderView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 08/04/26.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    internal let product: ProductType
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading, spacing: 16) {
            Image(product.image)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .frame(maxWidth: CGFloat.infinity)
                .clipped()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 16) {
                Text(product.name)
                    .font(Font.title)
                    .fontWeight(Font.Weight.bold)
                
                Text(product.description)
                    .multilineTextAlignment(TextAlignment.leading)
                
                Text(product.formattedPrice)
                    .font(Font.title3)
                    .fontWeight(Font.Weight.bold)
            }
            .padding(Edge.Set.horizontal, 16)
            .foregroundColor(Color.black)
            
        }
    }
}

#Preview {
    ProductDetailHeaderView(product: storesMock[0].products[0])
}
