//
//  adiciona_palavra.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "adiciona_palavra.hpp"
#include <iostream>
#include <vector>
#include "le_arquivo.hpp"
#include "salva_arquivo.hpp"

void adiciona_palavra () {
    std::cout << "Digite a nova palavra, usando letras maíusculas" << std::endl;
    std::string nova_palavra; std::cin >> nova_palavra;
    
    std::vector<std::string> lista_palavras = leArquivo();
    lista_palavras.push_back(nova_palavra);
    salva_arquivo(lista_palavras);
}

