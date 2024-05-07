//
//  imprime_erros.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "imprime_erros.hpp"
#include <iostream>

void imprime_erros (std::vector<char>& chutes_errados) {
    std::cout << "Chutes errados: ";
    for (char letra : chutes_errados) {
        std::cout << letra << " ";
    }
    std::cout << std::endl;
}

