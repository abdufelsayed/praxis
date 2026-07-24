---
name: plan
description: Use when an implementation plan must govern execution, survive another owner or session, or pass its acceptance gate before work begins.
---

# Plan

Use planning when work crosses meaningful boundaries and needs durable execution state. If the user only asks what you would do and no accepted plan or future owner will rely on it, answer in conversation without creating a plan. An obvious local edit needs no plan, and subagent availability alone does not justify one.

## Create

Inspect accepted requirements, relevant source, tests, and repository constraints before naming files or commands. Divide work into independently checkable results, not setup trivia. A task is the smallest result worth its own acceptance signal; fold scaffolding, documentation, and mechanical steps into the result they enable. Every task must contain:

- **Files:** exact files to create, modify, or test when known;
- **Interfaces:** exact symbols, types, formats, behavior, or contracts consumed and produced;
- **Change:** required behavior, edge cases, and compatibility constraints;
- **Check:** an exact command or observation and its decisive expected signal;
- **Blocked by:** task IDs that must complete first; omit when none.

Put contracts and migrations before consumers and name serial dependencies through `Blocked by`. Map every accepted requirement to a task, include only risks that change sequencing, compatibility, rollback, or verification, and end with integrated proof. The supervisor owns planning; use [agent roles](../../references/roles.md) only for a concrete evidence gap or named review risk.

When Evolve governs the work, plan exactly one current evolution and link its map when durable. Lead with the program decisions most likely to change — interfaces, types, control flow, data, user experience, and compatibility — then compress mechanical work. Dependencies may be staged, but the plan must close the evolution's working behavior and proof. Future evolutions remain outcomes in the map, never pre-expanded plans.

Direct ownership is implicit. Add `Owner: worker` only when the user selected agents or isolated ownership materially improves that result. Add `Independent review: <named risk>` only when the assurance ladder justifies it. Give the owner exact interfaces and observable constraints without transcribing implementation code, repeating the codebase, or expanding one result into minute-by-minute instructions. When product intent is missing, route to `clarify` instead of guessing.

Write the plan to the repository's declared planning surface or, by default, `.agents/plans/<state>/YYYY-MM-DD-short-title.md`; use `draft`, `ready`, `running`, `blocked`, or `done` and treat legacy `active` as `running`. When no format exists, use this shape:

```markdown
---
type: plan
created: YYYY-MM-DD
part-of: <campaign or none>
implements: <spec or exploration or none>
governed-by: <decision or none>
---

# <Change> Implementation Plan
## Outcome
## Scope
- Include:
- Exclude:
## Global Constraints
## Tasks
### T1: <Independently testable result>
**Files** · **Interfaces** · **Change** · **Check** · **Blocked by**
<Optional only when non-default: **Owner:** worker · **Independent review:** named risk>
## Risks
## Completion
## Execution
- [ ] T1 — <result>
Current task: <ID or none>
Blocked by: <exact signal or none>
Next action: <one concrete action>
```

## Accept

A plan moves from `draft` to `ready` only through a human gate (see `using-praxis`): run the gate on the plan file and record the decision on the plan. Approval is the acceptance event; annotated feedback must be addressed and re-gated; dismissal stops.

A user's ordinary “go ahead with E1” may authorize execution after E1's plan gate succeeds; do not require a second magic phrase. Evolution-map approval alone never accepts a plan or authorizes mutation.

A running plan that materially changes scope, tasks, or contracts returns to `draft` and re-gates. Harmless path or symbol drift is updated in place without re-gating. Pausing work means updating the Execution block so the next session resumes from the plan, not creating any other record.

Running a plan belongs to `execute`. Commit, PR, and handoff remain separate requested outcomes.
