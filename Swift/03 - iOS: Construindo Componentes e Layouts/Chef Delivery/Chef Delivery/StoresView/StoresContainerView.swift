//
//  StoresContainerView.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 04/04/26.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    
    var body: some View {
        VStack {
            Text(title)
                .font(Font.title3)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout)  {
    StoresContainerView()
}
