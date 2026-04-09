//
//  StoreDetailHeaderView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 08/04/26.
//

import SwiftUI

struct StoreDetailHeaderView: View {
    internal let store: StoreType
    
    var body: some View {
        VStack {
            GeometryReader { geo in
                let offset = geo.frame(in: .global).minY
                
                Image(store.headerImage)
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: geo.size.width,
                        height: offset > 0 ? 150 + offset : 150
                    )
                    .clipped()
                    .offset(y: offset > 0 ? -offset : 0)
                    .ignoresSafeArea(edges: Edge.Set.top)
            }
            .frame(height: 150)
            
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
        }
    }
}

#Preview {
    StoreDetailHeaderView(store: storesMock[0])
}
