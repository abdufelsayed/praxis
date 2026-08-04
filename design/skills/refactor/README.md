# Refactor

> **Design document — not a runtime skill.** The accepted behavioral contract
> and target package design remain here; runtime assembly status is tracked in
> [Praxis Status](../../STATUS.md).

## What it does

Refactor relieves one concrete structural pressure while preserving accepted
behavior. It helps an agent understand why the current structure resists the
work, identify the smallest responsible seam, transform it safely, and prove
that the behavior which matters still holds.

Its leading question is:

> What concrete structural pressure exists, and what is the smallest change
> that relieves it while preserving accepted behavior?

This makes Refactor different from a cleanup pass. The reason to invoke it is a
demonstrated change mechanism, such as one behavior being owned in several
places or one accepted change requiring edits across unrelated modules. A file
being large, a metric crossing a threshold, or an agent preferring another
style is not enough.

## Where it fits

Refactor is an agent-startable supporting skill rather than a Praxis phase:

- [Plan](../plan/README.md) uses it to understand structural work the next
  result genuinely needs.
- [Deliver](../deliver/README.md) uses it to perform substantial in-bound
  structural repair.
- [Review](../review/README.md) uses it read-only to investigate whether a
  changeability concern has
  a credible mechanism and correction.
- Direct Work may use it when the human explicitly requests a contained
  refactor whose behavior and authority are already clear.
- [TDD](../tdd/README.md) may use it while green;
  [Verify](../verify/README.md) supplies preservation evidence.

The caller keeps ownership, scope, authority, interpretation, and stopping.
Refactor cannot convert “better structure” into permission to edit adjacent
code.

## What counts as pressure

Useful triggers include:

- duplicated ownership of one behavior or invariant;
- a small accepted change scattered across unrelated locations;
- a dependency cycle or reversed dependency direction;
- domain behavior leaking through infrastructure or presentation boundaries;
- repeated branching on the same concept;
- behavior that cannot be proved at a stable seam;
- repeated modification friction supported by repository history; or
- a structure that blocks the accepted implementation or credible proof.

The skill names the actual consequence. “Shotgun surgery” is useful shorthand
only after the agent shows which accepted change is scattered, where, and why
that scattering matters.

## Preserve the right behavior

Before changing structure, reconstruct what must stay true from the strongest
available evidence: governing Requirements, Evolutions, Issues, and Plan when
they exist; public callers and contracts; current source; tests; and runtime
behavior.

Characterization evidence belongs at the narrowest stable seam capable of
detecting the behavior that could change. A weak unit test around an internal
helper may be cheap but irrelevant when the public API contract is what must
survive.

Existing behavior is not automatically accepted behavior. If the current
result is a known defect, Refactor does not freeze it into a characterization
test. Debug establishes the failure and cause; the owning record or human
settles ambiguous expectations.

## Choose the responsible seam

The preferred change is the smallest ownership, interface, dependency, or data
boundary that relieves the named pressure. It may move behavior, consolidate
ownership, invert a dependency, introduce a narrow interface, or stage a
compatibility transition.

When several shapes materially change ownership, interfaces, dependencies, or
operational consequences, Refactor invokes
[Design Solution](../design-solution/README.md) for that bounded choice. Design
Solution returns the compared shapes; Refactor retains its preservation target
and structural recommendation. If the proposed change alters accepted
observable behavior, it returns to Formalization instead of disguising a
specification change as refactoring.

Accepted future work may provide legitimate present pressure. If a known next
Evolution would otherwise require another copy of session rules, the current
Plan may establish the smallest coherent session seam now. It does not
implement the future provider or invent a provider platform for requirements
nobody has accepted.

## Transform incrementally

Prefer a reversible sequence whose failures remain attributable:

1. establish preservation evidence;
2. make one mechanical move or structural change;
3. rerun the evidence exposed by that change;
4. continue only while the named pressure still requires it; and
5. remove temporary scaffolding and prove the integrated result.

Separating a move or rename from a semantic interface change often makes review
and rollback clearer. That separation is a local implementation technique, not
a reason to invent Evolutions, Issues, Plans, or acceptance gates for each
mechanical step.

## Select a richer method only when needed

The common pressure, preservation, seam, authority, transformation, and proof
loop stays in this skill. Load one of these references only when its distinct
procedure is needed:

- [Characterizing Weakly Tested Systems](references/characterizing-weakly-tested-systems.md)
  when Refactor cannot yet prove what behavior must remain unchanged;
- [Ownership and Dependency Restructuring](references/ownership-and-dependency-restructuring.md)
  when pressure comes from scattered responsibility, leaking boundaries,
  dependency cycles, or callers knowing another component's internals; and
- [Compatibility-Preserving Migration](references/compatibility-preserving-migration.md)
  when old and new interfaces, data shapes, or internal contracts must coexist
  during the structural change.

These paths may compose. They do not replace Design Solution when materially
different structural shapes still need human judgment, and they do not turn a
governed behavior change into an internal refactor.

## Inspect and transform honestly

Repository inspection can inventory repeated shapes, preview a mechanical
transformation, and check whether a source form remains. It cannot establish
types, runtime behavior, ownership, data flow, or semantic equivalence by
itself.

Inspection remains within the caller's normal read authority after the agent
says what it is checking. A rewrite is product mutation, so it requires current
Direct Work or Plan authority, a reviewed preview, and ordinary behavioral
verification.

## Stop at the pressure point

Refactor is complete when:

- the named pressure is materially relieved;
- accepted behavior is preserved;
- the new ownership or seam is coherent;
- affected proof passes; and
- temporary migration or characterization scaffolding is removed or explained.

Adjacent observations return as recommendations. Refactor does not keep going
until the codebase matches a general notion of cleanliness.

There is no permanent `refactor.md` by default. The Plan carries a
consequential structural approach, while source, tests, Git, temporary
implementation notes, and the caller's result preserve the work. A separate
diagram, experiment, or compatibility aid remains only when a named later
consumer needs it.

## Examples

### Repeated session behavior

Adding a second authentication provider exposes session creation and revocation
inside password handlers. The accepted Plan covers those components, so
Refactor characterizes the public session behavior, moves ownership into one
session service, proves both providers through the affected boundary, and
stops. Notification cleanup nearby remains separate.

### Weakly tested legacy code

A pricing change requires extracting a rule from a large legacy function.
Existing tests cover only one happy path. Refactor first characterizes the
accepted boundary cases from current callers and business rules, then extracts
the rule in small green steps. If one surprising behavior is actually a known
bug, it returns that behavior to Debug and its specification owner rather than
preserving it blindly.

### A refactor that exceeds authority

A local service extraction reveals that the credible solution also changes a
public event schema and requires a data migration. Refactor returns the
evidence and smallest proposed correction to the Issue and Plan owners. It does
not use the word “internal” to smuggle a governed contract change through the
current Plan.

## Research basis

- [Martin Fowler, *Refactoring*](https://martinfowler.com/books/refactoring.html)
- [Refactoring.Guru: Shotgun Surgery](https://refactoring.guru/smells/shotgun-surgery)
- [Sentry Code Simplifier skill](https://github.com/getsentry/skills/blob/main/skills/code-simplifier/SKILL.md)

## Direct dependencies

### Skills

- [Design Solution](../design-solution/README.md) — resolve a consequential
  target structure; return a solution shape; Refactor retains transformation
  and preservation.
- [Verify](../verify/README.md) — prove accepted behavior and structural claims;
  return current evidence; Refactor retains the pressure-point judgment.
- [Manage Worktree](../manage-worktree/README.md) — decide whether a named
  repository risk needs isolation;
  invoke it only for a substantial standalone transformation with named
  rollback or conflicting-edit risk. It returns a safe current checkout, a
  prepared isolated worktree, or a blocker; Refactor retains transformation
  and preservation.

### Shared references

- None.

## Target runtime package


### Invocation and host projection

Refactor is model-invoked when a concrete changeability mechanism—not a style
preference or size metric—creates pressure inside current work.

```yaml
---
name: refactor
description: "Refactor one demonstrated structural pressure while preserving behavior. Use when ownership, dependency, boundary, compatibility, characterization, branching, or modification friction resists current work."
---
```

```yaml
interface:
  display_name: "Refactor"
  short_description: "Relieve one proved structural pressure"
  default_prompt: "Use $refactor to relieve this structural pressure while preserving behavior."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps pressure qualification, behavior boundary, responsible seam,
incremental transformation, method selection, honest inspection, preservation
proof, scope, authority, return, and stopping inline. Completion requires the
named change mechanism to be relieved and every accepted behavior claim to
retain current evidence.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Weak behavior evidence | `references/legacy-characterization.md` | Existing tests cannot yet establish what must remain unchanged. | Governing behavior already has a capable proving seam. | Refactor | [Characterizing Weakly Tested Systems](references/characterizing-weakly-tested-systems.md) | Refactor | None. |
| Compatibility transition | `references/compatibility-migrations.md` | Old and new interfaces, data shapes, or contracts must coexist temporarily. | The transformation has one atomic compatible boundary. | Refactor | [Compatibility-Preserving Migration](references/compatibility-preserving-migration.md) | Refactor | None. |
| Ownership or dependency pressure | `references/ownership-restructuring.md` | Responsibility scattering, leaking boundaries, or dependency cycles drive the pressure. | A local rename or extraction resolves the demonstrated mechanism. | Refactor | [Ownership and Dependency Restructuring](references/ownership-and-dependency-restructuring.md) | Refactor | None. |

The Design Solution, Verify, and Manage Worktree calls are accepted. Mutation
remains inside the caller's authority; adjacent cleanup is returned as a
recommendation. No scripts, assets, fixtures, templates, or required
integrations are earned. Target files add the three named references to the
required package files.

`SPEC.md` adds cases for unsupported cleanup preference, scattered ownership,
weak characterization, compatibility coexistence, dependency cycle, smallest
seam, green incremental transformation, behavior regression, consequential
target structure, out-of-authority expansion, Worktree isolation, and stop at
the pressure point. No package decision remains unresolved.
