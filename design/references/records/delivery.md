# Records: Delivery

> **Status: accepted focused reference.**

Use this reference with [Records Core](core.md) when Delivery creates, revises,
or closes an Implementation Plan.

## Implementation Plan

Path: `<project>/plans/pN-<name>.md` or `.agents/plans/p-<name>.md`.

```yaml
---
kind: plan
id: plan-<name>
parent: project-<name> # omit when standalone
gates:
  plan_approval:
    state: pending | approved
    consequence: accepted implementation proposal
    accepted_reference: unavailable
authority:
  state: awaiting
disposition: open
---
```

```markdown
# <Bounded result>

<One concise bounded-result paragraph.>

## Context and Coverage
## Proposed Approach
## Changes and Sequence
## Authority and Exclusions
## Risks and Recovery
## Open Implementation Choices <!-- when safely deferrable -->
## Human Steering Checkpoint <!-- when genuinely useful -->
## Verification
```

Plans describe how one bounded result will be produced and proved. They may
contain a numbered execution sequence, but those steps are not durable Tasks,
separate authority boundaries, or progress records.

Plan Approval leaves authority `awaiting`. A separate reliable human
instruction may activate ordinary reversible in-bound mutation. Consequential
actions retain their exact-action authority and Safety requirements.

The Plan has no Result section. Result Acceptance may accept the current Plan
result as complete or partial, updates owning Issues and causal records with
only proved coverage, then exhausts Plan authority. For one complete
standalone result with one exact claim in focus, an unambiguous ordinary-language
acceptance is enough; partial, multi-claim, and composed outcomes require an
explicit acceptance statement. A standalone result
explanation stays in the conversation by default; retain a completed Plan or
separate acceptance record only while a named consumer needs its authority,
limitations, or learning.
