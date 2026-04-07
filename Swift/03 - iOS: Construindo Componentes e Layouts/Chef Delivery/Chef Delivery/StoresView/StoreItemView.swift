//
//  StoreItemView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct StoreItemView: View {
    let store: Store
    
    var body: some View {
        HStack {
            Image(store.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            
            Text(store.name)
                .font(Font.subheadline)
            
            Spacer()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreItemView(
        store: Store(id: 1, name: "Monstro Burger", image: "monstro-burger-logo")
    )
}
