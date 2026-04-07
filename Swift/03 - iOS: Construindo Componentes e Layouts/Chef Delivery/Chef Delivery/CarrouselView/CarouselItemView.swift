//
//  CarouselItemView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct CarouselItemView: View {
    let banner: Banner
    
    var body: some View {
        Image(banner.image)
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: ContentMode.fill)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselItemView(
        banner: Banner(id: 1, image: "barbecue")
    )
}
