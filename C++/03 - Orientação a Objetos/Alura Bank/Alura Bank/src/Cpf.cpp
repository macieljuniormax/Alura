//
//  Cpf.cpp
//  Alura Bank
//
//  Created by Maciel Ferreira Custódio Júnior on 19/05/24.
//

#include "Cpf.hpp"

Cpf::Cpf(std::string numero) :
numero(numero) {
    // validação do cpf
};

std::string Cpf::getCpf() {
    return numero;
}
