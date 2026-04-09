//
//  CarouselItemView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct CarouselItemView: View {
    let banner: BannerType
    
    var body: some View {
        HStack {
            Image(banner.image)
                .resizable()
                .scaledToFill()
                .clipped()
        }
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(
                    LinearGradient(
                        colors: [.white.opacity(0.6), .white.opacity(0.1)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1.5
                )
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselItemView(
        banner: BannerType(id: 1, image: "barbecue")
    )
}
