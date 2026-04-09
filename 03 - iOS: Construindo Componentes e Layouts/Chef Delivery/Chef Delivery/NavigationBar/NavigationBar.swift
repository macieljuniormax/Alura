//
//  NavigationBar.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack (alignment: VerticalAlignment.center) {
            Spacer()
            
            Button("R. Vergueiro, 3185") {}
                .font(.subheadline)
                .fontWeight(Font.Weight.semibold)
                .foregroundColor(Color.black)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(Font.title3)
                    .foregroundColor(Color.red)
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBar()
}
