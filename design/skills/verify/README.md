# Verify

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

## What it does

Verify tests exact claims with current evidence capable of disproving them. It
returns `verified`, `failed`, or `unverified` for each claim without turning a
passing command into acceptance.

Its leading idea is **begin with what must be true, then choose evidence that
could prove it false**. The available test commands do not define the
completion claim; governing Requirements, Evolutions, Issues, Plans, and actual
result claims do.

## When to reach for it

[Deliver](../deliver/README.md) invokes Verify before presenting a
Plan-governed result for
acceptance. Direct Work verifies its material completion claims before
reporting. [Review](../review/README.md) may invoke Verify for one executable
factual question, and
another owning loop may invoke it whenever a bounded claim needs current proof.

Verify is not Review. Review challenges meaning and engineering quality; Verify
tests falsifiable claims. Verify is not Debug: it establishes an observed
mismatch but does not diagnose an unknown cause. It grants no mutation,
external-action, approval, or acceptance authority.

## Turn completion into exact claims

Read the caller's completion claim and its governing Requirements, selected
Evolution, Issues, Plan, authority, and exclusions. Translate the requested
proof into falsifiable claims, each naming:

- the observable behavior or property;
- the relevant conditions and boundary;
- what evidence would contradict it; and
- the scope within which the result would hold.

Verify composite work claim by claim. “Password recovery works” may include
request behavior, indistinguishable account responses, token expiry, single
use, and failure behavior. Verify does not invent those requirements: if
governing truth is too vague to determine success, return the affected claim as
`unverified` and send the gap to its exact owner.

Keep the governing claim fixed while observing evidence. Verify cannot rescue
an inconvenient result by narrowing “account deletion removes personal data”
to “the primary profile row is deleted,” splitting away a failed subclaim, or
reinterpreting accepted language after the run. Return the original claim as
`failed` or `unverified` and send any needed clarification or specification
change to its exact causal owner.

An overall completion claim cannot become `verified` until every required
claim is verified.

## Match evidence to the governing boundary

For each claim, choose the lightest current evidence capable of disproving it
at the boundary where the behavior matters:

- focused tests may prove contained behavior;
- integration probes prove contracts that cross owned components;
- API, interface, browser, or end-to-end probes prove public behavior;
- builds and static checks may prove structural or compatibility properties;
- tangible comparisons and recorded human judgment may prove accepted
  experiential claims.

Evidence that mocks away, bypasses, or never reaches the governing boundary
cannot verify the claim. Broader checks are justified when the accepted
contract crosses boundaries, not because end-to-end testing is inherently
stronger.

For an exact source-shape claim, such as “no handler still calls the
deprecated entry point,” Verify may use the narrowest available repository
inspection. A clean scoped result can verify that one tested source form is
absent from the inspected targets; it cannot verify semantic migration or
runtime behavior without additional evidence.

Verification also covers inherited accepted behavior materially exposed by the
change. Impact and shared invariants determine that cumulative proof; Verify
does not rerun everything as a fixed ritual or ignore old behavior merely
because the Issue names only the new behavior.

## Test whether the evidence can disagree

A passing test counts only when it:

- reaches the governing boundary;
- exercises the relevant condition;
- asserts the material outcome;
- derives expectations independently from production logic; and
- could fail for the defect the claim excludes.

Skipped, weakened, tautological, stale, or contract-mocking checks provide no
verification. When consequence or uncertainty warrants it, use a bounded
alternate probe or deliberate sensitivity check to confirm that the evidence
can detect failure. Do not make mutation testing a universal ritual.

Count evidence by the independent defects it can expose rather than by commands
or test layers. Unit, integration, and browser suites that all use the same
simplified OAuth fake remain one correlated evidence path for the behavior that
fake omits. State the shared mock, oracle, fixture, assumption, or bypass as a
limitation instead of presenting correlated green checks as independent
confidence.

## Keep evidence current

Evidence must correspond to the exact final target and a relevant environment.
Earlier evidence may be reused only when its target, dependencies,
configuration, and governing claim remain materially unchanged.

A correction invalidates every proof materially exposed by that correction.
Rerun that evidence against the changed target; retain genuinely unaffected
proof. Record enough about the command or probe, target, environment, and
observed result to judge freshness honestly. Do not create a permanent
verification receipt unless a named future consumer needs one.

## Delegate verbose or independent proof proportionately

[Delegate](../delegate/README.md) may isolate test suites, logs, browser
evidence, documentation
fetching, or another verbose proof procedure when the main context needs only
the resulting evidence. The brief pushes the exact claims, governing boundary,
target, relevant environment, required evidence sensitivity, authority, and
return shape. The Verifier pulls ordinary test and source context as needed and
returns claim statuses with exact commands or probes, observations,
environment, limitations, and evidence pointers rather than raw successful
logs.

Use a fresh Verifier when independent disconfirmation materially strengthens
the claim. A stronger model is proportional to ambiguity and consequence, not
mandatory. The caller still interprets mixed results and chooses debugging,
correction, backtracking, new authority, or acceptance.

## Interpret the three outcomes precisely

For each claim:

- **`verified`** means current evidence capable of disproving the claim ran
  successfully and supports it within the stated boundary.
- **`failed`** means valid evidence contradicts the claim.
- **`unverified`** means required evidence is missing, stale, inconclusive,
  flaky, unavailable, unsuitable, or unable to run reliably.

Preserve partial results. An infrastructure failure is `unverified`, not a
product failure. Absence of evidence is never success. A flaky pass remains
`unverified` until the relevant claim receives reliable evidence.

## Return failures without guessing their cause

For every status, report:

```text
Verification
- exact claim
- target and governing boundary
- evidence used
- expected and observed result
- status
- environment and material limitation
```

This is a content contract rather than a mandatory record format. When valid
evidence contradicts a claim, Verify reports the mismatch and stops short of
diagnosis or repair. The caller may invoke [Debug](../debug/README.md) when the
cause is unknown,
correct an established in-authority defect, or backtrack when the evidence
invalidates governing truth. Any changed target repeats materially affected
verification.

## Create bounded disposable probes when needed

When existing evidence cannot test an accepted claim, Verify may construct and
run the smallest disposable probe that stays inside current authority and does
not alter product behavior or create an unapproved external consequence. For
example, it may exercise the same recovery token twice through a test API to
probe replay rejection.

Durable regression tests and implementation changes belong to Delivery or TDD.
If honest proof requires broader mutation, production access, destructive data
work, or another consequential action, return `unverified` until the necessary
Plan and action-time authority exist.

## Scope evidence without overgeneralizing

Never generalize beyond the target, environment, configuration, data shape,
platform, and conditions the evidence actually covers unless their material
equivalence is established.

A local Chrome run may verify Chrome behavior while Safari remains
`unverified`. A migration against a small fixture does not prove
production-shaped compatibility. State each material gap as a limitation
rather than hiding it behind one passing command.

Load
[Cross-Environment and Compatibility Verification](references/cross-environment-and-compatibility-verification.md)
when a claim spans browsers, platforms, runtime or dependency versions,
configurations, or compatibility states. Load
[Migration and Data-Integrity Verification](references/migration-and-data-integrity-verification.md)
when the claim concerns a schema or data transition whose preservation,
compatibility, interruption, retry, or idempotency behavior needs explicit
proof.

For consequential quantitative or stochastic claims, define the material
evaluation conditions before observing the result: workload, environment,
sample size, aggregation, threshold, and invalid-run rules. Report the full
valid sample. If evidence shows that the method itself was unsuitable, explain
the revision, invalidate the earlier result, and rerun; do not select the
fastest workload or most favorable sample after observation.

Load
[Quantitative and Stochastic Verification](references/quantitative-and-stochastic-verification.md)
when sampling, variability, aggregation, benchmarking, or probabilistic
behavior requires a richer evaluation procedure.

## Use human judgment as a scoped oracle

When an accepted claim genuinely depends on human recognition or judgment,
invoke [Make Tangible](../make-tangible/README.md) to prepare the smallest
useful comparison and state the exact question. Make Tangible invokes
[Plannotator](../plannotator/README.md) Reaction Review when that
surface preserves the intended experience, otherwise it uses the native
medium. Verify receives the scoped reaction and fidelity limits as evidence
for that claim.

Until the judgment occurs, the claim remains `unverified`. A positive response
may verify only that scoped experiential claim; it does not accept the complete
Result, approve another record, or authorize further work.

## Complete and stop

Verify completes when every requested claim has a defensible status, its
evidence and target are explicit, scope and environment are honest, limitations
are visible, and reused evidence has passed the freshness test.

Return the mixed result and stop even when claims failed or remain
`unverified`. Do not rerun a failed probe hoping for a convenient pass. Only the
caller chooses debugging, correction, backtracking, new authority, or
acceptance.

## It is working when

- Every check is tied to one falsifiable governing claim.
- Evidence can expose the failure the claim excludes.
- Governing claims do not shrink or change after inconvenient evidence.
- The evidence reaches the boundary where the behavior matters.
- Correlated checks are reported as one limited evidence path rather than
  inflated into independent confidence.
- Quantitative and stochastic evaluation conditions are fixed before results
  are observed.
- Current target and environment make the result fresh and scoped.
- `failed` and `unverified` remain distinct.
- Disposable probes stay bounded and do not mutate product behavior.
- Human judgment verifies only claims that genuinely use it as their oracle.
- Mixed results return honestly without acceptance or automatic correction.

## Skill structure

Keep claim construction, evidence selection, sensitivity, freshness, outcome
semantics, disposable-probe bounds, environmental scope, failure return, and
stopping in `SKILL.md`. Verify invokes
[Make Tangible](../make-tangible/README.md) for experiential claims,
[Delegate](../delegate/README.md) for justified isolated proof,
[Debug](../debug/README.md) when failure needs diagnosis,
[Security](../security/README.md) for attacker-focused interpretation, and
[Check Safety](../check-safety/README.md) before a consequential probe.
Make Tangible may invoke [Plannotator](../plannotator/README.md) for a faithful
Reaction Review. Verify returns evidence rather than acceptance. Three
conditional references provide richer procedures
for quantitative and stochastic evaluation, cross-environment compatibility,
and migration or data-integrity proof. Load only the reference whose distinct
evidence mechanics affect the current claim; they may compose when one claim
genuinely crosses those boundaries.

Ordinary unit, integration, API, interface, browser, and end-to-end proof stays
in the core procedure. Human-judged claims compose Make Tangible and Feedback
and Evaluation, source-shape claims remain scoped to the inspected surface,
and security questions compose [Security](../security/README.md). Do not add language- or framework-specific
references until real verification work demonstrates recurring procedural
value.

There is no shared Assurance or Safety reference. Invoke
[Check Safety](../check-safety/README.md) directly when a proposed probe has
destructive, data-affecting, production, permission, secret, external, or
similarly consequential effects. The caller retains interpretation, authority,
and the next action.

Use the shared
[Feedback and Evaluation](../../references/feedback-and-evaluation.md) reference
when quantitative sampling, several correlated evidence paths, evaluator
independence, or adaptive verification materially affects the claim. Routine
bounded verification remains self-contained here.

## Direct dependencies

### Skills

- [Make Tangible](../make-tangible/README.md) — construct and verify an
  experiential evidence surface; return scoped reaction and fidelity limits;
  Verify retains the claim.
- [Delegate](../delegate/README.md) — run a justified isolated proof path;
  return compact evidence; Verify retains claim synthesis.
- [Debug](../debug/README.md) — diagnose a failed claim whose cause matters;
  return causal evidence; Verify retains verification status.
- [Security](../security/README.md) — interpret an attacker-focused claim;
  return validated findings and limits; Verify retains evidence composition.
- [Check Safety](../check-safety/README.md) — inspect a consequential probe;
  return `proceed`, `revise`, or `stop`; Verify retains the exact claim and
  probe boundary.

### Shared references

- [Feedback and Evaluation](../../references/feedback-and-evaluation.md) —
  govern stochastic evidence, repeated checks, evaluator independence, and
  correlated paths.
