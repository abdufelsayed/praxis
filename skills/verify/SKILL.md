---
name: verify
description: Test exact claims with current falsifiable evidence. Use before material completion claims or when another workflow needs bounded proof.
---

# Verify

Verification owns claims and evidence, not diagnosis or repair.

## Fix the claims

Split composite completion language into falsifiable claims. Each claim names the
observable property, conditions, boundary, contradictory observation, and
supported scope. Keep the claim fixed while observing; do not shrink it after
inconvenient evidence.

Choose the lightest current evidence able to disagree at the governing boundary:
focused tests for contained behavior; integration, API, browser, or end-to-end
probes for crossing contracts; builds and static checks for structural properties;
faithful comparison plus human reaction for an experiential claim. Source shape
proves only source shape.

Read only the method that applies:

- [quantitative evidence](references/quantitative-evidence.md) for sampling,
  variability, benchmarks, or probability;
- [compatibility evidence](references/compatibility-evidence.md) for platform,
  runtime, version, configuration, or protocol matrices;
- [migration and data evidence](references/migration-data-evidence.md) for schema
  or data transitions, interruption, retry, rollback, or idempotency.

## Run fresh, sensitive proof

Evidence must reach the boundary, exercise the relevant condition, assert the
material outcome, derive its expectation independently, and be capable of failing
for the excluded defect. Treat correlated tests, fixtures, tools, environments,
and evaluators as one path and state the shared limitation.

Target the final source, dependencies, configuration, and environment. Reuse
earlier proof only when these and the claim are materially unchanged. Never
generalize beyond the actual target, data, platform, and conditions.

For a quantitative claim, set workload, baseline, environment, sample or stopping
rule, aggregation, threshold, uncertainty, and invalid-run rules before the
decisive observation.

If a disposable probe could have destructive, production, permission, secret,
data, remote, or other consequential effects, first inspect its exact target,
blast radius, recovery, resolved variables and destinations, current state, and
the requester's authority. Prefer a smaller or reversible probe; leave the claim
unverified when the boundary is unsafe or unclear.

## Report bounded truth

For each claim report one of:

- **verified** — current sensitive evidence supports it within the stated boundary;
- **failed** — valid evidence contradicts it;
- **unverified** — proof is missing, stale, inconclusive, flaky, unavailable, or
  unsuitable.

Infrastructure failure is unverified, not product failure. A human reaction
verifies only what that experience can expose. Report exact commands or probes,
expected and observed results, environment, freshness, correlation, and limits.
Verification does not diagnose, repair, accept, commit, publish, or deploy.
