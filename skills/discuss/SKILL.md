---
name: discuss
description: Use for technical conversation, architectural discussion, tradeoff exploration, or multi-turn reasoning when the user is not yet asking for implementation. Keeps discussion productive and offers persistence when context becomes durable.
---

# Discuss

Have the conversation without prematurely turning it into a plan.

## Flow

1. Clarify the actual question or decision.
2. Separate facts, assumptions, options, and preferences.
3. Explore tradeoffs conversationally.
4. When the discussion creates durable context, offer or create a `praxis:checkpoint`.

## Do Not

- Treat every idea as a requirement.
- Preserve discarded branches in final docs unless they matter.
- Start implementation until intent is clear or the user asks.
