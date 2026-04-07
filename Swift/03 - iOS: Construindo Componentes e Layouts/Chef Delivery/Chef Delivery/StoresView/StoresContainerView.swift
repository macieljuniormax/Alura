//
//  StoresContainerView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(title)
                .font(Font.title3)
                .fontWeight(Font.Weight.semibold)
                .foregroundColor(Color.black)
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 30) {
                ForEach(storesMock) { store in
                    NavigationLink {
                        StoreDetailView(store: store)
                    } label: {
                        StoreItemView(store: store)
                    }
                }
            }
            .foregroundColor(Color.black)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout)  {
    StoresContainerView()
}
