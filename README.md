# harness-agent-kit

`harness-agent-kit` is a reusable starter repository for agent-first engineering projects.

It packages an OpenAI-aligned structure:

- a thin root `AGENTS.md`,
- a repo-local `.agents/` asset layer,
- a structured `docs/` knowledge base,
- reusable repo-init templates,
- a workflow shape optimized for many small, focused agent sessions.

## Mandatory Rules

When a repository adopts this framework:

- use the `docs/` folder structure as the durable knowledge base
- keep `AGENTS.md` at the repository root
- use `.agents/` for repo-local agent assets and copyable templates
- do not use top-level `.ai/`
- do not use top-level `.codex/`

This kit treats those rules as framework constraints, not optional style preferences.

## Why This Exists

Many repos either have:

- no durable agent context at all,
- one giant `AGENTS.md`,
- or a pile of ad hoc docs that do not help future sessions read less.

This kit exists to make the good default cheap:

- short root entrypoint,
- `.agents/` for reusable agent assets instead of hidden knowledge,
- structured docs as the system of record,
- roadmap and handoff discipline,
- small-session-friendly module docs.

## What You Get

- root `AGENTS.md` pattern
- `.agents/` asset and template layer
- `docs/`-first knowledge-base structure
- `docs/roadmap.md` shape
- `docs/operations/session-handoff.md` shape
- reusable templates for module docs, workflow notes, and checklists
- profile guidance for `small-app`, `service-backend`, and `infra-ops`

## Quick Start

Read:

1. `AGENTS.md`
2. `docs/ai/project-overview.md`
3. `docs/roadmap.md`
4. `docs/ai/repo-init-kit/README.md`

Then either:

1. copy the kit files manually, or
2. use the bootstrap script in `scripts/bootstrap-repo.sh`

## Bootstrap Script

The bootstrap script copies the default starter set into another repository without overwriting existing files.

Example:

```bash
scripts/bootstrap-repo.sh /path/to/target-repo
```

What it copies by default:

- `AGENTS.md`
- `.agents/README.md`
- `docs/ai/project-overview.md`
- `docs/roadmap.md`
- `docs/ai/reference-repos.md`
- `docs/ai/harness-workflow.md`
- `docs/ai/templates/delivery-checklist.md`
- `docs/operations/session-handoff.md`

It also creates the basic directory structure:

- `.agents/`
- `docs/ai/modules/`
- `docs/ai/templates/`
- `docs/operations/`
- `docs/specs/`
- `docs/plans/`

## Main Contents

- `.agents/`: repo-local agent assets and reusable templates
- `docs/ai/repo-init-kit/`: the reusable kit
- `docs/ai/`: this repo's own AI knowledge base
- `docs/operations/`: session handoff
- `docs/roadmap.md`: current state and next work

## Design Principles

- keep the root entrypoint short
- move durable knowledge into `docs/`
- keep reusable agent assets in `.agents/`
- optimize for future narrow sessions
- prefer copyable conventions over heavyweight framework machinery

## Feedback Loop

If you adopt this kit in another repository and learn something during the migration:

- open a GitHub issue in `Team-Cyan/harness-agent-kit`
- describe what felt missing, awkward, or unexpectedly useful
- include the adopted repo shape and the session type that exposed the gap

The goal is not just to copy the kit. The goal is to let downstream adoption teach the kit how to get better.

## Current Goal

Keep this repository small, copyable, and easy to adapt into other projects.
