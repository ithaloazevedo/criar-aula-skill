# Design System de Slides

## Direcao Visual

Sistema premium, limpo e legivel para retroprojetor, inspirado nos decks recentes de Transformacao Digital.

Objetivo: parecer material de aula profissional, mas tambem funcionar como material de estudo.

O design deve servir a uma aula com turma pouco participativa, repertorio tecnico baixo e necessidade de contexto forte. Logo, o deck precisa ser visualmente vivo sem perder substancia.

## Paleta

- Fundo escuro principal: `#0F172A`
- Fundo branco: `#FFFFFF`
- Fundo azul claro: `#EFF6FF`
- Fundo verde claro: `#F0FDF4`
- Fundo vermelho claro: `#FEF2F2`
- Texto principal: `#111827`
- Texto secundario: `#5B6472` ou `#6B7280`
- Texto sobre escuro: `#F9FAFB`
- Azul acento: `#3B82F6`
- Azul escuro: `#1D4ED8`
- Verde: `#16A34A`
- Vermelho: `#DC2626`
- Borda: `#E5E7EB`

## Tipografia

Fonte principal: `Inter`.

Usar pesos:

- 900 para titulos de capa e impacto;
- 800 para headings;
- 650-700 para bullets;
- 400-500 para subtitulos e textos explicativos.

Tamanhos minimos para sala:

- titulo de capa: `clamp(3rem, 6.8vw, 6.2rem)`
- h2: `clamp(2.2rem, 4.5vw, 3.85rem)`
- h3: `clamp(1.65rem, 3vw, 2.55rem)`
- corpo: `clamp(1.35rem, 2.25vw, 1.95rem)`
- pequeno: `clamp(1.08rem, 1.55vw, 1.4rem)`

Pode combinar com fonte mono para destaques, labels ou termos tecnicos curtos, quando isso ajudar a hierarquia visual.

## Componentes

### Capa escura

Usar fundo `#0F172A`, titulo grande, subtitulo em branco com opacidade, chips de metadados e grid sutil quando fizer sentido.

### Slide branco explicativo

Usar label superior, titulo forte e corpo com detalhe suficiente. Evitar paragrafo longo demais; quando necessario, quebrar em mais slides.

### Slide azul de pergunta

Usar badge azul e uma pergunta grande. Pode incluir hint curto em italico.

### Slide verde de resolucao

Usar para respostas esperadas, sinteses corretas e caminhos de acao.

### Slide vermelho de falha

Usar para diagnosticos de erro, riscos, anti-padroes e problemas.

### Cards

Cards com fundo branco ou colorido suave, borda `#E5E7EB`, raio 12-22px, padding generoso.

### Timeline

Usar para origem historica, evolucao de mercado, antes/depois e linhas de raciocinio em etapas.

### Tabela comparativa

Usar para tradicional vs agil, suporte vs estrategica, KPI vs metrica de vaidade, certo vs errado.

### Slide de provocacao

Usar pergunta grande, contexto curto e indicacao explicita de interacao.

### Slide de caso

Usar badge de caso, contexto resumido, pergunta para sala e, depois, resolucao clara.

### Slide de sintese de bloco

Usar para fechar 2 ou 3 aulas consecutivas, amarrando o que foi aberto no inicio.

## Regras de Densidade

- Maximo 3 bullets por slide.
- Se passar de 3 ideias, dividir.
- Perguntas importantes devem ter slide de resolucao.
- Conceitos podem ser mais detalhados, mas precisam continuar legiveis.
- Slides devem fazer sentido sem depender totalmente da fala oral.
- Deck longo e aceitavel quando o bloco de conteudo pede contexto, definicao, contraste, casos e aplicacao.
- Deck longo nao significa deck atomizado: preferir sequencias com continuidade tematica em vez de dezenas de slides sem respiracao.
- Conceito novo importante deve aparecer em um slide que o apresente de forma estudavel.
- Nao sacrificar explicacao essencial apenas para ficar "clean".

## Tipos de Slide

- Capa
- Contexto
- Pergunta
- Conceito
- Exemplo
- Contraexemplo
- Timeline
- Comparacao
- Caso
- Transicao
- Resolucao
- Atividade
- Sintese
- Impacto
- Pergunta de saida

## HTML

Slides devem ser autocontidos, com CSS e JS inline, usando `.slide` com:

```css
height: 100vh;
height: 100dvh;
overflow: hidden;
```

Incluir navegacao por teclado e barra de progresso.
