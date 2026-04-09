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
        
        Spacer()
        
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(Font.title3)
                .fontWeight(Font.Weight.bold)
                .foregroundColor(Color.black)
            
            HStack(spacing: 16) {
                Button {
                    if productQuantity > 1 { productQuantity -= 1 }
                    
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(Font.title)
                        .fontWeight(Font.Weight.bold)
                }
                
                Text("\(productQuantity)")
                    .font(Font.title)
                    .fontWeight(Font.Weight.bold)
                    .foregroundColor(Color.black)
                
                Button {
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(Font.title)
                        .fontWeight(Font.Weight.bold)
                }
            }
        }
        
        Spacer()

        
        Button {
            print("O botão foi pressionado 🔘")
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Adicionar ao carrinho")
            }
            .padding()
        }
        .buttonStyle(.glass)
        .foregroundColor(Color.red500)
        .fontWeight(Font.Weight.bold)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ProductDetailView(product: storesMock[0].products[0])
}
