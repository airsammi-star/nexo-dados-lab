# Guia de Git e GitHub do básico ao intermediário

## Git e GitHub não são a mesma coisa

**Git** é o sistema que registra versões dos arquivos no computador. **GitHub** é uma plataforma que hospeda repositórios Git na internet e adiciona colaboração, revisão, issues e automações.

Você pode usar Git sem GitHub. Também pode manter um repositório Git local antes de decidir publicá-lo.

## Conceitos essenciais

- **repositório**: pasta acompanhada pelo Git;
- **working tree**: arquivos como estão no computador;
- **staging area**: seleção do que entrará no próximo commit;
- **commit**: registro identificado de uma mudança;
- **branch**: linha de desenvolvimento, como `main`;
- **remote**: endereço de outro repositório, normalmente no GitHub;
- **push**: envio de commits locais para o remoto;
- **pull**: integração de mudanças do remoto no repositório local;
- **clone**: criação de uma cópia local a partir do remoto;
- **pull request**: proposta de integração entre branches no GitHub.

## O ciclo básico

```text
editar arquivos -> revisar -> adicionar ao stage -> criar commit -> enviar ao GitHub
```

### Ver o estado

```powershell
git status
```

Use esse comando com frequência. Ele mostra arquivos modificados, novos, preparados e não rastreados.

### Ver diferenças

```powershell
git diff
git diff --staged
```

O primeiro mostra mudanças ainda fora do stage; o segundo mostra o conteúdo preparado para o próximo commit.

### Preparar arquivos

```powershell
git add README.md
git add src/nexo_dados/data_quality.py tests/test_data_quality.py
```

Prefira adicionar arquivos específicos. `git add .` é conveniente, mas pode incluir dados ou arquivos que você não pretendia publicar.

### Criar um commit

```powershell
git commit -m "Documenta estrutura inicial do laboratório"
```

Um bom commit representa uma mudança coerente. A mensagem deve explicar o que mudou, não apenas dizer “alterações”.

## Conectar ao GitHub

Depois de criar um repositório vazio no GitHub:

```powershell
git remote add origin https://github.com/SEU-USUARIO/nexo-dados-lab.git
git remote -v
git push -u origin main
```

`origin` é o nome convencional do remoto principal. A opção `-u` associa a branch local à branch remota para que os próximos envios possam usar apenas `git push`.

## Obter um repositório existente

```powershell
git clone https://github.com/USUARIO/REPOSITORIO.git
cd REPOSITORIO
```

Depois, use `git pull` para integrar mudanças remotas antes de começar um trabalho que também pode ter sido alterado em outro computador.

## Branches

Branches permitem desenvolver uma mudança sem alterar imediatamente a `main`.

```powershell
git switch -c feature/primeira-analise
git status
```

Depois de criar commits:

```powershell
git push -u origin feature/primeira-analise
```

No GitHub, abra um pull request para revisar e integrar a mudança. Para um projeto pessoal pequeno, trabalhar diretamente na `main` pode ser suficiente; use branches quando a mudança for longa, experimental ou precisar de revisão separada.

## Atualizar uma branch com segurança

```powershell
git switch main
git pull --ff-only
```

`--ff-only` evita criar um merge inesperado. Se o Git informar divergência, pare e entenda o histórico antes de escolher uma estratégia.

## Desfazer sem apagar trabalho indevidamente

Retirar um arquivo do stage, mantendo a edição:

```powershell
git restore --staged caminho-do-arquivo
```

Descartar mudanças locais de um arquivo é destrutivo:

```powershell
git restore caminho-do-arquivo
```

Use somente quando tiver certeza de que não precisa das alterações. Para desfazer um commit já compartilhado, prefira `git revert`, que cria um novo commit inverso:

```powershell
git revert IDENTIFICADOR_DO_COMMIT
```

## Como funciona o `.gitignore`

Cada linha descreve um padrão que o Git deve ignorar:

```gitignore
.venv/             # pasta inteira
*.csv              # todos os CSVs
.env                # arquivo específico
data/raw/*          # conteúdo da pasta
!data/raw/.gitkeep  # exceção que mantém o marcador
```

Regras importantes:

- o arquivo ignorado continua existindo no computador;
- o Git deixa de sugeri-lo como arquivo novo;
- o `.gitignore` deve ser versionado;
- um arquivo já rastreado não deixa de ser rastreado apenas por entrar no `.gitignore`;
- nunca dependa somente dele para proteger segredos: revise `git status` e `git diff --staged`.

Para descobrir qual regra está ignorando um arquivo:

```powershell
git check-ignore -v caminho-do-arquivo
```

## Issues e projetos

Uma **issue** registra tarefa, dúvida, bug ou ideia. Para este laboratório, uma boa issue pode conter:

- pergunta de negócio;
- definição de pronto;
- fonte dos dados;
- riscos e dúvidas;
- checklist de entregas.

Evite usar issues como substituto para documentação durável. Quando uma decisão se tornar regra do projeto, registre-a no README, no `AGENTS.md` ou na documentação específica.

## Pull requests

Mesmo trabalhando sozinho, um pull request pode ajudar a revisar:

1. o objetivo da mudança;
2. os arquivos alterados;
3. resultados de testes;
4. imagens ou métricas relevantes;
5. riscos e limitações.

## Tags e versões

Tags marcam pontos importantes do histórico:

```powershell
git tag -a v0.1.0 -m "Primeira versão do portfólio"
git push origin v0.1.0
```

Use tags quando houver uma entrega clara, não a cada sessão de estudo.

## Boas práticas para este laboratório

- execute `git status` antes e depois de cada sessão;
- faça commits pequenos e coerentes;
- nunca versione `.env`, credenciais ou dados sensíveis;
- documente a fonte e a licença dos dados;
- revise notebooks antes do commit e remova saídas desnecessariamente grandes;
- evite mensagens como `teste`, `mudanças` ou `ajustes finais`;
- não reescreva histórico já enviado sem entender o impacto;
- não use comandos destrutivos apenas para “limpar” o status.

## Exemplo de sessão completa

```powershell
git status
git switch -c docs/guia-python

# editar os arquivos

git diff
git add docs/PYTHON_DATA_SCIENCE_GUIDE.md README.md
git diff --staged
git commit -m "Adiciona guia introdutório de Python para dados"
git push -u origin docs/guia-python
```

O commit e o push devem ocorrer apenas quando você decidir que a mudança está pronta para ser registrada e publicada.
