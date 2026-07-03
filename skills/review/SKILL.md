---
name: review
description: Use when a change, plan, spec, diff, or implementation deserves an adversarial correctness pass before continuing, landing, marking ready, or handing off. Prioritizes bugs, regressions, missing tests, security, and operational risk.
---

# Review

Lead with findings.

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

Use a reviewer subagent only when allowed and useful.
