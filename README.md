# TSP-MPI

Este projeto implementa uma solução para o Problema do Caixeiro Viajante (TSP) usando MPI para processamento paralelo.

## Estrutura do Repositório

O repositório está organizado da seguinte forma:

-   `data/`: Contém os arquivos de entrada (`.in`) com as matrizes de distância entre as cidades.
-   `results/`: Contém os arquivos de saída gerados pelas execuções, incluindo:
    -   Arquivos `.st`: Estatísticas e tempos de execução.
    -   Arquivos `.csv`: Dados para geração de gráficos.
    -   Arquivos `.png`: Gráficos gerados.
-   `scripts/`: Contém scripts para automatizar a execução e análise:
    -   `run_all.sh`: Executa os testes para as versões sequencial e paralela.
    -   `graphs.py`: Gera gráficos a partir dos dados de resultados.
    -   `geratestes.py`: Script para gerar novos casos de teste.
-   `src/`: Contém o código-fonte das implementações:
    -   `sequential/`: Versão sequencial do algoritmo.
    -   `parallel/`: Versão paralela usando MPI.

## Como Compilar e Executar

### Pré-requisitos

-   GCC
-   MPICH (ou outra implementação de MPI)

### Compilação

Para compilar as versões, navegue até os respectivos diretórios e use o `Makefile`:

**Sequencial:**

```bash
cd src/sequential
make
```

**Paralelo:**

```bash
cd src/parallel
make
```

### Execução

Para executar os testes, você pode usar o script `run_all.sh` que está na pasta `scripts`.

```bash
cd scripts
./run_all.sh
```

Este script executará a versão paralela com diferentes números de cidades e salvará os resultados no diretório `results`.

Para execuções manuais, você pode usar os scripts `run.sh` dentro dos diretórios `src/sequential` e `src/parallel`, passando o nome do arquivo de entrada (sem a extensão `.in`) como argumento.

**Exemplo (Sequencial):**

```bash
cd src/sequential
./run.sh 16
```

**Exemplo (Paralelo):**

```bash
cd src/parallel
# O primeiro argumento é o número de processos MPI
# O segundo argumento é o nome do arquivo de entrada
./run.sh 4 16
```
