---
name: design
description: Use when shaping codebase structure, module boundaries, APIs, ownership, testability, abstraction depth, or placement of new code before or during implementation.
---

# Design

Make code easier to understand, change, and test.

## Required Reads

Load `praxis:explore` first when current code boundaries or behavior are unknown. Load `praxis:model` when domain terms or business rules drive the design.

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

## Output

- chosen boundary, API, placement, or model;
- rationale and tradeoffs;
- rejected option only when future agents are likely to choose it incorrectly;
- transition to `spec`, `decide`, `plan`, `execute`, or stop.

## Next Skills

Load `praxis:spec` when design defines desired behavior. Load `praxis:plan` when design is ready for implementation.
