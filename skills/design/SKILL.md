---
name: design
description: Use when shaping codebase structure, module boundaries, APIs, ownership, testability, abstraction depth, or placement of new code before or during implementation.
---

# Design

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Make code easier to understand, change, and test.

## Required Reads

Load `praxis:explore` first when current code boundaries or behavior are unknown. Record durable domain language with `praxis:decide` or `praxis:spec` when it will guide future work.

## Focus

- clear module responsibilities;
- narrow interfaces;
- existing project patterns;
- testable boundaries;
- low coupling;
- abstractions that remove real complexity.

Avoid unrelated refactors. Improve structure where it directly serves the requested work.

## Flow

1. State the design question.
2. Identify current boundaries and constraints.
3. Compare 2-3 plausible placements or shapes when the answer is not obvious.
4. Choose the smallest design that satisfies behavior, testability, and maintenance.
5. Name consequences for implementation and review.

## Adaptation

- If current behavior or ownership is unknown, route to `explore` before choosing.
- If the choice creates durable architecture, naming, or policy, route to `decide`.
- If the choice changes observable behavior, route to `spec`.
- If implementation disproves the design, revise the design or plan instead of forcing code through a stale choice.
- If the design question is mostly taste or product preference, return to `discuss`.

## Output

- chosen boundary, API, placement, or model;
- rationale and tradeoffs;
- rejected option only when future agents are likely to choose it incorrectly;
- transition to `spec`, `decide`, `plan`, `execute`, or stop.

## Next Skills

Load `praxis:spec` when design defines desired behavior. Load `praxis:plan` when design is ready for implementation.

## Transition

```text
output: design choice, boundary, API, placement, or blocker
lane: <current lane>
state: ready | blocked
result: design-chosen | needs-exploration | unresolved
next: spec | decide | plan | execute | explore | stop
evidence: code facts, constraints, tradeoff, or user choice
```
