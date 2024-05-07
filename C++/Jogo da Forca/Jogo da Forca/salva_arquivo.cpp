//
//  salva_arquivo.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 24/04/24.
//

#include "salva_arquivo.hpp"
#include <iostream>
#include <fstream>

void salva_arquivo (std::vector<std::string> nova_lista) {
    std::ofstream arquivo;
    arquivo.open("/Users/macieljunior/Library/Mobile Documents/com~apple~CloudDocs/Academy/Alura/C++/Jogo da Forca/Jogo da Forca/palavras.txt");
    
    if (arquivo.is_open()) {
        arquivo << nova_lista.size() << std::endl;
        
        for (std::string palavra : nova_lista) {
            arquivo << palavra << std::endl;
        }
        
        arquivo.close();
    } else {
        std::cout << "Não foi possível acessar o banco de palavras" << std::endl;
        exit(0);
    }
}
