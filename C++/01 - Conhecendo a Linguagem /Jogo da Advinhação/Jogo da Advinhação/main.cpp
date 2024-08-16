//
//  main.cpp
//  Jogo da Advinhação
//
//  Created by Maciel Ferreira Custódio Júnior on 06/04/24.
//

#include <iostream>
#include <cstdlib>
#include <ctime>

int main(int argc, const char * argv[]) {
    std::cout << "*************************************" << std::endl;
    std::cout << "* Bem-Vindos ao Jogo da Adivinhação *" << std::endl;
    std::cout << "*************************************" << std::endl;
    
    std::cout << "\nEscolha o seu nível de dificuldade: " << std::endl;
    std::cout << "Fácil (F), Médio (M), Difícil (D)" << std::endl;
    
    char dificultade; std::cin >> dificultade;
    
    int numeroTentativas;
    
    if (dificultade == 'F') {
        numeroTentativas = 15;
    } else if (dificultade == 'M') {
        numeroTentativas = 10;
    } else {
        numeroTentativas = 5;
    }
    
    std::srand(static_cast<unsigned int>(std::time(NULL)));
    const int NUMERO_SECRETO = std::rand() % 100;
    
    int chute;
    bool acertou = false;
    bool eh_maior = false;
    double pontos = 1000.0;
    double pontos_perdidos;
    
    for (int tentativas = 1; tentativas <= numeroTentativas; tentativas++) {
        std::cout << "Qual o seu chute? ";
        std::cin >> chute;
        
        pontos_perdidos = abs(static_cast<float>(chute - NUMERO_SECRETO)) / 2;
        pontos -= pontos_perdidos;
        
        acertou = chute == NUMERO_SECRETO;
        eh_maior = chute > NUMERO_SECRETO;
        
        if (acertou) {
            std::cout << "\nParabéns, você acertou o número secreto em " << tentativas << " tentativas." << std::endl;
            std::cout.precision(2);
            std::cout << std::fixed << "Sua pontuação foi de " << pontos << " pontos.\n" << std::endl;
            break;
        } else if (eh_maior) {
            std::cout << "Seu chute foi maior que o número secreto.\n" << std::endl;
        } else {
            std::cout << "Seu chute foi menor que o número secreto.\n" << std::endl;
        }
    }
    
    if (!acertou) {
        std::cout << "Que pena, você perdeu 😕" << std::endl;
    }
    
    std::cout << "*************************************" << std::endl;
    std::cout << "************ Fim de Jogo ************" << std::endl;
    std::cout << "*************************************" << std::endl;

    return 0;
}
