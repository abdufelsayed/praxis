# Review

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

## What it does

Review challenges one fixed target against the truth and quality that govern
it. It remains read-only, searches for concrete reasons the target should
change, and returns prioritized findings rather than approval.

Its leading idea is **make every finding earn its consequence**. A useful
finding identifies the expectation or failure mechanism, points to evidence,
explains why it matters, and recommends the smallest credible correction.

## When to reach for it

[Deliver](../deliver/README.md) invokes Review before presenting a
Plan-governed result for
acceptance. Another owning loop may invoke it when a proposal, design, record,
artifact, or external review comment needs adversarial evaluation.

Review may be performed by the current agent or an independent reviewer.
Independence, multiple reviewers, and specialized audits are proportional
responses to consequence, uncertainty, novelty, and context; Praxis does not
require a fixed worker–reviewer procession.

Preserve independence according to the question being asked. A reviewer meant
to discover independent gaps receives the fixed target, governing truth, and
assigned lens without earlier conclusions. A reviewer adjudicating a disputed
finding or checking its correction receives that exact claim because
independent discovery is not the purpose. Agreement strengthens confidence only
when the passes could genuinely disagree.

When independent review is justified, invoke
[Delegate](../delegate/README.md) and use a fresh isolated context by default.
Push the
fixed target, governing Requirements, Evolution, Issues, Plan, authority,
exclusions, relevant engineering standards, and exact review lenses rather
than the implementer's reasoning trace. The reviewer may pull surrounding
source and evidence needed to judge the target.

A stronger reviewer is useful when consequence, ambiguity, weak verification,
or likely correction cost warrants it; it is not automatically required
because a cheaper Worker produced the change. Ask the reviewer for material
correctness, specification, and engineering-integrity gaps rather than style
preferences manufactured to satisfy an adversarial prompt.

Review is not [Verify](../verify/README.md). Review judges meaning, quality,
and failure mechanisms; Verify tests an exact claim with current evidence.
Review may invoke Verify
for one bounded factual question, but neither capability accepts the target or
grants authority.

## Fix the target and reconstruct its contract

Identify the exact proposal version, record, artifact, diff, result, or set of external
comments under review. Read the governing Requirements, Evolution, Issues,
Plan, authority, exclusions, current source, and existing evidence that apply
to that target.

The target remains fixed while Review judges it. If it changes, earlier clean
coverage does not transfer automatically; repeat every materially affected
lens against the new version.

Review may inspect surrounding source, tests, history, and dependencies needed
to understand the target. Findings remain bounded to problems introduced,
worsened, exposed, or materially relied upon by the reviewed work. An unrelated
pre-existing problem may be mentioned as an observation, but it neither
silently expands the correction boundary nor blocks this target.

When a nontrivial settled model is necessary for the human to understand a
finding or inspect the fixed target, Review may recommend one bounded
[Orient](../orient/README.md) interaction and invoke it only after the human
agrees. Orient explains the model; Review retains the finding, severity,
correction consequence, and adversarial judgment. Disagreement with a finding
returns to Review rather than being labeled misunderstanding.

## Make findings evidence-backed

A finding must contain enough meaning to act on:

```text
Finding
- governing expectation or concrete failure mechanism
- evidence in or materially connected to the fixed target
- consequence if left unchanged
- priority and confidence
- smallest credible correction
- likely causal owner
```

This is a content contract, not a rigid output template. Prioritize by actual
consequence and confidence rather than personal preference or estimated fix
size. A harmless naming or style preference may remain an optional suggestion,
but it cannot become a blocking finding without a material failure mechanism.

Validate apparent findings against counterevidence before reporting them.
Deduplicate findings that describe the same cause, and point to the smallest
location that makes the problem understandable rather than listing every
symptom. When the demonstrated mechanism predicts failures beyond the observed
example, also bound the smallest materially affected causal surface so the
correction cannot close one symptom while preserving the cause elsewhere.

## Review code through two lenses

Every code review asks two distinct questions.

**Specification Fidelity** asks whether the fixed diff satisfies the governing
Requirements, selected Evolution, Issues, Plan, authority, and exclusions. A
clean implementation of the wrong behavior fails this lens.

**Engineering Integrity** asks whether the implementation is correct, secure,
understandable, changeable, and operationally sound in its actual context. A
diff can match the written behavior and still contain a race, unsafe boundary,
duplicated ownership, regression mechanism, or avoidable structural pressure.

When a changeability concern needs substantial pressure reconstruction or seam
analysis, Review may invoke [Refactor](../refactor/README.md) read-only and
incorporate its evidence into the finding. Repository inspection may help trace
a repeated code shape, but matches and complexity metrics cannot establish the
harmful mechanism alone.

The lenses may run in one review or through independent reviewers when the
expected benefit justifies the extra briefing, integration, and verification
cost. Their findings return as one prioritized, deduplicated result.

Passing tests contribute evidence but cannot replace either lens.

Review remains an agentic adversarial capability. When a Plan-governed result
contains code, its Review result cannot replace the separate human inspection
that [Deliver](../deliver/README.md) invokes through
[Plannotator](../plannotator/README.md) before Result Acceptance. Review never
owns that gate.
Completing that human change review produces feedback and still does not accept
the result.

## Adapt the questions to the target

The common procedure remains the same—fix the target, reconstruct governing
truth, inspect evidence, challenge assumptions, and return findings—but each
target kind has its own questions:

- **Proposal and record review** challenges coherence, coverage, assumptions,
  consequences, authority, risk, and proposed proof. Load
  [Reviewing Proposals and Records](references/reviewing-proposals-and-records.md)
  when the target is a Project brief, Evolution Map, Evolution, Issue, Plan, or
  another proposed governing record.
- **Code review** applies Specification Fidelity and Engineering Integrity.
  Load [Reviewing Code Changes](references/reviewing-code-changes.md) when judging
  an implementation, diff, commit, branch, or pull request.
- **Result review** challenges the actual working outcome, evidence,
  limitations, learning, and acceptance claim. Load
  [Reviewing Delivered Results](references/reviewing-delivered-results.md) when the
  target claims that bounded Delivery work is complete.
- **External-feedback review** validates supplied comments against governing
  truth, current source, and available evidence. Load
  [Triaging External Feedback](references/triaging-external-feedback.md) when
  comments from humans, agents, or automated tools need adjudication.

Do not judge a target by artifacts that cannot exist yet. A Plan review asks
whether its proof is credible; it does not complain that the planned tests have
not already passed.

## Compose evidence without becoming Verify

Review may inspect current source and existing evidence directly. When a
material finding depends on an executable factual claim, invoke
[Verify](../verify/README.md) for that
bounded claim and interpret the result inside the review.

For example, source may reveal a plausible normalization race while a focused
probe establishes whether the public behavior actually exhibits it. Review
does not duplicate the complete verification suite, and a green probe does not
erase a separate specification or engineering finding.

If required governing context or evidence is unavailable, return useful
findings already established and name the missing lens or evidence explicitly.
An incomplete Review cannot return a complete “no findings” result.

## Enter audits only for concrete risk

Use a specialized audit posture when the target's actual consequences or
uncertainty justify one, such as security, privacy, data integrity,
concurrency, performance, accessibility, or migration risk.

Start from the governing behavior, threat, or failure mode and trace the
relevant path end to end. Do not apply a generic checklist mechanically. Audit
findings join the same prioritized Review result. When the target exposes a
meaningful attacker surface or a credible security hypothesis, invoke
[Security](../security/README.md) for its composable threat, vulnerability, validation,
tool, and security-specific coverage procedure. Review still owns the fixed
target, complete Review coverage, and integrated findings; Security creates no
duplicate result or acceptance gate.

## Validate external feedback

Treat every external review comment or automated warning as a claim, not as
authority. Return each material comment as:

- confirmed by current truth and evidence;
- rejected with the reason and counterevidence; or
- unresolved, with the evidence needed next.

External feedback never changes specifications, expands scope, grants mutation
authority, or becomes correct because of its source.

## Cover the complete target honestly

A completed Review examines the entire fixed target through every required
lens. Surrounding exploration, specialized audits, independent reviewers, and
executable probes remain proportional, but sampling a large target cannot
produce a complete “no findings” result.

If one reliable pass cannot cover the target, partition it into explicit
bounded subreviews and integrate their coverage and findings. Otherwise return
an incomplete Review and state what remains unexamined.

Independent subreviews require genuinely separate lenses or target ownership.
The supervisor owns their partition, receives compact evidence-backed findings,
deduplicates conflicts, and judges the integrated coverage. Reviewers do not
spawn further reviewers by default.

After repeated correction rounds, a clean result from the same review trajectory
proves that its known findings were addressed more strongly than it proves
independent target coverage. For consequential work with material residual
uncertainty, add a fresh pass against the fixed governing contract without
seeding prior conclusions. Routine contained changes do not need this
ceremony.

## Return findings to their owner

Review never fixes the target. It returns each finding with its consequence,
smallest credible correction, and likely causal owner.

The caller may correct an implementation defect locally when the accepted
meaning and current authority remain valid, then repeat materially affected
Review coverage. A finding that changes governing behavior, targets,
consequences, risk, proof, or authority returns to the exact earlier owner and
affected gates. Optional suggestions require no correction.

A finding is resolved only when the correction removes its demonstrated cause
across the materially affected surface and preserves the governing behavior.
Re-review follows the failure mechanism and its predicted consequences rather
than checking only the edited line or original example.

## Complete and stop

Review completes when:

- the entire fixed target received every required lens;
- every invoked audit or evidence probe returned, or its absence is an explicit
  limitation;
- apparent findings were validated and duplicates removed;
- findings are prioritized and actionable; and
- coverage and material limitations are stated honestly.

It then returns and stops. “No findings” means only that no actionable problem
was found within the stated coverage. Review does not fix, approve, verify,
accept, or continue searching without a concrete unresolved risk.

## It is working when

- The reviewed target and governing truth are exact.
- Findings name evidence, consequence, correction, and likely ownership.
- Preferences do not masquerade as blocking defects.
- Code receives both Specification Fidelity and Engineering Integrity review.
- Surrounding context informs the target without importing unrelated debt.
- Audit depth and reviewer independence follow actual risk.
- Missing context produces an honest incomplete result.
- Corrections repeat affected coverage against the changed target.
- Review returns judgment without claiming acceptance.

## Skill structure

Keep target fixation, contract reconstruction, evidence-backed findings,
coverage honesty, target routing, correction returns, and stopping in
`SKILL.md`. Four conditional references provide the richer procedures for
proposal and record review, code review, delivered-result review, and
external-feedback triage. Load only the reference matching the fixed target;
several may compose only when the caller has deliberately fixed several
distinct targets.

Do not add a generic consequential-audit reference. Attacker-focused
investigation invokes [Security](../security/README.md), executable factual
claims invoke [Verify](../verify/README.md), and substantial changeability
analysis may invoke [Refactor](../refactor/README.md). Other risk lenses come
from the governing domain and target. Review still owns the fixed target,
coverage, integrated findings, and return; none of these calls creates
approval or acceptance.

Use the shared
[Feedback and Evaluation](../../references/feedback-and-evaluation.md) reference
when several reviewers, repeated adaptive correction, evaluator independence,
or conflicting judgments materially affect the Review. The ordinary review
procedure remains self-contained here.

## Direct dependencies

### Skills

- [Refactor](../refactor/README.md) — investigate a concrete changeability
  pressure when structural judgment is substantial; return preservation
  findings; Review retains adversarial judgment.
- [Security](../security/README.md) — perform attacker-focused review; return
  validated findings and coverage limits; Review retains finding synthesis.
- [Verify](../verify/README.md) — establish an exact disputed claim; return
  current evidence; Review retains severity and conclusion.
- [Delegate](../delegate/README.md) — run a bounded independent reviewer path;
  return compact findings; Review retains conflict resolution and coverage.
- [Orient](../orient/README.md) — teach one settled target or failure model
  after the human accepts the suggestion; return comprehension and uncertainty;
  Review retains findings and judgment.

### Shared references

- [Feedback and Evaluation](../../references/feedback-and-evaluation.md) —
  govern reviewer independence, repeated correction, and conflicting findings.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

Review is model-invoked because Delivery and other owners must call it for
adversarial judgment of one fixed target.

```yaml
---
name: review
description: "Review one fixed target adversarially for meaning, quality, and failure mechanisms. Use for proposals, records, changes, results, external feedback, or correction review."
---
```

```yaml
interface:
  display_name: "Review"
  short_description: "Challenge one fixed target with evidence"
  default_prompt: "Use $review to inspect this fixed target adversarially."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps target fixation, contract reconstruction, finding quality,
severity, lens selection, supporting calls, coverage, correction return,
compact result, and stopping inline. Review completes only when every required
lens covered the entire fixed target and every apparent finding was validated,
deduplicated, prioritized, and scoped.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Governing proposal or record | `references/proposals-and-records.md` | The fixed target will govern later work. | A small informal proposal has no durable contract. | Review | [Reviewing Proposals and Records](references/reviewing-proposals-and-records.md) | Review | None. |
| Code target | `references/code-changes.md` | The fixed target is an implementation, diff, commit, branch, or pull request. | No code is under review. | Review | [Reviewing Code Changes](references/reviewing-code-changes.md) | Review | None. |
| Delivered result | `references/delivered-results.md` | The fixed target claims bounded Delivery is complete or explicitly partial. | Only one executable claim needs Verify. | Review | [Reviewing Delivered Results](references/reviewing-delivered-results.md) | Review | None. |
| Supplied feedback | `references/external-feedback.md` | Human comments, agent findings, or automated warnings need adjudication. | The feedback is already a proved governing correction. | Review | [Triaging External Feedback](references/triaging-external-feedback.md) | Review | None. |
| Multi-evaluator design | `../../references/evaluation.md` | Several reviewers, adaptive corrections, independence, or conflict affect confidence. | One bounded reviewer path is enough. | Cross-skill | [Feedback and Evaluation](../../references/feedback-and-evaluation.md) | Review | None. |

Local references contain only target-specific lenses; Review retains target,
calls, synthesis, coverage, return, and stopping. The existing Refactor,
Security, Verify, Delegate, and Orient calls are accepted. Review is read-only
and packages no scripts, assets, fixtures, templates, or required integrations.
Target files add the four named local references to the required package files.

`SPEC.md` adds cases for each target type, incomplete governing truth, both code
lenses, preference versus defect, independent discovery, dispute adjudication,
correlated reviewers, security escalation, exact factual verification,
correction re-review, duplicate findings, no findings with limits, and no
approval or acceptance. No package decision remains unresolved.
