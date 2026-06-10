# Terra Nova Database

> Global Solution FIAP - Mastering Relational and Non-Relational Database

Sistema de banco de dados desenvolvido para suporte à plataforma **Terra Nova**, responsável pelo armazenamento, processamento e análise de informações agrícolas obtidas a partir de integrações com a NASA POWER e a Embrapa SATVeg.

---

## Integrantes

| Nome                       |     RM | Turma  | GitHub           |
| -------------------------- | -----: | ------ | ---------------- |
| Enzo Okuizumi              | 561432 | 2TDSPG | EnzoOkuizumiFiap |
| Lucas Barros Gouveia       | 566422 | 2TDSPG | LuzBGouveia      |
| Milton Marcelino           | 564836 | 2TDSPG | MiltonMarcelino  |
| Luna de Carvalho Guimarães | 562290 | 2TDSPG | lunaguima        |
| Gustavo Okada              | 563428 | 2TDSPG | Gdev3356         |

---

## Problema

Produtores rurais enfrentam dificuldades para monitorar grandes áreas agrícolas e identificar rapidamente situações de risco relacionadas à vegetação, precipitação e produtividade.

A ausência de acompanhamento contínuo pode resultar em perdas econômicas, desperdício de recursos e atraso na tomada de decisões.

---

## Solução Proposta

O Terra Nova utiliza informações provenientes de APIs externas para monitorar talhões agrícolas e gerar alertas que auxiliam o produtor rural.

O banco de dados foi projetado para:

* Armazenar produtores e propriedades rurais;
* Gerenciar talhões e suas localizações;
* Registrar requisições realizadas às APIs externas;
* Persistir séries temporais de índices vegetativos e climáticos;
* Gerar e acompanhar alertas agrícolas;
* Fornecer relatórios para apoio à tomada de decisão.

---

## Levantamento de Requisitos

*   **Problema abordado:** Produtores rurais enfrentam dificuldades para monitorar grandes áreas agrícolas e processar dados climáticos/vegetativos em larga escala, o que resulta em reações tardias a anomalias, risco de perda de safra e ineficiência na tomada de decisões preventivas.
*   **Objetivos da solução:** Desenvolver um sistema de banco de dados robusto (Terra Nova) capaz de armazenar dados espaciais (SDO_GEOMETRY), dados de produtores e séries temporais oriundas de integrações externas (NASA POWER e SATVeg), automatizando o monitoramento e a emissão de alertas.
*   **Regras de negócio:**
    *   **Validação de Área:** Um talhão não pode ser registrado com volume/área menor ou igual a zero (regra garantida pela trigger `trg_valida_area`).
    *   **Consistência de Alertas:** Não é possível resolver um alerta agrícola que não exista no sistema (garantido por tratamento de exceção na `pr_resolver_alerta`).
    *   **Irreversibilidade de Resoluções:** Uma vez que um alerta foi marcado como resolvido ('S'), ele não pode ter seu status revertido acidentalmente para pendente ('N') sem motivo válido (regra protegida pela trigger `trg_valida_resolvido`).
*   **Processos automatizados:**
    *   **Classificação de Risco e Geração de Alertas:** A procedure `pr_gerar_alerta` automatiza a emissão de alertas com base no nível dos dados temporais lidos. Ela classifica autonomamente o risco: valores < 20 disparam status `CRITICO`, valores < 40 disparam `ALTO`, e os demais assumem `NORMAL`.
*   **Indicadores calculados:**
    *   **Volume de Incidências:** Contagem total de alertas emitidos historicamente para um determinado talhão, facilitando relatórios de risco (calculado dinamicamente pela função `fn_total_alertas`).
    *   **Média Histórica:** Média dos valores de índices vegetativos ou de precipitação registrados em dados temporais para um talhão (calculado pela função `fn_media_leituras`).

---

## Dicionário de Dados

Abaixo estão os detalhes das principais tabelas, colunas, tipos e restrições adotadas:

*   **PRODUTOR**
    *   `id_produtor` (NUMBER(3)): Chave primária.
    *   `nome` (VARCHAR2(30)): Nome do produtor (NOT NULL).
    *   `email` (VARCHAR2(30)): E-mail de contato (NOT NULL).
    *   `senha` (VARCHAR2(30)): Senha de acesso (NOT NULL).
*   **PROPRIEDADE**
    *   `id_propriedade` (NUMBER(3)): Chave primária.
    *   `nome` (VARCHAR2(30)): Nome da fazenda/sítio (NOT NULL).
    *   `tamanho_total` (NUMBER): Área total da propriedade (NOT NULL).
    *   `produtor_id_produtor` (NUMBER(3)): Chave Estrangeira para PRODUTOR.
    *   `localizacao_id_localizacao` (NUMBER(3)): Chave Estrangeira para LOCALIZACAO (Restrição de Unique Index).
*   **ALERTA_AGRICOLA**
    *   `id_alerta` (NUMBER(3)): Chave primária.
    *   `titulo` (VARCHAR2(100)): Título do alerta (NOT NULL).
    *   `descricao` (VARCHAR2(300)): Detalhamento do alerta (NOT NULL).
    *   `nivel_alerta` (VARCHAR2(20)): NORMAL, MEDIO, ALTO, CRITICO (NOT NULL).
    *   `resolvido` (CHAR(1)): Status de resolução S ou N (NOT NULL).
    *   `talhao_id_talhao` (NUMBER(3)): Chave estrangeira de TALHAO.
*   **TALHAO**
    *   `id_talhao` (NUMBER(3)): Chave primária.
    *   `nome_talhao` (VARCHAR2(30)): Identificação do talhão (NOT NULL).
    *   `volum_area` (NUMBER): Área ocupada pelo talhão (NOT NULL).
    *   `tipo_plantacao_id_tipo_plant` (NUMBER(3)): Chave estrangeira de TIPO_PLANTACAO.
    *   `propriedade_id_propriedade` (NUMBER(3)): Chave estrangeira de PROPRIEDADE.
    *   `localizacao_id_localizacao` (NUMBER(3)): Chave estrangeira de LOCALIZACAO (Restrição Unique).
*   **DADO_TEMPORAL**
    *   `id_dado` (NUMBER(10)): Chave primária.
    *   `data_leitura` (DATE): Data do registro temporal (NOT NULL).
    *   `valor` (NUMBER): Valor da leitura (NOT NULL).
    *   `talhao_id_talhao` (NUMBER(3)): Chave estrangeira de TALHAO.
    *   `req_api_id_api` (NUMBER(3)): Chave estrangeira de REQ_API.
*   **REQ_API**
    *   `id_api` (NUMBER(3)): Chave primária.
    *   `tipo_param` (VARCHAR2(15)): NDVI, PRECTOTCORR, etc (NOT NULL).
    *   `data_analise` (TIMESTAMP): Data da requisição (NOT NULL).
    *   `tipo_api_id_tipo` (NUMBER(3)): Chave estrangeira de TIPO_API.
*   **TIPO_API**
    *   `id_tipo` (NUMBER(3)): Chave primária.
    *   `tipo_api` (VARCHAR2(10)): Nome do fornecedor (NASA, SATVEG) (NOT NULL).
*   **TIPO_PLANTACAO**
    *   `id_tipo_plant` (NUMBER(3)): Chave primária.
    *   `tipo_plant` (VARCHAR2(30)): Tipo da cultura cultivada (Soja, Milho) (NOT NULL).
*   **LOCALIZACAO**
    *   `id_localizacao` (NUMBER(3)): Chave primária.
    *   `coordenadas` (MDSYS.SDO_GEOMETRY): Ponto geoespacial (NOT NULL).
*   **TELEFONE**
    *   `id_telefone` (NUMBER(3)): Chave primária.
    *   `ddd` (CHAR(2)): Código de área (NOT NULL).
    *   `numero` (VARCHAR2(9)): Número de telefone (NOT NULL).
    *   `produtor_id_produtor` (NUMBER(3)): Chave estrangeira de PRODUTOR (Restrição Unique).

---

## Modelagem de Dados

### Entidades Principais

* Produtor
* Telefone
* Localização
* Propriedade
* Talhão
* Tipo de Plantação
* Tipo de API
* Requisição de API
* Dado Temporal
* Alerta Agrícola

### Modelo Lógico

![Modelo Lógico](./docs/Logical.png)

### Modelo Relacional

![Modelo Relacional](./docs/Relational.png)

---

## Estrutura do Repositório

```
.
├── defaultdomains.xml
│
├── docs/
│   ├── Logical.png
│   └── Relational.png
│
├── fazenda/
│   ├── businessinfo/
│   │   └── Business Information.xml
│   │
│   ├── datatypes/
│   │   ├── DataTypes.xml
│   │   ├── structuredtype/
│   │   └── subviews/
│   │
│   ├── logical/
│   │   ├── entity/
│   │   ├── relation/
│   │   ├── Logical.xml
│   │   └── subviews/
│   │
│   ├── mapping/
│   │   └── Arquivos de mapeamento gerados pelo Oracle SQL Developer Data Modeler
│   │
│   ├── pm/
│   │   └── Process Model.xml
│   │
│   ├── rdbms/
│   │   └── fazenda_RDBMSSites.xml
│   │
│   └── rel/
│       └── Estruturas relacionais geradas pelo Oracle SQL Developer Data Modeler
│
├── fazenda.dmd
├── fazenda.ddl
├── dml.sql
│
├── scripts/
│   ├── blocos_anonimos/
│   │   ├── bloco01_consulta_produtor.sql
│   │   ├── bloco02_classifica_alertas.sql
│   │   ├── bloco03_for_loop.sql
│   │   ├── bloco04_while_loop.sql
│   │   ├── bloco05_loop_exit_when.sql
│   │   └── bloco06_insert_tipo.sql
│   │
│   ├── functions/
│   │   ├── fn_media_leituras.sql
│   │   └── fn_total_alertas.sql
│   │
│   ├── procedures/
│   │   ├── pr_gerar_alerta.sql
│   │   └── pr_resolver_alerta.sql
│   │
│   ├── relatorios/
│   │   ├── relatorio01_produtor_propriedade.sql
│   │   ├── relatorio02_propriedade_talhao.sql
│   │   ├── relatorio03_alertas.sql
│   │   ├── relatorio04_dados_api.sql
│   │   └── relatorio05_plantacoes.sql
│   │
│   └── triggers/
│       ├── trg_valida_area.sql
│       └── trg_valida_resolvido.sql
│
└── README.md
```

---

## Tecnologias Utilizadas

| Tecnologia                        | Uso                                                    |
| --------------------------------- | ------------------------------------------------------ |
| Oracle Database 21c               | Sistema Gerenciador de Banco de Dados                  |
| Oracle SQL Developer              | Execução e testes dos scripts SQL e PL/SQL             |
| Oracle SQL Developer Data Modeler | Modelagem lógica e relacional do banco de dados        |
| SQL                               | Definição e manipulação dos dados                      |
| PL/SQL                            | Procedures, Functions, Triggers e Blocos Anônimos      |

---

## Recursos Implementados

### Procedures

#### pr_gerar_alerta

Realiza a criação automática de alertas agrícolas para um determinado talhão, classificando o nível do alerta com base no valor informado.

#### pr_resolver_alerta

Marca um alerta agrícola como resolvido.

---

### Functions

#### fn_total_alertas

Retorna a quantidade total de alertas associados a um talhão.

#### fn_media_leituras

Retorna a média dos valores registrados nos dados temporais de um talhão.

---

### Blocos Anônimos

Foram desenvolvidos blocos demonstrando:

* **Uso de 4 Cursores Explícitos** (`CURSOR c_nome IS`);
* Estruturas condicionais (`IF`, `ELSIF`, `ELSE`);
* Estruturas de repetição (`FOR LOOP`, `WHILE LOOP`, `LOOP EXIT WHEN` e `LOOP` simples);
* Consulta utilizando `SELECT INTO` (Tabela para Variável);
* Manipulação e persistência de dados utilizando variáveis (`INSERT`, `UPDATE` e `DELETE`).

---

### Relatórios

#### Relatório de Produtores e Propriedades

Relaciona produtores às suas propriedades rurais.

#### Relatório de Propriedades e Talhões

Apresenta os talhões pertencentes a cada propriedade.

#### Relatório de Alertas

Exibe os alertas agrícolas registrados para cada talhão.

#### Relatório de Dados Temporais

Relaciona leituras temporais às requisições de API responsáveis por sua geração.

#### Relatório de Plantação

Apresenta os tipos de plantação associados aos talhões.

---

### Triggers

#### trg_valida_area

Valida a área informada para um talhão, impedindo registros com valores inválidos.

#### trg_valida_resolvido

Garante a consistência das informações quando um alerta é marcado como resolvido.

---

## Como Executar

### 1. Criar a estrutura do banco

```sql
@fazenda.ddl
```

### 2. Carregar os dados de teste (DML)

```sql
@dml.sql
```

### 3. Executar Procedures

```sql
@scripts/procedures/pr_gerar_alerta.sql
@scripts/procedures/pr_resolver_alerta.sql
```

### 4. Executar Functions

```sql
@scripts/functions/fn_total_alertas.sql
@scripts/functions/fn_media_leituras.sql
```

### 5. Executar Triggers

```sql
@scripts/triggers/trg_valida_area.sql
@scripts/triggers/trg_valida_resolvido.sql
```

### 6. Executar os Blocos Anônimos

Executar todos os scripts da pasta:

```text
scripts/blocos_anonimos/
```

### 7. Executar os Relatórios

Executar todos os scripts da pasta:

```text
scripts/relatorios/
```

---

## Exemplos de Teste

### Gerar alerta

```sql
EXEC pr_gerar_alerta(1, 15);
```

### Resolver alerta

```sql
EXEC pr_resolver_alerta(1);
```

### Consultar total de alertas

```sql
SELECT fn_total_alertas(1)
FROM dual;
```

### Consultar média de leituras

```sql
SELECT fn_media_leituras(1)
FROM dual;
```

---

## Disciplina

**Mastering Relational and Non-Relational Database**

Global Solution 2026/1 - FIAP
