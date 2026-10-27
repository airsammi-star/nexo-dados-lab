# Status do projeto

Última atualização: 2026-10-27

## Situação

Estrutura inicial criada e documentação de entrada ampliada. O projeto do Brasileirão foi organizado para análises reproduzíveis, com dados brutos separados, exploração inicial e um segundo notebook para testar variações entre temporadas, fatores associados à vitória do mandante e capacidade preditiva fora da amostra.

O plano de preparação técnica foi atualizado com probabilidade, distribuições, testes de hipótese, preparação de dados, modelos de regressão e classificação, clustering, métricas, estratégias de validação e noções complementares de Gen AI, LLMs e cloud. O repositório agora possui um backlog de exercícios e um notebook modelo para registrar exemplos reproduzíveis.

## Próxima ação

Reiniciar o kernel do projeto, concluir a instalação das dependências e executar `projects/brasileirao/notebooks/02_fatores_vitoria_mandante.ipynb`. Validar se a colocação foi registrada antes de cada partida antes de interpretar o modelo como predição pré-jogo.

Em paralelo, iniciar `study/EXERCISE_BACKLOG.md` pelo exercício de Bernoulli e usar `notebooks/00_template_estudo.ipynb` como estrutura.

## Evidências existentes

- repositório organizado para estudos, análises e projetos;
- plano de estudo em Word;
- roteiro inicial e diário de aprendizagem;
- módulo básico de diagnóstico de dados com testes;
- guia de Git e GitHub do básico ao intermediário;
- guia de funções Python aplicadas à ciência de dados;
- catálogo comentado de referências públicas, incluindo materiais ligados ao Itaú;
- premissas duráveis registradas em `AGENTS.md`;
- estrutura de dados, notebooks e relatórios em `projects/brasileirao/`;
- notebook inicial de qualidade, estatísticas descritivas e gráficos em `projects/brasileirao/notebooks/01_exploracao_inicial.ipynb`;
- notebook de testes de anomalias, regressão explicativa e predição temporal em `projects/brasileirao/notebooks/02_fatores_vitoria_mandante.ipynb`;
- consulta corrigida para comparar resultados de mandantes e visitantes por temporada em `projects/brasileirao/analise_mando_de_campo.sql`; resultados ainda não executados.
- trilha técnica detalhada para processo seletivo em `study/TRILHA_TECNICA_ITAU.md`;
- backlog de exercícios em `study/EXERCISE_BACKLOG.md`;
- notebook reutilizável para exemplos em `notebooks/00_template_estudo.ipynb`;
- dependências opcionais registradas para XGBoost e LightGBM.
