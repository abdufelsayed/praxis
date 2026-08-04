---
name: review
description: "Review one fixed target adversarially for meaning, quality, and failure mechanisms. Use for proposals, records, changes, results, external feedback, or correction review."
---

# Review

Challenge one fixed target against the governing truth and the quality that
must hold around it. Review is read-only: it owns adversarial interpretation,
finding synthesis, coverage, and the return; the caller retains meaning,
route, gates, authority, acceptance, and stopping.

## 1. Fix the target and contract

Identify the exact proposal version, record, artifact, diff, result, or set of
external comments under review. Bind its owner, caller, target version,
governing Requirements, Evolution, Issues, Plan, authority, exclusions,
available evidence, and the decision the review must support. The target stays
fixed while it is judged. If it changes, re-run every materially affected
lens; earlier clean coverage does not transfer automatically.

Read the governing records and current source, tests, callers, dependencies,
history, and existing evidence needed to understand the target. Keep findings
bounded to problems introduced, worsened, exposed, or materially relied upon
by the target. An unrelated pre-existing problem may be an observation, but it
does not expand the correction boundary or block this target.

This step is complete when one target version, governing contract, review
question, authority boundary, exclusions, and evidence boundary are explicit.

## 2. Select the target lens

Load exactly the local reference for the fixed target kind at its decision
point:

- proposals, Project briefs, Evolution Maps, Evolutions, Issues, Plans, and
  other governing records → [Proposals and Records](references/proposals-and-records.md);
- implementations, diffs, commits, branches, and pull requests → [Code
  Changes](references/code-changes.md);
- a Result claiming bounded Delivery work is complete or partial → [Delivered
  Results](references/delivered-results.md); or
- human, agent, or automated comments → [External Feedback](references/external-feedback.md).

Several references compose only when several distinct targets were deliberately
fixed. A small informal proposal with no durable contract may use the common
procedure without the proposal reference. Do not judge a target by artifacts
that cannot exist yet: a Plan review asks whether its proof is credible, not
whether post-implementation evidence already exists.

This step is complete when every fixed target has its appropriate method and
no conditional reference is loaded through another reference.

## 3. Reconstruct and cover the judgment

Trace the target's promises, constraints, ownership, interfaces, invariants,
assumptions, exclusions, authority, risks, and proof to current evidence.
Mark sourced fact, accepted meaning, inference, critique, verification,
preference, approval, and acceptance distinctly. Missing governing truth or
evidence is a stated limitation, not a guessed contract.

For code, run both lenses:

- **Specification Fidelity:** does the target satisfy the accepted behavior,
  including normal paths, edge cases, failures, state transitions,
  compatibility obligations, and exclusions?
- **Engineering Integrity:** is it correct, secure, understandable,
  changeable, and operationally sound in context, with coherent ownership,
  boundaries, invariants, failure handling, and future modification seams?

When a delivered Result lacks implementation assurance, assess the underlying
working form with both lenses in this same review. Use a bounded evidence call
only when one exact executable fact remains disputed.

For every target, challenge assumptions and failure mechanisms, inspect
connected context deeply enough to cover the complete fixed target, and record
the exact subreview or lens used. Tests and green checks are evidence; they do
not replace either code lens or prove a governing expectation was chosen.

If one reliable pass cannot cover the whole target, partition it into explicit
bounded subreviews and integrate their coverage. A sampled target cannot
return complete “no findings.”

This step is complete when the entire target has an explicit lens and evidence
path, or the return is honestly incomplete with the unexamined boundary named.

## 4. Make every finding earn its consequence

Validate each apparent finding against supporting and counterevidence. Deduplicate
symptoms that share one cause and identify the smallest location that makes the
mechanism understandable. A finding includes:

- the governing expectation or concrete failure mechanism;
- evidence in, or materially connected to, the fixed target;
- consequence if left unchanged;
- priority and confidence;
- the smallest credible correction;
- the materially affected causal surface; and
- the likely causal owner.

Prioritize by consequence and confidence, not fix size or personal preference.
Keep harmless style or naming preferences as optional suggestions. A blocking
finding requires a material mechanism. When one demonstrated mechanism
predicts additional failures, bound the smallest affected surface so a local
patch cannot hide the cause elsewhere.

For external feedback, classify every material comment as `confirmed`,
`rejected`, or `unresolved` with its evidence, consequence, confidence,
smallest correction or next probe, and owner. Feedback is a claim, never
authority, specification, scope, or acceptance.

For a confirmed feedback item, distinguish an implementation defect inside
accepted meaning from a finding that changes governing meaning, proof, risk, or
authority. Keep the former with the current correction surface; send the
latter to the earliest causal owner and affected gate. The comment author
supplies evidence, never authority.

This step is complete when every reported item is evidence-backed or clearly
classified as a suggestion, rejected claim, unresolved claim, or limitation;
duplicates are removed and priorities are explicit.

## 5. Compose bounded evidence when needed

Use the lightest direct capability that answers the unresolved question. Each
call returns evidence only; Review keeps the fixed target, integrated finding,
severity, coverage, route, authority, and stopping.

Project every direct return once, without flattening its envelope:

- A scoped evidence return is a `complete` dependency projection only for the
  question it actually answers. Continue only while every required Review
  lens and target surface remains covered.
- `partial`, `blocked`, an owner or causal return (`needs-design`,
  `needs-owner`, `needs-verification`, or `return_kind=causal-return`), and
  insufficient proof (`unverified`, `orientation-blocked`, or
  `misconception-unresolved`) are `incomplete` dependency projections.
  Preserve the exact dependency envelope and state, including any causal
  owner, reason, boundary, dependency result, and revisit condition. When
  that gap covers required target coverage or unresolved governing meaning,
  Review is `incomplete` and copies the causal data into its owner/revisit
  return. `understanding-unconfirmed` is incomplete when the accepted
  objective requires an applied human check; otherwise it remains scoped
  evidence. An optional limitation can leave Review `complete` only when the
  remaining fixed-target coverage is complete and the limitation is named.
- A callee `stopped` is preserved as an `incomplete` dependency projection
  with its exact partial state. Review's top-level `stopped` is reserved for a
  human or caller stopping Review itself, which preserves Review's own partial
  state and does not rewrite a dependency result; a `stopped` projection is
  used only when that Review stop occurs before the dependency projection can
  complete.

Record each projection in `coverage.dependency_projections`. A Review result
is `complete` only when every required projection, lens, and target surface is
covered and no required meaning remains unresolved; otherwise it is
`incomplete` with the unexamined boundary or causal return explicit.

When substantial changeability or seam reconstruction is needed, call
[Refactor](../refactor/SKILL.md) read-only with the fixed target/version,
governing records and source evidence, concrete mechanism and consequence,
scope and exclusions, caller and read-only authority, preservation question,
and requested return. Preserve its exact `analyzed`, `relieved`, `partial`,
`needs-design`, `needs-owner`, `blocked`, or `stopped` result and apply the
projection rule above. Refactor never fixes or accepts the reviewed target.

When the target exposes a meaningful attacker surface or credible security
hypothesis, call [Security](../security/SKILL.md) with one bounded attacker
question, fixed target/version, governing expectation, assets and properties,
actors and trust boundaries, attacker-controlled inputs, current evidence and
counterevidence, scope and exclusions, environment, read-only authority and
safety boundary, `return_to=review`, and the requested result shape. Integrate
its exact `no-op`, `findings`, `no-high-confidence-findings`,
`needs-verification`, `needs-owner`, `blocked`, or `stopped` result and apply
the projection rule above. Security retains attack-path interpretation and
severity.

When a material finding depends on one exact executable fact, call
[Verify](../verify/SKILL.md) with the fixed claim, target and governing
boundary, contradictory observation, conditions, environment, required
sensitivity, current evidence, authority, `return_to=review`, and the requested
return. Preserve its exact `verified`, `failed`, `unverified`, or `stopped`
result and apply the projection rule above. Verify retains claim status; Review
interprets consequence and priority.

When independent review or evidence would materially improve coverage,
confidence, or context, call [Delegate](../delegate/SKILL.md) with the positive
benefit, read-only Reviewer/Verifier/Scout role, exact fixed target and
version, governing truth and assigned lens, exclusions, tools and safety
boundary, required evidence and proof, authoritative starting pointers,
return and escalation conditions, and result shape. Use a fresh isolated
context by default and do not seed an independent reviewer with earlier
conclusions. Preserve its exact `delegated`, `no-op`, `partial`, `blocked`, or
`stopped` result and apply the projection rule above. Delegate transfers no
authority, acceptance, or ownership.

When a nontrivial settled model is needed for the human to understand a
finding or inspect the fixed target, first obtain the human's agreement to the
bounded suggestion, then call [Orient](../orient/SKILL.md) with one learning
objective, starting point, settled model, source anchors, uncertainty and
limits, the fixed target question, caller context, and requested return.
Preserve its exact `return_kind=comprehension` state
(`orientation-blocked`, `misconception-unresolved`,
`understanding-observed`, `understanding-unconfirmed`, or `explained`),
`causal-return`, or `stopped` envelope and apply the projection rule above.
Orient explains; Review retains the finding and judgment. A declined
suggestion does not claim comprehension.

Load shared [Evaluation](../../references/evaluation.md) when multiple
reviewers, repeated adaptive correction, materially correlated evidence, or
conflicting judgments affect confidence. Keep evaluator context and signal
kind visible, test whether paths can genuinely disagree, and stop when another
bounded attempt is unlikely to change the judgment. One reviewer path does not
need this reference.

This step is complete when every invoked call returned or its exact absence is
an explicit limitation, conflicts and correlation are visible, and no callee
has granted authority or accepted the target.

## 6. Return and stop

Return one compact Review Result:

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

`complete` means the entire fixed target received every required lens, every
apparent finding was validated and deduplicated, every invoked evidence path
returned, and coverage and material limitations are stated. It may contain
zero actionable findings, but “no findings” is scoped to the stated coverage.
`incomplete` names the unexamined target, missing context, unavailable call,
required blocked or partial evidence, unresolved governing meaning, or causal
owner return that prevents a complete judgment. Its dependency projection
preserves the exact callee envelope/state and causal owner/result. `stopped` is
only a human or caller stop of Review itself and preserves Review's exact
partial state; a dependency stop remains an `incomplete` projection. A
dependency limitation does not become approval, acceptance, or a reason to
silently narrow coverage.

Review never fixes the target, approves a proposal, verifies a claim, accepts
a Result, commits, publishes, deploys, or starts another activity. A caller
may correct a local defect while accepted meaning and authority remain valid;
then materially affected coverage runs again against the changed fixed target.
If a finding changes behavior, target, consequence, risk, proof, or authority,
return it to the exact earlier owner and affected gate. After the result,
return control and stop.
