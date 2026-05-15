# Agent Assets

This folder contains repo-local assets for coding agents.

Keep durable project knowledge in `docs/`. Use `.agents/` for thin, copyable agent-facing assets that help other repositories adopt the harness shape.

## Contents

- `templates/`: starter files copied by `scripts/bootstrap-repo.sh`

The target-repo `.agents/README.md` is generated from `templates/agent-assets.md` so copied repositories do not claim to carry this kit's template source.

## Boundaries

- Do not turn `.agents/` into a second knowledge base.
- Do not store secrets, local credentials, run logs, or scratch notes here.
- Keep project state, module knowledge, specs, plans, and operations notes under `docs/`.

## Template Rule

Templates in this folder should be generic enough to copy into a new repository. If a note only applies to `harness-agent-kit` itself, write it under `docs/` instead.
