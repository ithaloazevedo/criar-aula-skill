# Notion para Docencia

## Objetivo

Usar o Notion como memoria operacional da disciplina.

Antes de criar aula:

- buscar plano de ensino;
- buscar aulas anteriores da mesma disciplina;
- buscar atividades, apostilas, observacoes e desvios;
- identificar data planejada no cronograma quando existir.

Depois de criar aula:

- criar ou atualizar pagina de plano de aula;
- registrar roteiro;
- registrar apostila/material de estudo;
- registrar recursos;
- registrar observacoes.

Quando a apostila for material de leitura para alunos, nao registra-la apenas dentro do corpo do plano de aula. Criar pagina propria no Notion com `Tipo` marcado como a opcao real de conteudo da base e linkar essa pagina a partir da aula.

## Campos Comuns

Campos esperados em bases de planos de aula:

- `Name`
- `Status`
- `Tipo`
- `Data planejada`
- `Data realizada`
- `Observações`
- `Arquivos`

Usar os nomes reais da base retornados pelo conector. Nao inventar propriedades.

## Status

Usar os status disponiveis na base.

Exemplos comuns:

- `Não iniciado`
- `Em andamento`
- `Concluído`

## Tipo

Usar as opcoes reais da base.

Exemplos comuns:

- `Aula`
- `Atividade`
- `Conteúdo`
- `Prova`
- `Quiz`

## Conteudo da Pagina

Estrutura recomendada:

1. Objetivos de aprendizagem.
2. Contexto e continuidade.
3. Roteiro da aula.
4. Slides e recursos.
5. Atividade, se houver.
6. Resolucoes esperadas, se houver.
7. Apostila/material de estudo.
8. Observacoes de execucao.

## Apostilas e Materiais de Estudo

Quando a aula tiver apostila, roteiro de estudos ou artigo educacional:

1. Criar uma pagina separada na mesma base da disciplina.
2. Usar titulo no padrao `Apostila — <tema>`.
3. Marcar `Tipo` como a opcao real de conteudo da base, por exemplo `Conteúdo`.
4. Marcar `Status` como concluido quando o material estiver pronto.
5. Preencher datas quando aplicavel.
6. Linkar essa pagina a partir da pagina principal da aula.
7. Manter o texto completo da apostila dentro do Notion, nao apenas em arquivo local.

## Presenca, Faltas e Notas

Quando o usuario pedir para operar presencas, faltas ou notas:

1. Buscar a base correta no Notion.
2. Confirmar campos antes de editar.
3. Preferir registrar observacoes estruturadas.
4. Nunca inventar aluno, nota ou presenca ausente do contexto.

## Limitacao de Arquivos

O conector do Notion pode nao fazer upload de arquivos locais.

Quando isso acontecer:

- registrar a limitacao em `Observacoes`;
- manter roteiro, apostila e materiais de estudo como conteudo de paginas Notion;
- usar a coluna `Arquivos` apenas quando o conector permitir preencher anexos corretamente;
- nao afirmar que o arquivo foi anexado.
- nao registrar caminho local como substituto oficial do arquivo.
