# Análises do Campeonato Brasileiro Série A

Projeto simples de análise exploratória dos jogos do Campeonato Brasileiro Série A.
O objetivo é produzir análises descritivas, gráficos, notebooks e relatórios
reproduzíveis a partir da tabela pública da Base dos Dados.

## Perguntas iniciais

- Como gols, público e resultados variam ao longo das temporadas?
- Existe vantagem descritiva de jogar como mandante?
- Quais clubes, estádios e partidas se destacam nas métricas disponíveis?
- Quais campos têm dados ausentes e como isso limita as conclusões?

## Estrutura

```text
brasileirao/
├── data/
│   ├── raw/                 # Dados originais, sem alterações
│   └── processed/           # Bases tratadas produzidas pelas análises
├── notebooks/
│   ├── 01_exploracao_inicial.ipynb
│   └── 02_fatores_vitoria_mandante.ipynb
├── reports/
│   ├── figures/             # Gráficos exportados pelos notebooks
│   └── README.md
├── analise_mando_de_campo.sql
└── README.md
```

Os CSVs e gráficos reproduzíveis são ignorados pelo Git. A fonte, as transformações e
as conclusões devem continuar documentadas.

## Dados

- Arquivo local: `data/raw/brasileirao_serie_a.csv`
- Cópia compactada: `data/raw/brasileirao_serie_a.csv.gz`
- Tabela: `basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a`
- Publicador: Base dos Dados
- Fonte original: Transfermarkt

Antes de publicar ou redistribuir resultados, confirme na página da tabela a licença,
o período coberto e a data da última atualização. O arquivo bruto não deve ser editado;
tratamentos devem gerar novos arquivos em `data/processed/`.

## Como executar

Na raiz do repositório, ative o ambiente virtual que estiver usando e instale as
dependências do projeto:

```powershell
python -m pip install -e .
```

Para abrir os notebooks:

```powershell
jupyter lab projects/brasileirao/notebooks
```

Também é possível abrir `notebooks/01_exploracao_inicial.ipynb` diretamente no VS Code
e selecionar o interpretador Python do ambiente virtual.

## Entregas iniciais

1. Validar tipos, duplicidades, valores ausentes e cobertura temporal.
2. Produzir estatísticas descritivas de gols, resultados e público.
3. Comparar o desempenho de mandantes e visitantes por temporada.
4. Exportar gráficos selecionados para `reports/figures/`.
5. Registrar conclusões, limitações e próximas perguntas no relatório.

O segundo notebook testa desvios entre temporadas, investiga fatores pré-jogo com
regressão logística e compara um modelo preditivo temporal com um baseline simples.

## Limitações

As análises são descritivas. Uma diferença entre mandantes e visitantes não demonstra,
por si só, efeito causal do mando de campo. Temporadas incompletas, valores ausentes,
mudanças de formato e punições administrativas precisam ser considerados.

