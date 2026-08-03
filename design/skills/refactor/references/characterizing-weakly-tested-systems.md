# Characterizing Weakly Tested Systems

> **Status: accepted semantic source; target runtime projection: `references/legacy-characterization.md`.**

> Load this reference when Refactor cannot yet prove which behavior must remain
> unchanged. Refactor retains pressure, scope, authority, transformation,
> return, and stopping.

## Build an honest preservation oracle

Start from the behavior threatened by the structural change. Gather the
strongest available evidence:

- governing Requirements, Evolutions, Issues, and Plan when present;
- public callers and documented contracts;
- current tests and fixtures;
- controlled runtime observations;
- repository history when it explains intentional behavior; and
- concrete scenarios from the human or domain authority.

Current output is evidence, not automatic truth. A known defect must remain red
through Debug or its governing specification; an ambiguous behavior returns to
its causal owner. Do not convert either into a golden master merely because it
is reproducible.

## Choose the threatened seam

Place characterization evidence at the narrowest stable seam capable of
detecting the behavior the refactor could change. A helper test is inadequate
when the public service or API contract is threatened. A full end-to-end
fixture is unnecessary when a smaller owned boundary observes the same
contract honestly.

Preserve the original full scenario even when a smaller characterization
harness makes iteration faster. The small seam gives attributable feedback;
the full scenario checks that the harness did not omit a consequential
interaction.

## Characterize meaningful variation

Cover the ordinary path plus the few boundaries, failures, and state
transitions capable of distinguishing accepted behavior from a plausible
regression. Prefer examples derived from actual callers and contracts over
snapshotting an enormous output surface.

When the state space is broad, use properties, perturbations, or differential
observations only to answer the preservation question. Report limits rather
than treating sampled behavior as exhaustive truth.

## Return to Refactor

Return the accepted behavior being preserved, evidence and provenance,
characterization seam, full scenario, known exclusions, unresolved ambiguity,
and the checks that must stay green. Stop before selecting the new structure or
performing mutation.

## Sources

- [Martin Fowler, *Refactoring*](https://martinfowler.com/books/refactoring.html)
- [Matt Pocock, TDD guide](https://github.com/mattpocock/skills/blob/main/docs/engineering/tdd.md)
