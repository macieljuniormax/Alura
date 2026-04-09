//
//  Double+.swift
//  Chef Delivery
//
//  Created by Maciel Ferreira Custódio Júnior on 07/04/26.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
