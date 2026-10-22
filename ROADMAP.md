# Trilha de Evolução Técnica — Do Artesanato de Código ao Design de Sistemas

> Programa de estudos em grupo, com encontros semanais de discussão, uma trilha de hard skills que anda junto com os livros e **um projeto individual por estudante, que evolui do Nível 1 ao Nível 4**.
>
> **Foco atual: Nível 1** (19/Out/2026 – 19/Fev/2027). Os prazos dos Níveis 2–4 ficam em aberto e serão definidos conforme o ritmo real do grupo no Nível 1.

## Como este roadmap funciona

- **4 Níveis sequenciais.** Cada nível tem: temas semanais de leitura, uma trilha de hard skills, a evolução correspondente do projeto e objetivos de saída — só se avança de nível quando esses objetivos estiverem claros para o grupo.
- **Livros são guia; hard skills são obrigação.** O livro dá o vocabulário e o raciocínio; as hard skills (Git, testes, Docker, HTTP, banco de dados…) são o que o profissional precisa dominar na prática. Toda semana tem hard skill, sempre aplicada no projeto; a leitura vem em semanas alternadas, intercaladas com semanas só de projeto.
- **O livro é a fonte-base, não uma obrigação de leitura integral.** Cada semana de leitura tem um **objetivo de conhecimento** e uma **fonte-base** (os capítulos do livro). A meta do grupo é ler pelo menos 1 capítulo por dia útil; quem atrasar cobre o mesmo objetivo com uma fonte alternativa mais leve (artigo, vídeo, resumo) e chega igualmente pronto para o encontro.
- **O calendário não espera por ninguém.** O encontro semanal acontece na data marcada, independente de quem terminou 100% da leitura. Quem ficou pra trás naquela semana participa com o essencial (via o resumo do facilitador ou a fonte alternativa) em vez de atrasar o grupo inteiro.
- **Núcleo vs. curiosidade em todo livro.** Todo livro do programa foi dividido entre capítulos **núcleo** (o que sustenta os objetivos de saída e o projeto) e capítulos **curiosidade** (bons de saber que existem, sem sessão de discussão dedicada).
- **Um projeto por estudante.** Cada pessoa mantém o próprio projeto desde o Nível 1; cada nível adiciona uma camada de complexidade sobre o que já existe (ver seção "O Projeto").
- **Checkpoints.** Ao final de cada bloco/nível, um encontro é dedicado à demo dos projetos e à revisão dos objetivos de saída — não é uma semana de leitura nova.
- **Leituras complementares (fora do cronograma):** *The Pragmatic Programmer*, *A Philosophy of Software Design* e *Extreme Programming Explained* — recomendadas, cada um lê no seu ritmo.

---

## Visão geral

| Nível | Foco | Duração | Período |
|---|---|---|---|
| 1 | Código Limpo e Vocabulário de Padrões | 15 semanas (com 2 marcos) | 19/Out/2026 – 19/Fev/2027 |
| 2 | Arquitetura de Software (Domínio) | 7 semanas de conteúdo + checkpoint | Em aberto |
| 3 | Arquitetura de Sistemas Distribuídos | 9 semanas de conteúdo + checkpoint | Em aberto |
| 4 | System Design em Escala | 7 semanas de conteúdo + checkpoint | Em aberto |

As durações dos Níveis 2–4 são estimativas do conteúdo atual. Datas serão definidas ao final do Nível 1, a partir do ritmo observado.

---

## O Projeto

**Cada estudante constrói e mantém o próprio projeto**, do Nível 1 ao Nível 4. O projeto ganha complexidade na mesma ordem em que a pessoa ganha repertório para lidar com ela.

**Domínio:** livre, à escolha de cada pessoa. Sugestões: pedidos/contratos simplificados (inspirado num fluxo real do sistema em que você trabalha profissionalmente, mas isolado — sem código, dados ou acesso à produção), biblioteca, reservas, controle financeiro pessoal. O domínio precisa ter:
- **pelo menos 2 entidades relacionadas** (ex.: Pedido e Item);
- **pelo menos 1 regra de negócio que varia** (ex.: cálculo de preço/desconto/frete por tipo).

Sem isso, os padrões do Bloco B não têm onde se aplicar de forma honesta.

**Linguagem e framework:** livres. Cada um usa o ecossistema que quer aprofundar, desde que tenha formatador, linter, framework de testes e suporte a Docker.

**Code review entre colegas:** mesmo com projetos individuais, todo PR relevante é revisado por **um colega**. Ler código dos outros é parte central do Nível 1 (smells, padrões, nomes).

| Nível | O que o projeto ganha | Pré-requisito de conhecimento | Hard skills necessárias |
|---|---|---|---|
| 1 | Nasce do zero com TDD; histórico Git atômico e versionado; acesso a dados com Repository + DTO; ao menos 2 padrões GoF; API e banco em containers; testes de integração com banco descartável | Clean Code + Refactoring + Padrões GoF e EAA selecionados | Git (commits atômicos, versionamento, fluxo de PR), testes unitários e TDD, HTTP básico, Docker e Docker Compose, SQL, design de API REST, CI simples |
| 2 | Reestruturado em camadas de Clean Architecture; um Bounded Context e um Agregado real do domínio do projeto são modelados e implementados | Clean Architecture + DDD tático | HTTP avançado, autenticação/autorização básica |
| 3 | Quebrado em pelo menos 2 serviços: REST síncrono entre eles + fluxo assíncrono via fila; primeiro padrão de resiliência aplicado | Estilos arquiteturais + microsserviços + trade-offs difíceis | Mensageria, cache, service discovery, noções de gRPC |
| 4 | Sobe para a nuvem com pelo menos 3 serviços, fila e cache reais, e observabilidade básica | Confiabilidade/escalabilidade/particionamento/consistência | Orquestração de containers, deploy cloud/CI-CD, observabilidade |

---

## Nível 1 — Código Limpo e Vocabulário de Padrões (15 semanas · 19/Out/2026 – 19/Fev/2027)

**Objetivo do nível:** sair de "código que funciona" para código profissional, legível e testável, e ganhar um vocabulário comum de padrões — nomear soluções ("isso é um Strategy", "isso pede um Repository") em vez de reinventar cada uma do zero. Ao mesmo tempo, dominar as hard skills básicas que todo profissional precisa: Git, testes/TDD, HTTP, Docker e banco de dados.

**Livros-base:** Clean Code (Robert C. Martin) · Refactoring, 2ª ed. (Martin Fowler) · Design Patterns (GoF) · Patterns of Enterprise Application Architecture (Fowler).

**Lente de leitura do Clean Code:** os capítulos foram selecionados a partir do artigo [Clean Code para Agentes de IA](https://akitaonrails.com/2026/04/20/clean-code-para-agentes-de-ia/) (Akita, abr/2026). O artigo reavalia o livro considerando que o código hoje é lido tanto por pessoas quanto por agentes de IA. Na prática, isso significa:
- **Ganharam peso:** funções e arquivos pequenos, SRP, nomes **pesquisáveis** (via grep), DRY, testes que rodam com um comando, injeção de dependência, pouco aninhamento (guard clauses/early return) e erros com contexto.
- **Mudaram de leitura:** comentários deixam de ser só "sintoma de código ruim". Comentário óbvio continua ruim, mas comentário com **intenção e proveniência** (o porquê, o bug/issue que motivou o trecho) passa a ser valioso.
- **Perderam peso:** debates de formatação. Usa-se o formatador padrão da linguagem e o assunto morre aí.

### Estrutura do nível

- **Semana 0 — Preparação (19/10).** Ambiente, Git básico, artigo do Akita e escolha do domínio.
- **Bloco A — Código Limpo (semanas 1–6) → Marco A em 07/12.** Escrever, testar (TDD) e refatorar bom código, com histórico Git limpo e versionado. O projeto chega a um CRUD testado, exposto via HTTP.
- **Bloco B — Vocabulário de Padrões (semanas 8–13) → Marco B em 15/02.** Nomear e aplicar padrões. O projeto ganha banco real, containers, Repository + DTO, padrões GoF, testes de integração e CI. Começa na semana de 14/12, antes do recesso (21/12 – 03/01).

**Ritmo: semanas de leitura intercaladas com semanas de projeto.** O grupo lê **pelo menos 1 capítulo por dia útil (5 por semana)**, contando o capítulo do livro como ele é. Nesse ritmo, cada bloco cabe em 3 semanas de leitura. Cada uma é seguida por uma semana sem leitura nova, dedicada ao projeto, para aplicar o que foi lido.

**Carga esperada por pessoa:**
- **Semana de leitura:** ~3–4h de leitura (5 capítulos) + ~2–3h de prática + ~60 min de encontro. Total: **~7–8h**.
- **Semana de projeto:** **~5–6h de prática** (hard skill + projeto) + 30–45 min de encontro.

### Cronograma semana a semana

As datas indicam a **semana** (segunda-feira de referência); o encontro acontece no dia fixo escolhido pelo grupo. Atenção a feriados que podem cair no dia do encontro: **02/11 (seg, Finados)**, **20/11 (sex, Consciência Negra)** e **08–09/02 (seg–ter, Carnaval)**.

| Sem. | Semana de | Tipo | Leitura (5 cap.) | Hard skill da semana | Prática no projeto |
|---|---|---|---|---|---|
| 0 | 19/10 | **Preparação** | Artigo do Akita | Git fundamentos: `init`, staging, `.gitignore`, `log`, `diff`, remoto; nunca versionar segredos (`.env`) | Escolher domínio; criar repositório; configurar formatador, linter e comando único de teste; README com "como rodar" |
| 1 | 26/10 | 📖 Leitura | Clean Code cap. 2 (Nomes), 3 (Funções), 4 (Comentários), 7 (Tratamento de Erros), 9 (Testes de Unidade) | **Commits atômicos** e Conventional Commits; `git add -p` para separar mudanças | Primeiro recurso do CRUD; cada commit faz uma coisa só e tem mensagem no padrão |
| 2 | 02/11 | 🛠️ Projeto | — | **HTTP básico:** métodos, status codes, headers, corpo; testar com `curl`/HTTPie · **TDD:** ciclo red → green → refactor | Expor o CRUD via HTTP; erros de validação viram respostas 4xx com contexto (valor recebido e formato esperado); a partir daqui, toda funcionalidade nova nasce de um teste que falha |
| 3 | 09/11 | 📖 Leitura | Refactoring cap. 1 (Primeiro Exemplo), 2 (Princípios), 4 (Construindo Testes) · Clean Code cap. 10 (Classes), 11 (Sistemas) | **Fluxo de branch e PR:** feature branch, `rebase -i` para limpar o histórico antes do merge, descrição de PR, review por colega | Primeira refatoração em PR, revisada por um colega |
| 4 | 16/11 | 🛠️ Projeto | — | **Test doubles:** diferença entre fake, stub e mock; quando cada um se paga · **Git hooks:** pre-commit rodando formatador/lint/testes | Injetar dependências e usar um fake (ex.: repositório em memória) nos testes unitários; pre-commit hook configurado |
| 5 | 23/11 | 📖 Leitura | Clean Code cap. 12 (Emergência), 17 (Smells e Heurísticas) · Refactoring cap. 3 (Bad Smells), 6 (Primeiro Catálogo — longo, vale 2 dias) | **`git bisect`** para achar o commit que quebrou algo | Review cruzado caçando smells no projeto de um colega; cada smell vira uma issue no projeto dele |
| 6 | 30/11 | 🛠️ Projeto | — | **Versionamento:** SemVer, versão derivada dos commits, tags anotadas, CHANGELOG | Resolver as issues de smells (nome da refatoração no commit); publicar a primeira versão com tag |
| 7 | 07/12 | **Marco A** | — | — | Ver "Requisitos do projeto — Marco A" |
| 8 | 14/12 | 📖 Leitura | GoF cap. 1 (Introdução), 3 (Criacionais) · EAA cap. 3 (Mapeamento para Bancos Relacionais), 10 (Fonte de Dados: Active Record, Data Mapper…), 18 (Padrões Base: Value Object, Money, Gateway…) | **Docker:** imagens, containers, Dockerfile, portas, volumes, multi-stage build | Dockerfile da API; rodar a aplicação em container |
| — | 21/12 – 03/01 | **Recesso** | — | — | — |
| 9 | 04/01 | 🛠️ Projeto | — | **SQL e modelagem relacional:** tabelas, chaves, relacionamentos, índices básicos, migrations versionadas · **Docker Compose:** API + banco, variáveis de ambiente, healthcheck, rede entre containers | Esquema do banco em migrations; persistência real no banco; `docker compose up` sobe API e banco; Value Objects onde houver tipos primitivos com regra (ex.: dinheiro, documento) |
| 10 | 11/01 | 📖 Leitura | GoF cap. 4 (Estruturais), 5 (Comportamentais) · EAA cap. 2 (Organizando a Lógica de Domínio), 9 (Lógica de Domínio: Transaction Script, Domain Model, Service Layer…), 13 (Repository) | **Design de API REST:** recursos, verbos, códigos de erro padronizados, paginação | Strategy (ou alternativa justificada) na regra que varia; revisar recursos e erros da API |
| 11 | 18/01 | 🛠️ Projeto | — | **Testes de integração:** pirâmide de testes; banco descartável subido pelo próprio teste (Testcontainers ou Compose de teste) | Repository atrás de interface; suíte de integração do acesso a dados rodando contra banco descartável |
| 12 | 25/01 | 📖 Leitura | EAA cap. 7 (Estratégias de Distribuição), 11 (Comportamento Objeto-Relacional: Unit of Work, Identity Map…), 15 (Distribuição: DTO, Remote Facade) — 3 capítulos | **CI:** pipeline rodando lint + testes unitários + testes de integração a cada PR | DTOs na fronteira da API; testes de API via HTTP; CI com regra de branch impedindo merge se falhar |
| 13 | 01/02 | 🛠️ Projeto | — | — (consolidação) | Fechar pendências do Marco B; notas de decisão dos padrões; release da versão final do nível |
| — | 08/02 | **Carnaval** | — | — | — |
| 14 | 15/02 | **Marco B — checkpoint final do Nível 1** | — | — | Ver "Requisitos do projeto — Marco B" |

**Dica para as semanas de GoF (8 e 10):** os capítulos 3–5 reúnem vários padrões cada. Para caber em um dia por capítulo, leia as seções **Intent, Motivation, Applicability e Consequences** de cada padrão; Implementation e Sample Code ficam para consulta quando o padrão for aplicado no projeto. A discussão foca nos padrões núcleo: Factory Method, Abstract Factory, Builder, Singleton, Adapter, Decorator, Facade, Proxy, Strategy, Observer, Command e Template Method. O [refactoring.guru](https://refactoring.guru/pt-br/design-patterns) é uma fonte alternativa válida.

### Objetivos de conhecimento das leituras

Nas semanas de projeto, o objetivo é aplicar no código a leitura da semana anterior.

| Sem. | Objetivo de conhecimento |
|---|---|
| 1 | Escrever nomes pesquisáveis e funções pequenas, com no máximo 2 níveis de aninhamento; diferenciar comentário óbvio de comentário de intenção/proveniência; lançar erros com contexto; escrever testes F.I.R.S.T. que rodam com um único comando |
| 3 | Refatorar em passos pequenos, com teste verde antes e depois de cada passo; aplicar SRP e injeção de dependência |
| 5 | Nomear smells; eliminar duplicação (DRY) com justificativa; aplicar 2–3 refatorações do catálogo com justificativa |
| 8 | Explicar "programe para uma interface" e "prefira composição a herança"; escolher o padrão criacional certo para um cenário dado; diferenciar Active Record de Data Mapper e saber quando cada um se paga |
| 10 | Escolher o padrão estrutural ou comportamental certo para um problema do projeto; justificar Transaction Script vs. Domain Model para uma regra de negócio dada; explicar o papel do Repository |
| 12 | Explicar por que DTO existe e o que ele evita expor; saber quando Unit of Work e Identity Map se pagam |

**Curiosidade (não discutido em sessão):**
- *Clean Code:* cap. 1 (introdução), cap. 5 (Formatação — substituída pelo formatador automático da linguagem), cap. 6 (Objetos e Estruturas de Dados), cap. 8 (Fronteiras), cap. 13 (Concorrência — retomada com mais contexto nos Níveis 3 e 4), cap. 14–16 (estudos de caso de refinamento) e apêndices.
- *Refactoring:* cap. 5 e cap. 7 em diante — o catálogo serve como consulta pontual.
- *GoF:* cap. 2 (estudo de caso) e cap. 6 (conclusão). Os padrões fora do núcleo nos caps. 3–5 (Prototype, Bridge, Composite, Flyweight, Chain of Responsibility, Interpreter, Iterator, Mediator, Memento, State, Visitor) são lidos junto com o capítulo, mas não têm discussão dedicada.
- *EAA:* cap. 1 (Camadas), 4–6 e 8 (Web Presentation, Concorrência, Session State, Juntando tudo), 12, 14, 16 e 17 (mapeamento estrutural e de herança, Web Presentation, concorrência offline, Session State). Os padrões fora do núcleo nos capítulos lidos (ex.: Table Module, Row/Table Data Gateway, Lazy Load, Registry, Special Case, Plugin) não têm discussão dedicada.
- Padrões localizáveis por nome em [martinfowler.com/eaaCatalog](https://martinfowler.com/eaaCatalog/) e [refactoring.guru](https://refactoring.guru/pt-br/design-patterns) se surgir necessidade pontual.

### Trilha de hard skills do Nível 1

O que cada pessoa precisa **saber fazer**, não só conhecer. As evidências estão na tabela de critérios de saída.

#### Git
- **Commits atômicos:** cada commit faz uma única mudança lógica, compila e passa nos testes. Refatoração nunca vai no mesmo commit que mudança de comportamento. Ferramenta-chave: `git add -p`.
- **Mensagens no padrão [Conventional Commits](https://www.conventionalcommits.org/pt-br/):** `feat:`, `fix:`, `refactor:`, `test:`, `docs:`, `chore:`, com escopo opcional e `BREAKING CHANGE` quando aplicável.
- **Versionamento com [SemVer](https://semver.org/lang/pt-BR/) derivado dos commits:**
  - `fix:` → incrementa PATCH (`1.2.3` → `1.2.4`);
  - `feat:` → incrementa MINOR (`1.2.3` → `1.3.0`);
  - `BREAKING CHANGE` (ou `feat!:`) → incrementa MAJOR (`1.2.3` → `2.0.0`);
  - enquanto a API não é estável, o projeto fica em `0.x`.
  - Primeiro fazer à mão (ler o log desde a última tag, decidir a versão, criar tag anotada e atualizar o CHANGELOG); depois, opcionalmente, automatizar (ex.: release-please, semantic-release, commitizen).
- **Tags e releases:** tag anotada por versão (`git tag -a v0.2.0 -m "..."`), CHANGELOG gerado a partir dos commits.
- **Fluxo de branch e PR:** feature branches curtas, PR com descrição (o quê, por quê, como testar), review por colega, histórico limpo antes do merge (`rebase -i` para squash/fixup/reword).
- **Automação local:** pre-commit hook rodando formatador, lint e testes rápidos.
- **Diagnóstico:** `git bisect` para encontrar o commit que introduziu um bug (só funciona bem com commits atômicos e testes — por isso está aqui).
- **Segurança:** `.gitignore` desde o primeiro commit; segredos e `.env` nunca entram no repositório; `.env.example` documenta as variáveis.

#### Testes e TDD
- Testes unitários F.I.R.S.T. (rápidos, isolados, repetíveis, autoverificáveis, oportunos).
- **TDD:** ciclo red → green → refactor, praticado em kata e depois no projeto.
- **Test doubles:** fake, stub e mock — saber a diferença e preferir fakes simples a mocks frágeis.
- **Pirâmide de testes:** muitos unitários, alguns de integração, poucos ponta a ponta.
- **Testes de integração com banco descartável:** o próprio teste sobe um banco de verdade em container, roda e descarta (ex.: Testcontainers, ou um serviço de teste no Docker Compose). Diferente do fake em memória: aqui se testa SQL, migrations e mapeamento de verdade.

#### HTTP
- Métodos e semântica (GET, POST, PUT, PATCH, DELETE; idempotência).
- Status codes: 2xx, 4xx (erro do cliente) vs. 5xx (erro do servidor); escolher o código certo para cada erro do projeto.
- Headers essenciais (`Content-Type`, `Accept`, `Location`), corpo JSON.
- Testar a API pela linha de comando (`curl`/HTTPie).
- Design REST básico: recursos, verbos, erros padronizados, paginação.

#### Docker
- Imagem vs. container; Dockerfile; portas e volumes; multi-stage build para imagem enxuta.
- Docker Compose: API + banco, variáveis de ambiente, healthcheck, rede entre containers.

#### Banco de dados
- SQL básico (CRUD, JOIN, filtros), modelagem relacional (chaves, relacionamentos), índices básicos.
- Migrations versionadas no repositório: o esquema do banco evolui junto com o código.

#### CI
- Pipeline simples (ex.: GitHub Actions) rodando lint, testes unitários e testes de integração a cada PR.

### Requisitos do projeto

Os requisitos são **verificáveis**: cada item pode ser conferido olhando o repositório, sem depender de opinião.

#### Marco A — 07/12 (fim do Bloco A)
- [ ] Clone limpo + **um comando documentado no README** roda toda a suíte de testes, sem setup manual.
- [ ] Formatador e linter configurados e rodando no pre-commit hook.
- [ ] CRUD completo de pelo menos 2 entidades relacionadas, exposto via API HTTP, com status codes corretos para sucesso e erro.
- [ ] Toda regra de negócio tem teste unitário; os testes são F.I.R.S.T. (rodam isolados, em qualquer ordem, sem rede/banco real).
- [ ] Funções curtas (referência: até ~20 linhas), no máximo 2 níveis de aninhamento, arquivos abaixo de ~300 linhas. Exceções existem, mas são justificadas no PR.
- [ ] Nenhum nome genérico sem qualificação (`data`, `info`, `handler`, `manager`, `utils`, `helper`).
- [ ] Erros de validação incluem o valor recebido e o formato esperado; nenhum `catch` vazio.
- [ ] Pelo menos uma dependência injetada e substituída por fake nos testes.
- [ ] Histórico Git com **commits atômicos** e mensagens em Conventional Commits; refatorações em commits separados, com o nome da refatoração do catálogo na mensagem.
- [ ] Pelo menos uma **versão publicada com tag anotada** (ex.: `v0.1.0`) e CHANGELOG coerente com os commits desde a versão anterior.
- [ ] Nenhum segredo no histórico; `.env.example` documentando as variáveis.
- [ ] Pelo menos **2 PRs revisados por um colega** e **2 PRs de colegas revisados** no bloco.

#### Marco B — 15/02 (fim do Nível 1)
Tudo do Marco A continua valendo, mais:
- [ ] Clone limpo + **`docker compose up`** sobe o servidor da aplicação e o banco relacional em containers, sem nenhum passo manual além de copiar o `.env.example`.
- [ ] Esquema do banco criado por **migrations versionadas** no repositório.
- [ ] **Testes de integração** do acesso a dados rodando contra um **banco descartável subido automaticamente** pelo teste (Testcontainers ou Compose de teste), com **um comando** documentado no README.
- [ ] Acesso a dados atrás de um **Repository** (interface + implementação); a camada de regra de negócio não conhece SQL nem o driver do banco.
- [ ] **DTOs na fronteira da API:** nenhuma entidade de domínio é serializada diretamente na resposta.
- [ ] Pelo menos **2 padrões GoF** aplicados onde resolvem um problema real do projeto.
- [ ] README (ou pasta `docs/decisoes`) com uma nota curta por padrão aplicado: **qual problema resolve, por que este padrão, e pelo menos 1 padrão que foi considerado e rejeitado**.
- [ ] **CI** rodando lint + testes unitários + testes de integração a cada PR, com regra de branch impedindo merge se falhar.
- [ ] Versões publicadas ao longo do bloco seguindo SemVer, com tags e CHANGELOG coerentes com os commits.
- [ ] Pelo menos **2 PRs revisados por um colega** e **2 PRs de colegas revisados** no bloco.

### Critérios de saída — como saber que o conteúdo foi entendido

Cada objetivo de saída tem uma **evidência observável**. Ninguém é aprovado por ter lido o livro; é aprovado por mostrar a competência no próprio código ou numa conversa.

#### Código limpo e padrões

| Objetivo de saída | Evidência observável | Onde é verificado |
|---|---|---|
| Escreve funções pequenas e nomes pesquisáveis que comunicam intenção | O projeto cumpre os limites de tamanho/aninhamento/nomes; os reviews recebidos não precisam apontar isso | Projeto + PRs (Marco A) |
| Diferencia comentário óbvio de comentário de intenção/proveniência | Recebe um trecho com ~5 comentários e classifica cada um como "remover" ou "manter", justificando | Exercício do Marco A |
| Trata erro como parte do design | Explica uma exceção do projeto: que contexto ela carrega, quem a trata e que status HTTP ela gera | Rodada de explicação do Marco A |
| Identifica e nomeia code smells | Em 20 min com um código desconhecido (ex.: kata *Gilded Rose*), lista ao menos 3 smells pelo nome do catálogo e a refatoração que resolve cada um | Exercício do Marco A + reviews feitos em PRs de colegas |
| Aplica SRP e injeção de dependência | Aponta no projeto uma classe separada por responsabilidade e uma dependência substituída por fake no teste, explicando o ganho | Rodada de explicação do Marco A |
| Reconhece padrões em código existente | Recebe 3 trechos de código (do seu trabalho ou de projeto open source) e identifica o padrão de cada um, sem consultar o livro | Exercício do Marco B |
| Sabe quando **não** usar um padrão | Defende, na nota de decisão do projeto, por que um padrão foi rejeitado | Nota de decisão + rodada do Marco B |
| Diferencia Repository, Data Mapper e Active Record | Explica qual o projeto usa, por que, e o que mudaria se fosse outro | Rodada de explicação do Marco B |
| Explica para que serve DTO | Mostra no projeto o que o DTO evita expor e o que quebraria sem ele | Rodada de explicação do Marco B |

#### Hard skills

| Objetivo de saída | Evidência observável | Onde é verificado |
|---|---|---|
| Faz commits atômicos | `git log` do projeto: cada commit tem uma mudança lógica, mensagem em Conventional Commits, refatoração separada de comportamento | Histórico do projeto (Marcos A e B) |
| Versiona o projeto a partir dos commits | Olhando o log desde a última tag, diz qual deve ser a próxima versão e por quê; as tags existentes batem com essa regra | Histórico + rodada de explicação (Marco A) |
| Trabalha com branch, PR e histórico limpo | PRs com descrição, revisados por colega, sem commits de "fix typo"/"wip" no histórico final | PRs do projeto |
| Pratica TDD | Resolve um mini-kata ao vivo em dupla seguindo red → green → refactor, com commits a cada passo | Exercício do Marco A |
| Escolhe o test double certo | Explica a diferença entre fake, stub e mock usando os testes do próprio projeto | Rodada de explicação do Marco A |
| Domina HTTP básico | Demonstra a API via `curl`/HTTPie e justifica o status code de cada resposta, inclusive as de erro | Demo do Marco A |
| Usa Docker e Docker Compose | Um colega clona o projeto e sobe servidor + banco só com o README | Demo do Marco B |
| Escreve testes de integração com banco descartável | Um comando roda a suíte de integração, que sobe o banco, executa e descarta, sem setup manual; explica o que esses testes pegam que os unitários com fake não pegam | Demo + rodada do Marco B |
| Mantém o esquema do banco versionado | Migrations no repositório; consegue explicar como adicionar uma coluna nova sem quebrar o banco existente | Rodada de explicação do Marco B |
| Configura CI | PR do projeto mostra o pipeline rodando lint + unitários + integração | Projeto (Marco B) |

**Regra de conclusão:** cada pessoa conclui o Nível 1 quando cumpre os requisitos do projeto do Marco B e tem as evidências das duas tabelas acima. Quem não fechar alguma evidência recebe uma **tarefa de recuperação** pontual (ex.: refazer o exercício de smells com outro trecho, ou corrigir o histórico de um PR) e segue para o Nível 2 junto com o grupo — o marco é feedback, não prova eliminatória.

### Formato dos marcos (~90–120 min, dependendo do tamanho do grupo)

1. **Troca de projetos (antes do encontro):** cada pessoa clona o projeto de um colega e tenta rodar seguindo só o README. O que travou vira issue no projeto do colega.
2. **Demo (5–7 min por pessoa):** mostra o projeto rodando, o histórico Git e a última versão publicada. No Marco A, demonstra a API via `curl`; no Marco B, sobe tudo com `docker compose up` e roda os testes de integração.
3. **Checklist de requisitos:** cada pessoa percorre os requisitos do marco no próprio projeto; o que faltou vira issue com prazo.
4. **Exercício individual ou em dupla (20–30 min):** Marco A — mini-kata de TDD, classificação de comentários e caça a smells; Marco B — identificação de padrões em 3 trechos.
5. **Rodada de explicação:** cada pessoa responde 1–2 perguntas das tabelas de critérios usando o próprio projeto como exemplo, sem citar o livro.
6. **Retrospectiva (10 min):** o ritmo funcionou? A carga de 5–6h/semana foi realista? O que ajustar no próximo bloco?

### Objetivos de saída do Nível 1

**Código limpo e padrões**
- [ ] Escreve funções pequenas e nomes pesquisáveis que comunicam intenção.
- [ ] Sabe diferenciar comentário óbvio (remover) de comentário de intenção/proveniência (manter).
- [ ] Trata erro como parte do design, com contexto suficiente para diagnóstico.
- [ ] Sabe identificar e nomear um "code smell" ao ler código de outra pessoa.
- [ ] Aplica SRP e injeção de dependência no próprio código.
- [ ] Reconhece os padrões estudados em código existente (do trabalho ou open source), sem precisar consultar o livro.
- [ ] Sabe justificar quando **não** usar um padrão (evitar over-engineering).
- [ ] Diferencia padrões de acesso a dados (Repository, Data Mapper, Active Record) e sabe quando cada um faz sentido.

**Hard skills**
- [ ] Faz commits atômicos com mensagens padronizadas e versiona o projeto com SemVer a partir deles.
- [ ] Trabalha com branch, PR, code review e histórico limpo.
- [ ] Pratica TDD e escreve teste antes de refatorar, não depois.
- [ ] Usa HTTP com a semântica correta de métodos e status codes.
- [ ] Sobe servidor e banco com Docker Compose a partir de um clone limpo.
- [ ] Escreve testes de integração contra um banco descartável e sabe o que eles pegam que os unitários não pegam.
- [ ] Mantém lint e testes rodando automaticamente (pre-commit e CI).

---

## Nível 2 — Arquitetura de Software (Domínio) (prazo em aberto)

**Objetivo do nível:** estruturar uma aplicação inteira para proteger a lógica de negócio, isolando-a de frameworks e infraestrutura — e aprender a modelar domínios complexos.

**Livros-base:** Clean Architecture (Robert C. Martin) · Implementing Domain-Driven Design (Vaughn Vernon).

| Semana | Tema | Fonte-base | Objetivo de conhecimento |
|---|---|---|---|
| 1 | Paradigmas e SOLID | Clean Architecture partes I–III (condensadas) | Explicar cada princípio SOLID com exemplo do próprio código |
| 2 | Camadas e Componentes | Clean Architecture partes IV–V (Entidades, Casos de Uso, Adaptadores de Interface) | Desenhar as camadas de uma feature real do sistema em que você trabalha |
| 3 | Fronteiras e Detalhes | Clean Architecture parte VI | Explicar a Regra da Dependência sem citar o livro |
| 4 | DDD Estratégico | Vernon cap. 1–3 (Getting Started, Domains/Subdomains/BC, Context Maps) | Desenhar um Mapa de Contexto de um domínio real |
| 5 | DDD Tático I | Vernon cap. 4–6 (Architecture, Entities, Value Objects) | Diferenciar Entidade de Objeto de Valor num modelo real |
| 6 | DDD Tático II | Vernon cap. 8, 10 (Domain Events, Aggregates) | Modelar um Agregado com sua raiz corretamente |
| 7 | DDD Tático III | Vernon cap. 12, 14 (Repositories, Application) | Integrar Repository (Nível 1) com Aggregate (DDD) sem vazar regra de negócio |
| 8 | **Checkpoint** | — | Demo do Bounded Context e Agregado modelados e implementados no projeto |

**Curiosidade (não discutido em sessão):** Vernon cap. 7 (Services), 9 (Modules), 11 (Factories) — leitura opcional; cap. 13 (Integrating Bounded Contexts) é retomado com mais contexto no Nível 3.

### Hard skills (pré-requisito da evolução do projeto)
DNS, HTTP avançado (headers, cache, autenticação), autorização (OAuth/JWT básico).

### Evolução do projeto
Reestruturar o projeto nas camadas de Clean Architecture, modelar um Bounded Context real do domínio do projeto e implementar o Agregado principal desse contexto.
**Pré-requisitos:** Nível 1 concluído.

### Objetivos de saída do Nível 2
- [ ] Sabe explicar a Regra da Dependência e por que a lógica de negócio não deve depender de framework/banco.
- [ ] Consegue desenhar um Bounded Context e defender por que os limites estão onde estão.
- [ ] Modela um Agregado com Entidades, Objetos de Valor e Repositório corretamente.
- [ ] Consegue explicar SOLID citando exemplo real do próprio código (não só definição de livro).

---

## Nível 3 — Arquitetura de Sistemas Distribuídos (prazo em aberto)

**Objetivo do nível:** sair de "uma aplicação bem arquitetada" para "vários serviços que precisam conversar" — entender os trade-offs de decompor um sistema e como serviços se comunicam de forma resiliente.

**Livros-base:** Fundamentos da Arquitetura de Software (Richards & Ford) · Building Microservices (Sam Newman) · Arquitetura de Software: As Partes Difíceis (Ford, Richards, Sadalage, Dehghani).

### Por que essa ordem entre os 3 livros
1. **Fundamentos** dá o mapa geral de estilos arquiteturais e características de qualidade — o cardápio inteiro de opções, não só microsserviços.
2. **Building Microservices** aprofunda o estilo mais relevante pra sistemas distribuídos: comunicação, limites de serviço, service discovery, resiliência.
3. **As Partes Difíceis** vai além de "como implementar microsserviços" para "como decidir nas situações sem resposta certa" (dados compartilhados, transações distribuídas, quebrar monólito) — problemas que só existem depois que o sistema já foi distribuído.

Amplitude → aprofundamento em um estilo → decisões difíceis que só existem depois desse estilo adotado.

| Semana | Tema | Fonte-base | Objetivo de conhecimento |
|---|---|---|---|
| 1 | Características de arquitetura e trade-offs | Fundamentos cap. 4 (Architecture Characteristics Defined), cap. 5 (Identifying Architectural Characteristics), cap. 7 (Scope of Architecture Characteristics) | Priorizar 3 características de qualidade para um sistema real em que você trabalha |
| 2 | Estilos arquiteturais: panorama | Fundamentos cap. 10 (Layered), cap. 13 (Service-Based), cap. 14 (Event-Driven), cap. 17 (Microservices), cap. 18 (Choosing the Appropriate Style) | Explicar quando NÃO usar microsserviços |
| 3 | Decisões arquiteturais e fitness functions | Fundamentos cap. 6 (Measuring and Governing Architecture Characteristics), cap. 19 (Architecture Decisions), cap. 20 (Analyzing Architecture Risk) | Escrever um ADR (registro de decisão) simples |
| 4 | Limites de serviço e comunicação síncrona/assíncrona | Building Microservices — capítulos "How to Model Microservices", "Splitting the Monolith" e "Microservices Communication Styles" | Decidir REST vs. fila para um cenário concreto |
| 5 | Service discovery, API Gateway e resiliência | Building Microservices — capítulo "Resiliency" (+ trechos sobre service discovery/gateway do capítulo de comunicação) | Explicar circuit breaker com exemplo do projeto |
| 6 | Deploy e testes de microsserviços | Building Microservices — capítulos "Deployment" e "Testing" | Saber o que testar diferente num sistema distribuído |
| 7 | Coupling e quebra de monólito | Hard Parts cap. 2 (Discerning Coupling in Software Architecture), cap. 4 (Architectural Decomposition), cap. 6 (Pulling Apart Operational Data) | Decidir onde cortar um monólito com base no acoplamento, não no "achismo" |
| 8 | Dados e transações distribuídas | Hard Parts cap. 9 (Data Ownership and Distributed Transactions), cap. 10 (Distributed Data Access), cap. 12 (Transactional Sagas) | Explicar Saga como alternativa a transação distribuída clássica |
| 9 | Workflows e contratos entre serviços | Hard Parts cap. 11 (Managing Distributed Workflows), cap. 13 (Contracts) | Aplicar uma matriz de trade-off a uma decisão real do projeto |
| 10 | **Checkpoint** | — | Demo do projeto quebrado em serviços (REST + fila + resiliência) |

**Curiosidade (não discutido em sessão):**
- *Fundamentos:* cap. 1–3 (introdução, pensamento arquitetural, modularidade — contexto, não essencial), cap. 8 (Component-Based Thinking), cap. 9/11/12/15/16 (Foundations de estilos, Pipeline, Microkernel, Space-Based, SOA orientado a orquestração — estilos menos comuns no dia a dia de backend), cap. 21–25 (diagramação, soft skills, carreira, katas).
- *Building Microservices:* capítulos "Security", "User Interfaces", "Organizational Culture and Team Dynamics" e "Scaling" — a numeração exata varia entre a 1ª e a 2ª edição do livro, por isso a referência aqui é pelo título, localizável no sumário de qualquer uma das duas.
- *Hard Parts:* cap. 1 (What Happens When There Are No "Best Practices"?), cap. 3 (Architectural Modularity — sobrepõe Fundamentos), cap. 5 (Component-Based Decomposition Patterns), cap. 7 (Service Granularity), cap. 8 (Reuse Patterns), cap. 14 (Managing Analytical Data Architecture), cap. 15 (Build Your Own Trade-Off Analysis).

### Hard skills (pré-requisito da evolução do projeto)
Mensageria (RabbitMQ ou Kafka — conceitos e quando usar), cache (Redis), API Gateway, Service Discovery, noções de gRPC.

### Evolução do projeto
Quebrar o projeto em pelo menos 2 serviços: REST síncrono entre eles, e um fluxo assíncrono via fila. Aplicar pelo menos um padrão de resiliência.
**Pré-requisitos:** Nível 2 concluído.

### Objetivos de saída do Nível 3
- [ ] Sabe listar prós/contras de monolito vs. microsserviços para um cenário concreto (não genérico).
- [ ] Explica quando usar comunicação síncrona vs. assíncrona e por quê.
- [ ] Implementou e sentiu na prática a diferença entre chamar via REST e via fila.
- [ ] Conhece pelo menos um padrão de resiliência (circuit breaker, retry, timeout) e sabe onde aplicá-lo.

---

## Nível 4 — System Design em Escala (prazo em aberto)

**Objetivo do nível:** entender os trade-offs de sistemas confiáveis, escaláveis e de fácil manutenção em larga escala — pensar como arquiteto de sistemas de dados intensivos.

**Livro-base:** Designing Data-Intensive Applications (Kleppmann).

| Semana | Tema | Fonte-base | Objetivo de conhecimento |
|---|---|---|---|
| 1 | Pilares e Modelos de Dados | DDIA cap. 1–2 | Explicar os 3 pilares com exemplo próprio |
| 2 | Armazenamento, Recuperação e Evolução de Esquema | DDIA cap. 3–4 | Diferenciar B-Tree de LSM-Tree e quando cada um se paga |
| 3 | Replicação | DDIA cap. 5 | Escolher entre leader-follower e multi-leader para um cenário dado |
| 4 | Particionamento | DDIA cap. 6 | Explicar como o sistema em que você trabalha particionaria (ou já particiona) dados |
| 5 | Transações | DDIA cap. 7 | Explicar ACID sem citar definição de livro |
| 6 | Consistência e Consenso | DDIA cap. 9 | Explicar CAP theorem com um trade-off real do sistema em que você trabalha |
| 7 | Processamento em lote e streams | DDIA cap. 10–11 (condensado) | Diferenciar batch de stream processing com exemplo próprio |
| 8 | **Checkpoint final** | — | Demo do sistema completo em nuvem: 3+ serviços, fila, cache, observabilidade 🎯 |

**Curiosidade:** DDIA cap. 8 (The Trouble with Distributed Systems) e cap. 12 (The Future of Data Systems) — leitura opcional, sem sessão dedicada.

### Hard skills (pré-requisito da evolução do projeto)
Orquestração de containers (Kubernetes ou ECS — noções), observabilidade (logs estruturados, métricas, tracing), balanceamento de carga, particionamento/sharding, deploy em nuvem com CI/CD.

### Evolução final do projeto
O projeto sobe para a nuvem: pelo menos 3 serviços rodando, fila e cache reais, com observabilidade básica configurada.
**Pré-requisitos:** Níveis 1–3 concluídos.

### Objetivos de saída do Nível 4
- [ ] Sabe explicar os 3 pilares (confiabilidade, escalabilidade, manutenibilidade) com exemplo próprio, não do livro.
- [ ] Entende replicação (leader-follower) e particionamento o suficiente para escolher entre eles num cenário dado.
- [ ] Conhece o CAP theorem e sabe dizer qual trade-off o sistema em que trabalha já faz hoje, mesmo sem ter sido projetado conscientemente para isso.
- [ ] Colocou no ar (nuvem) um sistema com fila + cache + 3+ serviços, mesmo que simples.

---

## Leituras complementares (recomendadas, não obrigatórias)

- **The Pragmatic Programmer** (Hunt & Thomas) — mentalidade profissional, DRY, ortogonalidade, automação. Fica fora do cronograma para o Nível 1 focar 100% em código, mas é a melhor companhia de leitura para ele.
- **A Philosophy of Software Design** (John Ousterhout) — boa companhia para os Níveis 1 e 2 (complexidade vs. obviedade).
- **Extreme Programming Explained** (Kent Beck) — reforça práticas ágeis/XP (TDD, refatoração contínua, CI, feedback curto) que conversam com o Nível 1.

O artigo [Clean Code para Agentes de IA](https://akitaonrails.com/2026/04/20/clean-code-para-agentes-de-ia/) (Akita) não está nesta lista porque faz parte do Nível 1: é a leitura da semana 0.

---

## Por que o programa é assim

1. **Prazos:** o Nível 1 tem cronograma fechado até 19/Fev/2027; os Níveis 2–4 ficam com prazo em aberto, definidos conforme o ritmo real do grupo.
2. **Ritmo de leitura:** pelo menos 1 capítulo por dia útil (5 por semana), contando o capítulo do livro como ele é. As semanas de leitura se alternam com semanas só de projeto, para dar tempo de aplicar o que foi lido.
3. **Livro como fonte-base, não obrigação:** cada semana de leitura tem um objetivo de conhecimento; quem atrasar pode cobrir o mesmo objetivo com uma fonte alternativa (artigo/vídeo), sem travar o grupo.
4. **Hard skills com o mesmo peso dos livros:** toda semana tem uma hard skill (Git, testes/TDD, HTTP, Docker, banco, CI) aplicada no projeto e cobrada com evidência própria nos critérios de saída.
5. **Um projeto por estudante**, evoluindo do Nível 1 ao 4, com code review entre colegas para manter a leitura de código dos outros.
6. **Git como competência explícita:** commits atômicos, Conventional Commits, versionamento SemVer derivado dos commits, tags/CHANGELOG, fluxo de PR, hooks e `git bisect`.
7. **Requisitos verificáveis:** os requisitos do projeto podem ser conferidos olhando o repositório, e os critérios de saída exigem evidência observável — ninguém é aprovado por ter lido o livro.
8. **Só o que é útil no núcleo:** cada livro foi dividido entre núcleo e curiosidade, com foco no que backend usa na prática. Os capítulos do Clean Code seguem a lente do artigo do Akita sobre Clean Code para agentes de IA (formatação delegada ao formatador automático; concorrência e estudos de caso como curiosidade).
9. **Livro de DDD:** *Implementing Domain-Driven Design* (Vernon) em vez do clássico de Evans, por ser mais hands-on. Evans fica como aprofundamento opcional.
10. **Building Microservices** entre "Fundamentos" e "As Partes Difíceis" — motivo detalhado na seção do Nível 3.

## Como conduzir os encontros semanais

- **Duração sugerida:** ~60 minutos nas semanas de leitura (5 capítulos); 30–45 minutos nas semanas de projeto.
- **Facilitador rotativo:** quem facilita prepara 2–3 perguntas de discussão sobre os capítulos da semana. Nas semanas de projeto, o encontro é a demo da hard skill e um review rápido de projetos, retomando os capítulos já aplicados.
- **Hard skill no encontro:** reservar 10–15 min para alguém mostrar ao vivo a hard skill da semana aplicada no próprio projeto (ex.: um `rebase -i`, um teste de integração subindo o banco).
- **Checkpoint de nível:** encontro dedicado só à demo dos projetos e à revisão dos objetivos de saída — sem leitura nova.
- **Recalibragem:** depois das primeiras 3–4 semanas de cada nível, revisar se o ritmo está rápido/lento demais e ajustar o restante daquele nível. No Nível 1, o Marco A já cumpre esse papel para o Bloco B.
