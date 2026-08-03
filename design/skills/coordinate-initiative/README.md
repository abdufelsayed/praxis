# Coordinate Initiative

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

## What it does

Coordinate Initiative preserves one coherent strategic objective across
multiple independently governed Projects. It helps the human judge their shared
direction, success conditions, constraints, relationships, ordering rationale,
uncertainty, and material learning without turning the Initiative into a
delivery queue.

Its leading idea is **coordinate shared meaning while Projects govern
themselves**. The Initiative may structurally contain Projects, but each
Project owns its Requirements, Formalization, Delivery, gates, acceptance, and
stopping.

## When to reach for it

The agent may recommend Coordinate Initiative when at least two credible
Project candidates:

- advance one strategic objective;
- share consequential constraints or system truth;
- depend on one another in a way the human must understand; or
- produce learning that may reshape the others.

The candidates need not have complete Requirements yet. The human chooses this
path conversationally before the Initiative is created or materially revised.
Do not create one merely because a Project is large, long-running, durable, or
uses Evolutions.

## Develop the strategic boundary collaboratively

Begin from the human's objective and current understanding. Propose a coherent
Initiative boundary and make these meanings judgeable:

```text
Initiative
- strategic objective
- success conditions
- shared constraints and accepted truth
- Project candidates
- Project relationships
- priority or ordering rationale
- visible strategic uncertainty
- material cross-Project learning
- current recommendation
```

When a durable Initiative Brief exists, use the exact record contract in
[Records](../../references/records/discovery.md): Strategic Objective, Success Conditions,
Projects and Their Relationships, and Current Recommendation are required.
Shared Constraints and Truth, Priority or Ordering Rationale, Visible Strategic
Uncertainty, and Material Cross-Project Learning appear only when they contain
real information. Project boundaries remain collaborative and provisional
until each Project works through its own Requirements. The Initiative must not
prewrite those Requirements or flatten their distinct outcomes into one large
specification.

## Close only shared uncertainty

Coordinate Initiative may use:

- [Interview](../interview/README.md) for consequential human judgment;
- [Research](../research/README.md) for a shared factual constraint;
- [Orient](../orient/README.md), after the human accepts a bounded suggestion,
  for settled strategic or system context needed to understand the actual
  Initiative judgment;
- [Make Tangible](../make-tangible/README.md) for a relationship, comparison, strategy, or uncertainty that
  is hard to judge in prose; and
- [Design Solution](../design-solution/README.md) when several Projects depend on one consequential shared
  system shape.

Use these capabilities only when the answer affects several Projects or their
relationship. Promote genuinely shared conclusions into the Initiative, then
translate their consequence into each affected Project's Requirements. Return
Project-specific findings to that Project's Requirements Discovery,
Formalization, or Delivery owner.

## Preserve order without starting work

The Initiative may express dependencies, priority, and recommended order. For
example, a shared local-data model may need to be understood before two
separate synchronization Projects can make honest decisions.

That ordering is strategic truth, not execution authority. Finishing,
accepting, pausing, or changing one Project never selects, starts, formalizes,
plans, or implements another. Explain the next recommendation and stop for the
human's separate choice.

## Return learning to its exact owner

Promote Project learning into the Initiative only when it changes the strategic
objective, success conditions, shared truth, Project boundaries, relationships,
dependencies, or ordering rationale. When that happens:

1. state the evidence and where it came from;
2. show the semantic before-and-after difference;
3. identify the affected Projects and why they may be affected;
4. distinguish still-valid truth from what must be reconsidered; and
5. recommend the exact owner each Project should reopen.

Coordinate Initiative revises only shared truth. It does not edit a Project's
Requirements, Evolution Map, Evolutions, Issues, or Plans on that Project's
behalf.

Routine evidence and non-consequential clarification may update locally.
Changed strategic objective, success conditions, shared constraints, or
Project relationships repeat Initiative Alignment. A Project repeats its own
gates only when the revised relationship actually changes its accepted
meaning.

Visible Strategic Uncertainty follows the same boundary. Uncertainty about
whether two Projects belong together or depend on one shared contract belongs
in the Initiative; an implementation unknown owned by one Project does not.

## Keep the workspace organized around ownership

Store an Initiative at:

```text
.agents/initiatives/<initiative>/
├── brief.md
├── references.md
├── references/
├── artifacts/
└── projects/
    ├── <project-a>/
    └── <project-b>/
```

Create only files and directories with real content. Retain interpreted
References or concrete artifacts only when their exact shared value has a named
future consumer. The Initiative Brief is one concise living entry point; it
links its Projects and preserves shared strategic truth without copying their
Requirements, specifications, status, Plans, or evidence.

Standalone Projects remain under `/.agents/projects/`. When the human accepts
that a Project joins or leaves an Initiative, revise and re-align the
Initiative relationship, then move the complete Project bundle and update
affected links. Its stable ID preserves identity. Filesystem reorganization
alone changes no Project meaning, gate, or authority.

A Project has at most one Initiative parent. Another Initiative may reference
it but does not jointly own it.

## Split incoherent Initiatives

An Initiative should continue only while its Projects need one shared strategic
judgment. If they no longer share consequential direction, constraints,
relationships, or learning, make the competing groupings understandable and
recommend splitting, superseding, or closing the Initiative.

Wait for the human's choice before restructuring. Do not retain a miscellaneous
portfolio merely because the Projects were historically discussed together.

## Pass Initiative Alignment and stop

Invoke [Plannotator](../plannotator/README.md) and present the complete current
Initiative through its Record Gate.
Initiative Alignment provisionally accepts its strategic objective, success
conditions, shared truth, Projects, relationships, ordering rationale, and
visible uncertainty.

Approval grants no Project work or delivery authority. Explain what was
accepted, recommend the next useful human choice, and stop. For a material
revision, foreground the semantic diff from the last reliably identified
accepted version and repeat Alignment.

## Close by objective

Initiative Closure judges whether the strategic objective is satisfied,
rejected, or superseded. Project completion is evidence, but the original
Project list is neither a completion checklist nor a permanent commitment.
Some Projects may become unnecessary; new Projects may become visible.

Closure grants no adjacent work. Invoke
[Plannotator](../plannotator/README.md) for a distinct Initiative Closure gate
when a durable stable judgment is useful and no complete Result Gate already
carries that exact closure claim. Explain the result and retained learning,
and stop. Keep the closed Brief as strategic
context, mark its
disposition `closed`, and preserve its final relationships without copying
Project records or activity history. A superseded Initiative links its
replacement.

## It is working when

- One strategic objective genuinely spans multiple independent Projects.
- The human chose Initiative coordination after an agent recommendation.
- Shared truth is clear without duplicating Project-local truth.
- Dependencies and priorities guide judgment without starting work.
- Cross-Project learning returns to each exact affected owner.
- Only materially changed meaning repeats gates.
- The folder tree follows accepted ownership and remains understandable.
- Splits and closure follow strategic coherence rather than administration.
- Initiative Alignment and Closure grant no delivery authority.
- The agent explains the current state, recommends the next choice, and stops.

## Skill structure

The trigger, collaborative strategic model, shared-capability composition,
ordering boundary, learning return, proportional re-alignment, ownership-based
organization, splitting, closure, and stopping belong in `SKILL.md`.
Coordinate Initiative invokes [Plannotator](../plannotator/README.md) for its
gates and may invoke [Interview](../interview/README.md),
[Research](../research/README.md), [Orient](../orient/README.md),
[Make Tangible](../make-tangible/README.md),
or [Design Solution](../design-solution/README.md) for the bounded questions
each owns. It uses [Learning and Return](../../references/learning-and-return.md)
and the Core and Requirements Discovery record schemas. It invokes Make
Tangible rather than managing artifact fidelity or lifetime itself. It needs no
local reference, template, or script initially.

## Direct dependencies

### Skills

- [Interview](../interview/README.md) — resolve one human-owned strategic
  judgment; return the scoped answer and qualifications; Coordinate Initiative
  retains strategic synthesis.
- [Research](../research/README.md) — resolve one bounded strategic fact;
  return evidence and limitations; Coordinate Initiative retains meaning.
- [Orient](../orient/README.md) — teach one settled strategic or system model
  after the human accepts the suggestion; return comprehension and uncertainty;
  Coordinate Initiative retains strategic judgment.
- [Make Tangible](../make-tangible/README.md) — construct and verify a
  relationship, comparison, or strategy surface; return the artifact,
  reaction, and fidelity limits; Coordinate Initiative retains the question.
- [Design Solution](../design-solution/README.md) — compare consequential
  cross-Project structures; return a reasoned solution shape; Coordinate
  Initiative retains Initiative ownership.
- [Plannotator](../plannotator/README.md) — present Initiative Alignment or
  Closure; return the exact decision and annotations; Coordinate Initiative
  retains gate consequence and transition.

### Shared references

- [Learning and Return](../../references/learning-and-return.md) — route
  cross-Project learning to each exact affected owner.
- [Records: Core](../../references/records/core.md) and
  [Requirements Discovery](../../references/records/discovery.md) — create,
  revise, and place the Initiative and Project navigation records it owns.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

Coordinate Initiative is model-invoked so the agent can load it after the
human accepts a recommendation to coordinate at least two credible Projects.

```yaml
---
name: coordinate-initiative
description: "Coordinate one human-selected Initiative across Projects. Use after the human accepts a cross-Project alignment need."
---
```

```yaml
interface:
  display_name: "Coordinate Initiative"
  short_description: "Align shared meaning across Projects"
  default_prompt: "Use $coordinate-initiative to align this objective across these Projects."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps strategic boundary development, shared uncertainty,
relationship and ordering judgment, causal return, ownership-based placement,
splitting, alignment, closure, recommendation, and stopping inline. Alignment
is complete only when shared meaning is judgeable and every Project-local
question remains with its owner.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Cross-Project learning | `../../references/learning-return.md` | New evidence may change more than one Project or the Initiative basis. | A local clarification changes no accepted owner. | Cross-skill | [Learning and Return](../../references/learning-and-return.md) | Coordinate Initiative | None. |
| Record lifecycle | `../../references/records/foundations.md` | Creating, moving, materially revising, or closing an Initiative or Project bundle. | No durable record is justified. | Cross-skill | [Records Core](../../references/records/core.md) | Coordinate Initiative | None. |
| Initiative and Project bodies | `../../references/records/discovery.md` | Authoring or validating Initiative Brief and Project navigation records. | Existing records are only being read. | Cross-skill | [Requirements Discovery Records](../../references/records/discovery.md) | Coordinate Initiative | None. |

The existing calls and returns are accepted. Authorized effects are only the
human-selected Initiative records and their links; alignment grants no Project
or delivery authority. No local reference, script, asset, fixture, template,
or required integration is earned. Target files are exactly `SKILL.md`,
`SPEC.md`, and `agents/openai.yaml`.

`SPEC.md` adds cases for one Project only, shared objective with independent
Projects, human decline, shared versus local truth, dependency without work
start, conflicting priorities, cross-Project learning, partial re-alignment,
Initiative split, closure by objective, and Plannotator dismissal. No package
decision remains unresolved.
