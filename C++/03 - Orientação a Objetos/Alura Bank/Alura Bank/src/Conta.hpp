//
//  Conta.hpp
//  Alura Bank
//
//  Created by Maciel Ferreira Custódio Júnior on 19/05/24.
//


#ifndef Conta_hpp
#define Conta_hpp

#include "Titular.hpp"
#include <iostream>
#include <string>

class Conta {
private:
    static int numeroDeContas;
    
public:
    static int getNumeroDeContas();
    
private:
    std::string numero;
    Titular titular;
    float saldo;
    void verificaTamanhoDoNome();
    
public:
    Conta(std::string numero, Titular titular);
    ~Conta();
    void sacar(float valorASacar);
    void depositar(float valorADepositar);
    std::string getNumero() const;
    Titular getTitular() const;
    float getSaldo() const;
};

#endif /* Conta_hpp */
