---
name: criar-aula
description: Use when creating, refining, documenting, or reviewing a class lesson; especially when Codex must gather teaching context from Notion, create a pedagogical storyline, generate slides, produce activities, or register lesson materials for a discipline.
---

# Criar Aula

## Visao Geral

Orquestrar a criacao de aulas com qualidade pedagogica, continuidade curricular, slides estudaveis e registro no Notion.

Esta skill nao e apenas um gerador de slides. Ela deve produzir uma aula que faca sentido para a turma, conecte com aulas anteriores, tenha um arco narrativo claro e deixe materiais reutilizaveis para estudo posterior.

## Skills de Apoio

Esta skill orquestra o fluxo. Ela deve acionar skills de apoio quando a tarefa pedir capacidades especializadas.

- Use `brainstorming` antes de criar ou reformular uma aula, especialmente quando houver decisao de abordagem, narrativa, atividade, avaliacao ou design. A saida esperada e uma direcao pedagogica mais clara: tensao da aula, possibilidades de roteiro, riscos e alternativas.
- Use `frontend-slides` sempre que gerar, revisar ou exportar slides HTML. A saida esperada e um deck navegavel, legivel em sala, visualmente consistente e validado no navegador quando possivel.

Nao substituir essas skills pelos agentes internos. Os agentes definem responsabilidades pedagogicas; as skills de apoio trazem metodos e ferramentas especializadas.

## Modos de Uso

Escolha o modo pelo pedido do professor. Se o pedido for ambiguo, assumir o modo mais completo que caiba no contexto e declarar a suposicao.

- **Aula completa**: usar o fluxo obrigatorio inteiro, do Notion ate a revisao final.
- **Revisao de aula existente**: carregar materiais, acionar o critico de aulas atuais e revisar apenas o que impacta clareza, continuidade, design ou estudo posterior.
- **Apostila/material de estudo**: acionar `criador-apostilas.md`, registrar como pagina propria no Notion e linkar na aula.
- **Atividade ou avaliacao**: acionar `criador-atividades.md`; se houver nota, tambem acionar `especialista-avaliacao.md`.
- **Operacao docente**: para presenca, faltas, notas ou registros administrativos, acionar somente `operador-notion.md` e nunca inventar dado ausente.

## Orquestracao Agentica

A instancia principal continua responsavel pela conversa com o usuario, pela integracao dos artefatos e pela decisao final. Os especialistas sao papeis de trabalho: carregue somente os arquivos necessarios e faca cada especialista produzir uma saida objetiva.

Use `references/fluxo-agentico.md` quando a tarefa envolver aula completa, multiplos artefatos, revisao complexa, apostila, avaliacao ou possibilidade de trabalho em paralelo.

Contrato minimo de qualquer especialista acionado:

- decisao ou entrega principal;
- evidencias usadas;
- riscos ou pendencias;
- proximo artefato necessario.

Se houver subagentes disponiveis e a tarefa permitir paralelismo seguro, dividir apenas trabalhos independentes, como critica de slides, proposta de atividade e revisao de apostila. Manter Notion, decisoes finais e integracao em um unico coordenador para evitar duplicidade.

## Fluxo Obrigatorio

Sempre seguir este fluxo:

1. **Contexto no Notion**
   - Buscar plano de ensino, cronograma, aulas anteriores, observacoes e materiais relacionados.
   - Identificar o que a turma ja viu e o que precisa ser retomado.

2. **Brainstorming pedagogico**
   - Usar `brainstorming` para explorar abordagem, tensao narrativa, exemplos, atividades e riscos.
   - Consolidar uma direcao antes de escrever o roteiro.

3. **Diagnostico pedagogico**
   - Definir objetivo da aula, lacuna de aprendizagem, prerequisitos e ancora conceitual.
   - Se houver material anterior, revisar criticamente continuidade, linguagem, ritmo e profundidade.

4. **Roteiro com storytelling**
   - Estruturar a aula em atos.
   - Alternar problema, pergunta, conceito, aplicacao, resposta e sintese.
   - Garantir que perguntas importantes tenham respostas/resolucoes conectadas.

5. **Slides**
   - Usar `frontend-slides` para gerar ou revisar HTML usando o design system documentado em `references/design-system-slides.md`.
   - Fazer slides legiveis para sala, mas tambem uteis como material de estudo.
   - Incluir mais detalhe em slides conceituais quando isso ajudar o aluno a revisar depois.

6. **Atividades quando fizer sentido**
   - Criar cases, perguntas, fichas, rubricas e resolucoes esperadas.
   - Para atividade avaliativa, sempre registrar criterio de correcao.

7. **Documentacao no Notion**
   - Criar ou atualizar pagina da aula com roteiro, recursos, atividades, resolucoes e observacoes.
   - Quando houver apostila/material de leitura, criar pagina propria no Notion com `Tipo` marcado como a opcao real de conteudo da base, por exemplo `Conteudo`, e linkar na aula.
   - Usar a coluna de arquivos quando o conector permitir anexar ou referenciar artefatos corretamente.
   - Registrar limitacoes de anexos sem transformar caminho local em saida oficial.

8. **Revisao final**
   - Rodar checklist de qualidade pedagogica, visual e documental.
   - Verificar se a aula ficou interativa, clara e estudavel.

## Agentes Especializados

O nucleo acima e obrigatorio. Os agentes especializados sao acionados quando o usuario pedir um foco especifico ou quando a aula claramente precisar de reforco naquela dimensao.

Use `references/agentes.md` como mapa de orquestracao. Quando acionar um especialista, carregue o arquivo correspondente em `agents/`:

- `agents/diretor-pedagogico.md` - objetivo, lacuna, criterio de sucesso e decisao didatica.
- `agents/analista-continuidade.md` - leitura de Notion, aulas anteriores, frases-ancora e desvios.
- `agents/critico-aulas-atuais.md` - avaliacao de slides, linguagem, ritmo, profundidade e utilidade de estudo.
- `agents/editor-tom-voz.md` - ajuste do texto ao jeito do professor explicar.
- `agents/roteirista-storytelling.md` - arco narrativo, tensoes, transicoes, perguntas e respostas.
- `agents/designer-slides.md` - design system, legibilidade, densidade e tipos de slide.
- `agents/criador-atividades.md` - cases, fichas, perguntas, dinamicas e resolucoes.
- `agents/especialista-avaliacao.md` - rubricas, criterios, pesos e exemplos de resposta.
- `agents/criador-apostilas.md` - apostilas premium, artigos didaticos, materiais de leitura e roteiros de estudo.
- `agents/operador-notion.md` - plano de aula, registros, presencas, faltas, notas e observacoes.
- `agents/revisor-material-estudo.md` - qualidade dos materiais para revisao posterior e NotebookLM.

## Referencias

Carregar somente o que for necessario:

- `references/agentes.md` - mapa de orquestracao dos agentes especializados.
- `references/tom-de-voz.md` - linguagem, ritmo e estilo do professor.
- `references/design-system-slides.md` - sistema visual dos HTMLs de aula.
- `references/storytelling-pedagogico.md` - padroes de roteiro, perguntas e respostas.
- `references/checklist-qualidade.md` - revisao final obrigatoria.
- `references/notion-docencia.md` - convencoes de registro no Notion.
- `references/atividades-e-avaliacao.md` - cases, fichas, rubricas e resolucoes.
- `references/fluxo-agentico.md` - contratos de orquestracao, paralelismo, handoffs e recuperacao de falhas.
- `references/cenarios-de-teste.md` - cenarios de pressao para validar se a skill esta pronta para uso por professores.

## Saidas Esperadas

Para aulas novas:

- Spec ou roteiro aprovado.
- Slides HTML/PDF registrados no Notion quando o conector permitir, com limitacoes documentadas quando necessario.
- Evidencia de uso de `frontend-slides` na criacao ou revisao do deck.
- PDF se a exportacao estiver disponivel.
- Pagina no Notion com roteiro, recursos e atividades.
- Apostila/material de leitura em pagina propria no Notion com `Tipo` marcado como a opcao real de conteudo da base, por exemplo `Conteudo`.
- Atividades e resolucoes quando aplicavel.

Para refinamento de aulas existentes:

- Analise critica do material atual.
- Lista priorizada de melhorias.
- Versao revisada dos slides ou roteiro.
- Atualizacao no Notion quando necessario.

## Definition of Done

Nao considerar a aula finalizada sem estas evidencias:

- contexto da disciplina consultado ou limitacao explicitamente registrada;
- pergunta central, objetivo verificavel, lacuna de aprendizagem e criterio de sucesso;
- roteiro em atos com abertura, aplicacao, resolucao e sintese;
- slides ou plano de slides coerente com `frontend-slides` quando houver deck HTML;
- atividade, resolucao e rubrica quando a aula pedir aplicacao ou avaliacao;
- apostila/material de estudo em pagina propria no Notion quando for material de leitura;
- pagina da aula no Notion criada ou atualizada, sem caminho local como substituto oficial de anexo;
- checklist de qualidade revisado e falhas criticas corrigidas ou declaradas como bloqueio.

## Regra Central

Uma aula boa nao e uma sequencia de conteudos. E uma experiencia orientada por uma pergunta.

Antes de gerar slides, responder:

- Qual problema abre a aula?
- Qual tensao mantem a atencao?
- Qual conceito resolve a tensao?
- Onde o aluno aplica?
- Qual resposta ou sintese ele leva para estudar depois?

Se essas respostas ainda estiverem fracas, voltar para `brainstorming` antes de produzir os slides.
