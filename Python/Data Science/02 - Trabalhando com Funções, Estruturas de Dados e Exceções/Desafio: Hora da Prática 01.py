import numpy as np
from random import choice, choices, randrange, randint
from math import pow

lista = [8, 12, 54, 23, 43, 1, 90, 87, 105, 77]

numero_1 = choice(lista)
numero_2 = randrange(100)
base = int(input("Digite a base: "))
expoente = int(input("Digite o expoente: "))

print(numero_1, numero_2, pow(base, expoente))

n = int(input("Digite o número de participantes do sorteio: "))
print(f"O número sorteado foi {randint(1, n)}")

nome = input("Qual o seu nome? ")
token = randrange(1000, 10000, 22)
print(f"Olá, {nome}. Seu token de acesso é {token}")

frutas = [
    "maça",
    "banana",
    "uva",
    "pera",
    "manga",
    "coco",
    "melancia",
    "mamão",
    "laranja",
    "abacaxi",
    "kiwi",
    "ameixa",
]
salada = choices(frutas, k=3)
print(salada)
