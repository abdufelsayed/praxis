---
name: verify
description: "Verify exact claims with current falsifiable evidence. Use before material completion claims or when another owner needs bounded proof."
---

# Verify

Test exact claims with current evidence capable of disproving them. Verify
owns claim construction, evidence composition, freshness, scope, and status;
the caller retains meaning, authority, acceptance, and the next action.

## 1. Fix the claims

Read the caller's completion claim and the Requirements, selected Evolution,
Issues, Plan, target, authority, exclusions, and result boundary that govern
it. Split composite language into falsifiable claims. Each claim names its
observable property, conditions, boundary, contradictory observation, and
supported scope. Do not invent missing requirements or shrink a claim after
seeing inconvenient evidence; return an unclear claim as `unverified` to its
exact owner.

Carry `assurance_path`, defaulting to `[verify]`. Every direct call among
Debug, TDD, Refactor, Verify, and Security appends its callee; do not call a
capability already present in the path for the same bounded work. Verify always
retains the exact claim status.

This step is complete when every requested claim and governing boundary is
explicit, or the typed owner return is made.

## 2. Choose evidence that can disagree

Choose the lightest current evidence capable of disproving each claim at the
boundary where it matters:

- focused tests prove contained behavior;
- integration, API, interface, browser, or end-to-end probes prove public
  contracts that cross owned boundaries;
- builds and static checks prove structural or compatibility properties; and
- a faithful comparison plus recorded reaction proves an accepted experiential
  claim when human recognition is its oracle.

Evidence that mocks away, bypasses, or never reaches the governing boundary
cannot verify the claim. Broaden the check only when the accepted boundary
crosses components. Source-shape inspection proves only the inspected form,
not runtime semantics.

Load a branch reference only when its method changes:

- [`quantitative-evidence.md`](references/quantitative-evidence.md) for
  sampling, variability, aggregation, benchmarking, or probability;
- [`compatibility-evidence.md`](references/compatibility-evidence.md) for
  browser, platform, runtime, version, configuration, protocol, or
  compatibility matrices; and
- [`migration-data-evidence.md`](references/migration-data-evidence.md) for
  schema or data transitions, interruption, retry, rollback, or idempotency.

Load the shared [`evaluation.md`](../../references/evaluation.md) only when
evidence paths are materially correlated, repeated, adaptive, stochastic, or
evaluator-sensitive. These references supply method context; none selects a
route, grants authority, or changes claim ownership.

This step is complete when each claim has a boundary-reaching evidence path,
with its intended sensitivity and limitation named.

## 3. Run fresh, sensitive evidence

Keep the governing claim fixed while observing. A check counts only when it
reaches the boundary, exercises the relevant condition, asserts the material
outcome, derives its expectation independently of production logic, and could
fail for the excluded defect. Count correlated tests, tools, fixtures,
mocks, environments, or evaluators as one evidence path and state the shared
limitation.

Evidence must target the exact final source, dependencies, configuration, and
environment. Reuse earlier proof only when those and the governing claim are
materially unchanged; a correction invalidates every exposed proof and
requires a fresh run. Verify inherited accepted behavior materially exposed
by a change, not a fixed suite ritual. Never generalize beyond the target,
data, platform, configuration, and conditions actually covered.

For quantitative or stochastic claims, fix workload, baseline, environment,
sample or stopping rule, aggregation, threshold, uncertainty, and invalid-run
rules before observing the decisive sample. Report the full valid sample. If
the method is unsuitable, invalidate the earlier result, revise the method,
and rerun rather than selecting a favorable sample.

This step is complete when every claim has current sensitive evidence or an
explicit reason it could not run, with freshness, environment, and material
limitations visible.

## 4. Keep probes bounded and authorized

When existing evidence cannot test an accepted claim, construct the smallest
disposable probe that stays inside current authority, does not change product
behavior, and creates no unapproved external consequence. Durable regression
tests and implementation changes belong to Delivery or TDD.

A probe whose credible actual consequence is destructive, irreversible,
production-changing, data-affecting, permission-changing, secret-handling,
cross-project, infrastructure-changing, or otherwise consequential calls
[Check Safety](../check-safety/SKILL.md) with its exact action, target, effect,
environment, blast radius and loss, recovery and irreversibility, Plan
coverage, Implementation and external authority, and current evidence. Run
only on `proceed`; `revise` and
`stop` produce no effect and leave the claim `unverified` unless valid prior
evidence already contradicts it. Externality alone is not a Check Safety
trigger, but any external action still requires exact target-specific external
authority.

This step is complete when every probe is disposable and in-bound, or its
missing authority, safety, or evidence is returned without execution.

## 5. Compose bounded evidence

Call [Delegate](../delegate/SKILL.md) only for a justified independent proof
path. Pass the positive independence benefit and role, exact claims and
outcome, accepted truth and consequence, target, governing boundary and
exclusions, environment, authority, tools and safety boundary, required
sensitivity and proof, available sources, return and escalation rules, and
result shape. Integrate `delegated`; preserve
gaps from `partial`; use the direct path for `no-op` or delegation-only
`blocked`; and keep evidence or authority `blocked` and `stopped` bounded.

Call [Debug](../debug/SKILL.md) when a failed claim's cause matters and `debug`
is absent from `assurance_path`. Pass the original claim, accepted behavior and
conditions, failing evidence, full reproduction, governing boundary,
diagnosis-only authority and proof, `return_to=verify`, and the path with
`debug` appended. Consume
`diagnosed` or `corrected` as causal evidence only; `unreproduced`,
`needs-owner`, `blocked`, and `stopped` do not change the claim status.
If `debug` already appears in the path, preserve the failed status and return
without diagnosis.

For an attacker-focused claim, call [Security](../security/SKILL.md) only when
`security` is absent from `assurance_path`. Pass the stable claim and boundary,
governing security expectation, target and exclusions, attacker surface,
current evidence and contradictory observation, environment, required
sensitivity, authority, caller-retained route and gates, `return_to=verify`,
the path with `security` appended, and the requested return. Consume
`findings` or `no-high-confidence-findings` as scoped security evidence;
`no-op`, `needs-verification`, and `blocked` remain `unverified`;
`needs-owner` returns the claim to its causal owner; and `stopped` preserves
its current status. If `security` already appears in the path, do not call it
again: return the exact claim status and missing attacker evidence to the
caller. Security interprets exploitability; Verify retains claim status.

Call [Make Tangible](../make-tangible/SKILL.md) when human recognition is the
actual oracle. Pass the exact experiential claim and judgment, audience and
starting point, accepted truth and evidence, medium and fidelity, required
reaction, authority, lifetime, and requested return. Consume only the scoped reaction and its
fidelity limits from `no-op`, `constructed`, or `revised`; `blocked` and
`stopped` leave it `unverified`.

This step is complete when every supporting return is integrated with its
evidence and limitation and no dependency has taken claim ownership,
acceptance, or authority.

## 6. Interpret, return, and stop

For each claim use exactly one status:

- `verified`: current sensitive evidence supports the claim within its stated
  boundary;
- `failed`: valid evidence contradicts it; or
- `unverified`: proof is missing, stale, inconclusive, flaky, unavailable,
  unsuitable, or unable to run reliably.

Infrastructure failure is `unverified`, not a product failure. A flaky pass
remains `unverified` until reliable evidence exists. A human reaction verifies
only the experiential claim it observed. Return partial statuses and all
limitations; do not rerun a failed probe hoping for a convenient pass.

Return a bounded `Verification Result` containing each claim, target and
governing boundary, exact evidence and expected/observed result, environment,
freshness, status, correlations, causal owner or next evidence, and the
caller's retained interpretation, authority, acceptance, and stopping. The
overall result is `verified` only when every required claim is `verified`;
any valid contradiction makes it `failed`; missing or unsuitable proof makes
it `unverified`; a human stop returns `stopped` with partial statuses.

Stop here. Verify never diagnoses, repairs, accepts, authorizes, commits,
publishes, deploys, or starts another workflow.
