//
//  Questao.swift
//  iQuiz
//
//  Created by Maciel Ferreira Custódio Júnior on 29/06/25.
//

import Foundation

struct Questao: Codable {
    var titulo: String
    var alternativas: [String]
    var alternativaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?",
            alternativas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"],
            alternativaCorreta: 2),
    
    Questao(titulo: "Em que ano Vingadores Ultimato foi lançado?",
            alternativas: ["2019", "2018", "2017"],
            alternativaCorreta: 0),
    
    Questao(titulo: "Em que foi lançado o filme Avatar 2?",
            alternativas: ["2014", "2022", "2023"],
            alternativaCorreta: 1),
]
    
