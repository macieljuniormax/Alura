//
//  chuta.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "letra_existe.hpp"
#include <iostream>
#include "chuta.hpp"

void chuta(std::map<char, bool>* chutou, std::vector<char>* chutes_errados) {
    std::cout << "Seu chute: ";
    char chute; std::cin >> chute;
    chute = toupper(chute);
    (*chutou)[chute] = true;
    
    if (letraExiste(chute)) {
        std::cout << "Você Acertou! A Letra "<< chute << " está na palavra" << std::endl;
    } else {
        std::cout << "Você Errou! A Letra "<< chute << " não está na palavra" << std::endl;
        (*chutes_errados).push_back(chute);
    }
    std::cout << std::endl;
}
