---
name: discuss
description: Use for technical conversation, architectural discussion, tradeoff exploration, or multi-turn reasoning before implementation intent is clear.
---

# Discuss

Have the conversation without prematurely turning it into a plan.

## Required Reads

Read `../kernel/references/artifacts.md` only when deciding whether the conversation should become a durable artifact.
Use `../kernel/references/templates/exploration.md` when preserving pre-decision reasoning as an exploration artifact.

## Flow

1. Clarify the actual question or decision.
2. Separate facts, assumptions, options, and preferences.
3. Explore tradeoffs conversationally.
4. Inspect local context when it can answer the question faster than asking.
5. Recommend a path when enough evidence exists; ask one blocking question when preference is the real blocker.
6. When exploration is useful but not yet a decision, offer an exploration artifact.
7. When the discussion creates durable state, write the smallest fitting artifact using the owning skill or template.

## Convergence

- Stop asking when the next action is safe under a stated assumption.
- Route to `explore` when facts, code, or tool behavior are unknown.
- Route to `design`, `spec`, `issue`, or `plan` only after the conversation creates executable intent.
- Keep options short and current; do not preserve discarded branches unless they prevent a likely future mistake.

## Output

- answer, tradeoff framing, or recommended next step;
- artifact path or tracker link only when the conversation creates durable state through the owning skill;
- explicit unresolved question when a decision is not ready.

## Artifact Contract

A saved exploration captures useful pre-decision reasoning:

- question;
- relevant facts and assumptions;
- options with tradeoffs;
- current leaning;
- open questions;
- follow-up artifact, if any.

## Do Not

- Treat every idea as a requirement.
- Preserve process noise in durable docs.
- Start implementation until intent is clear or the user asks.

## Next Skills

Load `praxis:decide`, `praxis:spec`, or `praxis:plan` only after the conversation creates that kind of durable output. Use the exploration template when the result is useful pre-decision context.

## Transition

```text
output: answer, tradeoff frame, exploration path, or unresolved question
lane: <current lane>
state: none | exploring | blocked | draft
result: answered | needs-artifact | needs-user | unresolved
next: explore | decide | spec | issue | plan | stop
evidence: user preference, facts, assumptions, options, or open question
```
