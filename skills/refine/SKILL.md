---
name: refine
description: Use when new evidence, review, verification, implementation, source exploration, or user steering contradicts a candidate, assumption, design, decision, spec, issue, plan, or code path. Handles counterexamples, invalidation, artifact supersession, repair cascades, reset/refactor proposals, and retrospective learning before downstream work continues.
---

# Refine

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Treat contradictions as durable learning, not just local failures.

`refine` owns the truth-repair loop. It classifies what new evidence invalidates, updates or supersedes affected artifacts, and routes the next safe action. It is not ordinary bug repair: use `praxis:repair` when the model is still right and the implementation is broken.

Keep it proportional. Do not route every failed test, review comment, or concern through `refine`; use it when the signal changes what Praxis should believe or what downstream work is allowed to trust.

## Required Reads

- Read the evidence or signal that triggered refinement: review finding, failed check, source fact, user correction, implementation contradiction, or runtime observation.
- Read the affected program, design, decision, spec, issue, plan, or code facts before changing downstream artifacts.
- Read `../kernel/references/artifacts.md` when deciding whether to embed a record or create evidence/design/program artifacts.
- Use `../kernel/references/templates/evidence.md` when the counterexample or retrospective must survive as standalone proof.

## Counterexample Standard

A counterexample is concrete. It names the candidate and a case where that candidate fails.

Good:

- Candidate: module artifacts are plain JSON contract graphs.
- Counterexample: Effect Schema objects and execution handlers cannot be represented as portable JSON artifacts.

Weak:

- "This might be too simple."
- "There are concerns."

Turn weak concerns into a verifier or gap. Do not mark an artifact invalidated from vague discomfort.

## Flow

1. State the signal and the candidate, assumption, artifact, or implementation it challenges.
2. Classify the signal:
   - `counterexample`: concrete case disproves or weakens a candidate;
   - `gap`: missing fact blocks safe promotion;
   - `risk`: known issue can be accepted with revisit condition;
   - `local failure`: implementation bug; route to `repair`;
   - `preference change`: user/product truth changed; route to `discuss`, `design`, or `spec`.
3. Classify impact:
   - assumption;
   - hypothesis;
   - candidate design;
   - decision;
   - spec;
   - issue;
   - plan;
   - code;
   - worker brief;
   - verification claim.
4. Update the nearest program with `CE-*`, `INV-*`, or revised synthesis when one exists or is now required.
5. Mark affected artifacts `provisional`, `superseded`, or `invalidated`; link the evidence and successor artifact when known.
6. Identify downstream artifacts or active workers that must pause, rebrief, repair, or replan.
7. Choose the next route: `explore`, `design`, `decide`, `spec`, `issue`, `plan`, `execute`, `repair`, `queue`, `subagents`, `review`, `verify`, or `deliver`.

## Reset And Refactor

Use reset/refactor mode when the model is wrong, not merely when code is messy.

Before a breaking reset:

- preserve proven behavior, tests, and evidence;
- name which model is invalidated;
- propose the replacement synthesis;
- route through `preflight` and `safety` when broad or destructive;
- execute as a bounded refactor/reset slice;
- verify preserved behavior and new assumptions;
- update the program with the retrospective.

Do not protect current file or skill boundaries just because they exist. Protect proven behavior and useful concepts.

## Retrospective

After substantial verify/deliver/merge, ask:

- What did this prove?
- What did it disprove?
- Which assumption became a decision?
- Which artifact became stale?
- Which abstraction got uglier?
- Should breaking refactor happen now because the model is wrong?

Record only learning that changes future work, current truth, accepted risk, or artifact status.

## Non-Goals

- Do not create a standalone evidence artifact for every small finding; embed short records in the active program when that is enough.
- Do not supersede artifacts from vague concern; name the concrete signal or route to exploration/preflight first.
- Do not use reset/refactor mode as cleanup permission. It requires an invalidated model and a replacement synthesis.

## Transition

```text
output: counterexample, invalidation, supersession, refined synthesis, reset proposal, or blocker
lane: focused | full | swarm
state: exploring | draft | ready | running | blocked | review | verified
result: refined | invalidated | superseded | needs-exploration | needs-repair | needs-reset | blocked
next: program | explore | design | decide | spec | issue | plan | preflight | execute | repair | queue | subagents | review | verify | deliver | stop
evidence: signal, counterexample, affected artifact, successor artifact, command, source fact, or record ID
```
