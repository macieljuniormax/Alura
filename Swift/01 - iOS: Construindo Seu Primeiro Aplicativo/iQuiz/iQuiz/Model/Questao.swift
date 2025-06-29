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

let questoes: [Questao] =  [
        Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?",
                alternativas: ["Expectro Patronum", "Avada Kedavra", "Expelliarmus"],
                alternativaCorreta: 2),
        
        Questao(titulo: "Quando foi lançado o filme Avatar 2?",
                alternativas: ["2014", "2022", "2023"],
                alternativaCorreta: 1),
        
        Questao(titulo: "Quando foi lançado o filme Vingadores Ultimato?",
                alternativas: ["2019", "2018", "2017"],
                alternativaCorreta: 0),
        
        Questao(titulo: "Qual é o primeiro filme da franquia Star Wars?",
                alternativas: ["Star Wars: A Ameaça Fantasma", "Star Wars: Uma Nova Esperança", "Star Wars: O Império Contra-Ataca"],
                alternativaCorreta: 1),
        
        Questao(titulo: "Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?",
                alternativas: ["Homem de Ferro", "Capitão América: O Primeiro Vingador", "Thor"],
                alternativaCorreta: 0),
        
        Questao(titulo: "Qual é o personagem principal de The Office, interpretado por Steve Carell?",
                alternativas: ["Michael Scott", "Jim Halpert", "Dwight Schrute"],
                alternativaCorreta: 0),
        
        Questao(titulo: "Qual é o trabalho de Jay Pritchett na série Modern Family?",
                alternativas: ["Médico", "Empresário", "Advogado"],
                alternativaCorreta: 1)
]
    
