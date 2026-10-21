# Orientações permanentes para agentes de IA

Este repositório é um laboratório público e dinâmico de aprendizagem e portfólio em ciência de dados, com foco inicial no setor financeiro e em preparação profissional.

Este arquivo registra premissas duráveis. Todo agente de IA deve lê-lo antes de trabalhar no repositório. Decisões válidas apenas para uma tarefa devem ficar na conversa ou no documento específico; regras que precisam sobreviver entre tarefas devem ser registradas aqui.

## Antes de trabalhar

1. Leia este arquivo e `PROJECT_STATUS.md` por completo.
2. Verifique o estado do Git e preserve mudanças existentes.
3. Leia o README da área ou projeto envolvido.
4. Confirme se o arquivo pertence a este repositório antes de editar.
5. Não leia, copie, exponha ou versione dados pessoais, industriais, credenciais ou segredos.

## Premissas do laboratório

- O objetivo é aprender construindo e produzir evidências honestas de competência.
- O portfólio deve priorizar profundidade, clareza e reprodutibilidade, não quantidade.
- Cada análise deve partir de uma pergunta e terminar com conclusão, limitações e próxima ação.
- Problemas bancários devem considerar custo do erro, privacidade, viés, explicabilidade, segurança e revisão humana.
- Uma previsão não deve ser apresentada como decisão automática de crédito, fraude ou relacionamento.
- Resultados de estudo não devem inventar impacto financeiro, experiência profissional ou uso em produção.
- Use apenas dados públicos, sintéticos ou anonimizados com licença compatível.
- Documente fonte, licença, período, dicionário, transformações, limitações e vieses dos dados.

## Organização do trabalho

- Use `notebooks/` para exercícios, exploração e experimentos gerais.
- Quando um estudo se tornar uma entrega de portfólio, crie uma subpasta em `projects/` e mantenha os notebooks relacionados dentro dela.
- Mova lógica reutilizável dos notebooks para `src/nexo_dados/`.
- Adicione testes em `tests/` para funções reutilizáveis e partes críticas.
- Registre dependências em `pyproject.toml`; ambientes `.venv` são locais.
- Não versione dados grandes, modelos treinados, caches, segredos ou resultados facilmente reproduzíveis.

## Documentação e continuidade

- Atualize `PROJECT_STATUS.md` quando a situação ou a próxima ação mudar.
- Registre estudos e dúvidas em `study/LEARNING_LOG.md`.
- Atualize o README do projeto quando a forma de executar, reproduzir ou interpretar a entrega mudar.
- Registre decisões duráveis na documentação, não apenas na conversa.
- Mantenha instruções compreensíveis para alguém que não acompanhou o desenvolvimento.

## Qualidade mínima

- Prefira mudanças pequenas, verificáveis e documentadas.
- Execute testes proporcionais à mudança.
- Evite duplicação de código entre notebooks.
- Use nomes claros para variáveis, funções, arquivos e pastas.
- Não apresente apenas uma métrica: explique baseline, validação, erros, limitações e uso pretendido.
- Antes de finalizar, informe todos os arquivos criados, alterados, movidos ou removidos.

## Ações que exigem solicitação explícita

- criar commit ou tag;
- fazer push ou publicar conteúdo;
- criar ou alterar repositório remoto;
- enviar e-mail, mensagem ou candidatura;
- instalar software fora do ambiente do projeto;
- apagar dados ou arquivos relevantes.
