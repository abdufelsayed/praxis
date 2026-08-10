---
name: verify
description: "Verify exact claims with current falsifiable evidence. Use before material completion claims or when another owner needs bounded proof."
---

# Verify

Load [Praxis Control](../../references/control.md).

Verify is a supporting capability inside the active Inquiry. It may compose
proof autonomously within the inquiry's policy, but it does not select a
lifecycle position, meaningful transition, gate, authority, or continuation.
A direct verification request may establish one bounded Inquiry.

Verify owns claim construction, evidence composition, freshness, scope, and
status. The caller retains meaning, authority, acceptance, and next action.

## Fix claims and evidence boundaries

Read the governing Requirements, selected Evolution, Issues, Plan, target,
exclusions, and result boundary. Split composite language into falsifiable
claims. Each claim names an observable property, conditions, boundary,
contradictory observation, and supported scope. Return unclear claims to their
owner; do not shrink them after seeing inconvenient evidence.

Choose the lightest current evidence able to disagree at the governing
boundary: focused tests for contained behavior; integration, API, browser, or
end-to-end probes for crossing contracts; builds and static checks for
structural properties; faithful comparison plus human reaction for an
experiential claim. Source shape proves only source shape. A mock or probe that
bypasses the governing boundary cannot verify it.

Load only the method that applies:

- [quantitative evidence](references/quantitative-evidence.md) for sampling,
  variability, aggregation, benchmarks, or probability;
- [compatibility evidence](references/compatibility-evidence.md) for platform,
  runtime, version, configuration, or protocol matrices;
- [migration and data evidence](references/migration-data-evidence.md) for
  schema or data transitions, interruption, retry, rollback, or idempotency;
- shared [evaluation guidance](../../references/evaluation.md) when evidence
  paths are correlated, adaptive, stochastic, or evaluator-sensitive.

## Run fresh, sensitive proof

Keep the claim fixed while observing. Evidence must reach the boundary,
exercise the relevant condition, assert the material outcome, derive its
expectation independently, and be capable of failing for the excluded defect.
Treat correlated tests, fixtures, tools, environments, and evaluators as one
path and state the shared limitation.

Target the final source, dependencies, configuration, and environment. Reuse
earlier proof only when these and the claim are materially unchanged. A change
invalidates exposed evidence. Never generalize beyond the actual target, data,
platform, and conditions.

For quantitative claims, fix workload, baseline, environment, sample or
stopping rule, aggregation, threshold, uncertainty, and invalid-run rules
before the decisive observation. Report the full valid sample.

If existing evidence cannot test an accepted claim, construct the smallest
disposable probe within current authority. Durable regression tests belong to
Delivery or TDD. A consequential probe calls
[Check Safety](../check-safety/SKILL.md) and runs only on `proceed`.
Safety `revise` or `stop` performs no probe and leaves the claim `unverified`.

Call [Delegate](../delegate/SKILL.md) only when an independent proof path has a
positive benefit. Integrate `delegated`; preserve `partial`; use the direct
path after `no-op` or delegation-only `blocked`; preserve evidence-, authority-,
or human-stopped boundaries exactly.

Call [Make Tangible](../make-tangible/SKILL.md) only when human recognition is
the actual oracle. `no-op`, `constructed`, or `revised` supplies only its
scoped reaction, conclusions, and fidelity limits; `blocked` leaves the claim
`unverified`, and `stopped` stops. Verify retains claim status.

## Interpret and stop

For each claim return exactly one status:

- `verified` for current sensitive support within the stated boundary;
- `failed` for valid contradictory evidence;
- `unverified` for missing, stale, inconclusive, flaky, unavailable, or
  unsuitable proof.

Infrastructure failure is `unverified`, not product failure. A human reaction
verifies only the experiential claim observed. Return each claim, exact
evidence and expected/observed result, environment, freshness, correlation,
limits, and causal owner or next evidence. The whole result is `verified` only
when every required claim is verified. Verify does not diagnose, repair,
accept, authorize, commit, publish, or deploy. A failed claim returns to its
caller; Verify never calls Debug to diagnose it or Security to reinterpret it.
