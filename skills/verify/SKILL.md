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

Carry `assurance_path`, defaulting to `[verify]`, and apply the no-loops rule
under the local assurance-path no-loop rule for every assurance call.
Verify always retains the exact claim status.

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

For each call, pass the callee's required current brief and preserve its exact
return, evidence, and limits; no call transfers authority or re-enters an
active assurance path. If Verify cannot supply a required field, return `blocked` with the
exact gap before invocation. The caller policies are:

- Call [Delegate](../delegate/SKILL.md) only when an independent proof path has
  a positive benefit. `delegated` contributes scoped evidence; `partial`
  preserves gaps; `no-op` or a delegation-only `blocked` uses the direct path;
  evidence or authority `blocked` and `stopped` remain bounded.
- Call [Debug](../debug/SKILL.md) when a failed claim's cause matters and
  `debug` is absent from `assurance_path`. `diagnosed` or `corrected` is causal
  evidence only; `unreproduced`, `needs-owner`, `blocked`, and `stopped` do not
  change claim status. An already-visited Debug is not called again.
- Call [Security](../security/SKILL.md) for an attacker-focused claim only
  when `security` is absent from `assurance_path`. `findings` and
  `no-high-confidence-findings` are scoped security evidence;
  `no-op`, `needs-verification`, and `blocked` remain `unverified`;
  `needs-owner` returns to its causal owner; and `stopped` preserves status.
  Security interprets exploitability; Verify retains claim status.
- Call [Make Tangible](../make-tangible/SKILL.md) only when human recognition
  is the actual oracle. Use the scoped reaction and fidelity limits from
  `no-op`, `constructed`, or `revised`; `blocked` and `stopped` leave the claim
  `unverified`.
- Call [Check Safety](../check-safety/SKILL.md) for a consequential probe only
  when exact action authority and Plan coverage are present. `proceed`,
  `revise`, or `stop` are preserved; only `proceed` releases that exact
  action, while `revise` and `stop` produce no effect and leave the claim
  `unverified` unless valid prior evidence already contradicts it.

An already-visited Debug or Security is a no-call, never a fabricated result.
No dependency changes claim ownership, status, acceptance, authority, or
stopping.

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
