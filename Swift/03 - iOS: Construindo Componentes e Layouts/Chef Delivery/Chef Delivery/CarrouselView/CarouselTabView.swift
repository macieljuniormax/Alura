//
//  CarouselTabView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct CarouselTabView: View {
    var body: some View {
        TabView {
            ForEach(bannersMock) { banner in
                CarouselItemView(banner: banner)
            }
        }
        .frame(height: 250)
        .frame(maxWidth: .infinity)
        .cornerRadius(20)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .automatic))
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselTabView()
}
