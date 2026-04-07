//
//  CategoryView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct CategoryView: View {
    let category: Category
    
    var body: some View {
        VStack (spacing: 5) {
            ZStack {
                RoundedRectangle(cornerRadius: 20, style:RoundedCornerStyle.continuous)
                    .fill(Color.gray.opacity(0.3))
                
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .padding(8)
            }
            .frame(height: 80)
            
            
            Text(category.name)
                .font(Font.system(size: 10))
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: CGFloat.infinity, alignment: Alignment.top)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryView(category: Category(
        id: 1,
        name: "Restaurantes",
        image: "restaurantes",
    ))
}
