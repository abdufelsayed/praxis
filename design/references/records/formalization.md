# Records: Formalization

> **Status: accepted semantic source; target runtime projection:
> `references/records/formalization.md`.**

Use this reference with [Records Core](core.md) when Formalization creates or
revises progressive strategy and observable specifications.

## In this reference

- [Evolution Map](#evolution-map)
- [Evolution](#evolution)
- [Issue](#issue)

## Evolution Map

Path: `<project>/evolutions/map.md`, only after the human selects Evolve.

```yaml
---
kind: evolution-map
parent: project-<name>
gates:
  evolution_map_approval:
    state: pending | approved
    consequence: accepted progressive strategy
    accepted_reference: unavailable
---
```

```markdown
# <Project> Evolution Map

## Governing Context
## Progressive Strategy
## Evolution Sequence
## Cross-Evolution Dependencies and Uncertainty <!-- optional -->
## Current Recommendation
```

Each of at least two sequence entries uses:

```markdown
### E1 — <title>

**ID:** evolution-<name>

**Tangible Advancement.** <coherent working advance>

**Deliberate Limitations.** <intentionally excluded behavior>

**Why This Position Is Useful.** <progression value>

**Learning Target.** <optional later judgment>
```

Map Approval accepts the strategy but selects nothing. Future Evolutions remain
high-level entries until the human selects one.

## Evolution

Path: `<project>/evolutions/eN-<name>.md`

```yaml
---
kind: evolution
id: evolution-<name>
parent: project-<name>
gates:
  evolution_definition_approval:
    state: pending | approved
    consequence: accepted high-level advancement specification
    accepted_reference: unavailable
disposition: open
---
```

```markdown
# <Evolution title>

## Governing Context and Accepted Truth
## Tangible Advancement
## Included High-Level Behavior
## Integration with Existing Project Work
## Deliberate Limitations
## Learning Target <!-- optional -->
## Required Proof
## Accepted Result <!-- conditional -->
## Current Recommendation
```

An Evolution is a complete high-level advancement specification, never an
Implementation Plan. Every selected Evolution requires at least one Issue.
Add Accepted Result only for Evolution Acceptance.

## Issue

Path: `<project>/issues/iN-<name>.md` or `.agents/issues/i-<name>.md`.

```yaml
---
kind: issue
id: issue-<name>
parent: evolution-<name> | project-<name> # omit when standalone
gates:
  issue_approval:
    state: pending | approved
    consequence: accepted detailed specification
    accepted_reference: unavailable
disposition: open
---
```

```markdown
# <Observable outcome>

<One concise outcome paragraph.>

## Context
## Requirements
## Out of Scope <!-- when meaningful -->
## Dependencies <!-- when meaningful -->
## Acceptance Criteria
## Result <!-- after accepted Delivery affects the Issue -->
```

Requirements may use descriptive H3 subdivisions such as Interfaces and
States, Edge Cases and Failure Behavior, or Compatibility only when they help.
Acceptance Criteria state observable claims and boundaries, not files,
commands, frameworks, implementation seams, sequence, or task checkboxes.

Result is one current accepted coverage summary, not an append-only history.
The Issue remains open until all Acceptance Criteria are proved.
