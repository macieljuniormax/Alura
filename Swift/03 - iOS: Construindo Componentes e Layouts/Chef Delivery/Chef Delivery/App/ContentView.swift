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
        NavigationView {
            VStack {
                NavigationBar()
                
                ScrollView(Axis.Set.vertical, showsIndicators: true) {
                    VStack {
                        CategoryGridView()
                        
                        CarouselTabView()
                        
                        StoresContainerView()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
