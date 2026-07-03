# Praxis Routing

Choose one driver for the current state. Do not load the whole workflow.

## Rule

Route to a driver skill. Helpers, gates, and references load only when that driver is about to use them.

Read `lanes.md` when proportionality is unclear. Read `skills-map.md` when a skill role is ambiguous. Read `gates.md` before readiness, review, verification, or delivery gates.

## Dispatch

Use the first matching route that answers the current need:

- unclear intent or tradeoffs -> `praxis:discuss`
- fuzzy feature, product, workflow, interface, or design direction -> `praxis:brainstorm`
- repo rules, tracker, branch, worktree, docs, or checks unknown -> `praxis:conventions`
- unknown local code, behavior, architecture, or options -> `praxis:explore`
- external or version-sensitive facts -> `praxis:source`
- messy conversation or investigation becoming durable state -> `praxis:distill`, then target artifact template or skill
- desired behavior or requirements -> `praxis:spec`
- durable choice or policy -> `praxis:decide`
- work item or vertical slice -> `praxis:issue`
- executable implementation recipe -> `praxis:plan`
- implementation from plan, issue, or focused slice -> `praxis:execute`
- bug, failure, regression, or flaky behavior -> `praxis:debug`
- behavior change needing tests -> `praxis:tdd`
- structure, boundary, API, or placement design -> `praxis:design`
- domain language or model boundary -> `praxis:model`
- disposable evidence needed -> `praxis:prototype`
- behavior-preserving code cleanup -> `praxis:refactor`
- non-trivial branch isolation or parallel work -> `praxis:worktree`
- multiple ready issues/plans -> `praxis:queue`
- adversarial correctness pass -> `praxis:review`
- completion claim or readiness claim -> `praxis:verify`
- done, blocked, handoff, merge, cleanup, or delivery choice -> `praxis:finish`
- commit or PR requested/expected -> `praxis:commit` or `praxis:pr`
- destructive or hard-to-undo operation -> domain skill, then `praxis:safety`
- user docs or developer docs -> `praxis:docs`
- AGENTS.md or scoped agent guidance -> `praxis:agent-guide`
- same-owner compaction or pause -> `praxis:context`
- ownership transfer or restart instructions -> `praxis:handoff`

## Usual Flow

```text
using-praxis
  -> workflow
  -> discuss / brainstorm / explore
  -> decision / spec
  -> issue
  -> plan
  -> execute
  -> review / verify
  -> finish
```

`context` carries living state. `handoff` transfers continuation.

## Transition Packet

After a driver, keep or report a compact packet:

```text
output: <artifact/result/change/evidence>
lane: <fast | focused | full | swarm/queue>
state: <none | draft | ready | running | blocked | done | handoff>
next: <skill or stop>
evidence: <command, file, review, or reason>
```

Keep it in chat for short work. Persist it only when it helps future agents, queues, subagents, or compaction recovery.
