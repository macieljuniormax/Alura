//
//  OrderTypeGridView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct CategoryGridView: View {
    private let columns = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 8) {
            ForEach(categoriesMock) { category in
                CategoryView(category: category)
                    .frame(maxWidth: CGFloat.infinity, alignment: Alignment.top)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryGridView()
}
