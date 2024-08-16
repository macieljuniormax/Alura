//
//  le_arquivo.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "le_arquivo.hpp"
#include <iostream>
#include <fstream>

std::vector<std::string> leArquivo(){
    std::ifstream arquivo;
    arquivo.open("/Users/macieljunior/Library/Mobile Documents/com~apple~CloudDocs/Academy/Alura/C++/Jogo da Forca/Jogo da Forca/palavras.txt");
    
    if (arquivo.is_open()) {
        int quantidade_palavras;
        arquivo >> quantidade_palavras;

        std::vector<std::string> palavras_arquivo;

        for (int i = 0; i < quantidade_palavras; i++) {
           std::string palavra_lida;
           arquivo >> palavra_lida;
           palavras_arquivo.push_back(palavra_lida);
        }

        arquivo.close();
        return palavras_arquivo;
    } else {
        std::cout << "Não foi possível acessar o banco de palavras" << std::endl;
        exit(0);
    }
}
