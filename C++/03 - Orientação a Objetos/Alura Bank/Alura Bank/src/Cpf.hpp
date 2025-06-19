//
//  Cpf.hpp
//  Alura Bank
//
//  Created by Maciel Ferreira Custódio Júnior on 19/05/24.
//

#ifndef Cpf_hpp
#define Cpf_hpp

#include <string>

class Cpf {
private:
    std::string numero;
public:
    explicit Cpf(std::string numero);
    std::string getCpf();
};

#endif /* Cpf_hpp */
