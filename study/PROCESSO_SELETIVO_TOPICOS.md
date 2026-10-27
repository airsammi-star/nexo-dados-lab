# Tópicos prioritários para processo seletivo em dados

Este roteiro transforma as recomendações recebidas de um especialista em uma sequência prática de preparação. O objetivo não é decorar definições, mas conseguir explicar conceitos, resolver exercícios e justificar decisões técnicas em uma entrevista.

## Resultado esperado

Ao concluir esta trilha, devo conseguir:

- explorar uma base e resumir suas características principais;
- escrever consultas SQL para obter, combinar e validar dados;
- manipular dados com Python, NumPy e pandas;
- diferenciar regressão, classificação e agrupamento;
- explicar e treinar árvores de decisão e XGBoost;
- escolher métricas e estratégias de validação adequadas;
- integrar uma aplicação de dados com recursos de IA de forma segura e verificável;
- apresentar uma solução relacionando problema, dados, método, resultado e limitações.

## Ordem sugerida

1. Estatística descritiva básica.
2. SQL aplicado à análise.
3. Python e bibliotecas de ciência de dados.
4. Regressão e classificação.
5. Árvores de decisão e XGBoost.
6. Agrupamento.
7. Integração com IA.
8. Revisão por meio de um caso completo.

Essa ordem evita começar por modelos sofisticados sem compreender os dados, a variável-alvo e a forma correta de avaliação.

## 1 Estatística descritiva básica

### Conceitos essenciais

- tipos de variáveis: numérica, categórica, ordinal, discreta e contínua;
- população, amostra e unidade de observação;
- média, mediana e moda;
- mínimo, máximo, amplitude, variância e desvio-padrão;
- quartis, percentis e intervalo interquartil;
- distribuição, assimetria e valores extremos;
- frequência absoluta, relativa e acumulada;
- valores ausentes e duplicidades;
- covariância e correlação;
- diferença entre associação e causalidade.

### O que devo saber explicar

- por que a mediana pode representar melhor uma distribuição com valores extremos;
- como o desvio-padrão complementa a média;
- por que correlação não prova causalidade;
- como valores ausentes e outliers podem alterar conclusões;
- qual gráfico é adequado para cada tipo de variável.

### Prática recomendada

Escolher uma base pequena e produzir:

- tabela de qualidade dos dados;
- resumo estatístico das variáveis numéricas;
- distribuição das variáveis categóricas;
- histogramas e boxplots;
- matriz de correlação com interpretação cuidadosa;
- cinco conclusões e pelo menos três limitações.

### Evidência no repositório

Um notebook de análise exploratória com perguntas claras, estatísticas, gráficos e conclusões em linguagem de negócio.

## 2 SQL aplicado à análise

### Fundamentos

- `SELECT`, aliases e expressões calculadas;
- `WHERE`, `IN`, `BETWEEN`, `LIKE` e operadores lógicos;
- tratamento de `NULL` com `IS NULL`, `COALESCE` e `NULLIF`;
- `ORDER BY`, `LIMIT` e remoção consciente de duplicidades;
- `COUNT`, `SUM`, `AVG`, `MIN` e `MAX`;
- `GROUP BY` e `HAVING`;
- `CASE WHEN`;
- conversões de tipos e operações com datas.

### Intermediário

- `INNER JOIN`, `LEFT JOIN` e impacto da cardinalidade;
- subconsultas e CTEs com `WITH`;
- funções de janela, como `ROW_NUMBER`, `RANK`, `LAG`, `LEAD` e agregações com `OVER`;
- partições e ordenação dentro de janelas;
- identificação de duplicidades e validação de totais antes e depois de joins;
- construção de bases analíticas por cliente, período ou evento;
- leitura de planos de execução e redução de processamento desnecessário.

### O que devo saber explicar

- diferença entre filtrar com `WHERE` e `HAVING`;
- quando um `LEFT JOIN` pode multiplicar linhas;
- diferença entre agregação e função de janela;
- como validar se uma consulta produziu o número esperado de registros;
- como evitar usar informações futuras na criação de variáveis.

### Prática recomendada

Resolver pelo menos 25 consultas progressivas, incluindo:

- comparação entre grupos;
- evolução mensal;
- ranking dentro de cada grupo;
- identificação do primeiro ou último evento;
- média móvel;
- taxa calculada com proteção contra divisão por zero;
- auditoria de duplicidades e valores ausentes.

### Evidência no repositório

Um arquivo SQL comentado, com pergunta, consulta, validações e interpretação do resultado.

## 3 Python e bibliotecas de ciência de dados

### Python

- tipos, operadores, condicionais e laços;
- listas, tuplas, dicionários e conjuntos;
- funções, parâmetros, retorno e docstrings;
- compreensões e tratamento de exceções;
- leitura e escrita de arquivos;
- módulos, pacotes e importações;
- ambientes virtuais e dependências;
- testes básicos com `pytest`;
- código legível, reutilizável e sem efeitos colaterais inesperados.

### Bibliotecas prioritárias

- **NumPy:** arrays, operações vetorizadas, estatísticas e condições;
- **pandas:** leitura, seleção, filtros, tipos, ausentes, agrupamentos, joins, datas e reshape;
- **Matplotlib e Seaborn:** gráficos e comunicação visual;
- **scikit-learn:** divisão dos dados, pré-processamento, pipelines, modelos, métricas e validação;
- **XGBoost:** boosting de árvores, regularização e early stopping;
- **Jupyter:** narrativa reproduzível com Markdown, código e resultados.

### O que devo saber demonstrar

- carregar e inspecionar uma base;
- criar transformações sem alterar acidentalmente os dados originais;
- encapsular uma transformação em função;
- mover função reutilizável do notebook para `src`;
- testar uma função;
- construir um pipeline para evitar vazamento;
- fixar `random_state` quando aplicável e explicar reprodutibilidade.

### Evidência no repositório

Um notebook que importa pelo menos uma função de `src/nexo_dados` e possui testes correspondentes em `tests`.

## 4 Regressão

Regressão é usada quando o alvo é numérico, como valor, demanda, tempo ou quantidade.

### Conceitos essenciais

- variável-alvo e variáveis explicativas;
- regressão linear como baseline interpretável;
- resíduos e análise de erros;
- relações lineares e não lineares;
- regularização;
- separação entre treino, validação e teste;
- validação cruzada;
- erro absoluto médio, erro quadrático médio e coeficiente de determinação;
- transformação do alvo quando justificada;
- prevenção de vazamento de dados.

### O que devo saber explicar

- por que uma métrica foi escolhida;
- diferença prática entre MAE e RMSE;
- por que um bom resultado médio pode esconder erros importantes em determinados grupos;
- quando um modelo simples é preferível a um mais complexo.

### Exercício sugerido

Prever uma variável numérica usando média como baseline, regressão linear, árvore de decisão e XGBoost. Comparar métricas, tempo, estabilidade e análise de erros.

## 5 Classificação

Classificação é usada quando o alvo representa uma categoria, como ocorrência de fraude, cancelamento ou inadimplência.

### Conceitos essenciais

- classificação binária e multiclasse;
- classes e probabilidades;
- matriz de confusão;
- acurácia, precisão, revocação e F1;
- ROC AUC e PR AUC;
- limiar de decisão;
- classes desbalanceadas;
- calibração de probabilidades;
- custo de falsos positivos e falsos negativos;
- validação estratificada.

### O que devo saber explicar

- por que acurácia pode ser enganosa em eventos raros;
- diferença entre precisão e revocação;
- como o custo do erro influencia o limiar;
- por que prever probabilidade não equivale a tomar uma decisão automática.

### Exercício sugerido

Comparar um baseline simples, regressão logística, árvore de decisão e XGBoost em um problema desbalanceado. Avaliar mais de uma métrica e analisar os erros por grupo.

## 6 Árvores de decisão

Árvores dividem os dados em regras sucessivas para reduzir a impureza ou o erro dentro dos grupos resultantes.

### Conceitos essenciais

- nó raiz, nós internos, folhas e regras de divisão;
- critérios como Gini e entropia em classificação;
- redução do erro em regressão;
- profundidade, número mínimo de amostras e poda;
- sobreajuste e instabilidade;
- variáveis numéricas e categóricas após preparação adequada;
- importância de variáveis e suas limitações.

### Parâmetros que devo reconhecer

- `max_depth`;
- `min_samples_split`;
- `min_samples_leaf`;
- `max_features`;
- `class_weight` em classificação.

### O que devo saber explicar

- por que uma árvore profunda tende a memorizar o treino;
- como limitar a complexidade;
- vantagens de interpretabilidade;
- por que importância de variável não prova causalidade.

## 7 XGBoost

XGBoost é uma implementação eficiente de gradient boosting com árvores. Em vez de construir uma única árvore, o algoritmo cria árvores sequencialmente para corrigir erros anteriores.

### Conceitos essenciais

- diferença entre árvore única, random forest e boosting;
- aprendizado sequencial e função de perda;
- regularização;
- taxa de aprendizado e número de árvores;
- profundidade e complexidade;
- amostragem de linhas e colunas;
- early stopping;
- tratamento de valores ausentes;
- importância de variáveis e explicações com cautela;
- validação e tuning sem consultar o conjunto de teste repetidamente.

### Parâmetros que devo reconhecer

- `n_estimators`;
- `learning_rate`;
- `max_depth`;
- `min_child_weight`;
- `subsample`;
- `colsample_bytree`;
- `reg_alpha` e `reg_lambda`;
- `eval_metric`;
- `early_stopping_rounds`.

### O que devo saber explicar

- por que reduzir `learning_rate` normalmente exige mais árvores;
- como early stopping ajuda a controlar sobreajuste;
- por que tuning não substitui bons dados e validação correta;
- quando a complexidade adicional não compensa o ganho de desempenho.

### Exercício sugerido

Treinar árvore simples e XGBoost com o mesmo conjunto de treino e a mesma estratégia de validação. Comparar baseline, métricas, estabilidade, tempo e interpretabilidade.

## 8 Agrupamento

Agrupamento é aprendizado não supervisionado: não existe uma variável-alvo conhecida. O objetivo é identificar estruturas ou grupos semelhantes nos dados.

### Conceitos essenciais

- diferença entre classificação e agrupamento;
- escolha e padronização das variáveis;
- distância e similaridade;
- K-means e seus pressupostos;
- número de grupos;
- inércia e método do cotovelo;
- silhouette score;
- agrupamento hierárquico;
- sensibilidade a escala, outliers e inicialização;
- interpretação e utilidade de negócio dos grupos.

### O que devo saber explicar

- por que é necessário escalar variáveis em muitos algoritmos;
- por que um bom índice matemático não garante segmentos úteis;
- como nomear grupos sem inventar características;
- como validar se uma segmentação gera uma ação mensurável.

### Exercício sugerido

Criar segmentos de comportamento, descrevê-los com estatísticas e propor uma ação ou hipótese testável para cada grupo.

## 9 Integração com IA

Integração com IA significa incorporar modelos ou serviços inteligentes em um fluxo de dados ou aplicação. Para processo seletivo, é importante compreender arquitetura, avaliação, segurança e limites, não apenas escrever prompts.

### Fundamentos

- diferença entre modelo tradicional, modelo generativo e serviço de IA por API;
- requisições, respostas, autenticação e tratamento de erros;
- prompts, mensagens de sistema e saídas estruturadas;
- limites de contexto, custo e latência;
- embeddings e busca semântica;
- visão geral de RAG, que combina recuperação de informações e geração;
- chamadas de ferramentas e agentes como tópicos posteriores;
- avaliação de qualidade, factualidade e consistência;
- observabilidade, registro de versões e testes.

### Segurança e responsabilidade

- não enviar dados pessoais, industriais ou credenciais para serviços externos;
- proteger chaves em variáveis de ambiente e nunca no Git;
- validar saídas antes de usá-las em decisões;
- aplicar revisão humana em contextos de risco;
- considerar viés, alucinações, injeção de prompt e uso indevido;
- definir comportamento de fallback quando o serviço falhar;
- registrar modelo, versão, parâmetros e critérios de avaliação.

### Integrações práticas para estudar

- classificar textos e retornar resultado em formato estruturado;
- resumir documentos públicos com rastreabilidade das fontes;
- criar busca semântica sobre documentação pública;
- gerar explicações preliminares de uma análise, mantendo revisão humana;
- usar IA para auxiliar uma interface sem permitir decisões bancárias automáticas.

### O que devo saber explicar

- como os dados chegam ao modelo e como a resposta é validada;
- como proteger credenciais e dados sensíveis;
- como medir se a integração melhorou o processo;
- quando uma solução determinística é mais apropriada;
- quais riscos exigem bloqueio ou revisão humana.

### Evidência no repositório

Uma pequena aplicação com dados públicos, saída estruturada, exemplos de teste, tratamento de falhas e seção explícita sobre privacidade e limitações.

## Caso integrador sugerido

Construir um projeto pequeno com estas etapas:

1. Formular uma pergunta de negócio.
2. Consultar ou preparar os dados com SQL.
3. Realizar estatística descritiva em Python.
4. Criar um baseline.
5. Escolher regressão, classificação ou agrupamento conforme o objetivo.
6. Comparar árvore de decisão e XGBoost quando houver variável-alvo adequada.
7. Avaliar erros, estabilidade e limitações.
8. Adicionar uma integração de IA somente se ela resolver uma necessidade clara, como busca ou resumo de documentação pública.
9. Apresentar a solução em cinco minutos.

## Perguntas para simulação de entrevista

- Quando você usaria mediana em vez de média?
- Como detectaria uma duplicação causada por um join?
- Qual a diferença entre `WHERE` e `HAVING`?
- Como evitar vazamento em um pipeline de machine learning?
- Qual a diferença entre regressão, classificação e agrupamento?
- Por que uma árvore de decisão pode sobreajustar?
- Como XGBoost corrige os erros das árvores anteriores?
- Qual métrica escolheria para um evento raro e por quê?
- Como validaria se os clusters são úteis para o negócio?
- Como protegeria dados e credenciais em uma integração com IA?
- Como testaria a qualidade de uma resposta gerada por IA?

## Checklist de domínio

Para cada tema, marcar como concluído apenas quando eu conseguir:

- explicar o conceito sem consultar uma definição;
- construir um exemplo pequeno;
- identificar pelo menos um risco ou limitação;
- responder por que escolhi aquela técnica;
- relacionar o resultado a uma decisão ou próxima ação;
- apontar uma evidência no repositório.
