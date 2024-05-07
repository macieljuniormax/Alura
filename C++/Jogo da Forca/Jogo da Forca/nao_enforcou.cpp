//
//  nao_enforcou.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "nao_enforcou.hpp"
#include <vector>

extern std::vector<char> chutes_errados;

bool nao_enforcou() {
    return chutes_errados.size() < 5;
}
