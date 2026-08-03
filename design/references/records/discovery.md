# Records: Requirements Discovery

> **Status: accepted focused reference.**

Use this reference with [Records Core](core.md) when Requirements Discovery
needs durable governing truth.

## In this reference

- [Initiative Brief](#initiative-brief)
- [Project Brief](#project-brief)
- [Requirements](#requirements)
- [Unknowns Map](#unknowns-map)
- [References Index](#references-index)

## Initiative Brief

Path: `initiatives/<initiative>/brief.md`

```yaml
---
kind: initiative
id: initiative-<name>
gates:
  initiative_alignment:
    state: pending | approved
    consequence: accepted shared strategic basis
    accepted_reference: unavailable
disposition: open
---
```

```markdown
# <Initiative title>

## Strategic Objective
## Success Conditions
## Shared Constraints and Truth <!-- optional -->
## Projects and Their Relationships
## Priority or Ordering Rationale <!-- optional -->
## Visible Strategic Uncertainty <!-- optional -->
## Material Cross-Project Learning <!-- optional -->
## Current Recommendation
```

Use one descriptive H3 per Project under Projects and Their Relationships. Link
its Project Brief and state only its contribution and meaningful relationships.
The Initiative contains no Issues, Plans, local specifications, delivery state,
or implementation authority.

## Project Brief

Path: `projects/<project>/brief.md` or beneath its Initiative.

```yaml
---
kind: project
id: project-<name>
parent: initiative-<name> # omit when standalone
gates:
  requirements_alignment:
    state: pending | approved
    consequence: accepted basis for Formalization discussion
    accepted_reference: unavailable
disposition: open
---
```

```markdown
# <Project title>

## Target Outcome
## Human Starting Point <!-- optional -->
## Current System and Domain Model <!-- optional -->
## Boundaries and Non-goals
## Requirements <!-- optional -->
## References and Retained Artifacts <!-- optional -->
## Current Uncertainty <!-- optional -->
## Current Position
## Current Recommendation
```

The Brief is the compact navigation root. It links detailed records without
copying them. Current Position names the owning loop and question, selected
route, relevant records, latest accepted working baseline when material, and
next judgment—not an execution dashboard.

## Requirements

Path: `<project>/requirements.md`

```yaml
---
kind: requirements
parent: project-<name>
---
```

```markdown
# <Project> Requirements

## Requirements

### R1 — <title>

**Strength:** required | preferred | optional
**Source:** human statement | research | reference | artifact reaction

**Need or Constraint.** <what must be true>

**Why It Matters.** <human or system consequence>

**Implication for Formalization.** <later judgment consequence>

**Supporting Finding or Evidence.** <optional>

**Remaining Uncertainty.** <optional>
```

Requirements preserve problem-space needs, constraints, accepted human
choices, consequential findings, known volatility, and future pressure.
Evolutions and Issues later formalize behavior; Plans describe implementation.
Requirements have no progress or satisfaction status.

Assign Project-local IDs to the complete candidate before Requirements
Alignment. IDs become stable after approval. Split, merge, or replacement uses
new IDs and retains only minimal supersession pointers needed by current
consumers.

## Unknowns Map

Path: `<project>/unknowns.md`, only when substantial uncertainty needs durable
navigation.

```yaml
---
kind: unknowns
parent: project-<name>
---
```

```markdown
# <Project> Unknowns

## Current Understanding
## Material Gaps, Tensions, and Blind Areas
## Why They May Matter
## Relevant Evidence and Hypotheses <!-- optional -->
## Dependencies Between Uncertainties <!-- optional -->
## Highest-value Next Probe <!-- conditional -->
## Uncertainty Safe to Carry and Why <!-- conditional -->
```

This is a living map, not a ledger, queue, checklist, four-quadrant inventory,
or resolution history. Unknowns may appear, disappear, merge, or split. Promote
useful truth into its owning record and redraw what remains. Delete the Map when
the Project Brief can navigate the remaining uncertainty honestly.

## References Index

Path: `references.md` beside the smallest durable owner.

```yaml
---
kind: references
parent: <owner-id>
---
```

```markdown
# <Owner> References

## References

### <descriptive name>

**Source:** <URL, path, attachment, or retained file>
**Version:** <commit, release, date, or snapshot when relevant>

**Why It Matters.** <judgment improved>

**What to Inspect.** <relevant behavior or material>

**Adopt, Avoid, or Compare.** <intended use>

**Informs.** <owning record links>

**Evidence and Human Reaction.** <optional>

**Limitations and Uncertainty.** <optional>
```

This is an interpreted index, not a bookmark list or research chronology.
Retain source bytes only when their exact unstable form matters. Human reaction
remains bound to the exact source version judged.
