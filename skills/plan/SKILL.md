---
name: plan
description: Use when the user requests an implementation plan or another person or session must implement non-trivial work without reconstructing intent.
---

# Plan

## Overview

Write an implementation handoff that lets a capable engineer act without guessing. A plan is useful when work crosses several files or sessions; it is not a prerequisite for an obvious edit.

## Before Writing

Read the accepted requirements or design and inspect the relevant source. If the intended behavior is still unsettled, return to `design`. Do not invent file paths, symbols, or commands before inspection.

Map the final file responsibilities first. Put shared contracts before consumers, and split tasks where one result can be implemented and checked independently—not at every setup or documentation step.

## Task Contract

Every task needs this information:

```markdown
### Task N: <independently testable result>

**Files**
- Create: `exact/path`
- Modify: `exact/path`
- Test: `exact/path`

**Interfaces**
- Consumes: exact earlier symbols or contracts
- Produces: exact symbols or behavior later tasks use

**Change**
- Concrete implementation behavior and important edge cases

**Check**
- Run: `exact command`
- Expected: output or state that distinguishes success from failure
```

Use exact code only when the implementation must follow that code. Otherwise specify behavior, interfaces, and proof without turning the plan into a second copy of the implementation.

## Order The Work

1. State the outcome and explicit non-goals.
2. Establish contracts or migrations before their consumers.
3. Group tightly coupled files into one coherent task.
4. Identify tasks that must remain serial and tasks that are genuinely independent.
5. End with integrated checks that prove the user-visible result.

## Self-Review

- Map every accepted requirement to a task.
- Remove placeholders, “similar to,” “handle appropriately,” and checks that lack an expected signal.
- Check symbol, type, path, and command consistency across tasks.
- Confirm each boundary exists because a reviewer could approve one task while rejecting its neighbor.
- Confirm the final verification covers the integrated result, not only isolated units.

Write the plan in the conversation unless it must survive. For a durable plan, use the repository's convention or a user-provided path. If neither exists, ask before creating one. Adapt [references/plan-template.md](references/plan-template.md) rather than inventing process metadata.

End a durable plan by naming `execute-plan` as the inline execution route. Name `dispatch-subagents` only when tasks are independent and the user or host allows delegation. Do not embed commit or pull-request steps in every task unless those checkpoints are an accepted part of the requested workflow.
