---
name: refactor
description: Survey for evidence-backed architectural pressure or relieve one demonstrated pressure while preserving behavior. Use for structural friction, deepening opportunities, or a selected preservation-only refactor.
---

# Refactor

Survey architectural pressure or refactor one demonstrated mechanism, not a
vague desire to make code cleaner. A survey is read-only; a direct refactor
request skips it.

## Survey when the pressure is not yet localized

Use the requester's scope. Otherwise inspect a useful stretch of Git history for
repeatedly changed areas, then read current source, tests, domain vocabulary,
repository guidance, and relevant decisions around those hot spots.

Look for shallow modules, interfaces that expose most implementation complexity,
policy copied across callers, changes scattered across owners, tests reaching
through internals, or a missing stable proof seam. Apply the deletion test: a
useful module earns its place by concentrating meaningful behavior or policy,
not forwarding it.

Present a small ranked set with files and owning concepts, demonstrated pressure,
plausible deepened seam, benefits, risks, evidence, and recommendation strength.
Read [HTML report](references/html-report.md) only when a visual comparison would
materially improve selection. Recommend one candidate, then stop for the
requester's choice. Use [Design Solution](../design-solution/SKILL.md) when
multiple serious interfaces remain; continue below only when the responsible
seam and preservation boundary are demonstrated and mutation is authorized.

## Demonstrate pressure and preservation

Name the concrete pressure: scattered accepted changes, leaking ownership,
dependency cycles, repeated concept branching, an unstable proof seam, historical
modification friction, or temporary compatibility. File size, a metric, or a
style preference is not enough by itself.

State the behavior that must remain true, its governing source, exclusions, and
the smallest credible observation seam. A known defect or changed observable
behavior belongs to feature or bug work, not preservation-only refactoring.

Read the method that matches the pressure:

- [legacy characterization](references/legacy-characterization.md) when current
  tests cannot establish accepted behavior;
- [ownership restructuring](references/ownership-restructuring.md) for scattered
  responsibility, leaking boundaries, or dependency cycles;
- [compatibility migrations](references/compatibility-migrations.md) when old and
  new interfaces, data, or contracts must coexist.

## Move the responsible seam

Trace where behavior is decided, where data and invariants live, and which callers
know or bypass them. Select the smallest ownership, interface, dependency, or data
boundary that relieves the pressure. Moving code without moving responsibility is
not a refactor.

Prefer deep modules: meaningful behavior and policy behind a small stable
interface, dependencies pointing toward the owner, and changes localized behind
the seam. Use Design Solution when materially different owners or interfaces
remain viable; do not introduce an abstraction for hypothetical variation alone.

Establish preservation evidence, make one mechanical or structural move, rerun
the exposed proof, and continue only while it relieves the named mechanism.
Remove displaced policy and temporary scaffolding. Every compatibility state needs
a defined contract and exit.

For a substantial standalone transformation, use Manage Worktree when isolation
materially improves rollback or collision safety. Preserve unrelated dirty state.

## Prove the result

Rerun preservation evidence through the affected stable seam and the broader
integration boundary when the contract crosses components. Report the original
pressure, responsible seam, ownership and dependency changes, preserved behavior,
evidence, compatibility limits, and remaining pressure.

Stop at the requested boundary. Refactoring does not imply adjacent cleanup,
commit, publication, deployment, or completion of a larger feature.
