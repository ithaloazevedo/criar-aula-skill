# Refino da Skill `criar-aula`

Data: 2026-05-18

## Objetivo

Tornar a skill explicitamente resistente a artefatos curtos e superficiais quando o contexto pede aula longa, turma basica e bloco de varias aulas consecutivas.

## Problema observado

- decks curtos demais para o escopo;
- apostilas com cara de resumo;
- conceitos novos citados sem contextualizacao suficiente;
- excesso de fragmentacao em microblocos de conteudo.

## Decisao

Adotar o refino estrutural da skill:

- reforcar o perfil padrao da turma;
- tratar 2 ou 3 aulas consecutivas como bloco narrativo unico;
- aumentar exigencia de densidade didatica;
- criar referencias permanentes de estilo para slides e apostilas;
- explicitar anti-padroes que antes apareciam apenas como intuicao do professor.

## Arquivos impactados

- `criar-aula/SKILL.md`
- `criar-aula/agents/designer-slides.md`
- `criar-aula/agents/criador-apostilas.md`
- `criar-aula/agents/diretor-pedagogico.md`
- `criar-aula/agents/revisor-material-estudo.md`
- `criar-aula/references/checklist-qualidade.md`
- `criar-aula/references/storytelling-pedagogico.md`
- `criar-aula/references/design-system-slides.md`
- novas referencias em `criar-aula/references/`

## Resultado esperado

- decks mais longos, interativos e estudaveis;
- apostilas mais narrativas, densas e autonomas;
- melhor adequacao a turma com repertorio tecnico baixo;
- menor chance de microartefatos em automacoes futuras.
