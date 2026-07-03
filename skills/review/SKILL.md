---
name: review
description: Use when a change, plan, spec, diff, or implementation deserves an adversarial correctness pass before continuing, landing, marking ready, or handing off. Prioritizes bugs, regressions, missing tests, security, and operational risk.
---

# Review

Lead with findings.

## Required Reads

Load `praxis:subagents` before delegating review to a reviewer agent.
Use `../workflow/references/templates/evidence.md` when persisted review evidence is needed.

## Axes

- correctness against requirements;
- missing or weak tests;
- integration contracts;
- security and data exposure;
- migrations, config, observability, rollout risk;
- unnecessary complexity when it creates real maintenance risk.

## Flow

1. Inspect the diff or artifact.
2. Read surrounding code or linked requirements.
3. Trace user-visible behavior and data flow.
4. Report findings by severity with file/line references when applicable.
5. If no issues are found, say so and name residual risk.

## Evidence Contract

Persist review findings as evidence only when they must survive the current turn:

- scope reviewed;
- verdict;
- findings by severity with file references;
- missing tests or verification gaps;
- residual risk;
- follow-up actions.

## Transition

```text
output: review findings or evidence path
state: clean | findings | blocked
next: execute | verify | finish | stop
evidence: diff, plan, spec, source, or line references
```

## Next Skills

Load `praxis:execute` to fix blocking findings. Load `praxis:verify` when review is clean enough to prove the completion claim.
