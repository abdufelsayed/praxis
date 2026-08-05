# Delivery Records

## Implementation Plan

**Path:** `<project>/plans/pN-<name>.md` or `.agents/plans/p-<name>.md`.

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
## Scope and Exclusions
## Risks and Recovery
## Open Implementation Choices <!-- when safely deferrable -->
## Human Steering Checkpoint <!-- when genuinely useful -->
## Verification
```

A Plan describes how one bounded result will be produced and proved. A numbered
sequence is explanatory; its steps are not durable Tasks, authority boundaries,
or progress records.

Plan Approval leaves `authority.state` as `awaiting`. A separate reliable human
instruction may activate ordinary reversible in-bound mutation. Consequential
actions retain exact-action authority and Safety requirements; Plan Approval
alone never authorizes them.

A Plan has no Result section. Result Acceptance may accept the current result
as complete or partial, update owning Issues and causal records with only
proved coverage, and exhaust Plan authority. For one complete standalone result
with one exact claim, unambiguous ordinary-language acceptance is enough;
partial, multi-claim, and composed outcomes require an explicit acceptance
statement.

Keep a standalone result explanation in conversation by default. Retain a
completed Plan or separate acceptance record only while a named consumer needs
its authority, limitations, or learning.
