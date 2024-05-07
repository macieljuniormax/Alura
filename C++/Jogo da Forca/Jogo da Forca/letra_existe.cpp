//
//  letra_existe.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "letra_existe.hpp"
#include <string>

extern std::string palavra_secreta;

bool letraExiste (char chute) {
    for (char letra : palavra_secreta) {
        if (chute == letra) {
            return true;
        }
    }
   
    return false;
}
