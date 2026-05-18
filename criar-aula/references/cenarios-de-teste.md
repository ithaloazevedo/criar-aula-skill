# Cenarios de Teste da Skill

Use estes cenarios para validar se a skill esta pronta para professores. Eles funcionam como testes de pressao: a resposta deve seguir o fluxo, acionar os especialistas corretos e evitar prometer registros ou anexos que nao aconteceram.

## Como Testar

Para cada cenario, executar a skill em uma conversa limpa quando possivel.

Registrar:

- pedido usado;
- referencias carregadas;
- especialistas acionados;
- artefatos produzidos;
- evidencias de Notion/slides/apostila;
- falhas ou atalhos indevidos.

Passa quando a resposta entrega o objetivo do professor e cumpre o Definition of Done aplicavel.

## Cenario 1 - Aula Completa com Continuidade

Pedido:

```text
Crie uma aula completa de Engenharia de Software sobre testes caixa-preta, retomando a aula anterior sobre QA/QC e shift-left. Preciso de roteiro, slides estudaveis, atividade curta e registro no Notion.
```

Deve acionar:

- analista de continuidade;
- brainstorming;
- diretor pedagogico;
- roteirista;
- designer de slides;
- criador de atividades;
- revisor de material de estudo;
- operador Notion.

Passa se:

- consulta ou tenta consultar Notion antes de criar;
- define pergunta central;
- conecta com aula anterior;
- cria atividade com resolucao esperada;
- usa `frontend-slides` quando gerar HTML;
- registra ou declara claramente limitacoes de registro.

## Cenario 2 - Revisao de Aula Existente

Pedido:

```text
Revise estes slides de Transformacao Digital. Eles estao bonitos, mas acho que os alunos nao conseguem estudar por eles depois.
```

Deve acionar:

- critico de aulas atuais;
- revisor de material de estudo;
- designer de slides quando houver HTML;
- editor de tom se a linguagem estiver generica.

Passa se:

- prioriza problemas com evidencia;
- preserva o que funciona;
- aumenta utilidade de estudo sem transformar todo slide em apostila;
- nao refaz tudo sem necessidade.

## Cenario 3 - Apostila Premium

Pedido:

```text
Transforme a aula sobre requisitos funcionais e nao funcionais em uma apostila premium para alunos do segundo semestre, pronta para Notion.
```

Deve acionar:

- criador de apostilas;
- revisor de material de estudo;
- operador Notion.

Passa se:

- cria texto continuo, narrativo e didatico;
- usa analogias e casos;
- inclui referencias quando apropriado;
- cria ou prepara pagina propria com `Tipo` de conteudo real da base;
- nao deixa a apostila apenas como arquivo local.

## Cenario 4 - Atividade Avaliativa

Pedido:

```text
Monte uma AC de 30 minutos sobre levantamento de requisitos, com case, perguntas, rubrica e resposta esperada.
```

Deve acionar:

- criador de atividades;
- especialista de avaliacao.

Passa se:

- o case tem dados suficientes;
- as perguntas exigem conceito, evidencia e decisao;
- a rubrica separa resposta forte, parcial e fraca;
- o criterio de correcao e viavel para professor corrigir.

## Cenario 5 - Notion ou Anexo Indisponivel

Pedido:

```text
Crie a aula e anexe os slides e o PDF no Notion.
```

Condicao:

O conector nao permite upload de arquivos locais ou Notion nao esta disponivel.

Passa se:

- nao afirma que anexou o que nao foi anexado;
- registra a limitacao;
- mantem roteiro e apostila como conteudo de pagina quando possivel;
- entrega uma alternativa clara para o professor.

## Cenario 6 - Pedido Curto e Ambiguo

Pedido:

```text
Preciso de uma aula sobre Scrum para amanha.
```

Passa se:

- assume um modo conservador sem parar desnecessariamente;
- faz no maximo uma pergunta se houver bloqueio real;
- cria pergunta central, objetivo, roteiro e atividade simples;
- registra suposicoes como duracao, disciplina ou nivel da turma.

## Sinais de Falha

- comecar pelos slides antes de definir pergunta central;
- ignorar Notion quando o pedido depende de continuidade;
- chamar todos os agentes sempre, mesmo em pedido simples;
- produzir apostila sem pagina propria no Notion;
- criar atividade sem resposta esperada;
- declarar arquivo anexado quando so existe caminho local;
- finalizar sem checklist ou sem pendencias claras.
