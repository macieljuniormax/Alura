//
//  CategoryView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct CategoryView: View {
    let category: CategoryType
    
    var body: some View {
        VStack {
            ZStack {
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .padding(8)
            }
            .frame(width: 80, height: 80)
            .glassEffect(.regular.interactive(), in: .rect(cornerRadius: 20))
            
            
            Text(category.name)
                .font(Font.system(size: 10))
                .multilineTextAlignment(.center)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryView(category: CategoryType(
        id: 1,
        name: "Restaurantes",
        image: "restaurantes",
    ))
}
