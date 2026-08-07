---
name: review
description: "Review one fixed target adversarially for meaning, quality, and failure mechanisms. Use for proposals, records, changes, results, external feedback, or correction review."
---

# Review

Load [Praxis Control](../../references/control.md). Challenge one fixed target
read-only against its governing truth and return consequential findings.

## Fix the target

Bind the exact target and version, caller, governing truth, review question,
scope, exclusions, authority, and available evidence. Keep the target fixed;
if it changes, repeat every materially affected lens.

Read the governing records, current source, tests, callers, dependencies,
history, and evidence needed to judge the complete target. Keep findings to
problems introduced, worsened, exposed, or materially relied upon by it;
unrelated debt is an observation, not its correction boundary.

## Apply the target lens

Load the one method selected by the fixed target:

- governing proposal or record → [Proposals and Records](references/proposals-and-records.md);
- implementation, diff, commit, branch, or pull request →
  [Code Changes](references/code-changes.md);
- complete or partial Delivery claim →
  [Delivered Results](references/delivered-results.md); or
- supplied human, agent, or automated comments →
  [External Feedback](references/external-feedback.md).

Compose methods only for deliberately distinct fixed targets. Trace the
target's promises, constraints, assumptions, risks, and proof to current
evidence. Missing governing truth or evidence remains a limitation, never an
invented contract.

Cover the complete target through every required lens. If one reliable pass
cannot do so, partition bounded subreviews and integrate them. Sampled
coverage cannot support a complete no-findings claim.

## Make findings consequential

Validate each apparent finding against supporting and counterevidence.
Deduplicate symptoms with one cause. For each material finding state:

- the governing expectation or concrete failure mechanism;
- connected evidence and consequence;
- priority and confidence;
- the smallest credible correction;
- the materially affected causal surface; and
- the likely owner.

Prioritize consequence and confidence. Keep harmless preferences as
suggestions and unresolved claims visibly unresolved.

## Resolve bounded evidence gaps

Use only the internal owner that can change the judgment:

- substantial changeability or seam pressure → [Refactor](../refactor/SKILL.md);
- a credible attacker path → [Security](../security/SKILL.md);
- one disputed executable fact → [Verify](../verify/SKILL.md);
- genuinely independent evidence with positive benefit →
  [Delegate](../delegate/SKILL.md); or
- an accepted need to understand one settled model → [Orient](../orient/SKILL.md).

Load [Evaluation](../../references/evaluation.md) only when multiple,
adaptive, correlated, or conflicting evidence paths affect confidence.
Integrate each return into Review's findings and coverage. If a required lens
or evidence path remains unresolved, report the unexamined surface rather than
claiming complete coverage.

Refactor preserves `analyzed`, `relieved`, `partial`, `needs-design`,
`needs-owner`, `blocked`, or `stopped`; Security preserves `no-op`, `findings`,
`no-high-confidence-findings`, `needs-verification`, `needs-owner`, `blocked`,
or `stopped`; Verify preserves each exact claim as `verified`, `failed`, or
`unverified`; Delegate preserves `delegated`, `partial`, `blocked`, `stopped`,
or `no-op`; Orient begins only after accepted human agreement and preserves
`explained`, `understanding-observed`, `understanding-unconfirmed`,
`misconception-unresolved`, `orientation-blocked`, `causal-return`, or
`stopped`. A required unanswered,
blocked, or dependency-`stopped` projection makes Review `incomplete`; an
optional limitation may coexist with `complete` only when every required lens
remains covered. No dependency changes the fixed target or accepts it.

## Return

Return evidence-backed findings in priority order, honest coverage, material
limitations, and any causal owner or smallest next probe. A complete result
means the whole fixed target received every required lens and every material
finding was validated; otherwise state exactly what remains unexamined.
Return `complete`, `incomplete`, or `stopped` with that evidence. Review is
read-only and returns control to its caller.
