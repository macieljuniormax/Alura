//
//  StoreDetailView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 07/04/26.
//

import SwiftUI

struct StoreDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isFavorite: Bool = false
    
    internal let store: StoreType
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: HorizontalAlignment.leading) {
                VStack(alignment: HorizontalAlignment.leading, spacing: 16) {
                    StoreDetailHeaderView(store: store)
                    StoreDetailProductsView(products: store.products)
                }
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.red500)
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isFavorite.toggle()
                } label: {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(Color.red500)
                }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreDetailView(store: storesMock[0])
}
