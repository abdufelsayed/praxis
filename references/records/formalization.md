# Formalization Records

These bodies preserve progressive strategy and observable specification. They
do not turn an Evolution into an Implementation Plan.

## Evolution Map

**Path:** `<project>/evolutions/map.md`, after the human selects Evolve.

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

The sequence contains at least two entries. Each entry has a descriptive H3 and
these fields:

```markdown
### E1 — <title>

**ID:** evolution-<name>
**Tangible Advancement.** <coherent working advance>
**Deliberate Limitations.** <intentionally excluded behavior>
**Why This Position Is Useful.** <progression value>
**Learning Target.** <optional later judgment>
```

Map Approval accepts the strategy but selects no Evolution. Later Evolutions
remain high-level entries until a human selects one.

## Evolution

**Path:** `<project>/evolutions/eN-<name>.md`

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
## Result <!-- after Evolution Acceptance -->
## Current Recommendation
```

An Evolution is a complete high-level advancement specification. It is never a
Plan, and every selected Evolution requires at least one Issue. Include
Result only after Evolution Acceptance.

## Issue

**Path:** `<project>/issues/iN-<name>.md` or `.agents/issues/i-<name>.md`.

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
States, Edge Cases and Failure Behavior, or Compatibility when they improve
reading. Acceptance Criteria state observable claims and boundaries, never
files, commands, frameworks, implementation seams, sequence, or task
checklists. Result is one current accepted coverage summary, not append-only
history. The Issue remains open until every Acceptance Criterion is proved.
