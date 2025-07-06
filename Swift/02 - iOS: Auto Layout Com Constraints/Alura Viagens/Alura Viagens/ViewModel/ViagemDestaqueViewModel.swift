//
//  ViagemDestaqueViewModel.swift
//  Alura Viagens
//
//  Created by Maciel Ferreira Custódio Júnior on 03/07/25.
//

import Foundation

class ViagemDestaqueViewModel: ViagemViewModel {
    var tituloSessao: String {
        return "Destaque"
    }
    
    var tipo: ViagemViewModelType {
        return ViagemViewModelType.destaques
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return viagens.count
    }
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
}
