# 01
lista_01 = [[4, 6, 5, 9], [1, 0, 7, 2], [3, 4, 1, 8]]
resultado_01 = sum([sum(item) for item in lista_01])


# 02
lista_02 = [("Pedro", 1.74, 81), ("Júlia", 1.65, 67), ("Otávio", 1.81, 83)]
resultado_02 = [lista_02[i][2] for i in range(len(lista_02))]


# 03
lista_03 = ["Pedro", "Júlia", "Otávio", "Eduardo"]
resultado_03 = [(i, lista_03[i]) for i in range(len(lista_03))]


# 04
lista_04 = [
    ("Apartamento", 1700),
    ("Apartamento", 1400),
    ("Casa", 2150),
    ("Apartamento", 1900),
    ("Casa", 1100),
]
resultado_04 = [
    (lista_04[i][1]) for i in range(len(lista_04)) if lista_04[i][0] == "Apartamento"
]


# 05
meses = [
    "Jan",
    "Fev",
    "Mar",
    "Abr",
    "Mai",
    "Jun",
    "Jul",
    "Ago",
    "Set",
    "Out",
    "Nov",
    "Dez",
]
despesa = [860, 490, 1010, 780, 900, 630, 590, 770, 620, 560, 840, 360]
meses_despesa = list(zip(meses, despesa))
resultado_05_0 = {
    meses_despesa[i][0]: meses_despesa[i][1] for i in range(len(meses_despesa))
}
resultado_05 = {meses[i]: despesa[i] for i in range(len(meses))}


# 06
vendas = [
    ("2023", 4093),
    ("2021", 4320),
    ("2021", 5959),
    ("2022", 8883),
    ("2023", 9859),
    ("2022", 5141),
    ("2022", 7688),
    ("2022", 9544),
    ("2023", 4794),
    ("2021", 7178),
    ("2022", 3030),
    ("2021", 7471),
    ("2022", 4226),
    ("2022", 8190),
    ("2021", 9680),
    ("2022", 5616),
]
resultado_06 = [
    vendas[i]
    for i in range(len(vendas))
    if vendas[i][0] == "2022" and vendas[i][1] > 6000
]


# 07
glicemia = [
    129,
    82,
    60,
    97,
    101,
    65,
    62,
    167,
    87,
    53,
    58,
    92,
    66,
    120,
    109,
    62,
    86,
    96,
    103,
    88,
    155,
    52,
    89,
    73,
]
resultado_07 = [
    (
        ("Hipoglicemia", glicose)
        if glicose <= 70
        else (
            ("Normal", glicose)
            if glicose < 100
            else ("Alterada", glicose) if glicose < 125 else ("Diabetes", glicose)
        )
    )
    for glicose in glicemia
]


# 08
id = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
quantidade = [15, 12, 1, 15, 2, 11, 2, 12, 2, 4]
preco = [93.0, 102.0, 18.0, 41.0, 122.0, 14.0, 71.0, 48.0, 14.0, 144.0]
tabela = [("id", "quantidade", "preco", "total")]
tabela += [
    (id[i], quantidade[i], preco[i], quantidade[i] * preco[i]) for i in range(len(id))
]
resultado_08 = tabela


# 09
estados = [
    "SP",
    "ES",
    "MG",
    "MG",
    "SP",
    "MG",
    "ES",
    "ES",
    "ES",
    "SP",
    "SP",
    "MG",
    "ES",
    "SP",
    "RJ",
    "MG",
    "RJ",
    "SP",
    "MG",
    "SP",
    "ES",
    "SP",
    "MG",
]
estados_unicos = list(set(estados))
lista_de_listas = []

for estado in estados_unicos:
    lista = [uf for uf in estados if uf == estado]
    lista_de_listas.append(lista)

resultado_09 = {
    estados_unicos[i]: len(lista_de_listas[i]) for i in range(len(estados_unicos))
}


# 10
funcionarios = [
    ("SP", 16),
    ("ES", 8),
    ("MG", 9),
    ("MG", 6),
    ("SP", 10),
    ("MG", 4),
    ("ES", 9),
    ("ES", 7),
    ("ES", 12),
    ("SP", 7),
    ("SP", 11),
    ("MG", 8),
    ("ES", 8),
    ("SP", 9),
    ("RJ", 13),
    ("MG", 5),
    ("RJ", 9),
    ("SP", 12),
    ("MG", 10),
    ("SP", 7),
    ("ES", 14),
    ("SP", 10),
    ("MG", 12),
]
estados_unicos = list(set([tupla[0] for tupla in funcionarios]))
lista_de_listas = []

for estado in estados_unicos:
    lista = [tupla[1] for tupla in funcionarios if tupla[0] == estado]
    lista_de_listas.append(lista)

resultado_10a = {
    estados_unicos[i]: lista_de_listas[i] for i in range(len(estados_unicos))
}
resultado_10b = {
    estados_unicos[i]: sum(lista_de_listas[i]) for i in range(len(estados_unicos))
}


print(resultado_01)
print(resultado_02)
print(resultado_03)
print(resultado_04)
print(resultado_05)
print(resultado_06)
print(resultado_07)
print(resultado_08)
print(resultado_09)
print(resultado_10a)
print(resultado_10b)
