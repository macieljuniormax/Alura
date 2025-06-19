//
//  Conta.cpp
//  Alura Bank
//
//  Created by Maciel Ferreira Custódio Júnior on 19/05/24.
//

#include "Conta.hpp"

int Conta::numeroDeContas = 0;

Conta::Conta(std::string numero, Titular titular) :
numero(numero),
titular(titular),
saldo(0){
    numeroDeContas++;
}

Conta::~Conta(){
    numeroDeContas--;
}

void Conta::sacar(float valorASacar) {
    if(valorASacar < 0) {
        std::cout << "Não é possível sacar um valor negativo" << std::endl;
    }
    
    if(valorASacar > saldo) {
        std::cout << "Saldo insuficiente" << std::endl;
    }
    
    saldo -= valorASacar;
}

std::string Conta::getNumero() const {
    return numero;
}

Titular Conta::getTitular() const {
    return titular;
}

float Conta::getSaldo() const {
    return saldo;
}

void Conta::depositar(float valorADepositar) {
    if(valorADepositar < 0) {
        std::cout << "Não é possível depositar um valor negativo" << std::endl;
    }
    
    saldo += valorADepositar;
}

int Conta::getNumeroDeContas() {
    return numeroDeContas;
}
