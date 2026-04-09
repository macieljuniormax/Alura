//
//  StoresContainerView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct StoresContainerView: View {
    @State private var ratingFilter = 0
    
    private let title = "Lojas"
    private var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            HStack {
                Text(title)
                    .font(Font.title3)
                    .fontWeight(Font.Weight.semibold)
                    .foregroundColor(Color.black)
                
                Spacer()
                
                Menu {
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }

                    Section {
                        ForEach(1...5, id: \.self) { rating in
                            Button {
                                ratingFilter = rating
                            } label: {
                                if rating > 1 { Text("\(rating) estrelas ou mais") }
                                else { Text("\(rating) estrela ou mais") }
                            }

                        }
                    }
                } label: {
                    // O Gatilho do Menu com aparência de Vidro
                    HStack {
                        Text("Filtrar")
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                    .font(Font.title3)
                }
                .menuStyle(.button)
                .foregroundColor(Color.black)
    

            }
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 30) {
                if(filteredStores.isEmpty) {
                    Text("Nenhum resultado encontrado")
                        .font(Font.title2)
                        .foregroundColor(Color.red500)
                        .fontWeight(Font.Weight.bold)
                        .padding()
                        .frame(maxWidth: CGFloat.infinity)
                } else {
                    ForEach(filteredStores) { store in
                        NavigationLink {
                            StoreDetailView(store: store)
                        } label: {
                            StoreItemView(store: store)
                        }
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
