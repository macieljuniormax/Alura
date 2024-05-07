//
//  nao_acertou.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "nao_acertou.hpp"
#include <string>
#include <map>

extern std::string palavra_secreta;
extern std::map<char, bool> chutou;

bool nao_acertou() {
    for (char letra : palavra_secreta) {
        if (!chutou[letra]) {
            return true;
        }
    }
   
    return false;
}
