# Verify — Maintainer Contract

This is the acceptance contract for the shipping
[Verify owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Verify is supporting work inside an active Inquiry, not a lifecycle owner. It
may compose bounded proof autonomously, but it cannot select position,
transition, gate, authority, or continuation.

Verify tests exact claims with current evidence capable of disproving them and
returns `verified`, `failed`, or `unverified` at the supported scope. It keeps
claims fixed, evidence sensitive, current, and honest; it never turns a pass
into acceptance. Verify retains claim construction and status; the caller
retains interpretation, route, authority, acceptance, and stopping.

## Entry and exclusions

Verify is internally reachable before material completion claims or whenever an owner
needs bounded proof. Deliver, Direct Work, Review, or another owning skill may
call it with exact claims and a governing boundary.

Verify excludes diagnosis, repair, specification invention, acceptance,
authority, commit, publication, deployment, universal coverage, and arbitrary
test rituals. A passing command is evidence only for the claim and boundary it
can actually observe.

## Invariants

1. Each requested claim names its observable property, conditions, governing
   boundary, contradictory observation, and supported scope.
2. Governing claims remain fixed while evidence runs; inconvenient evidence is
   not evaded by narrowing, splitting, or reinterpretation.
3. Evidence reaches the boundary where behavior matters, exercises relevant
   conditions, asserts material outcomes, derives expectations independently,
   and could fail for the excluded defect.
4. Current target, dependencies, configuration, environment, and governing
   claim determine freshness. Material correction invalidates exposed proof.
5. Correlated tests, tools, evaluators, fixtures, mocks, or environments are
   one evidence path with visible shared limitations.
6. Quantitative and stochastic conditions are fixed before observation; the
   full valid sample and uncertainty are reported.
7. Compatibility and migration evidence covers promised cells, mixed states,
   interruption, retry, idempotency, and data invariants where relevant.
8. Disposable probes stay inside authority and do not alter product behavior;
   consequential effects require exact action authority and Check Safety.
9. Delegate and Make Tangible return evidence only; Verify retains claim
   construction, status, scope, and stopping. Failed or attacker-focused
   claims return to their caller rather than opening Debug or Security.
10. Human judgment verifies only the exact experiential claim it observed;
    unavailable, stale, flaky, unsuitable, or infrastructure evidence is
    `unverified`.
11. Overall `verified` requires every requested claim to be `verified`; mixed
    statuses remain explicit.
12. Return stops without diagnosis, correction, acceptance, authority, or
    continuation.
13. `assurance_path` records Verify so another assurance owner cannot re-enter
    it for the same path. Verify is terminal and opens no Debug, Refactor, TDD,
    Review, or Security edge.

## Outcomes and return

```text
Verification Result {
  outcome: verified | failed | unverified | stopped,
  claims {
    claim,
    target_and_governing_boundary,
    conditions,
    evidence_and_exact_probe,
    expected_and_observed,
    environment_and_configuration,
    freshness,
    status: verified | failed | unverified,
    limitation_or_correlation
  }*,
  reused_evidence_and_invalidated_proof?,
  causal_owner_or_required_next_evidence,
  caller_retained_interpretation_authority_acceptance_and_stop
}
```

The overall outcome is `verified` only when all required claims are verified;
any valid contradiction produces `failed`; missing, stale, inconclusive,
flaky, unavailable, or unsuitable proof produces `unverified`; and a human
stop produces `stopped` with partial statuses. A failed claim does not imply
its cause.

## Effects, authority, persistence, and learning

Read-only tests, builds, source inspection, and bounded disposable local probes
are ordinary when within the caller's authority. A probe whose credible actual
consequence is destructive, irreversible, production-changing,
data-affecting, permission-changing, secret-handling, cross-project,
infrastructure-changing, or otherwise consequential requires exact Plan and
Implementation Authorization and Check Safety. Externality alone is not a
Check Safety trigger, though any external action still requires exact
target-specific authority. `proceed` permits only that exact action; `revise`
and `stop` produce no effect. Verify never mutates product behavior, repairs
data, or changes a claim to achieve green.

Evidence, logs, comparisons, and reactions are transient unless a named future
consumer needs a compact pointer. Any additional durable record requires a
distinct purpose, consumer, lifecycle, and authority boundary. A changed claim,
target, authority, or scope returns to its exact owner and re-gates affected
work.

## Direct composition

Direct calls carry the callee's required brief and preserve its exact return: one complete
brief, lossless returns, no authority transfer, and no re-entry of a capability
already in `assurance_path`. Each callee owns its intake contract; if Verify
cannot supply a required field, return `blocked` with the exact gap before
invocation. The caller policies are:

| Target | Caller policy |
| --- | --- |
| [Make Tangible](../make-tangible/SKILL.md) | Human recognition is the actual oracle. A `no-op`, `constructed`, or `revised` return supplies scoped reaction/conclusions/limits; `blocked` or `stopped` leaves the claim `unverified` or stops. |
| [Delegate](../delegate/SPEC.md) | Call only for a positive independent-proof benefit. `delegated` integrates scoped evidence; `partial` preserves gaps; `no-op` or delegation-only `blocked` uses the direct path; evidence/authority `blocked` or `stopped` remains bounded. |
| [Check Safety](../check-safety/SPEC.md) | A consequential probe requires exact action authority and Plan coverage. Preserve `proceed`, `revise`, or `stop`; only `proceed` releases that exact action, while `revise` and `stop` produce no effect and leave the claim `unverified` unless valid prior evidence already contradicts it. |

No dependency grants authority, accepts a result, diagnoses a failure, or
opens another assurance owner. Verify owns exact status and returns it.

## Runtime references and exact tree

`SKILL.md` keeps claim construction, evidence selection, sensitivity,
freshness, direct calls, outcomes, scope, return, and stopping inline. Keep the
direct-call brief and exact-return rules inline when composing or consuming any
dependency. The three local references are terminal
methods selected by distinct evidence branches. Shared Evaluation is loaded
only for material correlation, adaptation, stochasticity, or evaluator
sensitivity.

```text
skills/verify/
├── SKILL.md
├── SPEC.md
├── agents/
│   └── openai.yaml
└── references/
    ├── compatibility-evidence.md
    ├── migration-data-evidence.md
    └── quantitative-evidence.md
```

There are no scripts, assets, fixtures, templates, wrappers, hooks, or
required integrations.

## Source basis

At runtime, `SKILL.md` loads shared [Praxis Control](../../references/control.md)
once at owner entry.


This contract is maintained against plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), [Work](../../docs/concepts/work.md),
the [skill-package contract](../../docs/maintainers/skill-packages.md), the
[conformance contract](../../docs/maintainers/conformance-and-release.md), the
declared local
references, shared [Evaluation](../../references/evaluation.md),
and the assembled [Make Tangible](../make-tangible/SKILL.md),
[Delegate](../delegate/SPEC.md), and [Check Safety](../check-safety/SPEC.md)
contracts. These plugin-local files
are the complete maintainer source basis; no non-plugin material is required
to use, review, validate, or maintain this package.

## Conformance cases

1. A vague completion phrase is split into fixed falsifiable claims before
   evidence; unclear governing truth returns `unverified` to its owner.
2. Each check reaches its governing boundary, exercises conditions, has an
   independent expectation, and can fail for the excluded defect.
3. A passing command that is stale, insensitive, skipped, tautological,
   contract-mocking, or correlated is not inflated into verification.
4. Material correction invalidates exposed evidence and reruns only affected
   proof against the exact final target.
5. Quantitative claims predeclare workload, baseline, sample, threshold,
   aggregation, uncertainty, and invalid-run rules; the full valid sample
   returns.
6. Compatibility claims name cells and equivalence; unavailable cells remain
   `unverified`.
7. Migration claims prove independent before/after invariants and supported
   interruption, retry, idempotency, or rollback paths without live-data
   opportunism.
8. Failed and attacker-focused claims return to the caller with exact status;
   Verify opens no diagnostic or attacker-interpretation owner.
9. Consequential probes call Check Safety, act only on `proceed`, and preserve
   `revise`/`stop` without effect.
10. Human reaction verifies only its observed experiential claim, mixed statuses
    remain explicit, and completion stops without repair or continuation.
11. An assurance-component call follows the local assurance-path no-loop rule and
    appends its callee to `assurance_path` only when invoked; a capability
    already in the path is not called again for the same work.
