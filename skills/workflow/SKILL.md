---
name: workflow
description: Route software engineering work after Praxis bootstrap. Classify lane and state, choose one driver, load only needed references, and emit an explicit transition.
---

# Praxis Workflow

Choose the current driver and the right amount of process. Do not load the whole system.

## Model

- `using-praxis` bootstraps the task.
- `workflow` classifies lane and state, then chooses one driver.
- The driver owns the current loop, output, and next transition.
- Helpers and gates load only when the driver is about to use them.
- Shared references load only for their axis: lanes, routing, gates, artifacts, persistence, lifecycle, runtime, or subagents.

## Start

1. Read user intent, current repo context, and direct instructions.
2. Read `references/lanes.md` for proportionality when the lane is not obvious.
3. Read `references/routing.md`.
4. Choose the lightest safe route and load one driver skill.
5. Stop loading when the next action is clear and covered.

## Loading Discipline

Do not pre-load Praxis. Follow one transition at a time:

```text
using-praxis -> workflow -> lane/routing -> driver skill -> helper/reference if needed -> action -> transition
```

- Load `praxis:conventions` only when repo rules affect the current choice.
- Load `praxis:explore` or `praxis:source` only when facts are unknown or version-sensitive.
- Load `praxis:distill` only before turning messy conversation into durable state.
- Load `references/gates.md` only before checking readiness, review, verification, or delivery gates.
- Load `references/lifecycle.md` only for durable state transitions.
- Load `references/persistence.md` only for storage, tracker, or `.gitignore` choices.
- Load `references/artifacts.md` only for artifact type or boundary questions.
- Load `references/runtime.md` only for subagent, queue, or controller-file execution.
- If the routed driver or reference is required for the current action, read it before acting.

## Driver Contract

A driver answers:

- what it consumes;
- what it does now;
- what it outputs;
- what comes next or why it stops.

## Surfaces

- Artifacts are durable operational state. The artifact skill owns the shape.
- Runtime files are controller infrastructure. Use `references/runtime.md`.
- Docs are human or maintainer context. Use `praxis:docs`.
- AGENTS.md is editing context. Use `praxis:agent-guide`.
- Source code and tests are behavior truth.

## Transition Packet

After each driver, keep or report:

```text
output: <artifact/result/change/evidence>
lane: <fast | focused | full | swarm/queue>
state: <none | draft | ready | running | blocked | done | handoff>
next: <skill or stop>
evidence: <command, file, review, or reason>
```

Persist the packet only when it helps future agents, queues, subagents, or compaction recovery.

## Completion

Before claiming completion, verify with evidence. Report what changed, what passed, and what remains unverified.
