# Praxis Skills Map

Use this map when a skill's role is unclear. Routing chooses drivers; drivers load helpers and references only when needed.

## Bootstrap And Orchestration

- `using-praxis`: bootstrap Praxis, classify lane, load workflow.
- `workflow`: orchestrate lane, state, routing, and transition packets.

## Thinking Drivers

- `discuss`: technical conversation before implementation intent is clear.
- `brainstorm`: shape fuzzy product, feature, workflow, interface, or system direction.
- `explore`: investigate unknown local code, behavior, architecture, tools, or options.
- `prototype`: answer a question with a disposable spike.

## Direction And Artifact Owners

- `context`: living state.
- `distill`: turn messy material into clean artifacts.
- `decide`: durable choices.
- `spec`: desired behavior and constraints.
- `issue`: durable work slice.
- `plan`: executable recipe.
- `handoff`: continuation for another agent/session.

## Execution Drivers

- `execute`: implement one bounded plan, issue, or slice.
- `debug`: reproduce, diagnose, fix, and verify failures.
- `refactor`: behavior-preserving structural change.
- `queue`: process multiple ready issues or plans.

## Helpers And Gates

- `conventions`: discover repo rules, tracker, branches, checks, docs policy.
- `source`: check external or version-sensitive facts against authoritative sources.
- `safety`: gate destructive or hard-to-undo operations.
- `design`: shape structure, boundaries, APIs, or placement.
- `model`: clarify domain language and model boundaries.
- `tdd`: drive behavior changes through tests when practical.
- `subagents`: delegate bounded work, review, or QA under supervisor control.
- `review`: adversarial correctness pass.
- `verify`: map claims to fresh evidence.

## Surfaces And Delivery

- `docs`: user-facing and developer-facing documentation.
- `agent-guide`: AGENTS.md and scoped agent guidance.
- `worktree`: branch/worktree setup, merge, and cleanup.
- `finish`: final verification, state update, cleanup, or delivery choice.
- `commit`: commit message and staging discipline.
- `pr`: pull request title/body, readiness, and reviewer context.

## Compatibility Skill

- `checkpoint`: user-facing checkpoint action. It should update `context` or create `handoff`; it is not a core artifact type.
