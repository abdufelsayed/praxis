---
name: design-solution
description: "Design one consequential solution choice. Use when accepted Requirements permit materially different system, ownership, contract, operational, migration, or reversibility shapes."
---

# Design Solution

Load [Praxis Control](../../references/control.md).

Design Solution owns one comparison and synthesis. The caller keeps governing
meaning, route, gates, authority, and acceptance.

## Bind the choice and owner

Require the active caller and earliest causal owner; accepted Requirements or
specification with revision and limits; one exact choice and consequence;
territory, actors, scenarios, boundaries, and known alternatives; hard
constraints and invariants; evidence bar; and authority for inspection or
probes. Give the choice a stable boundary ID.

Classify the earliest meaning that would change: a need or constraint belongs
to Requirements Discovery; high-level behavior to Evolution; detailed
behavior, interfaces, failures, exclusions, or proof to Issues; a technical
shape preserving all of them to Plan. Return changed meaning to that owner.
A contained reversible choice that preserves accepted specifications stays in
the caller's Plan and returns `no-choice`.

## Compare serious shapes

Separate hard constraints from negotiable tradeoffs. Eliminate a candidate
that violates a hard boundary before comparison; never hide judgment in a
weighted score. Generate the smallest serious set, normally two or three
materially different shapes plus the current shape when viable. A real
difference changes a contract, boundary, owner, failure mode, or material
tradeoff. Name shared assumptions once.

Load only lenses able to change this choice:

- [domain models](references/domain-models.md) for concepts, invariants,
  language, or state transitions;
- [interaction design](references/interaction-design.md) for actor sequence,
  feedback, interruption, handoff, or recovery;
- [system design](references/system-design.md) for ownership, dependencies,
  placement, failure isolation, or change locality;
- [integration contracts](references/integration-contracts.md) for interface,
  compatibility, trust, ordering, or cross-component failure;
- [transition operations](references/transition-operations.md) for coexistence,
  rollout, reversibility, observability, or recovery.

Judge viable candidates against the same relevant dimensions: observable
behavior; ownership and trust; interfaces and invariants; failure and recovery;
migration or coexistence; reversibility; feasibility evidence and uncertainty.
Use current source, runtime behavior, tests, configuration, and authoritative
material. Call [Research](../research/SKILL.md) when a factual premise could
change the comparison. Integrate `answered`; preserve `unverified` or
`conflicting`; rebind `revised`; use `no-op` only for identified sufficient
context; map `needs-human-judgment` to `qualified`, and preserve `blocked` or
`stopped` without inventing evidence.

Use [Make Tangible](../make-tangible/SKILL.md) when prose cannot make the
comparison or consequence judgeable. Human judgment owns governing behavior,
major ownership or trust boundaries, external dependencies, material cost or
risk, and hard-to-reverse commitments. Call [Interview](../interview/SKILL.md)
for that remaining judgment. Research and Interview each own their bounded
peer crossing; do not bounce the same boundary between them.

Interview `clarified` supplies a selection; `qualified`, `deferred`, or
`conflicting` remains an explicit human boundary; `no-op` uses only sufficient
existing judgment; `needs-evidence` returns `revised` to its owner; and
`blocked` or `stopped` remains exact. Make Tangible `no-op` uses direct
explanation; `constructed` or `revised` supplies its exact version, reaction,
conclusions, and fidelity/lifetime limits; `blocked` or `stopped` never becomes
a choice. Design Solution retains comparison and synthesis.

## Return the current choice state

Recommend one candidate only when evidence supports it and no valid human
selection exists; return `recommended` and state what it preserves, gives up,
and leaves uncertain. When the human chooses a viable recommended,
non-recommended, combined, or conditional candidate, re-evaluate affected
criteria and return `selected` with that local rationale and consequences.

If evidence changes the question, criteria, feasibility, or governing meaning,
return `revised` to the causal owner and preserve only still-valid evidence.
Return `no-choice` when only one serious shape remains or the choice is safely
contained, reversible, and specification-preserving. Return `qualified` when
comparison is useful but a material tradeoff remains; `refused` when entry,
evidence, authority, or dependencies cannot support an honest comparison; and
`stopped` on human stop.

The result names the choice, owner, accepted boundaries, candidates and common
comparison, selected shape or no-choice reason, rationale and consequences,
evidence maturity and limits, unresolved judgment, causal owner, and revisit
condition. Comparisons and artifacts are transient unless a named consumer
needs them. Do not create a Decision record, update governing truth, plan
implementation, mutate, or accept the result.
