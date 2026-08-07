---
name: research
description: "Research one bounded factual claim. Use when current codebase, external primary sources, comparisons, or empirical probes must answer or falsify it."
---

# Research

Load [Praxis Control](../../references/control.md).

Research owns one factual question, evidence selection, synthesis, and
epistemic status. The caller retains governing meaning and next action.

## Bind the claim

State the factual question, why it matters, territory, required freshness,
consequence of error, sufficient evidence, and cheapest meaningful falsifier.
Return `no-op` when identified current context already answers the question at
the required confidence. If the input is a preference, route choice,
integrated requirement, or other human-owned judgment, return
`needs-human-judgment` to its owner rather than manufacturing a fact.

Research and [Interview](../interview/SKILL.md) may cross their peer edge once
per bounded question. Carry a stable boundary ID, origin, return owner, and
whether that edge was crossed. Call Interview only for a material human-owned
qualification; if the edge was already crossed, return the missing judgment
to the outer owner. A revised question gets a new boundary.

Interview `clarified` or `qualified` binds the qualification; `no-op` uses
only sufficient existing judgment; `deferred`, `conflicting`, or unresolved
`needs-evidence` becomes `needs-human-judgment`; and `blocked` or `stopped`
remains exact.

## Choose and run the smallest evidence path

Use repository, external, empirical, or a justified combination. Load only
the applicable method:

- [codebase evidence](references/codebase-evidence.md) for repository,
  dependency, runtime wiring, generated surfaces, tests, or history;
- [external evidence](references/external-evidence.md) when authority,
  version, freshness, jurisdiction, tier, conflict, or search coverage matters;
- [empirical probes](references/empirical-probes.md) for environment fidelity,
  discrimination, reproducibility, interpretation, or cleanup.

Current source, configuration, installed versions, generated interfaces,
reproduced behavior, and primary documentation outrank stale plans, comments,
generic examples, and result counts. Search navigates; it is not proof.
Inspect plausible hidden paths before a negative conclusion.

For a consequential or favored claim, name what would make it false and run
the cheapest disconfirming, perturbed, or independent path. Correlated tools,
sources, or delegates do not become independent by repetition. Stop when more
search is unlikely to change the bounded answer.

Call [Delegate](../delegate/SKILL.md) only when an independent evidence path
has a named positive benefit. Call [Make Tangible](../make-tangible/SKILL.md)
when existing evidence needs a comparison or perceptible surface for honest
understanding. Use [Manage Worktree](../manage-worktree/SKILL.md) only for a
mutating repository probe with a concrete collision, preservation, or rollback
risk. A consequential experiment requires approved coverage, current exact
authority, and [Check Safety](../check-safety/SKILL.md) `proceed`. Preserve
every supporting result and limitation; Research retains synthesis.

Delegate `delegated` integrates only its bounded evidence; `partial` preserves
gaps; `no-op` or delegation-only `blocked` uses the direct path; evidence or
authority `blocked` and human `stopped` remain exact. Make Tangible `no-op`
uses direct explanation; `constructed` or `revised` preserves artifact,
reaction, conclusion, and fidelity limits; `blocked` or `stopped` remains
exact. Manage Worktree preserves checkout state. Check Safety releases only
the exact probe on `proceed`; `revise` changes the research boundary and
`stop` prevents the effect.

## Synthesize and stop

Separate direct evidence, inference, conflict, and uncertainty. If evidence
changes the claim, conditions, territory, or consequence, rebind it and carry
forward only in-scope evidence. A false premise should be corrected directly.
Qualify negative findings with the exact surfaces, versions, terms, and paths
examined, why they should expose the behavior, and plausible hidden paths.

Return `answered`, `no-op`, `unverified`, `conflicting`, `revised`,
`needs-human-judgment`, `blocked`, or `stopped` with the bounded answer or
routing reason, decisive evidence and pointers, freshness and environment,
inference and limits, implications, unresolved questions, and causal owner.
Create a durable report only for a named future consumer who must audit,
reproduce, extend, or compare it. Do not implement, accept, publish, or
continue the caller's work.
