---
name: decide
description: Use when recording a durable technical, product, workflow, naming, architecture, or policy decision with rationale and consequences. Keeps decision records concise and prevents discarded ideas from polluting plans.
---

# Decide

Record decisions that future agents should respect.

## Required Reads

Use `../kernel/references/templates/decision.md` for durable decision files.
Read `../kernel/references/storage-policy.md` only when the repo has no established decision path.

## Location

Use repo convention first. Otherwise:

```text
.agents/decisions/YYYY-MM-DD-short-title.md
```

## Contract

- Decision.
- Context.
- Rationale.
- Consequences.
- Important rejected alternatives only if they prevent likely confusion.

Do not include a transcript of the debate.

## Transition

```text
output: decision path or decision summary
lane: <current lane>
state: done
result: decided
next: context | spec | issue | plan | stop
evidence: rationale, constraint, or user choice
```

## Next Skills

Load `praxis:context` when the decision changes living project state. Load `praxis:spec`, `praxis:issue`, or `praxis:plan` when the decision unblocks work.
