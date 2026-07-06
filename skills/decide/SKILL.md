---
name: decide
description: Use when recording a durable technical, product, workflow, naming, architecture, or policy decision with rationale and consequences. Keeps decision records concise and prevents discarded ideas from polluting plans.
---

# Decide

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Record decisions that future agents should respect.

## Required Reads

Use `../kernel/references/templates/decision.md` for decision files.
Load `praxis:program` when the decision promotes a program candidate into accepted truth.
Load `praxis:refine` when evidence invalidates or supersedes a decision.
Read `../kernel/references/storage-policy.md` only when the repo has no established decision path.

If the user only needs an immediate recommendation and future work does not need to respect it, do not call it a decision artifact. Route to `praxis:discuss` or `praxis:design` instead.

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
- Truth dependencies, evidence, and supersession when relevant.
- Important rejected alternatives only if they prevent likely confusion.

Do not include a transcript of the debate.

## Transition

```text
output: decision path or blocker
lane: <current lane>
state: done
result: decided
next: program | refine | context | spec | issue | plan | stop
evidence: rationale, constraint, or user choice
```

## Next Skills

Load `praxis:program` when the decision updates current synthesis. Load `praxis:refine` when the decision is invalidated or superseded. Load `praxis:context` when the decision changes living project state. Load `praxis:spec`, `praxis:issue`, or `praxis:plan` when the decision unblocks work.
