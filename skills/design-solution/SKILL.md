---
name: design-solution
description: Compare and resolve one consequential solution choice when accepted behavior permits materially different ownership, interface, operational, migration, or reversibility shapes.
---

# Design Solution

Design one choice without taking ownership of the surrounding requirements,
plan, or implementation.

## Bind the choice

State the accepted behavior and constraints, the exact choice, who owns the
decision, and what would materially change between candidates. If the uncertainty
is really about a need or constraint, return to Discover Requirements. If the
choice is contained, reversible, and preserves accepted behavior, keep it in the
implementation plan rather than creating a separate design decision.

## Compare serious shapes

Separate hard constraints from tradeoffs. Eliminate shapes that violate a hard
boundary. Compare the smallest serious set—normally two or three materially
different candidates plus the current shape when it remains viable. A serious
difference changes a contract, owner, dependency, failure mode, migration, or
material tradeoff.

Read only the lenses that can change this decision:

- [domain models](references/domain-models.md) for concepts, language,
  invariants, and state transitions;
- [interaction design](references/interaction-design.md) for actor sequence,
  feedback, interruption, handoff, and recovery;
- [system design](references/system-design.md) for ownership, deep modules,
  dependencies, placement, failure isolation, and change locality;
- [integration contracts](references/integration-contracts.md) for compatibility,
  trust, ordering, and cross-component failure;
- [transition operations](references/transition-operations.md) for coexistence,
  rollout, reversibility, observability, and recovery.

Judge every viable candidate against the same relevant dimensions: observable
behavior, ownership and trust, interfaces and invariants, failure and recovery,
migration or coexistence, reversibility, evidence, and uncertainty. Prefer source,
runtime behavior, tests, configuration, and authoritative material over diagrams
that merely restate intent.

Use [Research](../research/SKILL.md) when a factual premise could change the
comparison. Use [Make Tangible](../make-tangible/SKILL.md) when prose cannot make
the consequence judgeable. Use [Interview](../interview/SKILL.md) for the
remaining human-owned tradeoff.

## Recommend or resolve

Present the direct choice in project language, one concrete scenario, and a
supported recommendation. State what the recommendation preserves, gives up,
and leaves uncertain. A requester may choose a different viable candidate,
combine candidates, or add a condition; re-evaluate the affected comparison
instead of treating selection as proof.

If evidence changes the question, accepted behavior, or constraints, return that
change to its earliest owner. If only one serious shape remains, say why there is
no meaningful choice.

Keep the comparison in conversation by default. Persist a decision under the
`.praxis/<effort>/` only when requested or when a named future consumer
needs the rationale. Stop at the resolved choice; do not silently update governing
truth, plan implementation, or mutate the codebase.
