//
//  StoreDetailView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 07/04/26.
//

import SwiftUI

struct StoreDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var isFavorite = false
    
    let store: StoreType
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: HorizontalAlignment.leading, spacing: 16) {
                GeometryReader { geo in
                    let offset = geo.frame(in: .global).minY
                    
                    Image(store.headerImage)
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: geo.size.width,
                            height: offset > 0 ? 250 + offset : 250
                        )
                        .clipped()
                        .offset(y: offset > 0 ? -offset : 0)
                        .ignoresSafeArea(edges: Edge.Set.top)
                }
                .frame(height: 250)
                
                HStack(alignment: VerticalAlignment.center) {
                    Text(store.name)
                        .font(Font.title)
                        .fontWeight(Font.Weight.bold)
                    
                    Spacer()
                    
                    Image(store.logoImage)
                }
                .padding(Edge.Set.horizontal, 16)
                
                HStack(alignment: VerticalAlignment.center) {
                    Text(store.location)
                    
                    Spacer()
                    
                    ForEach(1...store.stars, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    }
                }
                .padding(Edge.Set.horizontal, 16)
                
                Text("Produtos")
                    .font(Font.title2)
                    .fontWeight(Font.Weight.bold)
                    .padding(Edge.Set.horizontal, 16)
                
                ForEach(store.products) { product in
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        HStack(alignment: VerticalAlignment.top, spacing: 8) {
                            VStack(alignment: HorizontalAlignment.leading) {
                                Text(product.name)
                                    .fontWeight(Font.Weight.bold)
                                    .foregroundColor(Color.black)
                                
                                Text(product.description)
                                    .foregroundColor(Color.black.opacity(0.7))
                                    .multilineTextAlignment(TextAlignment.leading)
                                
                                Spacer()
                                
                                Text(product.formattedPrice)
                                    .foregroundStyle(Color.black)
                            }
                            
                            Spacer()
                            
                            Image(product.image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(15)
                                .frame(height: 100)
                                .shadow(color: Color.black.opacity(0.3),
                                        radius: 20, x: 6, y: 8)
                        }
                    }
                }
                .padding(Edge.Set.horizontal, 16)
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
