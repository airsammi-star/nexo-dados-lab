# Notebooks

Numere os notebooks na ordem de execução, por exemplo `01_exploracao.ipynb`. Cada notebook deve declarar pergunta de negócio, fonte dos dados, decisões, resultados, limitações e próximos passos.

Quando uma transformação for reutilizável, mova-a para `src/nexo_dados/` e cubra-a com testes.

## Modelo de estudo

Use `00_template_estudo.ipynb` para criar exercícios de estatística, preparação de dados, regressão, classificação e agrupamento. O modelo exige pergunta, conceito, dados, exemplo mínimo, comparação, validação, conclusão e limitações.

O backlog em `study/EXERCISE_BACKLOG.md` sugere uma ordem de exercícios. Crie novos notebooks numerados e com nomes claros, como:

- `01_distribuicoes_e_cdf.ipynb`;
- `02_teste_de_hipoteses.ipynb`;
- `03_regressao_e_metricas.ipynb`;
- `04_classificacao_e_limiares.ipynb`;
- `05_clustering_comparacao.ipynb`.

Exercícios gerais ficam nesta pasta. Quando uma análise se transformar em entrega de portfólio, mova o trabalho relacionado para uma subpasta própria em `projects/`.
