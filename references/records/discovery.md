# Discovery Records

These bodies preserve Initiative and Project navigation, problem-space
Requirements, substantial uncertainty, and interpreted external inputs.

## Initiative Brief

**Path:** `initiatives/<initiative>/brief.md`

```yaml
---
kind: initiative
id: initiative-<name>
revision: 1
meaning:
  state: pending_gate
gates:
  initiative_alignment:
    state: pending | approved
    content_revision: 1
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

Under Projects and Their Relationships, use one descriptive H3 for each
Project, linking its Project Brief and stating only its contribution and
meaningful relationships. An Initiative contains no Issues, Plans, local
specifications, delivery state, or implementation authority.

## Project Brief

**Path:** `projects/<project>/brief.md`, either standalone or below an
Initiative.

```yaml
---
kind: project
id: project-<name>
parent: initiative-<name> # omit when standalone
revision: 1
meaning:
  state: pending_gate
gates:
  requirements_alignment:
    state: pending | approved
    target_revisions:
      - id: project-<name>
        revision: 1
      - id: requirements-project-<name>
        revision: 1
    consequence: accepted basis for Formalization discussion
    accepted_reference: unavailable
disposition: open
---
```

```markdown
# <Project title>

## Outcome
## Starting Point <!-- optional -->
## Current System and Domain Model <!-- optional -->
## Boundary and Exclusions
## Governing Principles <!-- optional -->
## Current Position
## Current Pressure <!-- optional -->
## Next Judgment
## Links
```

The Brief is a compact navigation root. It links detailed records without
copying them. Current Position names the owning loop and question, selected
route, and latest accepted working baseline when material. Next Judgment names
one consequential choice. Links point to Requirements, Unknowns, References,
Research Findings, artifacts, and formalization records. The Brief is not an
execution dashboard or history.

## Requirements

**Path:** `<project>/requirements.md`

```yaml
---
kind: requirements
id: requirements-project-<name>
parent: project-<name>
revision: 1
meaning:
  state: pending_gate
---
```

```markdown
# <Project> Requirements

## Requirements

### R1 — <title>

**Requirement.** <one obligation stated with shall>
**Rationale.** <domain, product, or system consequence>
**Verification.** <observable evidence capable of disproving satisfaction>
**Basis.** <accepted product judgment, external constraint, or accepted evidence consequence>
**Provenance.** <exact source, finding, scenario, or accepted judgment>
**Supporting Finding or Evidence.** <optional>
**Remaining Uncertainty.** <optional>
```

Requirements preserve problem-space needs, constraints, accepted choices,
consequential findings, known volatility, and future pressure. They have no
progress or satisfaction status. Assign Project-local IDs to the complete
candidate before Requirements Alignment; IDs become stable after approval. A
clarification keeps its ID only when the obligation remains the same.
Splitting, merging, or replacing a Requirement uses new IDs and only the
minimal supersession pointers current consumers need.

Each Requirement states one independently understandable obligation. Split
requirements that can be accepted, revised, falsified, or formalized
independently. A shared rationale may be referenced rather than copied into
several obligations. Research supplies provenance and constraints but becomes
a Requirement only after the product meaning and consequence are accepted.
State required behavior, experience, boundary, or constraint rather than an
incidental implementation choice. A named package, language feature, or
technical mechanism belongs here only when it is integral to the accepted
experience, interoperability, feasibility, or safety constraint.

Requirements own problem-space meaning. Evolutions and Issues formalize
behavior; Implementation Plans describe how a bounded result will be produced.
Keep those solution and execution details with their own records.

## Unknowns

**Path:** `<project>/unknowns.md`.

```yaml
---
kind: unknowns
parent: project-<name>
revision: 1
---
```

```markdown
# <Project> Unknowns

## Current Unknowns

### U1 — <title>

**Question.** <one consequential question>
**Consequence.** <what can change>
**Known.** <current evidence or accepted context>
**Missing.** <required evidence or judgment>
**Disposition.** blocking | safe to carry | irrelevant
**Resolution Condition.** <observable condition>
```

This file represents the Project's current unresolved conditions. Unknowns may
appear, disappear, merge, or split. Move an
accepted consequence into its causal owner, then remove the resolved Unknown.
Keep the file as the Project's explicit current frontier.

Inside an active durable discovery inquiry, the Map may update automatically
when material uncertainty changes and the inquiry's persistence policy permits
it. This working navigation is not acceptance, route selection, or authority.

## References Index

**Path:** `references.md` beside the smallest durable owner.

```yaml
---
kind: references
parent: <owner-id>
revision: 1
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
**Evidence and Decision.** <optional>
**Limitations and Uncertainty.** <optional>
```

This is an interpreted index, not a bookmark list or research chronology.
Retain source bytes only when their exact unstable form matters. The decision
remains bound to the exact source version and evidence state.

The index may update automatically when a bounded inquiry permits reference
persistence. Adding or revising an interpretation does not promote its product
implication or pass a governing gate.
