//
//  CarouselTabView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct CarouselTabView: View {
    @State private var currentIndex: Int = 1
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(bannersMock) { banner in
                CarouselItemView(banner: banner)
                    .tag(banner.id)
            }
        }
        .frame(height: 200)
        .cornerRadius(20)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .padding(.horizontal, 16)
        .padding(.bottom, 16)
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 1)) {
                    if currentIndex > bannersMock.count {
                        currentIndex = 1
                    }
                    
                    currentIndex += 1
                }
            }
        }
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselTabView()
}
