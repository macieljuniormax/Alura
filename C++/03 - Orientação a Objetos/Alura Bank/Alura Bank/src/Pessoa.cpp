//
//  Pessoa.cpp
//  Alura Bank
//
//  Created by Maciel Ferreira Custódio Júnior on 21/05/24.
//

#include "Pessoa.hpp"

Pessoa::Pessoa(Cpf cpf, std::string nome) :
cpf(cpf),
nome(nome){
    verificaTamanhoDoNome();
}

Cpf Pessoa::getCpf() {
    return cpf;
}

std::string Pessoa::getNome() {
    return nome;
}

void Pessoa::verificaTamanhoDoNome(){
    if (nome.size() < 5) {
        exit(1);
    }
}
