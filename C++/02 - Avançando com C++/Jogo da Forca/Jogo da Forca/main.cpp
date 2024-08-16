//
//  main.cpp
//  Jogo da Forca
//
//  Created by Maciel Ferreira Custódio Júnior on 07/04/24.
//

#include <iostream>
#include <string>
#include <map>
#include <vector>
#include <fstream>
#include <ctime>
#include <cstdlib>
#include "adiciona_palavra.hpp"
#include "chuta.hpp"
#include "imprime_cabecalho.hpp"
#include "imprime_erros.hpp"
#include "imprime_palavra.hpp"
#include "imprime_footer.hpp"
#include "le_arquivo.hpp"
#include "letra_existe.hpp"
#include "nao_acertou.hpp"
#include "salva_arquivo.hpp"
#include "sorteia_palavra.hpp"

static std::string palavra_secreta;
static std::map<char, bool> chutou;
static std::vector<char> chutes_errados;

int* funcao(){
    int* j = new int;
    *j = 5;
    
    return j;
}

int main(int argc, const char * argv[]) {
    int* i;
    i = funcao();
    
    std::cout << *i << std::endl;
    
    delete i;
    
#if 0
    imprime_cabecalho();
    palavra_secreta = sorteia_palavra();
    
    while (nao_acertou(palavra_secreta, chutou) && chutes_errados.size() < 5) {
        forca::imprime_erros(chutes_errados);
        forca::imprime_palavra(palavra_secreta, chutou);
        chuta(chutou, chutes_errados, palavra_secreta);
    }
    
    if (nao_acertou(palavra_secreta, chutou)) {
        std::cout << "Você Perdeu ☹️" << std::endl;
        std::cout << "A palavra secreta era: " << palavra_secreta << std::endl;
    } else {
        std::cout << "Parabéns, você acertou a palavra secreta " << palavra_secreta << std::endl;
        std::cout << "Você gostaria de adicionar uma nova palavra ao banco? (S/N)" << std::endl;
        
        char resposta; std::cin >> resposta;
        if (resposta == 'S') {
            adiciona_palavra();
        }
    }
    
    imprime_footer();
#endif
    return 0;
}
