# Resultados dos Testes Sequenciais — Algoritmo Genético para o Problema da Mochila

## Configuração do Ambiente

| Parâmetro | Valor |
|---|---|
| Sistema Operacional | Windows 11 |
| Compilador | GCC 6.3.0 (MinGW) |
| Flags de compilação | `-O2` |
| Modelo de execução | Sequencial (sem paralelismo) |
| Medição de tempo | `QueryPerformanceCounter` (alta precisão) |
| Repetições por instância | 3 |

---

## Instâncias Testadas

| Instância | Itens | Capacidade | Pop. Size | Mut. Rate | Gerações |
|---|---|---|---|---|---|
| `knapPI_3_100_1000_1`   | 100    | 997   | 1.000 | 0,05 | 5.000 |
| `knapPI_3_500_1000_1`   | 500    | 4.990 | 1.000 | 0,05 | 5.000 |
| `knapPI_3_1000_1000_1`  | 1.000  | 4.990 | 1.000 | 0,03 | 1.000 |
| `knapPI_3_2000_1000_1`  | 2.000  | —     | 1.000 | 0,03 | 800  |
| `knapPI_3_5000_1000_1`  | 5.000  | —     | 1.000 | 0,02 | 800  |
| `knapPI_3_10000_1000_1` | 10.000 | —     | 1.000 | 0,02 | 600  |

---

## Resultados das Execuções

### 100 itens — `knapPI_3_100_1000_1`

`pop_size=1000`, `mut_rate=0.05`, `max_gen=5000`

| Execução | Tempo (ms) | Melhor Valor |
|---|---|---|
| 1 | 13.956,87 | 26.362 |
| 2 | 14.371,38 | 31.968 |
| 3 | 14.596,19 | 28.431 |
| **Média** | **14.308,15** | **28.920** |
| **Desvio Padrão** | **262,97** | **2.313** |
| **Melhor** | — | **31.968** |

---

### 500 itens — `knapPI_3_500_1000_1`

`pop_size=1000`, `mut_rate=0.05`, `max_gen=5000`

| Execução | Tempo (ms) | Melhor Valor |
|---|---|---|
| 1 | 67.489,08 | 139.372 |
| 2 | 68.952,22 | 145.711 |
| 3 | 74.487,57 | 152.800 |
| **Média** | **70.309,62** | **145.961** |
| **Desvio Padrão** | **2.960,44** | **5.466** |
| **Melhor** | — | **152.800** |

---

### 1.000 itens — `knapPI_3_1000_1000_1`

`pop_size=1000`, `mut_rate=0.03`, `max_gen=1000`

| Execução | Tempo (ms) | Melhor Valor |
|---|---|---|
| 1 | 26.768,68 | 301.837 |
| 2 | 27.879,07 | 276.147 |
| 3 | 27.466,35 | 288.895 |
| **Média** | **27.371,37** | **288.960** |
| **Desvio Padrão** | **456,44** | **10.487** |
| **Melhor** | — | **301.837** |

---

### 2.000 itens — `knapPI_3_2000_1000_1`

`pop_size=1000`, `mut_rate=0.03`, `max_gen=800`

| Execução | Tempo (ms) | Melhor Valor |
|---|---|---|
| 1 | 43.440,72 | 596.155 |
| 2 | 44.990,10 | 573.753 |
| 3 | 48.285,94 | 581.028 |
| **Média** | **45.572,25** | **583.645** |
| **Desvio Padrão** | **1.985,44** | **9.196** |
| **Melhor** | — | **596.155** |

---

### 5.000 itens — `knapPI_3_5000_1000_1`

`pop_size=1000`, `mut_rate=0.02`, `max_gen=800`

| Execução | Tempo (ms) | Melhor Valor |
|---|---|---|
| 1 | 110.018,25 | 1.490.884 |
| 2 | 118.183,20 | 1.484.690 |
| 3 | 106.866,69 | 1.512.929 |
| **Média** | **111.689,39** | **1.496.168** |
| **Desvio Padrão** | **4.726,44** | **11.876** |
| **Melhor** | — | **1.512.929** |

---

### 10.000 itens — `knapPI_3_10000_1000_1`

`pop_size=1000`, `mut_rate=0.02`, `max_gen=600`

| Execução | Tempo (ms) | Melhor Valor |
|---|---|---|
| 1 | 152.276,42 | 3.028.290 |
| 2 | 150.500,72 | 3.051.970 |
| 3 | 149.797,23 | 3.027.373 |
| **Média** | **150.858,12** | **3.035.878** |
| **Desvio Padrão** | **1.046,44** | **11.001** |
| **Melhor** | — | **3.051.970** |

---

## Consolidado Geral

| Instância (itens) | Tempo Médio (ms) | Desvio Padrão (ms) | Melhor Valor | Variação do Valor (%) |
|---|---|---|---|---|
| 100    | 14.308,15   | 262,97   | 31.968    | ±8,0% |
| 500    | 70.309,62   | 2.960,44 | 152.800   | ±3,7% |
| 1.000  | 27.371,37   | 456,44   | 301.837   | ±3,6% |
| 2.000  | 45.572,25   | 1.985,44 | 596.155   | ±1,6% |
| 5.000  | 111.689,39  | 4.726,44 | 1.512.929 | ±0,9% |
| 10.000 | 150.858,12  | 1.046,44 | 3.051.970 | ±0,4% |

---

## Crescimento do Tempo de Execução

| Instância (itens) | Tempo Médio (ms) | Fator em relação a 100 itens |
|---|---|---|
| 100    | 14.308,15   | 1,00× |
| 500    | 70.309,62   | 4,91× |
| 1.000  | 27.371,37   | 1,91× |
| 2.000  | 45.572,25   | 3,19× |
| 5.000  | 111.689,39  | 7,81× |
| 10.000 | 150.858,12  | 10,54× |

> **Nota:** As instâncias de 1.000 e 2.000 itens usam menos gerações (1.000 e 800) do que as de 100 e 500 itens (5.000 gerações), por isso apresentam tempo menor apesar de terem mais itens. A comparação direta de tempo só é válida entre instâncias com os mesmos parâmetros.

---

## Discussão dos Resultados

### Comportamento do Tempo de Execução

O tempo de execução sequencial é dominado por dois fatores:

1. **Número de gerações × tamanho da população:** cada geração executa `POP_SIZE` avaliações de fitness, cada uma com custo `O(NUM_ITEMS)`. O custo total é `O(MAX_GEN × POP_SIZE × NUM_ITEMS)`.

2. **Custo de crossover e mutação:** também `O(NUM_ITEMS)` por indivíduo gerado.

As instâncias de 5.000 e 10.000 itens, mesmo com menos gerações, apresentam os maiores tempos absolutos porque o custo por geração cresce linearmente com `NUM_ITEMS`.

### Variabilidade das Soluções

A variação percentual do valor encontrado entre execuções **diminui com o tamanho da instância**:

- 100 itens: ±8,0% — espaço de busca pequeno, mas o AG pode convergir para regiões diferentes a cada execução.
- 10.000 itens: ±0,4% — com mais itens, a paisagem de fitness é mais suave e o AG converge de forma mais consistente.

Isso indica que o algoritmo é **mais estável em instâncias grandes**, onde a diversidade genética da população de 1.000 indivíduos cobre melhor o espaço de busca relativo.

### Reprodutibilidade

O desvio padrão do tempo de execução é baixo em todas as instâncias (< 5% do tempo médio), confirmando que o ambiente de execução é estável e as medições com `QueryPerformanceCounter` são confiáveis.

### Baseline para Comparação com Versões Paralelas

Estes resultados servem como **baseline sequencial** para calcular o speedup das versões OpenMP e MPI. Os tempos médios de referência são:

| Instância | Tempo Sequencial (ms) |
|---|---|
| 1.000 itens  | 27.371,37  |
| 5.000 itens  | 111.689,39 |
| 10.000 itens | 150.858,12 |

---

## Comando de Compilação

```bash
gcc -O2 main.c -o mochila_seq.exe
```

## Comandos de Execução Utilizados

```bash
.\mochila_seq.exe 1000 0.05 5000 1 kp_instances/large_scale/knapPI_3_100_1000_1
.\mochila_seq.exe 1000 0.05 5000 1 kp_instances/large_scale/knapPI_3_500_1000_1
.\mochila_seq.exe 1000 0.03 1000 1 kp_instances/large_scale/knapPI_3_1000_1000_1
.\mochila_seq.exe 1000 0.03  800 1 kp_instances/large_scale/knapPI_3_2000_1000_1
.\mochila_seq.exe 1000 0.02  800 1 kp_instances/large_scale/knapPI_3_5000_1000_1
.\mochila_seq.exe 1000 0.02  600 1 kp_instances/large_scale/knapPI_3_10000_1000_1
```
