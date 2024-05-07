//
//  imprime_palavra.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "imprime_palavra.hpp"
#include <iostream>

void imprime_palavra (std::string palavra_secreta, std::map<char, bool> chutou) {
    for (char letra : palavra_secreta) {
        if (chutou[letra]) {
            std::cout << letra << " ";
        } else {
            std::cout << "_ ";
        }
    }
    std::cout << std::endl;
}

