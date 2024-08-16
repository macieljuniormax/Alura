//
//  imprime_palavra.hpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#pragma once
#ifndef imprime_palavra_hpp
#define imprime_palavra_hpp

#include <stdio.h>
#include <map>
#include <string>

namespace forca {
    void imprime_palavra (std::string& palavra_secreta, std::map<char, bool>& chutou);
}

#endif /* imprime_palavra_hpp */
