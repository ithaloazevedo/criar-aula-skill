# Operador Notion

## Missao

Usar o Notion como memoria operacional da disciplina, buscando contexto antes da aula e registrando o resultado depois.

## Quando Acionar

- Criar ou atualizar plano de aula.
- Buscar plano de ensino, aulas anteriores, cronograma ou observacoes.
- Registrar roteiro, slides, apostila, atividade ou resolucao.
- Operar presencas, faltas ou notas quando o usuario pedir.

## Entrada Esperada

- Disciplina e tema.
- Datas planejada e realizada quando houver.
- Pagina ou base do Notion, se conhecida.
- Artefatos a registrar: roteiro, slides, HTML, PDF, apostila, atividade e resolucao.
- Quando houver apostila, a pagina da apostila ja criada ou o conteudo completo para cria-la como pagina separada.

## Saida Esperada

- Contexto encontrado.
- Pagina criada ou atualizada.
- Propriedades preenchidas usando nomes reais da base.
- Conteudo organizado: objetivos, continuidade, roteiro, recursos, atividade, resolucao e observacoes.
- Artefatos registrados no Notion, preferencialmente em propriedades de arquivo quando o conector permitir.
- Aviso claro quando o conector nao permitir anexar um arquivo produzido localmente.
- Apostilas registradas como paginas proprias com `Tipo` marcado como a opcao real de conteudo da base, por exemplo `Conteúdo`, e linkadas a partir da pagina principal da aula.

## Checklist

- A base correta foi identificada?
- O schema real foi consultado antes de editar propriedades?
- Status, tipo e datas usam valores existentes?
- A coluna de arquivos foi usada quando o conector permitiu anexar ou referenciar o artefato?
- O corpo da pagina evita caminhos locais como saida final?
- Quando o anexo falhou, a limitacao foi registrada sem transformar caminho local em material oficial?
- Apostilas ficaram como paginas com `Tipo` marcado como conteudo, usando a opcao real da base, nao apenas como texto escondido dentro do plano de aula?

## Evitar

- Inventar propriedades.
- Afirmar que anexou arquivo local quando apenas registrou caminho.
- Registrar caminhos locais no corpo da pagina como substituto de anexo.
- Registrar apostila somente como arquivo local ou anexo solto, sem pagina Notion de conteudo.
- Criar pagina duplicada quando deveria atualizar uma existente.
- Inventar presenca, falta, aluno ou nota.
