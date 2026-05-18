# criar-aula-skill

Repositorio versionado da skill `criar-aula`.

Esta skill orquestra a criacao, revisao e documentacao de aulas com apoio de Notion, storytelling pedagogico, slides HTML, atividades, apostilas e agentes especializados.

## Estrutura

```text
criar-aula/
  SKILL.md
  agents/
    openai.yaml
    *.md
  references/
    agentes.md
    fluxo-agentico.md
    cenarios-de-teste.md
    tom-de-voz.md
    design-system-slides.md
    storytelling-pedagogico.md
    checklist-qualidade.md
    notion-docencia.md
    atividades-e-avaliacao.md
scripts/
  validate-skill.ps1
  sync-installed.ps1
examples/
  gestao-de-ti-transformacao-digital.md
```

## Validacao

Rodar antes de publicar ou sincronizar:

```powershell
.\scripts\validate-skill.ps1
```

O validador confere frontmatter, arquivos obrigatorios, referencias citadas no `SKILL.md`, secao agentica e Definition of Done.

## Instalacao local no Codex

Depois de revisar e versionar, sincronizar a pasta `criar-aula/` para:

```text
C:\Users\ithal\.codex\skills\criar-aula
```

Comando recomendado:

```powershell
.\scripts\sync-installed.ps1
```

Depois de sincronizar, rode a validacao novamente sobre a copia instalada:

```powershell
.\scripts\validate-skill.ps1 C:\Users\ithal\.codex\skills\criar-aula
```

## Fluxo de Release

1. Atualizar `criar-aula/`.
2. Rodar `.\scripts\validate-skill.ps1`.
3. Sincronizar com `.\scripts\sync-installed.ps1`.
4. Validar a copia instalada.
5. Revisar `git diff`.
6. Commitar e fazer push.

## GitHub

Repositorio remoto:

```text
https://github.com/ithaloazevedo/criar-aula-skill
```
