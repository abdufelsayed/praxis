---
name: refactor
description: "Refactor one demonstrated structural pressure while preserving behavior. Use when ownership, dependency, boundary, compatibility, characterization, branching, or modification friction resists current work."
---

# Refactor

Load [Praxis Control](../../references/control.md).

Refactor owns one pressure-point transformation and preservation interpretation.
The caller retains scope, meaning, authority, gates, and acceptance.

## Demonstrate pressure and preservation

Name the actual change mechanism: scattered accepted change, leaking ownership
or dependency, repeated concept branching, unstable proof seam, historical
modification friction, blocked accepted work, or temporary compatibility. A
large file, metric, style preference, or cleanup impulse is insufficient.

Fix the behavior that must remain true, governing sources, current authority,
exclusions, and smallest credible proof. A known defect or ambiguous
expectation returns to its causal owner. Changed observable behavior belongs to
Formalization, not Refactor.

Choose the narrowest stable observation seam and preserve the full scenario.
Load only the applicable method:

- [legacy characterization](references/legacy-characterization.md) when
  current tests cannot establish accepted behavior;
- [ownership restructuring](references/ownership-restructuring.md) for
  scattered responsibility, leaking boundaries, or dependency cycles;
- [compatibility migrations](references/compatibility-migrations.md) when old
  and new interfaces, data, or contracts must coexist.

Call [Verify](../verify/SKILL.md) when exact preservation claims need current
falsification. `verified` supplies scoped preservation evidence; `failed`
returns `needs-owner`; `unverified` blocks mutation but may still support a
read-only `analyzed` result; and `stopped` stops.

## Select and transform the responsible seam

Trace where behavior is decided, where data and invariants live, and which
callers know or bypass them. Select the smallest ownership, interface,
dependency, or data boundary that relieves the mechanism. Moving code without
moving responsibility is not a refactor.

Call [Design Solution](../design-solution/SKILL.md) when viable shapes
materially differ in ownership, interfaces, dependencies, data, failure,
migration, reversibility, or operations. Future work justifies a seam only
when it creates present pressure.

Use `recommended`, `selected`, or `no-choice` only as a resolved seam;
`qualified` proceeds only with an explicit seam; `revised` returns
`needs-owner`; `refused` is `blocked`; and `stopped` stops. Manage Worktree
readiness supplies only checkout evidence; `blocked` or `stopped` prevents the
effect and preserves state.

Use [Manage Worktree](../manage-worktree/SKILL.md) for a substantial standalone
transformation with concrete rollback, collision, or conflicting-edit risk.
Mutation requires a current human-authorized implementation boundary, a reviewed preview,
and preservation evidence. Consequential effects additionally require exact
Plan coverage, current authority, and Safety `proceed`.

Transform attributably: establish preservation evidence; make one mechanical
or structural move; rerun exposed proof; continue only while the named pressure
remains; remove temporary compatibility or characterization scaffolding.
Every intermediate compatibility state needs a defined contract and exit.

## Prove and stop

Rerun preservation evidence through the affected stable seam and prove the
integrated result. Do not narrow a contradicted behavior claim. Return
`analyzed`, `relieved`, `partial`, `needs-design`, `needs-owner`, `blocked`, or
`stopped` with the pressure and mechanism, preserved behavior and evidence,
responsible seam and dependency direction, moves and intermediate states,
verification, compatibility limits, authority, causal owner, and revisit
condition. There is no default refactor record. Do not continue into cleanup,
commit, publication, deployment, or migration beyond the boundary.
