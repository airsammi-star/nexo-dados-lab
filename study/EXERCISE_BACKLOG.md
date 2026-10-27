# Backlog de exercícios e exemplos

Use esta lista para transformar a teoria em evidências pequenas. Cada exercício deve começar com uma pergunta e terminar com conclusão, limitações e próxima ação.

## Estatística

- [ ] Simular variáveis Bernoulli e comparar média amostral com a probabilidade teórica.
- [ ] Comparar PMF e CDF de uma distribuição binomial.
- [ ] Simular uma normal e mostrar média, mediana, quartis e desvio-padrão.
- [ ] Comparar normal, uniforme, Poisson e geométrica em gráficos separados.
- [ ] Mostrar como outliers alteram média, desvio-padrão e regressão.
- [ ] Construir um teste de hipótese para médias com intervalo de confiança e tamanho de efeito.
- [ ] Simular erros dos tipos I e II e explicar o efeito do tamanho da amostra.

## Preparação de dados

- [ ] Criar uma base sintética com missings e comparar remoção, imputação simples e indicador de ausência.
- [ ] Comparar one hot encoding e ordinal encoding em um caso controlado.
- [ ] Demonstrar vazamento ao imputar e selecionar variáveis antes da divisão dos dados.
- [ ] Criar um `ColumnTransformer` com etapas numéricas e categóricas.
- [ ] Comparar correlação, informação redundante e importância de variável sem afirmar causalidade.

## Regressão

- [ ] Comparar baseline da média, regressão linear, Ridge e Lasso.
- [ ] Comparar árvore e Random Forest Regressor com os modelos lineares.
- [ ] Calcular MAE, MSE, RMSE, R2 e MAPE e explicar divergências.
- [ ] Inspecionar resíduos e erros por faixa do alvo.
- [ ] Comparar validação aleatória com validação fora do tempo.

## Classificação

- [ ] Comparar baseline, regressão logística e árvore.
- [ ] Adicionar Random Forest, KNN, SVM e Naive Bayes ao mesmo benchmark.
- [ ] Instalar o grupo opcional e comparar XGBoost e LightGBM quando a base estiver pronta.
- [ ] Calcular matriz de confusão, acurácia, precisão, recall, F1, ROC AUC, Gini e PR AUC.
- [ ] Alterar o limiar e mostrar o efeito sobre falsos positivos e falsos negativos.
- [ ] Comparar K fold comum e estratificado em uma classe rara.

## Agrupamento

- [ ] Comparar K means antes e depois da padronização.
- [ ] Usar método do cotovelo e silhouette sem tratar o resultado como decisão automática.
- [ ] Aplicar DBSCAN e interpretar pontos classificados como ruído.
- [ ] Criar um dendrograma e comparar cortes do agrupamento hierárquico.
- [ ] Descrever os grupos e propor como validar sua utilidade com um experimento.

## SQL e Python

- [ ] Resolver 25 consultas progressivas e validar a granularidade de cada resultado.
- [ ] Reescrever uma transformação de pandas em SQL e comparar os totais.
- [ ] Mover uma função do notebook para `src/nexo_dados` e criar testes.
- [ ] Usar o modelo `notebooks/00_template_estudo.ipynb` em três exercícios.

## Gen AI e cloud

- [ ] Criar uma saída estruturada a partir de texto público ou sintético.
- [ ] Definir uma avaliação manual com exemplos corretos e incorretos.
- [ ] Desenhar uma arquitetura simples com armazenamento, processamento, modelo, API e monitoramento.
- [ ] Documentar riscos de privacidade, alucinação, prompt injection, custo e indisponibilidade.

## Registro mínimo por exercício

- pergunta;
- dados e origem;
- hipótese ou expectativa;
- código e resultado;
- métrica ou validação;
- conclusão;
- limitações;
- próxima ação.
