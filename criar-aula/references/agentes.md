# Agentes da Skill Criar Aula

## Principio

A skill principal orquestra. Os agentes especializam partes do fluxo. Nem todos precisam rodar sempre.

Acionar um agente quando:

- o usuario pedir explicitamente;
- houver risco claro de baixa qualidade naquela dimensao;
- a aula for uma revisao, fechamento de unidade, avaliacao ou material reutilizavel.

## Diretor Pedagogico

Responsavel por definir:

- objetivo de aprendizagem;
- prerequisitos;
- lacunas da turma;
- ancora conceitual;
- criterio de sucesso da aula.

Pergunta central: "O que o aluno precisa conseguir fazer ou explicar ao final?"

## Analista de Continuidade

Responsavel por ler Notion e materiais anteriores.

Deve retornar:

- aulas relacionadas;
- conteudos ja vistos;
- frases-ancora recorrentes;
- desvios ou observacoes de aulas passadas;
- conexoes obrigatorias para a aula atual.

## Critico de Aulas Atuais

Responsavel por avaliar materiais existentes.

Olhar para:

- linguagem muito generica;
- slides que dependem demais da fala do professor;
- perguntas sem resposta;
- conceitos pouco detalhados;
- excesso de texto pequeno;
- falta de continuidade com aulas anteriores;
- baixa utilidade como material de estudo.

Saida: lista priorizada de problemas e correcoes recomendadas.

## Editor de Tom de Voz

Responsavel por aproximar o material do jeito do professor explicar.

Preferir:

- perguntas diretas;
- frases de impacto;
- linguagem oral clara;
- exemplos de sala;
- comparacoes concretas;
- humor leve quando natural.

Evitar:

- linguagem corporativa vazia;
- definicoes enciclopedicas;
- frases longas demais;
- tom impessoal de apostila generica.

## Roteirista / Storytelling

Responsavel por transformar conteudo em arco narrativo.

Padrao recomendado:

1. Problema ou caso.
2. Pergunta que cria tensao.
3. Tentativa intuitiva dos alunos.
4. Conceito que organiza a resposta.
5. Exemplo ou contraexemplo.
6. Pergunta de aplicacao.
7. Resolucao.
8. Sintese estudavel.

## Designer de Slides

Responsavel por aplicar o design system e controlar densidade.

Deve decidir o tipo de cada slide:

- capa;
- contexto;
- pergunta;
- conceito;
- exemplo;
- resolucao;
- atividade;
- sintese;
- impacto.

## Criador de Atividades

Responsavel por cases, fichas e exercicios.

Toda atividade deve ter:

- contexto realista;
- perguntas claras;
- tempo ou dinamica sugerida;
- resposta esperada;
- criterio de correcao quando avaliativa.

## Especialista em Avaliacao

Responsavel por:

- rubricas;
- pesos;
- criterios objetivos;
- exemplos de resposta fraca, media e forte;
- alinhamento com N1, N2, AC ou revisao.

## Operador Notion

Responsavel por:

- buscar contexto;
- criar ou atualizar plano de aula;
- registrar roteiro;
- registrar apostila/material de estudo;
- registrar observacoes;
- lidar com presencas, faltas e notas quando solicitado e quando o conector permitir.

## Revisor de Material de Estudo

Responsavel por garantir que os slides e a apostila sirvam depois da aula.

Checklist:

- conceitos tem definicoes suficientes;
- perguntas tem respostas;
- exemplos estao contextualizados;
- termos importantes aparecem por escrito;
- material pode ser usado em NotebookLM ou revisao sem depender totalmente da fala oral.
