---
name: deliver
description: "Implement and prove one bounded result from an accepted Issue, Plan, specification, or clear request. Use when the user asks to build, change, fix, or complete the work."
---

# Deliver

Produce one bounded working result and the evidence needed to judge it. The
current request, accepted Issue, or Plan defines the implementation boundary.

## Establish the boundary

Read the governing request and relevant source completely. Bind the result,
accepted behavior, targets, exclusions, dependencies, risks, recovery, and
proof. Use [Plan](../plan/SKILL.md) when a consequential approach choice,
migration, cross-cutting change, or uncertain proof needs judgment first. A
request that already says to plan and implement authorizes reversible local
implementation after the Plan is settled.

Use [Pair](../pair/SKILL.md) when the requester wants decision-by-decision
collaboration. Obtain separate authorization immediately before destructive,
irreversible, production, credential, data, permission, deployment, push, PR,
or other external effects not already named by the current request.

This step is complete when the intended result and permitted local changes are
clear enough to detect scope drift.

## Implement vertical slices

Inspect overlapping work before editing and preserve unrelated changes. Build
the smallest integrated slice that can run or be proved, then continue slice by
slice until the result is complete.

Use [TDD](../tdd/SKILL.md) at pre-agreed or materially useful seams. Run focused
tests and typechecking regularly. Keep each attempt informative. After two
equivalent failed guesses, use [Debug](../debug/SKILL.md) or revise the Plan.
Use [Refactor](../refactor/SKILL.md) for demonstrated structural pressure,
[Security](../security/SKILL.md) for a credible attacker-focused question,
[Delegate](../delegate/SKILL.md) for a real isolation or elapsed-time benefit,
and [Manage Worktree](../manage-worktree/SKILL.md) for a concrete collision,
rollback, or experiment risk.

When implementation reaches a planned decision checkpoint, construct only the
promised surface, ask the decision, and pause affected work. Continue when the
answer preserves the boundary. Return changed product meaning or scope to the
requester instead of silently absorbing it.

Send progress updates after coherent slices, decisive evidence, meaningful
deviations, or changes to the next action. Keep updates about results and
evidence rather than narrating routine tool use.

This step is complete when every requested behavior is implemented or named as
remaining, and the working tree is in a safe, explainable state.

## Prove and review the result

Run the strongest focused checks during implementation and the relevant full
suite once the integrated result is ready. Use [Verify](../verify/SKILL.md)
when proof crosses boundaries, is disputed, or needs independent claim
composition. Use [Review](../review/SKILL.md) when semantic risk, complexity,
breadth, or uncertainty gives adversarial review real value.

For code changes, review the complete fixed diff before handoff. Use
[Plannotator](../plannotator/SKILL.md) when the requester asks for its code
review UI or anchored feedback will materially improve the review. Address
findings and rerun affected checks. Update reader-facing documentation through
[Write Docs](../write-docs/SKILL.md) only when the implementation changes the
behavior that documentation owns.

This step is complete when every completion claim has current evidence, every
material finding is resolved or reported, and remaining limitations are
explicit.

## Return the result

Report the implemented behavior, covered Issue or Plan portions, changed
surfaces, checks run, review findings, limitations, and remaining work. A
partial result distinguishes completed and unproved behavior and leaves a safe
next action.

Commit, push, publish, deploy, open a PR, or start adjacent work only when the
requester asked for that action. Otherwise stop with the working result and its
evidence.
