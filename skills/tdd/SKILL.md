---
name: tdd
description: Use when building or changing behavior test-first, when a fix needs a regression proof, or when code exists without the failing test that should have preceded it.
---

# TDD

Write the failing test before the production code. Code written before its test is deleted, not adapted — "delete means delete" is the only version of the rule that survives contact with a deadline.

## Red

State the behavior in one failing test at an agreed seam. Run it and watch it fail for the expected reason: a test that passes immediately proves nothing, and a test that fails for the wrong reason proves the wrong thing. Seams are agreed with the user or inherited from the codebase's existing test architecture before any test is written.

## Green

Write the smallest implementation that passes, then run the focused test. The test defines the scope — extra behavior in green is how suites learn to lie.

## Refactor

With the suite green, improve the code: names, structure, duplication. Refactoring happens after green, never during red, and never mixed with behavior change. Run the focused test again, then the wider suite once at the end of the cycle.

## Regression Mode

For a bug, the regression test fails on the established cause (see `debug`) and passes on the fix. Prove the test honest: revert the fix and it must fail; restore and it must pass.

## Anti-Patterns

- **Tautological test** — the assertion recomputes the expected value the way the implementation does. It can never fail, so it proves nothing.
- **Implementation-coupled test** — tests internals rather than observable behavior at the seam; every refactor breaks it.
- **Horizontal slicing** — testing layer by layer instead of one vertical behavior at a time.
- **Test after** — writing tests to match code that already exists; they inherit its bugs as expectations.

Use `verify` for the integrated claim when the cycle completes a task.
