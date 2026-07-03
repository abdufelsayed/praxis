# Praxis Routing

Choose the next driver. Do not load the whole workflow.

## Rule

Route to one driver skill for the current state. Helpers and references load only when that driver is about to use them.

## Levels

- L0: answer or inspect; no durable state.
- L1: small reversible edit; inspect, edit, check, report.
- L2: focused implementation; conventions if needed, brief plan, execute, verify.
- L3: substantial work; context, plan, slices, review, verify, finish.
- L4: queue or swarm; durable issues/plans, worktrees, subagents, context or handoffs.

Escalate for multi-file behavior changes, unclear bugs, migrations, auth, data loss, security, CI/deploy, long conversations, compaction risk, or parallel work. De-escalate for tiny reversible edits, pure explanation, or explicit user preference.

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
explore / discuss / brainstorm
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
state: <none | draft | ready | running | blocked | done | handoff>
next: <skill or stop>
evidence: <command, file, review, or reason>
```

Keep it in chat for short work. Persist it only when it helps future agents, queues, subagents, or compaction recovery.
