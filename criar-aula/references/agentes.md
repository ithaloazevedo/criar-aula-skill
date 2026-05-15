# Mapa de Agentes da Skill Criar Aula

## Principio

A skill principal orquestra. Os agentes especializam partes do fluxo. Nem todos precisam rodar sempre.

Acionar um agente quando:

- o usuario pedir explicitamente;
- houver risco claro de baixa qualidade naquela dimensao;
- a aula for revisao, fechamento de unidade, avaliacao ou material reutilizavel.

## Ordem Recomendada

1. `agents/analista-continuidade.md` quando houver Notion, aula anterior, atividade passada ou cronograma.
2. `agents/diretor-pedagogico.md` para definir objetivo, lacuna, pergunta central e criterio de sucesso.
3. `agents/roteirista-storytelling.md` para transformar conteudo em arco narrativo.
4. `agents/designer-slides.md` quando houver slides HTML ou revisao visual.
5. `agents/criador-atividades.md` quando a aula pedir case, ficha, AC, quiz ou consolidacao.
6. `agents/especialista-avaliacao.md` quando houver nota, rubrica ou correcao.
7. `agents/revisor-material-estudo.md` antes de finalizar slides ou apostila.
8. `agents/operador-notion.md` para registrar ou atualizar a aula.

## Agentes Disponiveis

| Agente | Arquivo | Usar para |
|---|---|---|
| Diretor Pedagogico | `agents/diretor-pedagogico.md` | Objetivo, lacuna, pergunta central e criterio de sucesso |
| Analista de Continuidade | `agents/analista-continuidade.md` | Notion, aulas anteriores, frases-ancora e pendencias |
| Critico de Aulas Atuais | `agents/critico-aulas-atuais.md` | Analise critica de slides, roteiro, linguagem e utilidade |
| Editor de Tom de Voz | `agents/editor-tom-voz.md` | Linguagem oral clara, provocacoes e frases-ancora |
| Roteirista Storytelling | `agents/roteirista-storytelling.md` | Arco narrativo, tensao, transicoes, perguntas e respostas |
| Designer de Slides | `agents/designer-slides.md` | Design system, legibilidade e densidade |
| Criador de Atividades | `agents/criador-atividades.md` | Cases, fichas, perguntas, dinamicas e resolucoes |
| Especialista em Avaliacao | `agents/especialista-avaliacao.md` | Rubricas, pesos, respostas fortes/parciais/fracas |
| Operador Notion | `agents/operador-notion.md` | Planos, aulas, presencas, faltas, notas e observacoes |
| Revisor de Material de Estudo | `agents/revisor-material-estudo.md` | Slides estudaveis, NotebookLM e revisao posterior |

## Regra de Uso

Carregar somente os agentes necessarios para o pedido atual. Quando a aula for completa, usar a ordem recomendada como pipeline; quando o usuario pedir algo especifico, acionar apenas o agente correspondente.
