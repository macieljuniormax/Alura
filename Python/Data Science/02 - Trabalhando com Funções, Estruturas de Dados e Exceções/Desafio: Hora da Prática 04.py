# 01
try:
    numero_1 = float(input("Digite o primeiro número: "))
    numero_2 = float(input("Digite o segundo número: "))
    resultado = numero_1 / numero_2
except Exception as e:
    print(type(e), f"Erro: {e}")


# 02
idades = {"Júlia": 16, "Carol": 23, "Alberto": 19, "Roberta": 17}

try:
    nome = input("Digite um nome: ")
    idade = idades[nome]
except KeyError:
    print("Nome não encontrado")
else:
    print(idade)


# 03
def float_converter(lista: list) -> list[float]:
    try:
        lista_float = [float(item) for item in lista]
    except Exception as e:
        print(type(e), f"Erro: {e}")
    else:
        return lista_float
    finally:
        print("Fim da execução da função")


float_converter(["1", "2", "3", "4", "amarelo"])


# 04
def soma_listas(lista1: list, lista2: list) -> list:
    try:
        if len(lista1) == len(lista2):
            lista_somada = [
                (lista1[i], lista2[i], lista1[i] + lista2[i])
                for i in range(len(lista1))
            ]
            print(lista_somada)
        else:
            raise IndexError("A quantidade de elementos em cada lista é diferente.")
    except Exception as e:
        print(type(e), f"Erro: {e}")
    else:
        return lista_somada


lista1 = [4, 6, 7, 9, 10]
lista2 = [-4, 6, 8, 7, 9]
soma_listas(lista1, lista2)


# 05
gabarito = ["D", "A", "B", "C", "A"]


def calcula_resultado(testes: list[list]) -> list[float]:
    notas = []

    try:
        for teste in testes:
            nota = 0

            for i in range(len(teste)):
                if teste[i] not in ["A", "B", "C", "D"]:
                    raise ValueError(
                        f"A alternativa {teste[i]} não é uma opção de alternativa válida"
                    )
                elif teste[i] == gabarito[i]:
                    nota += 1

            notas.append(nota)
    except Exception as e:
        print(e)
    else:
        return notas


testes_com_ex = [
    ["D", "A", "B", "C", "A"],
    ["C", "A", "A", "E", "A"],
    ["D", "B", "A", "C", "A"],
]
notas = calcula_resultado(testes_com_ex)
notas


# 06
def avalia_texto(lista: list[str]) -> bool:
    try:
        for word in lista:
            if "," in word or "." in word or "!" in word or "?" in word:
                raise ValueError(f'O texto apresenta pontuações na palavra "{word}".')
    except Exception as e:
        print(e)
    else:
        return "Tratamento de texto já realizado"


lista_nao_tratada = [
    "Python",
    "é",
    "uma",
    "linguagem",
    "de",
    "programação",
    "poderosa,",
    "versátil",
    "e",
    "fácil,",
    "de",
    "aprender",
    "utilizada",
    "em",
    "diversos",
    "campos,",
    "desde",
    "análise",
    "de",
    "dados",
    "até",
    "inteligência",
    "artificial!",
]
resultado = avalia_texto(lista_nao_tratada)
resultado


# 07
def divide_colunas(pressoes: list, temperaturas:list) -> list:
  try:
    if len(pressoes) != len(temperaturas):
      raise ValueError('As listas precisam ter o mesmo tamanho')

    resultado = []
    for a, b in zip(pressoes, temperaturas):
      if b == 0:
        raise ZeroDivisionError("A 2ª lista não pode possuir um valor igual a 0")
      else:
        resultado.apend(round(a / b, 2))
  except Exception as e:
    print(e)
  except ZeroDivisionError as e:
    print(f'{e}: A 2ª lista não pode possuir um valor igual a 0')
  else:
    return resultado

pressoes = [60, 120, 140, 160, 180]
temperaturas = [0, 25, 30, 35, 40]
resultado = divide_colunas(pressoes, temperaturas)
resultado