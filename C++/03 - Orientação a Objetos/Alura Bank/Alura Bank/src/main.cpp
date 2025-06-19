//
//  main.cpp
//  Alura Bank
//
//  Created by Maciel Ferreira Custódio Júnior on 19/05/24.
//

#include <iostream>
#include "Conta.hpp"
#include "Titular.hpp"
#include "Cpf.hpp"

void ExibeSaldo(const Conta& conta) {
    Conta umaConta("123456",  Titular(Cpf("123.456.789-10"), "Maciel Júnior"));
    umaConta.depositar(300);
    
    std::cout << "Titular: " << conta.getTitular().getNome() << std::endl;
    std::cout << "Saldo: R$" << conta.getSaldo() << std::endl;
}

int main(int argc, const char * argv[]) {
    Conta umaConta("123456",  Titular(Cpf("123.456.789-10"), "Maciel Júnior"));
    umaConta.depositar(300);
    ExibeSaldo(umaConta);
    

    std::cout << "Numero de Contas: " << Conta::getNumeroDeContas() << std::endl;
    
    return 0;
}
