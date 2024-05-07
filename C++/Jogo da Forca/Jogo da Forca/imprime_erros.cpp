//
//  imprime_erros.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "imprime_erros.hpp"
#include <iostream>
#include <vector>

extern std::vector<char> chutes_errados;

void imprime_erros () {
    std::cout << "Chutes errados: ";
    for (char letra : chutes_errados) {
        std::cout << letra << " ";
    }
    std::cout << std::endl;
}

