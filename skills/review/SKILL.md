---
name: review
description: Use for adversarial correctness review of a change, plan, spec, diff, artifact, or implementation before continuing, marking ready, landing, or handing off.
---

# Review

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Lead with findings. Review is a gate, not a summary.

## Required Reads

- Read `../kernel/references/quality-gates.md`.
- Load `praxis:subagents` before delegating review.
- Load `praxis:refine` when a finding is a concrete counterexample or invalidates an artifact.
- Use `../kernel/references/templates/evidence.md` when review evidence must outlive the turn.

## Axes

- correctness against requirements;
- missing or weak tests;
- integration contracts;
- security and data exposure;
- migrations, config, observability, rollout risk;
- unnecessary complexity when it creates real maintenance risk.

## Flow

1. Inspect the diff, artifact, or plan.
2. Read surrounding code and linked requirements.
3. Check requirement compliance first.
4. Return a requirement verdict: `pass`, `fail`, or `cannot-verify`.
5. Check implementation quality after requirement compliance is understood.
6. Return a quality verdict: `approved`, `needs-fixes`, or `approved-with-concerns`.
7. Report findings by severity with file/line references when applicable.
8. Say when something cannot be verified from the available evidence.
9. If no issues are found, say so and name residual risk.

## Review Procedure

1. Define the review surface: commit range, diff, changed files, plan/spec, task brief, or artifact path.
2. Identify the intended behavior and acceptance criteria before judging code quality.
3. Inspect the diff first, then read nearby source/tests/configs needed to validate assumptions.
4. Look for the highest-impact failure modes: wrong requirement, missed edge case, broken integration, unsafe data handling, missing migration, missing test, stale docs, or accidental unrelated change.
5. Classify each finding by blocking severity; classify concrete disproving cases as counterexamples. Critical and Important findings block done/ready/handoff.
6. Provide concrete file/line references when reviewing code. If line references are not available, name the exact file and condition.
7. Separate "cannot verify" from "clean." A missing proof is not a clean review.
8. End with the next route: refine for counterexamples/invalidations, execute/repair for blockers, verify for clean implementation, deliver for complete work, or stop for review-only requests.

The reviewer is a gate, not a summarizer. Do not praise work into done when requirement compliance or proof is missing.

For task review, use the task brief as the requirements source and the review package or bounded diff as the review surface. For final review, use the full branch diff plus task review trail and verification evidence. Do not mix those scopes.

## Verdict Shape

Use this shape for non-trivial reviews:

```text
Requirement verdict: pass | fail | cannot-verify
Quality verdict: approved | needs-fixes | approved-with-concerns

Critical:
Important:
Deferred:
Notes:
Counterexamples:
Cannot verify:
Next: refine | execute | repair | verify | deliver | stop
```

Counterexamples route to `refine`. Critical or Important findings route to `execute` or `repair`. `cannot-verify` routes to source reading, tests, follow-up issue/plan, or an explicit verification gap before done.

## Severity

- Critical: must fix before continuing.
- Important: should fix before done, ready, or handoff.
- Deferred: valid but outside current scope, with owner or issue.
- Note: non-blocking observation.

## Evidence Contract

Write review findings only when they must survive the turn:

- scope reviewed;
- verdict;
- findings by severity with file references;
- cannot-verify items;
- missing tests or verification gaps;
- residual risk;
- follow-up actions.

## Transition

```text
output: review findings or evidence path
lane: <current lane>
state: review | blocked
result: clean | findings
next: refine | execute | repair | verify | deliver | stop
evidence: diff, plan, spec, source, or line references
```
