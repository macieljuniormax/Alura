//
//  Pessoa.hpp
//  Alura Bank
//
//  Created by Maciel Ferreira Custódio Júnior on 21/05/24.
//

#ifndef Pessoa_hpp
#define Pessoa_hpp

#include "Cpf.hpp"
#include <string>

class Pessoa {
private:
    Cpf cpf;
    std::string nome;
    void verificaTamanhoDoNome();
    
public:
    Pessoa(Cpf cpf, std::string nome);
    Cpf getCpf();
    std::string getNome();
};

#endif /* Pessoa_hpp */
