//
//  Titular.hpp
//  Alura Bank
//
//  Created by Maciel Ferreira Custódio Júnior on 19/05/24.
//

#ifndef Titular_hpp
#define Titular_hpp

#include "Cpf.hpp"
#include <string>

class Titular
{
private:
  Cpf cpf;
  std::string nome;
  void verificaTamanhoDoNome();

public:
  Titular(Cpf cpf, std::string nome);
  Cpf getCpf();
  std::string getNome();
};

#endif /* Titular_hpp */
