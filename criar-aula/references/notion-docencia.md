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

## Presenca, Faltas e Notas

Quando o usuario pedir para operar presencas, faltas ou notas:

1. Buscar a base correta no Notion.
2. Confirmar campos antes de editar.
3. Preferir registrar observacoes estruturadas.
4. Nunca inventar aluno, nota ou presenca ausente do contexto.

## Limitacao de Arquivos

O conector do Notion pode nao fazer upload de arquivos locais.

Quando isso acontecer:

- registrar caminho local do HTML/PDF;
- avisar que o anexo precisa ser feito manualmente;
- nao afirmar que o arquivo foi anexado.
