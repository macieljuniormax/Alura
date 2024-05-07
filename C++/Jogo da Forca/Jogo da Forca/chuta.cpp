//
//  chuta.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "chuta.hpp"
#include <iostream>
#include <map>
#include <vector>
#include "letra_existe.hpp"

extern std::map<char, bool> chutou;
extern std::vector<char> chutes_errados;

void chuta () {
    std::cout << "Seu chute: ";
    char chute; std::cin >> chute;
    chute = toupper(chute);
    chutou[chute] = true;
    
    if (letraExiste(chute)) {
        std::cout << "Você Acertou! A Letra "<< chute << " está na palavra" << std::endl;
    } else {
        std::cout << "Você Errou! A Letra "<< chute << " não está na palavra" << std::endl;
        chutes_errados.push_back(chute);
    }
    std::cout << std::endl;
}
