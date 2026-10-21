# Guia de Python para ciência de dados

Este guia apresenta funções e padrões do básico ao intermediário. Os exemplos usam dados pequenos para destacar o raciocínio. Em uma análise real, sempre valide tipos, valores ausentes, duplicidades e significado das variáveis.

## Funções em Python

Uma função recebe entradas, executa uma tarefa e pode devolver uma saída.

```python
def calcular_taxa(valor, total):
    """Calcula uma proporção e protege contra divisão por zero."""
    if total == 0:
        return 0.0
    return valor / total


taxa = calcular_taxa(valor=25, total=100)
print(taxa)  # 0.25
```

Partes principais:

- `def` inicia a definição;
- `calcular_taxa` é o nome;
- `valor` e `total` são parâmetros;
- a docstring explica o comportamento;
- `return` devolve o resultado.

Prefira funções pequenas, com responsabilidade clara e nomes que expressem a ação.

## Funções nativas úteis

### `len`

Retorna a quantidade de elementos.

```python
clientes = [101, 102, 103]
quantidade = len(clientes)
```

### `sum`, `min` e `max`

Resumem coleções numéricas.

```python
valores = [100.0, 250.0, 150.0]
total = sum(valores)
menor = min(valores)
maior = max(valores)
```

### `sorted`

Cria uma nova lista ordenada.

```python
transacoes = [250.0, 50.0, 120.0]
ordenadas = sorted(transacoes, reverse=True)
```

### `enumerate`

Percorre valores e seus índices sem controlar um contador manualmente.

```python
for posicao, produto in enumerate(["crédito", "seguro"], start=1):
    print(posicao, produto)
```

### `zip`

Combina sequências na mesma posição.

```python
clientes = [101, 102]
segmentos = ["A", "B"]

for cliente, segmento in zip(clientes, segmentos):
    print(cliente, segmento)
```

### `isinstance`

Verifica o tipo de um objeto. É útil para validar entradas de funções.

```python
valor = 120.5
if not isinstance(valor, (int, float)):
    raise TypeError("valor deve ser numérico")
```

## Compreensões

Compreensões criam coleções de forma concisa.

```python
valores = [50, 120, 300, 80]
valores_altos = [valor for valor in valores if valor >= 100]
```

Use-as quando a transformação for simples. Se houver muitas condições, prefira um laço ou uma função nomeada.

## Tratamento de erros

```python
def converter_renda(texto):
    try:
        return float(texto)
    except (TypeError, ValueError):
        return None
```

Capture erros específicos. Um `except` genérico pode esconder problemas que deveriam ser corrigidos.

## NumPy

NumPy trabalha com arrays numéricos eficientes.

```python
import numpy as np

valores = np.array([100, 120, 150, 1000])
media = np.mean(valores)
mediana = np.median(valores)
desvio = np.std(valores)
percentil_90 = np.percentile(valores, 90)
```

Resumo:

- `np.array`: cria um array;
- `np.mean`: calcula a média;
- `np.median`: calcula a mediana, menos sensível a extremos;
- `np.std`: mede dispersão;
- `np.percentile`: encontra um ponto da distribuição;
- `np.where`: aplica uma condição vetorizada.

Exemplo com `np.where`:

```python
faixa = np.where(valores >= 500, "alto", "regular")
```

## pandas

pandas é a biblioteca principal para dados tabulares.

```python
import pandas as pd

df = pd.DataFrame(
    {
        "cliente": [101, 102, 103, 104],
        "segmento": ["A", "B", "A", "B"],
        "saldo": [1200.0, None, 850.0, 2400.0],
        "ativo": [True, True, False, True],
    }
)
```

### Inspeção inicial

```python
df.head()
df.shape
df.info()
df.describe(include="all")
df.dtypes
```

- `head`: mostra as primeiras linhas;
- `shape`: informa linhas e colunas;
- `info`: resume tipos e valores preenchidos;
- `describe`: produz estatísticas descritivas;
- `dtypes`: mostra o tipo de cada coluna.

### Seleção com `loc` e `iloc`

```python
ativos = df.loc[df["ativo"], ["cliente", "saldo"]]
primeiras_linhas = df.iloc[:2, :3]
```

- `loc` seleciona por rótulos e condições;
- `iloc` seleciona por posições numéricas.

### Valores ausentes

```python
quantidade_ausente = df.isna().sum()
df["saldo"] = df["saldo"].fillna(df["saldo"].median())
```

Não preencha valores automaticamente sem entender por que estão ausentes e como a escolha afeta a análise.

### Filtragem

```python
clientes_alto_saldo = df.query("saldo >= 1000 and ativo == True")
```

O mesmo pode ser escrito com máscara booleana:

```python
clientes_alto_saldo = df.loc[(df["saldo"] >= 1000) & df["ativo"]]
```

### `groupby` e `agg`

Agrupam registros e calculam resumos.

```python
resumo = (
    df.groupby("segmento", as_index=False)
    .agg(
        clientes=("cliente", "nunique"),
        saldo_medio=("saldo", "mean"),
        saldo_total=("saldo", "sum"),
    )
)
```

Esse padrão é essencial para responder perguntas como “qual é o saldo médio por segmento?”.

### `sort_values`

```python
ranking = df.sort_values("saldo", ascending=False)
```

### `drop_duplicates`

```python
clientes_unicos = df.drop_duplicates(subset=["cliente"])
```

Antes de remover duplicidades, determine quais colunas realmente identificam um registro único.

### `assign`

Cria colunas mantendo um fluxo encadeado.

```python
df_com_faixa = df.assign(
    faixa_saldo=lambda tabela: pd.cut(
        tabela["saldo"],
        bins=[0, 1000, 2000, float("inf")],
        labels=["baixo", "médio", "alto"],
    )
)
```

### `merge`

Combina tabelas por uma chave.

```python
produtos = pd.DataFrame(
    {"cliente": [101, 102, 104], "produto": ["cartão", "seguro", "crédito"]}
)

base = df.merge(produtos, on="cliente", how="left", validate="one_to_one")
```

O argumento `validate` verifica a cardinalidade esperada e ajuda a detectar duplicações acidentais.

### Datas

```python
df_datas = pd.DataFrame({"data": ["2026-01-05", "2026-02-10"]})
df_datas["data"] = pd.to_datetime(df_datas["data"], errors="coerce")
df_datas["mes"] = df_datas["data"].dt.to_period("M")
```

### `apply`

`apply` executa uma função por linha ou coluna.

```python
def classificar_saldo(saldo):
    return "alto" if saldo >= 1500 else "regular"


df["classe"] = df["saldo"].apply(classificar_saldo)
```

É útil, mas operações vetorizadas como `np.where`, `pd.cut` e comparações diretas costumam ser mais rápidas e claras.

## Visualização

```python
import matplotlib.pyplot as plt
import seaborn as sns

sns.histplot(data=df, x="saldo", hue="segmento", bins=10)
plt.title("Distribuição de saldo por segmento")
plt.xlabel("Saldo")
plt.ylabel("Quantidade de clientes")
plt.tight_layout()
plt.show()
```

Funções principais:

- `sns.histplot`: distribuição de uma variável;
- `sns.boxplot`: distribuição e valores extremos por grupo;
- `sns.scatterplot`: relação entre duas variáveis;
- `sns.barplot`: comparação de estatísticas agregadas;
- `plt.title`, `xlabel` e `ylabel`: contexto do gráfico;
- `plt.tight_layout`: reduz cortes de rótulos.

Um gráfico deve responder uma pergunta. Evite escolher o tipo apenas pela aparência.

## scikit-learn

Um fluxo supervisionado básico separa dados, cria um pipeline, treina e avalia.

```python
from sklearn.compose import ColumnTransformer
from sklearn.impute import SimpleImputer
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import classification_report, roc_auc_score
from sklearn.model_selection import train_test_split
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import OneHotEncoder, StandardScaler

X_train, X_test, y_train, y_test = train_test_split(
    X,
    y,
    test_size=0.2,
    random_state=42,
    stratify=y,
)

preprocessamento = ColumnTransformer(
    transformers=[
        (
            "numericas",
            Pipeline(
                steps=[
                    ("imputacao", SimpleImputer(strategy="median")),
                    ("escala", StandardScaler()),
                ]
            ),
            colunas_numericas,
        ),
        (
            "categoricas",
            OneHotEncoder(handle_unknown="ignore"),
            colunas_categoricas,
        ),
    ]
)

modelo = Pipeline(
    steps=[
        ("preprocessamento", preprocessamento),
        ("classificador", LogisticRegression(max_iter=1000)),
    ]
)

modelo.fit(X_train, y_train)
probabilidades = modelo.predict_proba(X_test)[:, 1]
previsoes = modelo.predict(X_test)

print(roc_auc_score(y_test, probabilidades))
print(classification_report(y_test, previsoes))
```

Resumo das funções:

- `train_test_split`: separa treino e teste;
- `Pipeline`: encadeia transformação e modelo, reduzindo vazamento;
- `fit`: aprende parâmetros usando os dados de treino;
- `predict`: produz classes ou valores;
- `predict_proba`: produz probabilidades quando o modelo oferece esse método;
- `roc_auc_score`: avalia ordenação das probabilidades;
- `classification_report`: resume precisão, revocação e F1.

A métrica deve ser escolhida conforme o custo do erro. Em problemas raros, acurácia isolada pode ser enganosa.

## Função reutilizável do laboratório

O repositório já contém `profile_dataframe` em `src/nexo_dados/data_quality.py`.

```python
from nexo_dados import profile_dataframe

perfil = profile_dataframe(df)
print(perfil)
```

Ela retorna, para cada coluna:

- tipo (`dtype`);
- quantidade de ausentes (`missing_count`);
- proporção de ausentes (`missing_rate`);
- quantidade de valores únicos (`unique_count`).

Esse é um exemplo de função que merece ficar em `src`: é genérica, reutilizável e testável.

## Padrão recomendado para análises

```python
def preparar_dados(df):
    """Valida e prepara uma cópia dos dados para análise."""
    colunas_obrigatorias = {"cliente", "saldo"}
    ausentes = colunas_obrigatorias.difference(df.columns)
    if ausentes:
        raise ValueError(f"colunas ausentes: {sorted(ausentes)}")

    resultado = df.copy()
    resultado["saldo"] = pd.to_numeric(resultado["saldo"], errors="coerce")
    return resultado
```

Características positivas:

- nome orientado à ação;
- docstring;
- validação de entrada;
- cópia para evitar alteração inesperada do objeto original;
- transformação explícita;
- retorno previsível.

## Checklist antes de concluir uma análise

- A pergunta está escrita em linguagem de negócio?
- Os tipos das colunas estão corretos?
- Valores ausentes e duplicidades foram explicados?
- A transformação pode ser reproduzida?
- Há risco de usar informação do futuro?
- Existe um baseline simples?
- A métrica está ligada ao custo do erro?
- Os principais erros foram analisados?
- Limitações e vieses estão documentados?
- Funções reutilizáveis foram movidas para `src` e testadas?
