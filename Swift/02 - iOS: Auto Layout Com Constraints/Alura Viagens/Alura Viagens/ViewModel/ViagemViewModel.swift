//
//  ViagemViewModel.swift
//  Alura Viagens
//
//  Created by Maciel Ferreira Custódio Júnior on 03/07/25.
//

import Foundation

enum ViagemViewModelType: String {
    case destaques
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroDeLinhas : Int { get }
}
