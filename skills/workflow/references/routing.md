# Praxis Routing

Choose the next command. Do not load the whole workflow.

## Authority

This file classifies work and routes to the next skill. Command skills own command-specific behavior. Shared references are loaded only for their axis:

- `artifacts.md`: artifact type and boundaries;
- `persistence.md`: trackers, paths, and ignore policy;
- `lifecycle.md`: durable state transitions;
- `subagents.md`: delegation protocol.

## Levels

- L0 answer or inspect: read enough to answer; no durable state unless context already needs saving.
- L1 small reversible edit: inspect, edit, run the smallest relevant check, report evidence.
- L2 focused implementation: establish repo conventions if unknown, isolate when useful, plan briefly, execute, verify.
- L3 substantial work: preserve context, plan, execute in slices, review, verify, finish.
- L4 queue or swarm: use durable issues/plans, checkpoints, one worktree per active worker, subagents when useful and allowed.

Escalate for multi-file behavior changes, unclear bugs, migrations, auth, data loss, security, CI/deploy, long conversations, compaction risk, or parallel work. De-escalate for tiny reversible edits, pure explanation, or explicit user preference.

## Dispatch

Use the first matching route that answers the current need:

- unclear intent or tradeoffs -> `praxis:discuss`
- fuzzy feature, product, workflow, or design direction -> `praxis:brainstorm`
- repo rules, tracker, branch, worktree, docs, or verification policy unknown -> `praxis:conventions` or `praxis:setup`
- unknown local code, behavior, architecture, or options -> `praxis:explore`
- external or version-sensitive facts -> `praxis:source`
- messy conversation or investigation should become durable state -> `praxis:distill`, then the target artifact template or skill
- desired behavior or requirements -> `praxis:spec`
- durable choice or policy -> `praxis:decide`
- work item or vertical slice -> `praxis:issue`
- executable implementation recipe -> `praxis:plan`
- implementation from plan, issue, or focused slice -> `praxis:execute`
- bug, failure, regression, or flaky behavior -> `praxis:debug`
- behavior change needing tests -> `praxis:tdd`
- structure, boundary, API, or naming design -> `praxis:design`, `praxis:model`, `praxis:prototype`, or `praxis:refactor`
- non-trivial branch isolation or parallel work -> `praxis:worktree`
- multiple ready issues/plans -> `praxis:queue`
- reviewable change, plan, spec, or risk -> `praxis:review`
- completion claim -> `praxis:verify`
- done, blocked, handoff, merge, cleanup, or delivery choice -> `praxis:finish`
- commit or PR requested/expected -> `praxis:commit` or `praxis:pr`
- destructive or hard-to-undo operation -> domain skill, then `praxis:safety`
- user docs or developer docs -> `praxis:docs`
- AGENTS.md or scoped agent guidance -> `praxis:agent-guide`
- compaction, pause, or ownership transfer -> `praxis:checkpoint` or `praxis:handoff`

## Typical SDLC Flow

```text
explore / discuss / brainstorm
  -> decision / spec
  -> issue
  -> plan
  -> execute
  -> review / verify
  -> finish
```

`context` carries living state across the flow. `handoff` transfers continuation when ownership or session changes.

## Transition Packet

After a command, keep or report a compact transition packet:

```text
output: <artifact/result/change/evidence>
state: <none | draft | ready | running | blocked | done | handoff>
next: <skill or stop>
evidence: <command, file, review, or reason>
```

This packet can stay in chat for short work. Persist it only when it helps future agents, queues, subagents, or compaction recovery.
