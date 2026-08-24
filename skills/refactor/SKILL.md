---
name: refactor
description: Relieve one demonstrated structural pressure while preserving behavior. Use when ownership, dependency, compatibility, branching, or modification friction resists current work.
---

# Refactor

Refactor one pressure mechanism, not a vague desire to make code cleaner.

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
