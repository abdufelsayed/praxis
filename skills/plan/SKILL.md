---
name: plan
description: Use when an implementation plan must govern execution, survive another owner or session, or pass its acceptance gate before work begins.
---

# Plan

Use planning when work crosses meaningful boundaries and needs durable execution state. If nobody will execute or rely on it, answer in conversation without creating a plan. Obvious local edits and agent availability do not justify one.

## Create

Inspect accepted requirements, source, tests, and repository constraints before naming files or commands. Divide work into independently checkable results and fold scaffolding into what it enables. Every task contains:

- **Files:** exact files to create, modify, or test when known;
- **Interfaces:** exact symbols, types, formats, behavior, or contracts consumed and produced;
- **Change:** required behavior, edge cases, and compatibility constraints;
- **Check:** an exact command or observation and its decisive expected signal;
- **Blocked by:** task IDs that must complete first; omit when none.

Put contracts and migrations before consumers, name dependencies, map accepted requirements, include execution-changing risks, and end with integrated proof. The supervisor owns planning; use [agent roles](../../references/roles.md) only for a concrete evidence gap or named risk.

When Evolve governs, read [control flow](../../references/control-flow.md). Require an approved map and one explicitly authorized current evolution, then plan exactly that evolution and link its map when durable. Lead with volatile program decisions—interfaces, types, control flow, data, user experience, and compatibility—then compress mechanics. The plan must close the evolution's working behavior and proof. Future evolutions remain outcomes, never pre-expanded plans.

Direct ownership is implicit. Add `Owner: worker` or `Independent review: <named risk>` only when justified. Give interfaces and observable constraints without transcribing code or minute-by-minute instructions. Route missing product intent to `clarify`.

Write the plan to the repository's declared planning surface or, by default, `.agents/plans/<state>/YYYY-MM-DD-short-title.md`; use `draft`, `ready`, `running`, `blocked`, or `done` and treat legacy `active` as `running`. When no format exists, use this shape:

```markdown
---
type: plan
created: YYYY-MM-DD
part-of: <campaign or none>
implements: <spec or exploration or none>
governed-by: <decision or none>
evolution-map: <map or none>
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

A plan moves from `draft` to `ready` only through the file gate in [control flow](../../references/control-flow.md). Approval is the acceptance event; annotated feedback changes only the plan and must be re-gated; dismissal stops. Record approval in the plan and move it to `ready`.

For Evolve, ordinary language such as “go ahead with E1” authorizes E1 before planning. It permits the plan but not source mutation. Once that exact plan passes its gate, prior E1 authorization releases autonomous execution inside the plan; no second magic phrase is required. Map approval alone never authorizes E1, and plan approval without E1 authorization never authorizes mutation.

Material scope, task, or contract changes return a running plan to `draft` and re-gate; harmless path drift updates in place. Evolution plans remain running through result review and move to `done` only after approval. Pausing updates the Execution block, never parallel state.

Running a plan belongs to `execute`. Commit, PR, and handoff remain separate requested outcomes.
