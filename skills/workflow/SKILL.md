---
name: workflow
description: Route software engineering work to one Praxis driver skill for the current state. Use at the start of work, after state changes, or when coordination feels unclear.
---

# Praxis Workflow

Choose one driver for the next state. Do not load the whole system.

## Model

- Routing chooses the driver skill.
- The driver owns the current loop and next transition.
- Helpers load only when the driver is about to do that helper action.
- Shared references load only for their axis: artifacts, persistence, lifecycle, or subagents.

## Start

1. Read user intent, current repo context, and direct instructions.
2. Read `references/routing.md`.
3. Choose the lightest safe route and load one driver skill.
4. Stop loading when the next action is clear and covered.

## Loading Discipline

Do not pre-load Praxis. Follow one transition at a time:

```text
workflow -> routing -> driver skill -> helper/reference if needed -> action -> transition
```

- Load `praxis:conventions` only when repo rules affect the current choice.
- Load `praxis:explore` or `praxis:source` only when facts are unknown or version-sensitive.
- Load `praxis:distill` only before turning messy conversation into durable state.
- Load `references/lifecycle.md` only for durable state transitions.
- Load `references/persistence.md` only for storage, tracker, or `.gitignore` choices.
- Load `references/artifacts.md` only for artifact type or boundary questions.
- If the routed driver or reference is required for the current action, read it before acting.

## Driver Contract

A driver answers:

- what it consumes;
- what it does now;
- what it outputs;
- what comes next or why it stops.

## Surfaces

- Artifacts are durable operational state. The artifact skill owns the shape.
- Docs are human or maintainer context. Use `praxis:docs`.
- AGENTS.md is editing context. Use `praxis:agent-guide`.
- Source code and tests are behavior truth.

## Completion

Before claiming completion, verify with evidence. Report what changed, what passed, and what remains unverified.
