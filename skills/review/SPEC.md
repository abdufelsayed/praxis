# Review — Maintainer Contract

## Purpose

Review challenges one fixed proposal, record, code target, delivered result,
or set of external comments against the governing truth and the quality that
must hold around it. It is read-only and returns prioritized,
evidence-backed findings, rejected or unresolved feedback, coverage, and
limits. Review retains adversarial interpretation, finding synthesis, and
stopping; its caller retains meaning, route, gates, authority, acceptance, and
the decision to correct or backtrack.

## Entry and exclusions

Review is model-invoked when an owner needs adversarial judgment of one fixed
target. Delivery invokes it before presenting a Plan-governed result for
acceptance; another owning loop may invoke it for a proposal, design, record,
artifact, external comment, or correction review. The caller supplies the
target version, governing truth, authority, exclusions, evidence boundary, and
the decision the review supports.

Review excludes mutation, proposal rewriting, specification invention,
solution selection, approval, verification ownership, result acceptance,
commit, publication, deployment, automatic continuation, and unrelated debt.
A finding may recommend the smallest correction, but Review never performs it.

## Behavioral contract

1. Fix one exact target version, owner, caller, governing contract, review
   question, authority boundary, exclusions, and evidence boundary before
   judging it.
2. Keep the target fixed while reviewing. A material target change invalidates
   affected coverage and requires a fresh pass against the changed version.
3. Load only the local reference for the fixed target kind: proposals and
   records, code changes, delivered results, or external feedback. Several
   references compose only for deliberately fixed distinct targets.
4. Reconstruct accepted Requirements, Evolution, Issues, Plan, authority,
   exclusions, source, dependencies, callers, tests, history, and existing
   evidence needed by the target. Missing truth or proof remains an explicit
   limitation rather than a guessed contract.
5. Keep findings bounded to problems introduced, worsened, exposed, or
   materially relied upon by the target. Unrelated pre-existing debt is not a
   correction boundary.
6. Code review always applies both Specification Fidelity and Engineering
   Integrity. A delivered Result lacking implementation assurance receives
   both lenses on the underlying working form in the same review. Tests and
   green checks are evidence, never a substitute for a lens or proof of the
   governing expectation; Verify remains for one exact executable fact.
7. Every finding identifies its expectation or failure mechanism, connected
   evidence, consequence, priority, confidence, smallest credible correction,
   materially affected causal surface, and likely owner.
8. Validate apparent findings against counterevidence, deduplicate shared
   causes, and keep preferences, suggestions, dismissed claims, unresolved
   claims, confirmed defects, and hard constraints distinct. For confirmed
   external feedback, distinguish an implementation defect inside accepted
   meaning from a finding that changes governing meaning, proof, risk, or
   authority: keep the former with the current correction surface and send the
   latter to the earliest causal owner and affected gate. The comment author
   supplies evidence, never authority.
9. Use specialized calls only for their bounded question. Refactor investigates
   substantial changeability pressure, Security attacker paths, Verify exact
   executable facts, Delegate independent evidence, and Orient one settled
   model after human agreement. No call grants authority or accepts a target.
10. Project every direct return once: a scoped evidence return is complete
    only for the question it answers; `partial`, `blocked`, `unverified`,
    owner or causal returns (`needs-design`, `needs-owner`,
    `needs-verification`, or `return_kind=causal-return`), and unresolved
    comprehension states (`orientation-blocked` or
    `misconception-unresolved`) are incomplete projections. Preserve the exact
    dependency envelope/state and any causal owner, reason, boundary, result,
    and revisit condition. `understanding-unconfirmed` is incomplete when the
    accepted objective requires an applied human check; otherwise it remains
    scoped evidence. A dependency `stopped` is an incomplete projection;
    Review's top-level `stopped` is only its own human or caller stop. A
    required blocked surface or unresolved governing meaning forces
    `incomplete` with the causal return when one exists.
11. Review depth, independent reviewers, partitions, and evidence providers
    follow consequence, uncertainty, novelty, likely correction cost, and the
    chance that another path changes the judgment. No fixed worker-reviewer
    procession is required.
12. An independent reviewer receives the fixed target, governing truth,
    assigned lens, authority, exclusions, and evidence sources without earlier
    conclusions. A reviewer adjudicating a disputed finding receives that exact
    claim because independent discovery is not its purpose. Correlated
    agreement is one evidence path.
13. If one reliable pass cannot cover the target, partition explicit bounded
    subreviews and integrate their coverage and findings. A sampled target
    cannot produce a complete “no findings” result.
14. A correction that preserves accepted meaning and current authority may be
    re-reviewed locally; a correction that changes behavior, target,
    consequence, risk, proof, or authority returns to the exact causal owner
    and affected gate before review continues.
15. Completion states whether the entire fixed target received every required
    lens, every invoked evidence path returned or is a named limitation,
    findings were validated and deduplicated, priorities are actionable, and
    coverage is honest.
16. Review returns one bounded result and stops. It does not fix, approve,
    verify, accept, commit, publish, deploy, or begin another activity.

## Outcomes and return

```text
Review Result {
  outcome: complete | incomplete | stopped,
  fixed_target_and_version,
  governing_truth_and_review_question,
  coverage {
    target_kind,
    lenses_and_subreviews,
    evidence_and_invoked_calls,
    dependency_projections? {
      callee,
      projected_outcome: complete | incomplete | stopped,
      exact_dependency_envelope_and_state,
      causal_owner_or_revisit_condition?,
      exact_causal_dependency_result?
    }*,
    complete_or_unexamined_surface
  },
  findings {
    status: confirmed | unresolved | dismissed | suggestion,
    lens,
    governing_expectation_or_failure_mechanism,
    evidence,
    consequence,
    priority,
    confidence,
    smallest_credible_correction,
    materially_affected_causal_surface,
    likely_causal_owner
  }*,
  external_feedback_classifications?,
  limitations_and_uncertainty,
  causal_owner_or_revisit_condition?,
  caller_retained_route_gate_authority_acceptance_and_stop
}
```

`complete` requires full fixed-target coverage through every required lens,
validated and deduplicated findings, returned evidence paths, and stated
limitations. It may contain no actionable finding, but that claim is scoped to
the stated coverage. `incomplete` names the unexamined surface, missing
context, unavailable call, required blocked or partial evidence, unresolved
governing meaning, or causal owner return preventing a complete judgment. Its
dependency projection preserves the exact callee envelope/state and causal
owner/result. `stopped` is only a human or caller stop of Review itself and
preserves Review's exact partial state; a dependency stop remains an
`incomplete` projection, while a `stopped` projection records that Review
stopped before the dependency projection could complete. A dependency
limitation is not silently converted
into approval, acceptance, or narrower coverage.

External feedback remains a claim until classified `confirmed`, `rejected`, or
`unresolved`; the unified result records rejected material claims as
`dismissed` findings with counterevidence. Optional suggestions do not become
blocking findings without a material mechanism. No outcome grants a route,
authority, acceptance, or continuation.

## Effects, authority, persistence, and learning

Source, tests, history, dependency, and artifact inspection are read-only
within the caller's boundary. Review may construct no product mutation and
creates no external effect. Specialized capabilities keep their own effect
and safety boundaries; their returns are evidence only. A human-owned
orientation suggestion must be accepted before Orient begins.

Findings, comments, probes, comparisons, reviewer messages, and raw tool
output are conversational and transient by default. Promote only interpreted
learning that a named future owner needs into its owning Requirement,
Evolution, Issue, Plan, or result context. Do not create a review ledger,
scorecard, transcript archive, receipt, or generic learning file.

If a finding changes governing meaning, authority, proof, target, risk, or
consequence, return it to the earliest causal owner and affected gate. A local
implementation correction remains with the caller while accepted meaning and
authority stay valid; material corrections invalidate exposed review and
require fresh coverage.

## Direct composition

| Target | Trigger and bounded request | Consumed return | Ownership retained by Review |
| --- | --- | --- | --- |
| [Refactor](../refactor/SPEC.md) | A concrete changeability mechanism needs substantial seam, ownership, dependency, or preservation reconstruction; pass fixed target/version, governing records and source evidence, mechanism and consequence, scope/exclusions, caller/read-only authority, preservation question, and requested return. | Preserve exact `analyzed`, `relieved`, `partial`, `needs-design`, `needs-owner`, `blocked`, or `stopped` envelope; apply the shared projection rule. | Fixed target, finding interpretation, priority, integrated coverage, route, authority, acceptance, and stopping. |
| [Security](../security/SPEC.md) | A meaningful attacker surface or credible security hypothesis needs attacker-focused evidence; pass one bounded question, fixed target/version, governing expectation, assets/properties, actors/trust boundaries, attacker inputs, evidence/counterevidence, scope/exclusions, environment, read-only authority/safety, `return_to=review`, and result shape. | Preserve exact `no-op`, `findings`, `no-high-confidence-findings`, `needs-verification`, `needs-owner`, `blocked`, or `stopped` envelope; apply the shared projection rule. | Fixed target, integrated judgment, consequence, priority, complete coverage, causal return, and stopping. |
| [Verify](../verify/SPEC.md) | A material finding depends on one exact executable fact; pass fixed claim, target/governing boundary, contradictory observation, conditions, environment, sensitivity, evidence, authority, `return_to=review`, and requested result. | Preserve exact `verified`, `failed`, `unverified`, or `stopped` envelope; apply the shared projection rule. | Finding meaning, consequence, priority, coverage, route, authority, acceptance, and stopping. |
| [Delegate](../delegate/SPEC.md) | A genuinely independent Reviewer, Verifier, or Scout path has positive coverage, confidence, context, cost, or elapsed-time benefit; pass benefit/role, fixed target/version, governing truth and lens, scope/exclusions, authority/tools/safety, required evidence/proof, source pointers, return/escalation, and result shape. | Preserve exact `delegated`, `no-op`, `partial`, `blocked`, or `stopped` envelope; apply the shared projection rule. | Target partition, reviewer independence, synthesis, conflicts, coverage, authority, acceptance, and stopping. |
| [Orient](../orient/SPEC.md) | After human agreement to a bounded suggestion, a settled model materially helps the human understand or inspect the fixed target; pass learning objective, starting point, settled model, source anchors, limits, target question, caller context, and requested return. | Preserve exact comprehension state (`orientation-blocked`, `misconception-unresolved`, `understanding-observed`, `understanding-unconfirmed`, or `explained`), `causal-return`, or `stopped` envelope; apply the shared projection rule. Declined suggestions do not claim comprehension. | Finding, severity, causal interpretation, coverage, route, authority, acceptance, and stopping. |

The shared projection is exhaustive: a scoped evidence return projects
`complete` only for the question it answers; `partial`, `blocked`,
`unverified`, `needs-design`, `needs-owner`, `needs-verification`,
`return_kind=causal-return`, `orientation-blocked`, or
`misconception-unresolved` projects `incomplete`; and a dependency `stopped`
also projects `incomplete`. Each projection records the untouched dependency
envelope and state. Copy its causal owner, reason, boundary, exact dependency
result, and revisit condition when present. A required blocked surface or
`understanding-unconfirmed` projects `incomplete` when its applied check is
required; otherwise it remains scoped evidence. A required blocked surface or
unresolved governing meaning makes the Review outcome `incomplete` and uses
that causal return; an optional limitation can leave Review `complete` only
when all required coverage remains complete and the limitation is explicit.
Review's top-level `stopped` is reserved for its own human or caller stop and
preserves Review's partial state; a `stopped` projection is used only when
that Review stop occurs before a dependency projection can complete.

No direct dependency re-enters Review, selects a route, changes the target,
grants authority, approves a record, accepts a result, or starts further work.
Review does not call Plannotator directly; a caller-owned native gate remains
with that caller.

## Runtime references and exact tree

`SKILL.md` keeps target fixation, contract reconstruction, finding quality,
code lenses, direct calls, coverage, return, and stopping inline. Four local
references are terminal target-specific methods selected only at their named
decision points. Shared Evaluation is terminal context for multiple,
correlated, adaptive, stochastic, or conflicting evidence.

```text
skills/review/
├── SKILL.md
├── SPEC.md
├── agents/
│   └── openai.yaml
└── references/
    ├── code-changes.md
    ├── delivered-results.md
    ├── external-feedback.md
    └── proposals-and-records.md
```

There are no scripts, assets, fixtures, templates, wrappers, hooks, or
required integrations. Local references do not choose entry, call skills,
grant authority, define completion, stop the caller, or form a reference chain.

| Decision point | Runtime reference | Load condition | Boundary |
| --- | --- | --- | --- |
| Governing proposal or record | [Proposals and Records](references/proposals-and-records.md) | The fixed target will govern later work. | Stage-appropriate coherence, coverage, authority, assumptions, risks, and proof. |
| Code target | [Code Changes](references/code-changes.md) | The fixed target is implementation, diff, commit, branch, or pull request. | Behavioral boundary, Specification Fidelity, Engineering Integrity, and causal return. |
| Delivered result | [Delivered Results](references/delivered-results.md) | The fixed target claims bounded Delivery is complete or partial. | Claim/evidence reconciliation, learning, limitations, and owner return. |
| Supplied feedback | [External Feedback](references/external-feedback.md) | Human comments, agent findings, or automated warnings need adjudication. | Claim extraction, counterevidence, classification, and causal owner. |
| Multi-evaluator judgment | [Evaluation](../../references/evaluation.md) | Multiple paths, adaptive correction, correlation, or conflict affects confidence. | Signal meaning, contrast, evaluator context, proxy resistance, and local stopping. |

## Invocation and host projection

Review is model-invoked because owning loops need autonomous reach for
adversarial judgment of one fixed target. Its exact frontmatter is:

```yaml
---
name: review
description: "Review one fixed target adversarially for meaning, quality, and failure mechanisms. Use for proposals, records, changes, results, external feedback, or correction review."
---
```

Its host projection is presentation and launch copy only:

```yaml
interface:
  display_name: "Review"
  short_description: "Challenge one fixed target with evidence"
  default_prompt: "Use $review to inspect this fixed target adversarially."
policy:
  allow_implicit_invocation: true
```

Host metadata cannot add a trigger, effect, dependency, authority, route,
approval, acceptance, or continuation.

## Source basis

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

This contract is maintained against plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work](../../docs/concepts/work.md)
owners; the [skill-package contract](../../docs/maintainers/skill-packages.md);
the [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
shared [Evaluation](../../references/evaluation.md); the four declared local
references; and the assembled [Refactor](../refactor/SPEC.md),
[Security](../security/SPEC.md), [Verify](../verify/SPEC.md),
[Delegate](../delegate/SPEC.md), and [Orient](../orient/SPEC.md) contracts.
These plugin-local files are the complete maintainer source basis; the declared
skill surface and references are the complete runtime. No non-plugin material
is required to use, review, validate, or maintain this package.

## Conformance cases

1. A proposal or record is judged at its actual stage; missing later-stage
   implementation detail is not a finding, while missing governing meaning is.
2. A code target receives both Specification Fidelity and Engineering Integrity
   review, and findings stay bounded to mechanisms introduced, worsened,
   exposed, or materially relied upon by the change.
3. A delivered Result distinguishes failed behavior, weak or missing evidence,
   and incomplete disclosure, returning each to its causal owner.
4. External feedback is bound to its target version, checked against supporting
   and counterevidence, and classified confirmed, rejected, or unresolved;
   consensus never becomes authority or acceptance.
5. A target change invalidates affected coverage and repeats the relevant
   lenses; an unchanged target keeps still-valid evidence.
6. Every finding names expectation/mechanism, evidence, consequence, priority,
   confidence, smallest credible correction, affected surface, and owner;
   symptoms are deduplicated and preferences remain suggestions.
7. A fixed target with one review path remains direct; genuinely independent
   review receives no earlier conclusions, and correlated agreement remains
   one evidence path with visible limits.
8. Refactor returns structural evidence without mutation or acceptance, and
   `needs-design`, `needs-owner`, `blocked`, and `stopped` remain distinct.
9. Security reports validated attacker paths separately from hardening, keeps
   confidence distinct from severity, and preserves `no-op`, unresolved,
   blocked, and stopped states.
10. Verify is used only for one exact executable fact; `verified`, `failed`,
    `unverified`, and `stopped` remain scoped evidence and do not become an
    integrated approval.
11. Delegate launches only for positive benefit, uses a fresh least-privilege
    context by default, and returns compact evidence without transferring
    authority, acceptance, or stopping.
12. Orient begins only after direct request or human agreement to a bounded
    suggestion; comprehension, causal return, and stop states are not
    collapsed, and disagreement with governing truth returns to its owner.
13. If a reliable pass cannot cover the fixed target, Review returns
    `incomplete` with the unexamined boundary; sampled coverage cannot claim
    complete no findings.
14. Missing governing truth, evidence, or dependency results remain visible as
    limits; Review does not invent a contract, narrow coverage, or continue
    through an unresolved causal change.
15. Completion returns a compact evidence-backed result, no approval or
    acceptance claim, no mutation or adjacent route, and then stops.
16. Every direct callee return is preserved as an exact dependency projection:
    scoped evidence can project `complete`; `partial`, `blocked`, causal or
    owner returns, and insufficient proof project `incomplete`; and a callee
    `stopped` remains an `incomplete` projection with its exact partial state.
17. A required blocked lens, missing evidence, or unresolved governing meaning
    returns Review `incomplete` and carries the exact causal owner/result when
    supplied; optional limitations may accompany `complete` only when all
    required target coverage remains complete.
18. Review `stopped` is produced only by an explicit human or caller stop of
    Review, preserving Review's own partial state; no dependency stop is
    promoted to that outcome.
