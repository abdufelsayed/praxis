---
name: tdd
description: Develop settled behavior test-first through vertical red-green-refactor slices. Use when the requester asks for TDD or an implementation or regression needs a durable executable seam.
---

# TDD

TDD is a behavior-sized feedback loop, not a phase that writes all tests before
all implementation.

## Bind behavior, seam, and oracle

Name one observable behavior or concrete regression risk, its independent source
of truth, and the narrowest stable public seam that can prove it. A test should
read like a specification and survive internal refactoring.

Read [examples and oracles](references/examples-and-oracles.md) when choosing a
discriminating case or independent expectation requires judgment. Read
[boundary substitutes](references/test-doubles.md) only when a true external
boundary is slow, unstable, unsafe, or unavailable.

Avoid three false signals:

- **implementation coupling:** private methods, internal call counts, or mocks of
  owned collaborators;
- **tautology:** deriving the expected value through the same logic as production;
- **horizontal slicing:** imagining a whole test suite before learning from one
  working vertical slice.

A test that mocks away the governing contract is too narrow. A full end-to-end
test is unnecessary when a smaller stable seam proves the same behavior.

## Run the loop

1. **Red:** write one focused test through the selected seam and run it. Confirm it
   fails for the intended missing behavior, not evaluator or setup failure. If it
   is already green, choose a real unproved behavior or report that it is covered.
2. **Green:** implement only enough vertical behavior to make that test pass.
   Preserve the expectation; do not anticipate speculative future slices.
3. **Refactor:** while green, remove local structural friction exposed by this
   slice. Use Refactor when the pressure requires ownership reconstruction or a
   consequential seam change. Rerun every materially affected test.

Choose the next slice from what the last cycle taught. Add a contrast, boundary,
failure, ordering case, or state transition only when it can expose a credible
wrong implementation. Stop when the assigned behavior is proved; coverage
percentages and generic edge-case inventories do not define completion.

For a diagnosed bug, turn the minimized reproduction into the red test at the
real bug seam, then rerun the original full reproduction after green. Remove
temporary fixtures, instrumentation, services, and generated inputs.

Report the behavior and seam, oracle, red observation, implementation, green and
refactor evidence, remaining unproved behavior, and any integration proof still
needed. TDD does not imply authority to commit, publish, deploy, or continue
outside the implementation boundary.
