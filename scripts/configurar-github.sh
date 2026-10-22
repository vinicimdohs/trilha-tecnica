#!/usr/bin/env bash
# Cria labels e milestones do repositório central. Pode rodar mais de uma vez.
# Uso: scripts/configurar-github.sh vinicimdohs/trilha-tecnica
set -euo pipefail

repo="${1:?Informe o repositório, ex.: meu-usuario/trilha-tecnica}"

criar_label() {
  gh label create "$1" --repo "$repo" --color "$2" --description "$3" --force
}

criar_label "nivel-1"            "1d76db" "Nível 1 — Código Limpo e Vocabulário de Padrões"
criar_label "bloco-a"            "5319e7" "Nível 1 — Bloco A (Código Limpo)"
criar_label "bloco-b"            "8a63d2" "Nível 1 — Bloco B (Vocabulário de Padrões)"
criar_label "marco-a"            "0e8a16" "Checklist do Marco A"
criar_label "marco-b"            "0e8a16" "Checklist do Marco B"
criar_label "recuperacao"        "d93f0b" "Tarefa de recuperação pós-marco"
criar_label "roadmap"            "fbca04" "Mudança no programa"
criar_label "hard-skill:git"     "c5def5" "Git, commits, versionamento"
criar_label "hard-skill:testes"  "c5def5" "Testes unitários, TDD, integração"
criar_label "hard-skill:http"    "c5def5" "HTTP e design de API"
criar_label "hard-skill:docker"  "c5def5" "Docker e Docker Compose"
criar_label "hard-skill:banco"   "c5def5" "SQL, modelagem, migrations"
criar_label "hard-skill:ci"      "c5def5" "Integração contínua"

criar_milestone() {
  local titulo="$1" prazo="$2" descricao="$3"
  if gh api "repos/$repo/milestones?state=all" --jq '.[].title' | grep -Fxq "$titulo"; then
    echo "Milestone já existe: $titulo"
  else
    gh api "repos/$repo/milestones" -f title="$titulo" -f due_on="$prazo" -f description="$descricao" --silent
    echo "Milestone criado: $titulo"
  fi
}

criar_milestone "Marco A" "2026-12-07T23:59:59Z" "Fim do Bloco A — Código Limpo"
criar_milestone "Marco B" "2027-02-15T23:59:59Z" "Fim do Nível 1 — Vocabulário de Padrões"
