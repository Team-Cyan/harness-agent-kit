# AGENTS.md

This file is the repository entrypoint for coding agents.

Keep this file short. Treat it as a table of contents, not the full knowledge base.

## Read Order

For most tasks, read in this order:

1. `docs/ai/project-overview.md`
2. `docs/roadmap.md`
3. The relevant module doc(s) under `docs/ai/modules/`
4. `docs/operations/session-handoff.md` only if the task depends on recent unfinished work

Do not start by reading every spec or every plan.

## Repository Model

- `AGENTS.md`: thin agent entrypoint
- `docs/ai/`: reusable AI knowledge base
- `docs/roadmap.md`: current repo state and next work
- `docs/operations/`: operator workflows and handoff notes

## Working Rules

- Keep AI-facing docs in English.
- Reply to the human user in their preferred language.
- Prefer small, well-bounded sessions.
- Keep this repository focused on reusable harness and repo-init assets.
- Update `docs/roadmap.md` when the kit meaningfully changes.

## Safety

- Keep secrets in gitignored local files.
- Do not commit credentials, tokens, or cookies.
- Prefer additive template changes over breaking path churn.

## Useful Docs

- `docs/ai/project-overview.md`
- `docs/ai/repo-init-kit/README.md`
- `docs/roadmap.md`
