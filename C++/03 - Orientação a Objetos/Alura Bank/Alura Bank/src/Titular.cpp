//
//  Titular.cpp
//  Alura Bank
//
//  Created by Maciel Ferreira Custódio Júnior on 19/05/24.
//

#include "Titular.hpp"

Titular::Titular(Cpf cpf, std::string nome) :
cpf(cpf),
nome(nome){
    verificaTamanhoDoNome();
}

Cpf Titular::getCpf() {
    return cpf;
}

std::string Titular::getNome() {
    return nome;
}

void Titular::verificaTamanhoDoNome(){
    if (nome.size() < 5) {
        exit(1);
    }
}
