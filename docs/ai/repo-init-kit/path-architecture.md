# Path Architecture

## Mandatory Rules

- `AGENTS.md` lives at the repository root.
- `.agents/` is allowed for repo-local agent assets and starter templates.
- Durable agent knowledge lives under `docs/`.
- Do not create top-level `.ai/`.
- Do not create top-level `.codex/`.

Recommended structure:

```text
AGENTS.md
README.md
.agents/
└── README.md
docs/
├── ai/
│   ├── project-overview.md
│   ├── harness-workflow.md
│   ├── reference-repos.md
│   ├── modules/
│   │   ├── <module-a>.md
│   │   └── <module-b>.md
│   └── templates/
│       └── delivery-checklist.md
├── roadmap.md
├── operations/
│   └── session-handoff.md
├── specs/
│   └── ...
└── plans/
    └── ...
```

## Intent Of Each Layer

- `AGENTS.md`
  - short entrypoint for agents
  - read order
  - a few high-signal repo rules

- `.agents/`
  - repo-local agent assets
  - optional local templates, reusable prompts, or routing helpers
  - not a second knowledge base
  - target `.agents/README.md` should stay thin

- `docs/ai/`
  - reusable knowledge base for any agent or tool
  - overview, module docs, templates, references

- `docs/roadmap.md`
  - fast project-state refresh
  - what is done, next, later, deferred

- `docs/operations/`
  - operator procedures
  - handoff notes

- `docs/specs/`
  - durable design decisions

- `docs/plans/`
  - implementation sequencing

## Why This Structure Works

- keeps `AGENTS.md` small enough to stay injected reliably
- makes the knowledge base browsable by module
- supports many short sessions instead of one giant session
- keeps design docs separate from current execution status
- lets `.agents/` hold agent assets without competing with the main docs tree
- prevents hidden `.ai/` and `.codex/` folders from becoming parallel knowledge bases

## Kit Source Templates

In `harness-agent-kit` itself, reusable starter templates live under `.agents/templates/`.
The bootstrap script copies those templates into their target paths, such as `AGENTS.md`, `.agents/README.md`, and `docs/ai/project-overview.md`.

## Profile Notes

### `small-app`

Often enough:

- `AGENTS.md`
- `.agents/README.md`
- `docs/ai/project-overview.md`
- `docs/roadmap.md`
- a few module docs

### `service-backend`

Usually worth keeping the full recommended shape because:

- integration boundaries grow quickly,
- roadmap and handoff become important,
- specs and plans accumulate value.

### `infra-ops`

Usually benefits from the full shape plus stronger `operations/` coverage:

- rollout notes,
- rollback notes,
- secret handling notes,
- environment-specific runbooks.
