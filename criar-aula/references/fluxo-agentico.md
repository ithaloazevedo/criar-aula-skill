# Fluxo Agentico

## Objetivo

Transformar a skill em um fluxo de trabalho confiavel para professores: pouco atrito na entrada, decisoes pedagogicas explicitas, especialistas acionados no momento certo e entrega final verificavel.

## Papeis

### Coordenador

A instancia principal faz a orquestracao:

- entende o pedido do professor;
- escolhe o modo de uso;
- consulta contexto no Notion;
- decide quais especialistas carregar;
- integra respostas;
- valida qualidade;
- conversa com o usuario;
- registra a entrega final.

O coordenador nao deve terceirizar a decisao final para um especialista.

### Especialistas

Especialistas sao papeis com escopo limitado. Eles produzem diagnosticos ou artefatos intermediarios, nao uma aula inteira isolada.

Cada especialista deve responder com:

```text
Entrega:
Evidencias:
Riscos ou pendencias:
Proximo insumo necessario:
```

## Escolha do Modo

| Pedido do professor | Modo | Especialistas provaveis |
|---|---|---|
| "Crie uma aula completa" | Aula completa | continuidade, diretor, roteirista, designer, atividades, revisor, operador Notion |
| "Melhore essa aula" | Revisao | critico, editor de tom, designer, revisor |
| "Crie uma apostila" | Material de estudo | criador de apostilas, revisor, operador Notion |
| "Faca uma atividade/AC/prova" | Atividade ou avaliacao | criador de atividades, especialista de avaliacao |
| "Registre presenca/notas/faltas" | Operacao docente | operador Notion |

## Paralelismo

Use paralelismo somente quando os trabalhos forem independentes. Bons candidatos:

- revisar legibilidade dos slides;
- propor cases de atividade;
- revisar apostila como material de estudo;
- levantar riscos de continuidade.

Evite paralelismo quando houver dependencia direta:

- pergunta central antes do roteiro;
- perguntas da atividade antes da rubrica;
- roteiro final antes dos slides;
- escrita final no Notion depois da consolidacao.

## Handoffs

Todo handoff deve preservar:

- disciplina e tema;
- duracao da aula;
- perfil da turma, se conhecido;
- contexto do Notion consultado;
- pergunta central provisoria;
- restricoes do professor;
- artefato atual.

Nao passar ao proximo especialista uma saida vaga como "ficou bom". Converter em decisao concreta, por exemplo: "usar case de distribuidora como abertura; evitar aula por lista de conceitos; retomar frase-ancora da aula anterior".

## Recuperacao de Falhas

Se Notion nao estiver disponivel:

1. declarar a limitacao;
2. pedir ou inferir contexto minimo;
3. produzir artefatos locais com marcacao clara de pendencia;
4. nao afirmar que houve registro no Notion.

Se `frontend-slides` ou exportacao falhar:

1. manter roteiro e plano de slides completos;
2. registrar o erro ou limitacao;
3. entregar a proxima melhor saida utilizavel pelo professor;
4. nao declarar PDF/export como concluido.

Se faltar informacao critica:

1. perguntar uma unica coisa ao professor quando a resposta bloquear a aula;
2. se a lacuna nao bloquear, assumir conservadoramente e registrar a suposicao;
3. revisar a suposicao na conclusao.

## Padrao Professor-Ready

A entrega deve ser utilizavel por um professor sem interpretar bastidores tecnicos.

Preferir linguagem como:

- "Use esta abertura para puxar a turma";
- "Esta pergunta deve aparecer antes do conceito";
- "Esta atividade leva cerca de 15 minutos";
- "Esta rubrica separa diagnostico, conceito e proposta".

Evitar:

- nomes de ferramentas como justificativa da qualidade;
- caminhos locais como saida oficial;
- explicacoes sobre o processo interno, salvo quando houver limitacao;
- excesso de alternativas depois que a direcao pedagogica ja foi escolhida.

## Evidencia de Conclusao

Ao finalizar, relatar de forma objetiva:

- o que foi criado ou revisado;
- onde ficou registrado;
- o que ainda depende de conector, upload ou confirmacao do professor;
- quais criterios de qualidade foram verificados.
