//
//  ProductDetailQuantityView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 08/04/26.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    @State private var productQuantity: Int = 1
    
    var body: some View {
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
    }
}

#Preview {
    ProductDetailQuantityView()
}
