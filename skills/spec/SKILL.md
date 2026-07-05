---
name: spec
description: Use when writing desired behavior, product requirements, interface behavior, system constraints, acceptance criteria, or a clean design artifact before implementation planning.
---

# Spec

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Describe what should be true.

## Required Reads

Load `praxis:explore` first when desired behavior depends on unknown current behavior. Load `praxis:preflight` before accepting broad, risky, ambiguous, product-shaping, or agent-authored requirements. Load `praxis:grill-me` only when unresolved user/product judgment or proposal pressure remains after preflight. Load `praxis:decide` when the spec depends on a durable choice.
Use `../kernel/references/templates/spec.md` for durable spec files.
Read `../kernel/references/storage-policy.md` only when the repo has no established spec path.

If the user only needs a short conversational behavior sketch and no future implementation or review depends on it, do not call it a spec. Route to `praxis:discuss` or `praxis:design` instead.

## Contract

Specs describe desired truth, not execution steps.

- Goal and non-goals.
- Users or callers.
- Required behavior.
- Constraints.
- Acceptance criteria.
- Risks and unknowns.

For full or swarm work, number required behavior and acceptance criteria with stable IDs such as `REQ-1` and `AC-1` so plans, reviews, and evidence can reference them.

Every saved spec must include `Agent Control` with required process, execution mode, review gate, and verification gate. If an existing spec lacks it, add the header before using the spec to drive work.

## Process

1. Identify the user, caller, or operator who observes the behavior.
2. State goal, non-goals, required behavior, constraints, and risks.
3. Write acceptance criteria as checkable outcomes.
4. Mark unknowns as blockers or out of scope; do not hide them in vague requirements.
5. Run preflight when assumptions could change scope, design, user value, or verification.
6. Keep implementation choices out unless they are part of the requirement.

Adapt when:

- behavior is still unknown: route to `explore`;
- agent assumptions still matter: route to `preflight`;
- user/product choices still matter after preflight: route to `grill-me` or `discuss`;
- the user has not agreed to a product requirement: route to `discuss`;
- a durable choice blocks the spec: route to `decide`;
- acceptance criteria cannot be checked: keep the spec draft or blocked.

## Ready Gate

A spec is `ready` only when required behavior is observable, non-goals are clear, acceptance criteria can be checked, and open unknowns are either blockers or explicitly out of scope.

A full, risky, or agent-authored spec is not `ready` until important assumptions have passed `praxis:preflight` or the user explicitly accepts skipping that gate.

If preflight finds a user/product decision that can change behavior, route to `praxis:grill-me` or `praxis:discuss` before marking ready.

A spec is not ready for implementation until its control header routes execution to an issue or plan.

## Avoid

- implementation task lists;
- discarded conversation branches;
- vague "handle edge cases" language;
- requirements the user has not agreed to.

## Transition

```text
output: spec path or blocker
lane: <current lane>
state: draft | ready | blocked
result: spec-created | spec-updated | spec-ready
next: preflight | grill-me | decide | issue | plan | discuss | stop
evidence: user requirement, code fact, source, or open question
```

## Next Skills

After the spec is clear, load `praxis:decide` for durable choices, `praxis:issue` for trackable slices, or `praxis:plan` for implementation planning.
