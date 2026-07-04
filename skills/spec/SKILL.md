---
name: spec
description: Use when writing desired behavior, product requirements, interface behavior, system constraints, acceptance criteria, or a clean design artifact before implementation planning.
---

# Spec

Describe what should be true.

## Required Reads

Load `praxis:explore` first when desired behavior depends on unknown current behavior. Load `praxis:decide` when the spec depends on a durable choice.
Use `../kernel/references/templates/spec.md` for durable spec files.
Read `../kernel/references/storage-policy.md` only when the repo has no established spec path.

## Contract

Specs describe desired truth, not execution steps.

- Goal and non-goals.
- Users or callers.
- Required behavior.
- Constraints.
- Acceptance criteria.
- Risks and unknowns.

For full or swarm work, number required behavior and acceptance criteria with stable IDs such as `REQ-1` and `AC-1` so plans, reviews, and evidence can reference them.

## Ready Gate

A spec is `ready` only when required behavior is observable, non-goals are clear, acceptance criteria can be checked, and open unknowns are either blockers or explicitly out of scope.

## Avoid

- implementation task lists;
- discarded conversation branches;
- vague "handle edge cases" language;
- requirements the user has not agreed to.

## Transition

```text
output: spec path or chat spec
lane: <current lane>
state: draft | ready | blocked
result: spec-created | spec-updated | spec-ready
next: decide | issue | plan | discuss | stop
evidence: user requirement, code fact, source, or open question
```

## Next Skills

After the spec is clear, load `praxis:decide` for durable choices, `praxis:issue` for trackable slices, or `praxis:plan` for implementation planning.
