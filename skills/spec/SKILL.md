---
name: spec
description: Use when writing desired behavior, product requirements, interface behavior, system constraints, acceptance criteria, or a clean design artifact before implementation planning.
---

# Spec

Describe what should be true.

## Required Reads

Load `praxis:explore` first when desired behavior depends on unknown current behavior. Load `praxis:decide` when the spec depends on a durable choice.
Use `../workflow/references/templates/spec.md` for durable spec files.
Read `../workflow/references/persistence.md` only when the repo has no established spec path.

## Contract

Specs describe desired truth, not execution steps.

- Goal and non-goals.
- Users or callers.
- Required behavior.
- Constraints.
- Acceptance criteria.
- Risks and unknowns.

## Avoid

- implementation task lists;
- discarded conversation branches;
- vague "handle edge cases" language;
- requirements the user has not agreed to.

## Transition

```text
output: spec path or chat spec
state: draft | ready | blocked
next: decide | issue | plan | discuss | stop
evidence: user requirement, code fact, source, or open question
```

## Next Skills

After the spec is clear, load `praxis:decide` for durable choices, `praxis:issue` for trackable slices, or `praxis:plan` for implementation planning.
