# Delivery Records

## Implementation Plan

**Path:** `<project>/plans/pN-<name>.md` or `.praxis/plans/p-<name>.md`.

```yaml
---
kind: plan
id: plan-<name>
parent: project-<name> # omit when standalone
revision: 1
governing:
  - id: <accepted-issue-or-standalone-owner-id>
    accepted_revision: 1
meaning:
  state: pending_gate
gates:
  plan_approval:
    state: pending | approved
    content_revision: 1
    consequence: accepted implementation proposal
    accepted_reference: unavailable
authority:
  state: awaiting | granted | withdrawn | exhausted
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
## Decision Checkpoint <!-- when genuinely useful -->
## Verification
## Result <!-- only after accepted Delivery affects this Plan -->
```

A Plan describes how one bounded result will be produced and proved. A numbered
sequence is explanatory; its steps are not durable Tasks, authority boundaries,
or progress records.

Plan Approval leaves `authority.state` as `awaiting`. A separate reliable
instruction may set it to `granted` for ordinary reversible in-bound mutation.
Meaning-changing evidence, stale governing dependencies, revocation, or a
changed implementation boundary sets affected authority to `withdrawn` until
the causal owner, gates, and fresh authorization are restored. Consequential
actions retain exact-action authority and Safety requirements; Plan Approval
alone never authorizes them.

A Plan receives one concise Result section only after Result Acceptance. The
section states proved coverage, decisive evidence, limitations, unresolved
work, and exhausted authority. Result Acceptance also updates owning Issues
and causal records with only proved coverage. The Plan Result section is the
canonical accepted projection. An additional durable record requires a distinct
purpose, consumer, lifecycle, and authority boundary.

Keep a standalone result explanation in conversation by default. Retain a
completed Plan only while a named consumer needs its authority, limitations,
or learning.
