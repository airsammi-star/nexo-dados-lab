# Roteiro de estudo para ciência de dados

Este roteiro organiza um ciclo de 16 semanas com 8 a 10 horas por semana. O objetivo é estudar cada conceito, implementá-lo em um exemplo pequeno e registrar uma evidência verificável no repositório.

## Método semanal

- teoria e anotações: 2 horas;
- exercícios curtos: 2 horas;
- notebook ou consulta SQL: 3 a 4 horas;
- revisão, testes e documentação: 1 a 2 horas.

Um tema só está concluído quando eu consigo explicar o conceito, programar um exemplo, escolher uma métrica, identificar limitações e apontar a evidência correspondente no repositório.

## Semanas 1 e 2 Programação e preparação de dados

- Python: tipos, coleções, funções, módulos, exceções e testes;
- pandas e NumPy: seleção, tipos, agrupamentos, joins e datas;
- SQL: filtros, agregações, joins, CTEs e funções de janela;
- tratamento de valores ausentes, duplicidades, outliers e categorias;
- análise de correlação e seleção inicial de variáveis.

**Evidência:** notebook de preparação de dados, consulta SQL comentada e uma função reutilizável com teste.

## Semanas 3 e 4 Probabilidade e estatística descritiva

- variáveis aleatórias discretas e contínuas;
- função de massa ou densidade de probabilidade e função de distribuição acumulada;
- média, mediana, moda, quartis, variância, desvio-padrão, assimetria e valores extremos;
- distribuições Bernoulli, binomial, uniforme, normal, Poisson e geométrica;
- simulação e comparação entre valores teóricos e amostrais.

**Evidência:** notebook com simulações, gráficos de PDF ou PMF e CDF e interpretação de cada distribuição.

## Semana 5 Inferência e teste de hipóteses

- população, amostra, erro-padrão e intervalo de confiança;
- hipótese nula e alternativa;
- nível de significância, valor p, erros dos tipos I e II e poder;
- testes para médias, proporções e independência;
- tamanho de efeito e diferença entre significância estatística e relevância prática.

**Evidência:** estudo A B sintético com hipótese, teste, tamanho de efeito, conclusão e limitações.

## Semanas 6 e 7 Regressão

- baseline pela média;
- regressão linear e análise de resíduos;
- Ridge e Lasso;
- árvore de regressão e Random Forest Regressor;
- MAE, MSE, RMSE, R2 e MAPE;
- validação K fold, conjunto fora da amostra e separação fora do tempo.

**Evidência:** comparação reproduzível de pelo menos quatro modelos com pipeline e análise de erros.

## Semanas 8 a 10 Classificação

- baseline e regressão logística;
- árvore, Random Forest, KNN, SVM e Naive Bayes;
- boosting, XGBoost e LightGBM;
- matriz de confusão, acurácia, precisão, recall, F1, ROC AUC e Gini;
- limiar de decisão, desbalanceamento e custo de falsos positivos e falsos negativos.

**Evidência:** benchmark de classificação com a mesma divisão de dados e as mesmas métricas para todos os modelos.

## Semana 11 Estratégias de avaliação

- K fold e Stratified K fold;
- validação fora da amostra;
- validação fora do tempo para dados temporais;
- vazamento de dados e uso de pipelines;
- comparação com baseline, estabilidade entre partições e análise por grupos.

**Evidência:** notebook que demonstra como uma divisão inadequada pode produzir uma estimativa otimista.

## Semana 12 Agrupamento

- padronização, distância e escolha de variáveis;
- K means, DBSCAN e agrupamento hierárquico;
- método do cotovelo, silhouette score e dendrograma;
- interpretação e utilidade de negócio dos grupos.

**Evidência:** segmentação com comparação de métodos, descrição dos grupos e proposta de validação prática.

## Semanas 13 e 14 Projeto integrador

- formular uma pergunta de negócio;
- documentar fonte, licença, dicionário e qualidade dos dados;
- preparar os dados com Python e SQL;
- construir baseline e modelos candidatos;
- validar sem vazamento e comparar métricas;
- analisar erros, limitações, viés e uso pretendido.

**Evidência:** primeiro projeto de portfólio completo com README, notebook, código reutilizável e testes.

## Semana 15 Gen AI LLMs e cloud

- diferença entre machine learning tradicional e modelos generativos;
- prompts, saídas estruturadas, embeddings e visão geral de RAG;
- custo, latência, avaliação, privacidade e revisão humana;
- conceitos de armazenamento, processamento, API e implantação em cloud;
- credenciais em variáveis de ambiente e princípio do menor privilégio.

**Evidência:** exemplo pequeno com dados públicos ou sintéticos e uma nota de arquitetura e riscos. Este é um tema complementar, não um pré-requisito para concluir o ciclo.

## Semana 16 Portfólio e entrevista

- revisar README, testes, reprodutibilidade e apresentação visual;
- preparar explicação de cinco minutos por projeto;
- praticar SQL, estatística, avaliação de modelos e casos de negócio;
- revisar o backlog e escolher o próximo projeto com base na maior lacuna.

**Evidência:** projeto revisado, roteiro de apresentação e simulação de entrevista registrada no diário.

## Ordem de prioridade

1. Python, SQL e preparação de dados.
2. Estatística, probabilidade e avaliação.
3. Modelos lineares e árvores como baselines.
4. Modelos avançados e clustering.
5. Gen AI, LLMs e cloud como extensão.

O detalhamento dos conceitos e exemplos está em `study/TRILHA_TECNICA_ITAU.md`. As atividades executáveis estão em `study/EXERCISE_BACKLOG.md`.
