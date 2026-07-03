---
name: discuss
description: Use for technical conversation, architectural discussion, tradeoff exploration, or multi-turn reasoning when the user is not yet asking for implementation. Keeps discussion productive and offers persistence when context becomes durable.
---

# Discuss

Have the conversation without prematurely turning it into a plan.

## Required Reads

Read `../workflow/references/artifacts.md` only when deciding whether the conversation should become a durable artifact.
Use `../workflow/references/templates/exploration.md` when preserving pre-decision reasoning as an exploration artifact.

## Flow

1. Clarify the actual question or decision.
2. Separate facts, assumptions, options, and preferences.
3. Explore tradeoffs conversationally.
4. When exploration is useful but not yet a decision, offer an exploration artifact.
5. When the discussion creates durable state, distill it into the smallest fitting artifact.

## Artifact Contract

A persisted exploration captures useful pre-decision reasoning:

- question;
- relevant facts and assumptions;
- options with tradeoffs;
- current leaning;
- open questions;
- follow-up artifact, if any.

## Do Not

- Treat every idea as a requirement.
- Preserve discarded branches in final docs unless they matter.
- Start implementation until intent is clear or the user asks.

## Next Skills

Load `praxis:distill` before turning a messy discussion into a durable artifact. Load `praxis:decide`, `praxis:spec`, or `praxis:plan` only after the conversation creates that kind of durable output.
