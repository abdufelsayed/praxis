---
name: review
description: Use for adversarial correctness review of a change, plan, spec, diff, artifact, or implementation before continuing, marking ready, landing, or handing off.
---

# Review

Lead with findings.

## Required Reads

- Read `../kernel/references/quality-gates.md`.
- Load `praxis:subagents` before delegating review.
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
4. Check implementation quality after requirement compliance passes.
5. Report findings by severity with file/line references when applicable.
6. Say when something cannot be verified from the available evidence.
7. If no issues are found, say so and name residual risk.

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
next: execute | verify | deliver | stop
evidence: diff, plan, spec, source, or line references
```
