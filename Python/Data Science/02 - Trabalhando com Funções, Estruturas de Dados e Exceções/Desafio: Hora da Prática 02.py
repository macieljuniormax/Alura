# 01
lista = [16, 14, 63, 65, 17, 99, 70, 11, 20, 48, 79, 32, 17, 89, 12, 25, 66]

print(len(lista))
print(max(lista))
print(min(lista))

# 02
tabuada = int(input("Digite um número de 1 a 10: "))
for number in range(1, 11, 1):
    print(f"{tabuada} x {number} = {tabuada * number}")

# 03
numeros = [97, 80, 94, 88, 80, 1, 16, 53, 62, 32, 24, 99]
mult_3 = []
for numero in numeros:
    if numero % 3 == 0:
        mult_3.append(numero)

# print(mult_3)

# 04
lista_numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
lista_numeros_atualizados = list(map(lambda x: x * x, lista_numeros))
print(lista_numeros_atualizados)

# 05
notas = []
for i in range(1, 6, 1):
    nota = float(input(f"Digite a Nota {i}: "))
    notas.append(nota)

notas.remove(max(notas))
notas.remove(min(notas))

print(sum(notas) / len(notas))
