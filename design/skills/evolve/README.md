# Evolve

> **Design document — not a runtime skill.** The accepted behavioral contract
> and target package design remain here; runtime assembly status is tracked in
> [Praxis Status](../../STATUS.md).

## What it does

Evolve helps the human and agent structure one substantial Project as a
deliberately progressive sequence of coherent advances. It creates and gates
an Evolution Map, waits for the human to select one Evolution, then
collaboratively develops and gates that Evolution's complete high-level
specification.

Its leading idea is **design the progression for this Project**. Praxis does
not infer Evolutions from product features, architectural layers, milestones,
or task size. The human and agent discover useful boundaries together from the
Requirements, current system, complexity, uncertainty, dependencies, and
preferred solution.

## When to reach for it

Formalize may recommend Evolve when at least two coherent Project advances make
sequential specification and learning useful. The human chooses that route in
ordinary language before Evolve begins.

Do not use Evolve merely because work is large, durable, risky, or likely to
need several Issues or Plans. If mapping reveals only one coherent advancement,
return the evidence to Formalize and recommend direct Issues. Never manufacture
Evolutions to preserve the chosen route.

## There is no universal Evolution shape

An Evolution is a small but substantial coherent advancement inside its
Project. It may establish, extend, deepen, refine, replace, or remove behavior.
Depending on the work, an Evolution may look like:

- one feature inside a whole-application Project;
- a progressively stronger form of one systems capability;
- an operational or compatibility state in a migration;
- a quality, performance, or reliability improvement; or
- another integrated advancement that makes sense in that Project.

None of those categories automatically qualifies. An Evolution is meaningful
when it produces a working form that is real and integrated enough to exercise,
review, prove, and learn from in the context of the Project. Its meaning comes
from how it advances the Project Requirements rather than an external
lifecycle or audience category, and it need not complete the Project.

Issues describe the detailed behavior required to create an Evolution.
Implementation Plans describe how approved Issue work will be implemented.
Serious engineering effort, subsystem boundaries, and Plan count do not decide
which layer the work belongs to.

## Develop the Map collaboratively

Begin with the accepted Project Requirements, current source and system model,
relevant References and evidence, and the human's preferred way of approaching
the work. Propose the smallest useful sequence with at least two Evolutions.
When several decompositions are serious, compare them and recommend one with
its consequences.

Evolve may invoke [Research](../research/README.md),
[Interview](../interview/README.md), [Orient](../orient/README.md),
[Make Tangible](../make-tangible/README.md),
or [Design Solution](../design-solution/README.md) for one bounded mapping
question. Each returns evidence or reaction; Evolve interprets the return and
retains ownership of the progressive strategy.

Orient is used only after the human accepts a bounded suggestion to understand
settled Project, system, or Map context. Evolve still owns every question about
which progression or high-level working form should become accepted; it never
uses orientation checks to select or specify an Evolution.

If every candidate sequence feels artificial because the Project combines,
omits, or misstates substantial outcomes, return the concrete conflict to
Requirements Discovery. The Project boundary is also a collaborative judgment;
Evolve must not hide a mistaken boundary inside a convenient Map.

## Define only enough future

The durable Map follows the exact contract in
[Records: Formalization — Evolution
Map](../../references/records/formalization.md#evolution-map). It contains
Governing Context, Progressive Strategy, Evolution Sequence, and Current Recommendation, plus
Cross-Evolution Dependencies and Uncertainty only when meaningful. Governing
Context links the Project Brief and relevant Requirements without copying
them.

Each Map entry states:

```text
Evolution Map entry {
  stable_id,
  sequence_position,
  tangible_advancement,
  deliberate_limitations,
  why_this_position_is_useful,
  learning_target?
}
```

At Map time, describe each future Evolution only deeply enough to judge that it
is a coherent advancement and that the sequence makes sense. Explain how the
Map collectively advances the Project Requirements and make consequential
omissions, known pressure, or uncertainty visible. Do not create an exhaustive
Requirement-by-Evolution ledger or pre-specify detailed behavior, interfaces,
proof, exclusions, future Issues, or Plans.

A learning target names a consequential uncertainty that the Evolution's
working form can genuinely expose and the later Map judgment that evidence may
change. Omit it when no later decision depends on that learning. Learning value
never compensates for a missing tangible outcome: building an internal data
layer only to test its schema is a probe, not an Evolution, unless it also
creates a coherent integrated advancement in this Project.

Use the lowest-fidelity visual surface that makes the progression easy to
judge. A short Mermaid diagram or structured document may be sufficient. A
complex Project may justify invoking
[Make Tangible](../make-tangible/README.md) for a richer comparison. The
inspectable Map remains the governing record presented through
[Plannotator](../plannotator/README.md).

Persist the Map at `evolutions/map.md`. Keep future Evolutions there as concise
entries. The stable descriptive Evolution ID is separate from its `E1`, `E2`,
or later sequence position. Reordering may change the position and filename,
but never the accepted ID. Create `evolutions/eN-<name>.md` only after the human
selects that Evolution and begins collaborative high-level specification. A
Project going directly to Issues creates no Evolution files.

## Map Approval stops

Discuss and refine the Map until the human can judge the progression. Map
Approval provisionally accepts that exact strategy. It selects no Evolution,
starts no further specification, grants no planning or mutation authority, and
grants no external authority.

After approval, explain what was accepted, recommend one Evolution to consider,
and stop. The human selects exactly one Evolution in ordinary language.

## Specify the selected Evolution

Selection begins collaborative high-level specification of that Evolution
only. Follow the exact [Evolution record contract](../../references/records/formalization.md#evolution)
and define:

- its Governing Context and Accepted Truth;
- its Tangible Advancement;
- Included High-Level Behavior;
- Integration with Existing Project Work;
- honest Deliberate Limitations;
- a Learning Target only when it can change a later judgment; and
- Required Proof for the integrated working form.

When later accepted Evolutions already create concrete pressure on the current
working form, state that pressure as accepted truth, a deliberate limitation,
or a learning target. Do not prescribe a speculative implementation for the
later Evolution; current Formalization only needs enough truth to judge the
selected working form honestly.

Stay above detailed flows, interfaces, edge cases, and failure cases that belong
to Issues. Stay above files, commands, execution order, checks, and mutation
authority that belong to Implementation Plans.

A deliberate limitation may defer behavior only when the remaining working
form is still coherent under the Project Requirements. Anything necessary for
the promised advancement remains included and is detailed through at least one
Issue.

Evolution Definition Approval accepts the complete high-level specification and
stops. The agent explains it, recommends Issue definition, and waits for the
human's separate choice. Evolve never defines Issues or begins Delivery by
momentum.

## Let learning reshape later work

Future Map entries remain concise because learning from the selected Evolution
may change them. Re-gate the Map when learning materially changes the number,
order, boundary, meaning, or progression of future Evolutions. Clarifications
and supporting evidence may update locally when they preserve the accepted
strategy. Invoke [Plannotator](../plannotator/README.md)'s Record Gate on the
revised Map and foreground the semantic diff so the human can see what changed
and why.

First classify the learning by its causal owner. Changed human needs or
constraints return to Requirements Discovery. A changed solution commitment or
completed Evolution specification returns to that owner. Only evidence that
changes future progression revises the Map.

Keep proof of the tangible outcome separate from evidence for the learning
target. An Evolution may deliver its working form while an intended learning
question remains unresolved. That unresolved question cannot justify a future
Map change; carry it visibly, reframe it, or test it through another bounded
probe.

After an Evolution is delivered and accepted, incorporate relevant learning,
keep that accepted Evolution in the Map as part of the Project's actual
progression, and link its separate record without copying its specification or
acceptance evidence. Explain the current Map, recommend the next Evolution when
appropriate, and stop for human selection. Acceptance never selects or starts
adjacent work.

At Evolution Acceptance, add only the actual integrated working form, decisive
evidence pointers, remaining limitations, and links to learning promoted into
its causal records. Preserve no implementation chronology. Revise and re-gate
the same Evolution while its tangible advancement remains intact; when it
splits, merges, or changes identity, supersede the old record, create new stable
IDs, revise the Map, and repeat only affected gates.

If new evidence leaves no multiple meaningful Evolutions, return the route
change to Formalize. Promote the reason into the Project Brief and lasting
learning into its causal record, then delete the Map once nothing references
it. Do not preserve a retired Map lifecycle or archive.

## It is working when

- The human chose Evolve after an explained recommendation.
- Project and Evolution boundaries were discussed rather than mechanically
  inferred.
- The Map contains at least two coherent Project advances.
- Stable Evolution identity remains distinct from current sequence position.
- No feature, technical-layer, or external-lifecycle assumption substitutes
  for contextual judgment.
- Future Evolutions remain concise while the selected one becomes a complete
  high-level specification.
- Every learning target can inform a named later judgment, and learning-only
  work is not mislabeled as an Evolution.
- The visual surface makes the progression easy to judge without unnecessary
  artifact complexity.
- Project-boundary mistakes return to Requirements Discovery.
- Delivered learning returns to its causal owner before the Map changes.
- Working-form proof and learning evidence remain separate.
- Material learning revises and re-gates only the affected progression.
- Approval alone stops before the next human-selected activity. The human may
  explicitly approve and choose that collaborative activity in one message;
  the choice, not the approval, starts it.

## Skill structure

The trigger, collaborative mapping procedure, category-neutral Evolution test,
Project-boundary return, Map contents, visual judgment, selected-Evolution
specification, revision behavior, gates, and stopping belong in `SKILL.md`.
Evolve invokes [Research](../research/README.md),
[Interview](../interview/README.md), [Orient](../orient/README.md),
[Make Tangible](../make-tangible/README.md),
[Design Solution](../design-solution/README.md), and
[Plannotator](../plannotator/README.md) when their bounded procedures or
interactions are needed. It uses the Core and Formalization record schemas.
Make Tangible owns artifact fidelity and comparison evaluation. Learning that
changes another owner returns through Formalize rather than making Evolve the
cross-system router.
It needs no local taxonomy of feature types or release stages.

## Examples

For a bookkeeping application treated as one Project, the human and agent may
choose accounts and transactions, invoicing and payments, reporting and tax
behavior, and recurring automation as Evolutions. They are feature-shaped
because that progression fits the Project; every Evolution may still be needed
to satisfy the complete Project Requirements.

For a frame-accurate video renderer, they may choose a working single-track
renderer, compositing and effects, and parallel resumable rendering. Those
Evolutions progressively construct and refine one system capability.

For a storage-format migration, compatibility, new-format writes, data
migration, and legacy removal may be Evolutions in a risky repository, while
the same work may be one Issue and Plan elsewhere. The actual Requirements and
territory decide which structure is useful.

## Direct dependencies

### Skills

- [Research](../research/README.md) — resolve a bounded sequencing premise;
  return evidence and limits; Evolve retains the strategy.
- [Interview](../interview/README.md) — resolve one human-owned working-form
  judgment; return the scoped choice; Evolve retains synthesis.
- [Orient](../orient/README.md) — teach one settled Project, system, or Map
  model after the human accepts the suggestion; return comprehension and
  uncertainty; Evolve retains progression and specification judgment.
- [Make Tangible](../make-tangible/README.md) — construct and verify a sequence,
  comparison, or outcome model; return reaction and fidelity limits; Evolve
  retains Evolution meaning.
- [Design Solution](../design-solution/README.md) — resolve consequential
  architecture, ownership, interface, or invariant choices; return a solution
  shape; Evolve retains the high-level specification.
- [Plannotator](../plannotator/README.md) — present Map, Evolution Definition,
  or applicable Evolution Acceptance gates; return exact annotations and
  decision; Evolve retains gate consequence and stopping.

### Shared references

- [Records: Core](../../references/records/core.md) and
  [Formalization](../../references/records/formalization.md) — create, revise,
  place, and validate the Evolution Map and Evolution definitions.

## Target runtime package


### Invocation and host projection

Evolve is model-invoked only after the human selects progressive Evolution
design following a recommendation from Formalize.

```yaml
---
name: evolve
description: "Evolve a Project through a human-selected sequence of working forms. Use after the human explicitly chooses Evolve."
---
```

```yaml
interface:
  display_name: "Evolve"
  short_description: "Design meaningful progressive working forms"
  default_prompt: "Use $evolve to define this Project's Evolution Map and current Evolution."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps entry, shape freedom, collaborative Map design, minimum future
detail, Map Approval, human selection, Evolution definition, learning-driven
revision, gates, recommendation, and stopping inline. A Map completes when it
offers at least two coherent advances without pretending later specifications
are settled; an Evolution completes when its working form is judgeable.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Record lifecycle | `../../references/records/foundations.md` | Creating, moving, materially revising, superseding, or closing Map or Evolution records. | Work remains conversational. | Cross-skill | [Records Core](../../references/records/core.md) | Evolve | None. |
| Map and Evolution bodies | `../../references/records/formalization.md` | Authoring or validating the Map or selected Evolution. | Only discussing route suitability. | Cross-skill | [Formalization Records](../../references/records/formalization.md) | Evolve | None. |

The existing calls and returns are accepted. Effects are limited to the
human-selected records and their declared gates; Map Approval selects no
Evolution and Evolution Approval starts no Issue work. No local reference,
script, asset, fixture, template, or required integration is earned. Target
files are exactly `SKILL.md`, `SPEC.md`, and `agents/openai.yaml`.

`SPEC.md` adds cases for only one useful advance, shape chosen by value rather
than release taxonomy, incomplete future detail, Map reaction, Map Approval,
no automatic selection, selected Evolution definition, deliberate limitation,
learning target, later Map revision, unaffected accepted Evolution, and each
gate stopping. No package decision remains unresolved.
