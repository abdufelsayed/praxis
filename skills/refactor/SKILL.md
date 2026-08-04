---
name: refactor
description: "Refactor one demonstrated structural pressure while preserving behavior. Use when ownership, dependency, boundary, compatibility, characterization, branching, or modification friction resists current work."
---

# Refactor

Relieve one demonstrated structural pressure while preserving accepted
behavior. Refactor owns the pressure-point transformation and preservation
interpretation; the caller retains scope, governing meaning, route, gates,
authority, acceptance, and stopping.

## 1. Bind pressure, behavior, and authority

State the concrete change mechanism: which accepted change is scattered,
which ownership or dependency boundary leaks, which concept is branched on
repeatedly, which proof seam is unstable, which repeated modification friction
repository history demonstrates, which structure blocks accepted work, or
which compatibility state must coexist. Name the behavior
that must remain true, strongest governing sources, caller, current authority,
exclusions, and the smallest credible completion proof. A large file, metric,
style preference, or cleanup impulse is not a pressure mechanism.

Carry `assurance_path`, defaulting to `[refactor]`. Every direct call among
Debug, TDD, Refactor, Verify, and Security appends its callee; do not call a
capability already present in the path for the same bounded work.

Reconstruct accepted behavior from governing Requirements, Evolutions, Issues,
and Plan when present; public callers and contracts; current source and tests;
and controlled runtime observations. Treat current output as evidence, not
automatic acceptance. A known defect or ambiguous expectation returns to its
causal owner instead of becoming preservation truth.

If the proposed work changes accepted observable behavior, return it to
Formalization. If the pressure or behavior cannot be stated, return
`needs-owner` with the missing boundary.

This step is complete when one pressure, preservation target, behavior
boundary, and authority are explicit, or the typed owner return is made.

## 2. Establish preservation evidence

Choose the narrowest stable seam that can observe the behavior at risk and
preserve the original full scenario. Load a terminal reference only when its
condition is met:

- [`legacy-characterization.md`](references/legacy-characterization.md) when
  current tests cannot establish what must remain unchanged; use it to recover
  accepted behavior, choose a capable seam, and preserve the full scenario;
- [`ownership-restructuring.md`](references/ownership-restructuring.md) when
  responsibility scattering, leaking boundaries, or dependency cycles drive
  the pressure; use it to identify the effective owner, dependency direction,
  and smallest coherent move; and
- [`compatibility-migrations.md`](references/compatibility-migrations.md) when
  old and new interfaces, data, or contracts coexist temporarily; use it to
  define mixed states, the expand-migrate-contract sequence, recovery, and
  exit proof.

Call [Verify](../verify/SKILL.md) for exact preservation claims when current
evidence must disprove them and `verify` is absent from `assurance_path`. Pass
the fixed claim, boundary, conditions,
contradictory observation, target, environment, required sensitivity, current
evidence, authority, requested return, and the path with `verify` appended.
Consume `verified` as preservation evidence;
`failed` maps to immediate `needs-owner` with the unchanged mismatch;
`unverified` blocks mutation with the exact missing proof while still allowing
a read-only analysis result; and `stopped` returns immediately. Verify retains
claim status; Refactor retains the pressure and transformation.
If preservation needs Verify but `verify` already appears in the path, treat
the claim as unverified: block mutation and permit only a bounded `analyzed`
return.

This step is complete when every behavior claim that could be changed has a
capable seam, current evidence or an explicit limitation, and the full
scenario is preserved.

## 3. Choose the smallest responsible seam

Trace where the behavior is decided, where its data and invariants live, and
which callers currently know or bypass them. Select the smallest ownership,
interface, dependency, or data boundary that relieves the named mechanism.
Remove displaced policy from callers; moving code without moving ownership is
not a refactor.

Repository inspection can inventory repeated forms or preview a move, but
source shape alone cannot prove types, runtime behavior, ownership, data flow,
or semantic equivalence.

When several shapes materially change ownership, interfaces, dependencies,
data, failure, migration, reversibility, or operations, call [Design
Solution](../design-solution/SKILL.md) with a stable `boundary_id`, caller and
earliest causal owner, accepted specifications and source evidence, exact
target and exclusions, candidate shapes, criteria, hard constraints, safety
and recovery concerns, evidence bar, authority, and requested return. Consume
`recommended`, `selected`, or `no-choice` only when it resolves one responsible
seam inside the current boundary. A `qualified` result may proceed only when
that seam is still explicit; otherwise return `needs-design`. Map `revised` to
an immediate `needs-owner`, `refused` to immediate `blocked`, and `stopped` to
immediate `stopped`, preserving the dependency state. Design Solution retains
comparison and human judgment; Refactor retains the transformation, while the
caller retains route and gates.

Accepted future work may justify a present seam only when it creates concrete
pressure now. Build the smallest current boundary; do not implement the
future behavior or invent a general platform.

This step is complete when one responsible seam is selected or a typed design
return names the unresolved choice, owner, or blocker.

## 4. Choose isolation and transform incrementally

For a substantial standalone transformation with named rollback, collision, or
conflicting-edit risk, call [Manage Worktree](../manage-worktree/SKILL.md) with
the caller, intended work, exact base, candidate absolute location, destination
and branch or detached shape, mutation surfaces, current authority, lifetime
and disposable boundary, shared resources, and recovery concerns. Consume
`current checkout safe`, `worktree ready`, or `handoff ready` as checkout
evidence; `blocked` or `stopped` returns without transforming and preserves any
checkout identity and limits reported by the callee. Manage Worktree retains
lifecycle authority; Refactor retains transformation authority.

Read-only pressure analysis may inspect and return a bounded recommendation;
product mutation requires current Direct Work or Plan authority, a reviewed
preview, and ordinary behavioral verification.

Immediately before mutation, revalidate the exact target, current authority,
reviewed preview, checkout, and preservation evidence. An effect whose credible
actual consequence is data-affecting, deployment-changing, destructive,
irreversible, permission-changing, cross-project, infrastructure-changing, or
otherwise material also requires exact Plan inclusion, action-time authority,
the caller's applicable Safety `proceed` evidence, and post-action proof.
Missing or stale boundaries return `blocked` without a move; Refactor does not
create the missing authority or preflight.

Apply one attributable sequence:

1. establish the preservation evidence;
2. make one mechanical move or structural change;
3. rerun evidence exposed by that change;
4. continue only while the named pressure remains; and
5. remove temporary compatibility or characterization scaffolding.

Keep intermediate compatibility states explicit. A split into commits is not
incremental unless each state has a defined contract and proof. Mutation stays
inside the caller's current human or Plan authority. Separate mechanical
movement from a semantic interface change when that keeps failures
attributable.

This step is complete when each accepted move has current evidence, every
intermediate state has a bounded compatibility rule, and temporary scaffolding
has an exit condition.

## 5. Prove and return at the pressure point

Rerun the preservation evidence through the affected stable seam and prove the
integrated result. If evidence contradicts the accepted behavior, return the
original claim and mismatch; do not narrow the claim or hide it as cleanup.
Stop when the named mechanism is materially relieved, ownership is coherent,
accepted behavior remains evidenced, and temporary state is removed or its
explicit remaining limit is reported. Keep previews, comparisons, and
temporary notes transient unless a named future consumer requires a durable
artifact; there is no default refactor record.

Return exactly one result containing pressure and mechanism, preserved
behavior and evidence, responsible seam and dependency direction, moves and
intermediate states, current verification, compatibility or migration limits,
authority, causal owner and revisit condition, and the caller-retained route,
gates, authority, acceptance, and stop:

- `analyzed` — read-only evidence supports a bounded pressure and recommended
  seam; no transformation was performed;
- `relieved` — pressure is relieved and accepted behavior is proved;
- `partial` — safe incomplete transformation and evidence remain;
- `needs-design` — a consequential shape needs Design Solution or new human
  judgment;
- `needs-owner` — behavior, specification, or authority must change;
- `blocked` — checkout, evidence, access, dependency, or environment prevents
  an honest move; and
- `stopped` — the human or caller ended the bounded transformation.

No callee selects the caller's route or advances its gates. Do not continue
into adjacent cleanup, acceptance, commit, publication, deployment, or an
unrequested migration.
