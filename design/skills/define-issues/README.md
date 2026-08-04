# Define Issues

> **Design document — not a runtime skill.** The accepted behavioral contract
> and target package design remain here; runtime assembly status is tracked in
> [Praxis Status](../../STATUS.md).

## What it does

Define Issues turns one accepted high-level outcome into the complete set of
detailed specifications that Delivery will later implement. Its input is a
human-selected Evolution, a Project proceeding directly to Issues, or an
explicit standalone outcome that needs specification without a Project.

Its leading idea is **divide specification meaning, not implementation work**.
An Issue says what must become true and how that truth will be judged. Plans
later decide how approved Issue work should be implemented under bounded
authority.

## When to reach for it

Begin only after the human chooses Issue definition for:

- a selected Evolution whose high-level specification passed Evolution
  Definition Approval; or
- one coherent Project Outcome that does not need Evolve; or
- one explicit standalone outcome whose detailed meaning needs judgment but
  whose continuity does not justify a Project.

The agent may recommend this next step, but approval of Requirements, a Map, or
an Evolution never invokes it automatically.

## Design the set collaboratively

Start from the governing Requirements when present and the selected Evolution,
direct Project Outcome, or standalone outcome. Read accepted solution context,
current source, relevant References, and retained artifacts when they constrain
the detailed behavior.

Propose Issue boundaries, explain why each required outcome belongs together,
and discuss meaningful alternative groupings with the human. Keep one Issue
when its behavior, exclusions, dependencies, and proof can be understood and
judged together. Split sibling Issues when required outcomes can be specified,
revised, or proved independently.

Do not split by frontend and backend, repository directories, components,
technical layers, implementation steps, or expected Plan count unless those
boundaries also divide independently judgeable specification meaning.

## Specify the required truth

Write every Issue as a reader-ready engineering document:

```markdown
# <Issue title>

<Concise observable outcome>

## Context
## Requirements
## Out of Scope       <!-- when meaningful -->
## Dependencies       <!-- when meaningful -->
## Acceptance Criteria
## Result             <!-- after accepted Delivery affects the Issue -->
```

Reader-ready means a competent future engineer can understand and judge the
Issue without participating in its originating conversation or learning Praxis
workflow vocabulary. This is an offline authorship standard, not publication
or remote synchronization. The body may link local governing records,
References, source, and concrete artifacts normally.

The opening paragraph states the observable outcome. Context links the owning
Evolution, direct Project Outcome, or standalone outcome and explains the local
consequence of governing Requirements, accepted design context, current source,
References, or artifacts. Preserve enough explanation for independent judgment
without copying whole upstream records.

Requirements expands the outcome into the complete governing behavior. Add
descriptive subsections for relevant interfaces, states and transitions, edge
and failure cases, compatibility, or another domain concern only when they make
the Issue clearer. Out of Scope appears when adjacent behavior could reasonably
be mistaken as included, and Dependencies appears only for consequential
semantic dependencies. Omit empty sections rather than writing placeholders.

Keep file edits, commands, code structure, execution order, tests to run, and
mutation authority in the later Implementation Plan.

An Issue is detailed enough when its required behavior and proof can be judged
honestly. It may leave implementation mechanics unresolved for Delivery. It
may not hide uncertainty about product meaning, observable behavior,
interfaces, failures, or compatibility inside a future Plan.

Acceptance Criteria include inherited accepted behavior materially exposed by
the Issue when it changes a shared invariant, interface, responsibility, or
known pressure point. This does not require every Issue to rerun the whole
Project's checks; Formalization names the affected behavior and Delivery
chooses the concrete evidence.

Acceptance Criteria state the observable claim and boundary that evidence must
establish. They do not prescribe a test file, framework, command,
implementation seam, or task checkbox unless that method is itself part of the
accepted contract. “Revoked sessions fail through the public API with the
specified semantics” is specification; “add a unit test for the revocation
helper” is normally Plan detail.

Concrete examples make rules and edge cases judgeable, but they are
illustrative unless the Issue explicitly declares them exhaustive. Required
proof covers the accepted behavioral boundary rather than training the
implementation to replay only the listed fixtures.

## Close gaps without stealing ownership

Define Issues may use:

- [Research](../research/README.md) to establish a factual constraint;
- [Interview](../interview/README.md) to expose human judgment or an unstated
  behavioral expectation;
- [Orient](../orient/README.md), after the human accepts a bounded suggestion,
  to explain settled system or specification context needed for detailed
  judgment;
- [Make Tangible](../make-tangible/README.md) to make a flow, state model,
  interface, or comparison easier to judge; and
- [Design Solution](../design-solution/README.md) to distinguish consequential
  solution shapes.

These capabilities answer bounded questions for the current specification. If
their learning changes a Requirement, Project boundary, Evolution Map, or
selected Evolution, return to that exact owner, revise and re-gate its meaning,
then propagate the correction into affected Issues. Do not patch the nearest
Issue when the false premise originated higher in the tree.

Orient never owns the Issue question. A response that could change required
behavior, boundaries, exclusions, dependencies, or proof belongs to Define
Issues rather than an understanding check.

## Check the complete outcome

The Issue set must collectively specify the selected Evolution, direct Project
Outcome, or standalone outcome. Check that every material behavior, constraint,
exclusion, dependency, and required proof is covered or visibly returned to
its owner.

Explain consequential coverage and gaps, but do not create a requirement
traceability ledger when the relationship is already clear. Record dependency
or order only when one required behavior semantically depends on another
result. Delivery, not Formalization, chooses the sequential implementation
boundaries.

There is no preferred Issue count. One coherent outcome may need one Issue; a
larger outcome may need several. Every Issue-governed implementation has at
least one Issue, but neither Issue count nor Plan count decides whether Evolve
was appropriate.

## Persist one stable file per Issue

Store Issues beside their current human-meaningful owner:

```text
.agents/
├── projects/<project>/issues/
│   ├── i1-registration-and-login.md
│   └── i2-email-verification.md
└── issues/
    └── i-password-recovery.md
```

The first location is Project-owned; the second is standalone. Filenames and
IDs are lowercase, stable, and unique across the `/.agents/` workspace. Each
Issue names its owning Evolution, direct Project Outcome, or standalone
outcome. Refining or moving an Issue without changing its identity keeps the
ID. Splitting, merging, or replacing it creates new IDs and records only enough
supersession context to interpret the current set.

When collaborative understanding later gives a standalone Issue a Project
owner, move it under that Project and update affected links. The accepted
ownership change may alter governing meaning and require its normal gate;
moving the file itself grants nothing.

The Issue file remains a current specification rather than an execution
ledger. After Result Acceptance affects the Issue, Delivery maintains one
concise Result summary containing proved coverage, decisive evidence pointers,
and remaining unmet criteria or limitations. Later accepted work updates that
summary rather than appending Plan history. Implementation notes, command
output, Plans, and verification history stay outside the Issue.

Each Issue uses the stable envelope defined by the
[Issue record contract](../../references/records/formalization.md#issue). An Issue owned by an
Evolution or direct Project names that nearest governing owner as its parent; a
standalone Issue omits the parent and carries enough Context to stand alone.
Every Issue judged in a bounded approval batch carries the resulting Issue
Approval projection, but those shared interactions create no Issue Set record.

## Issue Approval stops

Discuss and refine the Issues until the human can judge the complete outcome.
When several already-grounded observable behaviors or acceptance criteria are
easier to edit together, invoke [Plannotator](../plannotator/README.md)'s
optional facts surface as Reaction Review. Apply the returned feedback to the
owning Issue files. It
creates no `Fact` or Issue Set record and does not accept any Issue.

Present the complete current set through one or more bounded coherent
[Plannotator](../plannotator/README.md) Record Gates. Each batch names the exact
Issue IDs and presents
their complete files. Use several batches when one interaction would be too
large for honest judgment, keep cross-batch dependencies visible, and do not
create a duplicate collection document merely to obtain approval.

Issue Approval provisionally accepts only the detailed specifications named in
that batch. It grants no planning, mutation, or external authority. After every
Issue required by the current outcome is accepted, explain what was accepted,
recommend Delivery planning and the likely reason for its first boundary, then
stop for the human's separate choice.

When material learning changes an Issue, revise the exact affected files,
foreground the semantic difference and its consequences through
[Plannotator](../plannotator/README.md), and repeat Issue Approval for every
affected batch before dependent planning continues. Unaffected Issues retain
their accepted meaning. Supporting
evidence and clarification may update locally when they preserve the accepted
specification.

Interpret feedback across the complete current set. A local clarification may
change one file, while a shared interface, invariant, state, or semantic
dependency change must update every affected Issue and foreground the
cross-Issue semantic diff.

## Relationship to Plans

Issues and Implementation Plans are not one-to-one. One Issue may require
several sequential Plans when useful authority, risk, review, or verification
boundaries divide its implementation. One coherent Plan may cover several
Issues or portions when separating the mutations would be artificial.

Every Issue-governed Plan names its exact Issue coverage. This keeps the
specification stable while Delivery chooses implementation boundaries from
current source and risk.

## It is working when

- The human chose Issue definition after an agent recommendation.
- Boundaries were proposed and discussed rather than mechanically inferred.
- Every Issue is reader-ready, independently understandable, and judgeable.
- The complete set covers its owning Evolution, Project Outcome, or standalone
  outcome.
- Specification uncertainty is closed or returned to its exact owner.
- Implementation mechanics remain available for Delivery planning.
- Acceptance Criteria name governing claims and boundaries rather than test
  mechanics or task checklists.
- Illustrative examples do not become accidental exhaustive specifications.
- Shared semantic changes revise every affected Issue.
- Stable lowercase Issue files remain specifications rather than task logs.
- Issue Approval judges the complete set through bounded coherent batches and
  grants no forward authority.
- The agent explains the result, recommends Delivery planning, and stops.

## Skill structure

The trigger, collaborative decomposition, Issue contents, ownership returns,
coverage check, persistence, revision behavior, Issue Approval, and stopping
belong in `SKILL.md`. Define Issues invokes
[Research](../research/README.md), [Interview](../interview/README.md),
[Orient](../orient/README.md),
[Make Tangible](../make-tangible/README.md),
[Design Solution](../design-solution/README.md), and
[Plannotator](../plannotator/README.md) when their bounded procedures or
interactions are needed. It uses the Core and Formalization record schemas.
Make Tangible owns any artifact fidelity and lifetime. Learning that changes an
earlier owner returns through Formalize rather than turning Define Issues into
the cross-system router.
A skill-local reference is justified only for a recurring rich specification
path whose detail would otherwise obscure this common procedure.

## Direct dependencies

### Skills

- [Research](../research/README.md) — resolve one specification fact; return
  evidence and limits; Define Issues retains the specification.
- [Interview](../interview/README.md) — resolve one human-owned specification
  choice; return the scoped judgment; Define Issues retains synthesis.
- [Orient](../orient/README.md) — teach one settled context model after the
  human accepts the suggestion; return comprehension and uncertainty; Define
  Issues retains detailed specification judgment.
- [Make Tangible](../make-tangible/README.md) — construct and verify a flow,
  state, boundary, or comparison surface; return reaction and fidelity limits;
  Define Issues retains Issue meaning.
- [Design Solution](../design-solution/README.md) — resolve consequential
  ownership, interface, or invariant choices; return a solution shape; Define
  Issues retains the detailed specification.
- [Plannotator](../plannotator/README.md) — present the facts surface or a
  bounded Issue Approval batch; return exact annotations and decision; Define
  Issues retains gate consequence and stopping.

### Shared references

- [Records: Core](../../references/records/core.md) and
  [Formalization](../../references/records/formalization.md) — create, revise,
  place, and validate Issue records.

## Target runtime package


### Invocation and host projection

Define Issues is model-invoked after the human chooses detailed specification
for an accepted Evolution, direct Project outcome, or standalone outcome.

```yaml
---
name: define-issues
description: "Define the complete Issue set for one accepted outcome. Use after the human chooses detailed specification for an Evolution, Project, or standalone result."
---
```

```yaml
interface:
  display_name: "Define Issues"
  short_description: "Turn one outcome into judgeable Issues"
  default_prompt: "Use $define-issues to specify this accepted outcome as observable Issues."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps entry, collaborative decomposition, reader-ready Issue
meaning, gap return, complete-set coverage, persistence, cross-Issue revision,
batched Approval, recommendation, and stopping inline. Completion requires
every accepted outcome obligation to have one clear owner and every Issue to
be independently judgeable without implementation task mechanics.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Record lifecycle | `../../references/records/foundations.md` | Creating, moving, materially revising, superseding, or closing Issues. | A proposed boundary remains conversational. | Cross-skill | [Records Core](../../references/records/core.md) | Define Issues | None. |
| Issue body and lifecycle | `../../references/records/formalization.md` | Authoring, validating, approving, or updating Issue coverage. | Only comparing possible boundaries. | Cross-skill | [Formalization Records](../../references/records/formalization.md) | Define Issues | None. |

The existing calls and returns are accepted. Effects are limited to Issue
records and their exact approval batches; approval grants no planning or
mutation. No local reference, script, asset, fixture, template, or required
integration is earned. Target files are exactly `SKILL.md`, `SPEC.md`, and
`agents/openai.yaml`.

`SPEC.md` adds cases for each of the three entry owners, premature entry,
collaborative boundary revision, one independently readable Issue, complete-set
coverage gap, implementation detail kept for Plan, optional facts reaction,
bounded approval batches, cross-batch dependency, shared semantic revision,
stable IDs, partial accepted coverage, and approval stopping. No package
decision remains unresolved.
