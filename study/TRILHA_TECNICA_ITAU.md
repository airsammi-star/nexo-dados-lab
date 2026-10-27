# Trilha técnica para processo seletivo de ciência de dados

Este documento converte as recomendações recebidas em objetivos de aprendizagem. Para cada tema, a meta é saber explicar, implementar, avaliar e reconhecer limitações.

## Estatística e probabilidade

### Variáveis aleatórias e funções de distribuição

- distinguir variável aleatória discreta de contínua;
- explicar PMF para variáveis discretas e PDF para variáveis contínuas;
- explicar CDF como a probabilidade acumulada até determinado valor;
- calcular ou simular esperança, variância e probabilidades;
- relacionar histograma amostral com uma distribuição teórica sem confundir os dois.

### Distribuições prioritárias

- **Bernoulli:** um ensaio com dois resultados;
- **Binomial:** número de sucessos em uma quantidade fixa de ensaios Bernoulli independentes;
- **Uniforme:** valores com a mesma densidade em um intervalo;
- **Normal:** distribuição contínua simétrica definida por média e desvio-padrão;
- **Poisson:** contagem de eventos em um intervalo sob hipóteses específicas;
- **Geométrica:** quantidade de tentativas até o primeiro sucesso.

Para cada distribuição, registrar: tipo, parâmetros, suporte, média, variância, situação de uso, simulação em Python e uma limitação.

### Teste de hipóteses

- formular hipótese nula e alternativa antes de observar o resultado;
- definir nível de significância e interpretar o valor p corretamente;
- reconhecer erros dos tipos I e II, poder e efeito do tamanho da amostra;
- escolher testes de acordo com variável, desenho e hipóteses;
- reportar intervalo de confiança e tamanho de efeito junto com o teste;
- evitar concluir que não rejeitar a hipótese nula prova igualdade.

## Preparação de dados

- investigar o mecanismo de ausência antes de imputar valores;
- tratar outliers conforme origem e objetivo, sem removê-los automaticamente;
- codificar categorias com método compatível com o modelo;
- evitar ajuste do pré-processamento com dados de teste;
- analisar correlação, multicolinearidade e redundância;
- selecionar variáveis dentro do processo de validação para evitar vazamento;
- usar `Pipeline` e `ColumnTransformer` quando houver etapas aprendidas com os dados.

## Regressão

### Modelos

- regressão linear;
- Ridge com penalização L2;
- Lasso com penalização L1;
- árvore de regressão;
- Random Forest Regressor;
- gradient boosting e modelos avançados quando o baseline justificar.

### Métricas

- **MAE:** erro absoluto médio, fácil de interpretar na unidade do alvo;
- **MSE:** penaliza fortemente erros grandes e fica em unidade ao quadrado;
- **RMSE:** raiz do MSE, mantém a penalização e volta à unidade do alvo;
- **R2:** proporção da variação explicada em comparação com a média;
- **MAPE:** erro percentual, problemático com valores zero ou próximos de zero.

## Classificação

### Modelos

- regressão logística;
- árvore de decisão e Random Forest;
- gradient boosting, XGBoost e LightGBM;
- SVM;
- KNN;
- Naive Bayes.

O objetivo não é decorar todos os hiperparâmetros. É comparar pressupostos, necessidade de escala, interpretabilidade, custo computacional, capacidade não linear e adequação ao problema.

### Métricas

- **Acurácia:** proporção total de acertos;
- **Precisão:** entre os casos previstos como positivos, quantos eram positivos;
- **Recall:** entre os positivos reais, quantos foram encontrados;
- **F1:** média harmônica entre precisão e recall;
- **ROC AUC:** capacidade de ordenar positivos acima de negativos em diferentes limiares;
- **Gini:** transformação comum da ROC AUC, calculada como `2 vezes AUC menos 1`;
- **PR AUC:** complemento importante em eventos raros, mesmo não citado na lista original.

Sempre relacionar a métrica ao custo do erro e analisar o limiar de decisão. Uma probabilidade prevista não deve ser apresentada como decisão automática.

## Avaliação de modelos

- **K fold:** estima desempenho em múltiplas partições;
- **Stratified K fold:** preserva aproximadamente a proporção das classes;
- **Out of sample:** reserva observações não usadas no ajuste;
- **Out of time:** treina no passado e avalia em período posterior;
- comparar modelos na mesma estratégia de validação;
- manter o conjunto de teste isolado até a decisão final;
- reportar média, variação, baseline e análise de erro, não apenas a melhor métrica.

## Agrupamento

- **K means:** adequado a grupos aproximadamente compactos e sensível à escala e a outliers;
- **DBSCAN:** identifica regiões densas e ruído, mas depende da escolha de distância e densidade;
- **Hierárquico:** produz uma árvore de agrupamentos e permite explorar diferentes níveis de corte.

Clusters precisam ser estáveis, interpretáveis e acionáveis. Um bom silhouette score, sozinho, não demonstra valor de negócio.

## Programação

### Python

- pandas, NumPy, visualização, scikit-learn e testes;
- funções pequenas, nomes claros e docstrings;
- notebooks para narrativa e `src` para lógica reutilizável;
- ambientes isolados e dependências registradas.

### SQL

- filtros, agregações, joins, CTEs, subconsultas e janelas;
- construção de base analítica na granularidade correta;
- validação de contagens antes e depois de joins;
- prevenção de vazamento temporal.

## Gen AI LLMs e cloud

Conhecimento introdutório é um diferencial, mas não substitui estatística, SQL, Python e avaliação de modelos.

- entender prompts, tokens, embeddings, RAG e saídas estruturadas;
- avaliar factualidade, consistência, custo e latência;
- proteger dados e credenciais e manter revisão humana;
- reconhecer componentes de cloud como armazenamento, computação, API, monitoramento e controle de acesso;
- saber explicar uma arquitetura simples sem afirmar experiência de produção que não ocorreu.

## Critério de domínio

Marcar um tema como concluído somente quando houver:

1. explicação em palavras próprias;
2. exemplo mínimo reproduzível;
3. comparação com um baseline ou alternativa;
4. métrica ou critério de avaliação;
5. risco, pressuposto ou limitação documentada;
6. link para uma evidência no repositório.
