//
//  ContentView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        VStack {
            NavigationBar()
                .padding(Edge.Set.horizontal, 16)
            
            ScrollView(Axis.Set.vertical, showsIndicators: true) {
                VStack(spacing: 32) {
                    CategoryGridView()
                        .padding(Edge.Set.horizontal, 16)
                    
                    CarouselTabView()
                        .padding(Edge.Set.horizontal, 16)
                    
                    StoresContainerView()
                        .padding(Edge.Set.horizontal, 16)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
