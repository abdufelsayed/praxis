# Refactor — Maintainer Contract

## Purpose

Refactor relieves one demonstrated structural pressure while preserving
accepted behavior. It reconstructs effective ownership, selects the smallest
responsible seam, transforms incrementally, and proves the behavior exposed by
the change. The caller retains governing meaning, route, gates, authority,
acceptance, and stopping.

## Entry and exclusions

Refactor is model-invoked for a concrete change mechanism: scattered
responsibility, dependency or boundary leakage, repeated branching, compatibility
coexistence, unstable proof seams, demonstrated modification friction, or
structure blocking accepted implementation or proof. Plan, Delivery, Review,
TDD, or explicit Direct Work may call it. Read-only pressure analysis is valid
for any caller; a large file, style preference, metric, or generic cleanup
request is not sufficient entry.

Refactor excludes product discovery, specification change, broad architecture,
acceptance, commit, publication, deployment, and adjacent cleanup.

## Behavioral contract

1. Bind one pressure, preservation target, caller, authority, exclusions, and
   completion proof; otherwise return `needs-owner` or `blocked`.
2. Reconstruct accepted behavior from governing records, callers, contracts,
   source, tests, relevant repository history, runtime, and controlled
   observations. Existing behavior is evidence, not automatic accepted truth.
3. Put preservation evidence at the narrowest stable seam and preserve the
   original full scenario.
4. Load only the terminal reference whose branch is reached: weak
   characterization, ownership/dependency restructuring, or compatibility
   migration.
5. Treat a proposed observable behavior change as Formalization work, not an
   internal refactor.
6. Choose the smallest owner or seam that relieves the named mechanism and
   removes displaced policy from callers.
7. Consequentially different ownership or system shapes call Design Solution;
   a mechanical choice inside an approved Plan stays local.
8. Named checkout collision or rollback risk calls Manage Worktree; its
   lifecycle result never grants transformation authority.
9. Each mechanical or structural move is attributable and re-proved; every
   meaningful compatibility state has a contract and exit condition.
10. Mutation remains within current human or Plan authority. Temporary
    migration and characterization state is removed or explicitly reported.
11. Completion requires pressure relief, coherent ownership, preserved
    behavior, current proof, and honest limits.
12. Return to the earliest causal owner when evidence changes behavior,
    specification, authority, or design; never hide it under “cleanup.”
13. `assurance_path` records every Debug, TDD, Refactor, Verify, or Security
    capability entered for the same bounded work; a callee already in the path
    is not invoked again.

## Outcomes and return

```text
Refactor Result {
  outcome: analyzed | relieved | partial | needs-design | needs-owner | blocked | stopped,
  pressure_and_change_mechanism,
  preservation_target_and_evidence,
  responsible_owner_seam_and_dependency_direction,
  structural_moves_and_intermediate_states,
  compatibility_or_migration_limits?,
  verification_and_remaining_leakage,
  authority_and_effect_scope,
  causal_owner_and_revisit_condition,
  caller_retained_route_gate_acceptance_and_stop
}
```

`analyzed` is a read-only pressure and seam recommendation with no
transformation. `relieved` requires the named pressure, coherent owner,
preserved behavior, and current proof. `partial` preserves a safe incomplete state. `needs-design`
means a consequential shape remains; `needs-owner` means accepted meaning or
authority changed; `blocked` names evidence, checkout, access, dependency, or
environment limits; and `stopped` preserves the current state after a stop.
No outcome grants new authority or acceptance.

## Effects, authority, persistence, and learning

Repository inspection is read-only. Read-only pressure analysis may return a
bounded recommendation without mutation. Product mutation requires current
Direct Work or Plan authority, a reviewed preview, and ordinary behavioral
verification; consequential migration, deployment, remote, data, or cleanup
effects retain exact Plan inclusion, action-time authority, applicable Safety
`proceed` evidence supplied through the caller's established boundary, and
post-action proof. Refactor creates none of those boundaries and returns
`blocked` before mutation when they are missing or stale.
Manage Worktree owns checkout lifecycle, Verify owns claim statuses, and Design
Solution owns comparison/human selection; Refactor retains interpretation and
transformation. Messages, previews, temporary scaffolding, and comparisons
are transient unless a named future consumer requires a durable artifact.

## Direct composition

Direct calls carry the callee's required brief and preserve its exact return:
 one complete brief, lossless returns, no authority transfer, and no
re-entry of a capability already in the assurance path. Each callee's own
contract owns its intake fields; assurance calls carry the current
`assurance_path`. This package's caller policies are:

| Direct target | Caller policy |
| --- | --- |
| [Design Solution](../design-solution/SPEC.md) | Use when materially different ownership, interface, dependency, data, failure, migration, reversibility, or operational shapes remain. `recommended`/`selected`/`no-choice` supplies a resolved seam; `qualified` proceeds only with an explicit seam; `revised` maps to `needs-owner`, `refused` to `blocked`, and `stopped` to `stopped`. |
| [Verify](../verify/SPEC.md) | Use for an exact preserved behavior or structural claim only when `verify` is absent. `verified` supplies scoped evidence; `failed` maps to `needs-owner`; `unverified` or an already-visited Verify blocks mutation but may support `analyzed`; `stopped` returns immediately. |
| [Manage Worktree](../manage-worktree/SPEC.md) | Use for named collision, rollback, or conflicting-edit risk around a substantial standalone transformation. Checkout-ready results supply evidence; `blocked` or `stopped` returns without effect and preserves state. |

No callee advances Refactor, updates governing records, accepts a result, or
grants mutation authority. A direct dependency does not re-enter Refactor for
the same pressure.

## Runtime references and exact tree

`SKILL.md` keeps entry, pressure qualification, preservation, seam choice,
direct calls, mutation, proof, return, and stopping inline. Keep the direct-call
brief and exact-return rules inline when composing a direct call. Its three local
references are terminal method guides selected only under their named branch;
they do not call skills, grant authority, define completion, or stop a caller.

```text
skills/refactor/
├── SKILL.md
├── SPEC.md
├── agents/
│   └── openai.yaml
└── references/
    ├── compatibility-migrations.md
    ├── legacy-characterization.md
    └── ownership-restructuring.md
```

There are no scripts, assets, fixtures, templates, wrappers, hooks, or
required integrations.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract uses only plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), [Work](../../docs/concepts/work.md),
the [skill-package contract](../../docs/maintainers/skill-packages.md), the
[conformance contract](../../docs/maintainers/conformance-and-release.md),
the three declared
terminal references, and assembled [Design Solution](../design-solution/SPEC.md),
[Verify](../verify/SPEC.md), and [Manage Worktree](../manage-worktree/SPEC.md)
contracts. These plugin-local files are the complete maintainer source basis;
the declared skill surface and references are the complete runtime. No
non-plugin material is required to use, review, validate, or maintain this
package.

## Conformance cases

1. Style preference, size metric, or generic cleanup returns without a
   demonstrated mechanism.
2. Scattered ownership, dependency cycle, leaking boundary, or unstable seam
   is named with its accepted consequence before mutation.
3. Weak characterization preserves a full scenario and a capable narrow seam;
   known defects remain owned by Debug or Formalization.
4. Compatibility work names mixed states, divergence detection, interruption,
   retries, exit conditions, and recovery limits.
5. A consequential owner shape calls Design Solution; a local reversible
   specification-preserving choice stays in the approved Plan.
6. Accepted future work justifies a present seam only when it creates concrete
   current pressure; future behavior and generic platforms remain outside.
7. Verification reaches the threatened behavior boundary and distinguishes
   `verified`, `failed`, and `unverified`.
8. Worktree isolation is selected only for named collision or rollback risk;
   blocked safety or lifecycle returns produce no mutation.
9. Each move is re-proved, temporary state is removed or explained, and
   adjacent cleanup is not smuggled into the result.
10. Specification, authority, or proof changes return to the exact owner; a
   known defect or ambiguous expectation is not frozen as preservation truth.
11. All outcomes preserve limits, causal owner, and stopping without
    acceptance, commit, publication, deployment, or automatic continuation.
12. A Plan or Review caller may receive `analyzed` with a read-only pressure
    recommendation and no implied transformation.
13. An assurance-component call appends its callee to `assurance_path`; a
    capability already in the path is not called again for the same work.
