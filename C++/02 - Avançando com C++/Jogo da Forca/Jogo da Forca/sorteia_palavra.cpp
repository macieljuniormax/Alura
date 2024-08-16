//
//  sorteia_palavra.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "sorteia_palavra.hpp"
#include <vector>
#include <string>
#include "le_arquivo.hpp"


std::string sorteia_palavra () {
    std::vector<std::string> palavras = leArquivo();
    
    std::srand(static_cast<unsigned int>(std::time(NULL)));
    int indice_soretado = rand() % palavras.size();
    
    return palavras[indice_soretado];
}
