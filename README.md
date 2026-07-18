# Praxis

Praxis is a lean engineering framework for capable coding agents. Most skills name independent engineering activities and load only when that activity is present; `pair` provides an optional user-controlled collaboration mode.

Invoke `using-praxis` when Praxis is requested generally or several activities overlap; it selects one current technique without imposing a lifecycle.

Praxis defines the boundary, durable state, evidence, and stop condition for consequential work. It does not prescribe a universal lifecycle, replace repository judgment, or explain how to be an engineer step by step.

## Principles

- Direct answers and clear local changes remain direct.
- Repository rules and the user's latest instruction override Praxis.
- Source and fresh evidence outrank saved prose.
- Durable artifacts exist only when another owner, session, or system needs them.
- One artifact owns each kind of state; link instead of copying.
- Delegation uses bounded ownership and supervisor-owned integration.
- Verification proves a named claim and nothing broader.
- Preferences belong in agent memory or standing instructions, not task-state records.

## Durable Artifacts

When another owner, session, or system must rely on a local record, Praxis writes it under `.agents/`. A repository-declared artifact location or configured tracker may own the record instead; do not mirror the same state into both places. Treat `.agents/` as ignored local operational state unless the repository explicitly commits agent artifacts.

| Artifact | Default location |
| --- | --- |
| Exploration | `.agents/explorations/YYYY-MM-DD-short-title.md` |
| Decision | `.agents/decisions/YYYY-MM-DD-short-title.md` |
| Specification | `.agents/specs/YYYY-MM-DD-short-title.md` |
| Issue | `.agents/issues/<state>/YYYY-MM-DD-short-title.md` |
| Plan | `.agents/plans/<state>/YYYY-MM-DD-short-title.md` |
| Program | `.agents/programs/YYYY-MM-DD-short-title.md` |
| Continuity record | `.agents/context/<short-title>.md` |
| Handoff | `.agents/handoffs/YYYY-MM-DD-short-title.md` |
| Review or verification evidence | `.agents/evidence/YYYY-MM-DD-short-title.md` |

Conversation is enough for one-turn alignment, direct answers, and ephemeral coordination. Once a skill determines that a durable artifact is warranted, a chat response is not a substitute for writing the owning record.

Design and queue execution are activities, not artifact types. Durable pre-decision reasoning becomes an exploration; accepted choices become decisions; observable contracts become specifications. A queue operates over issues or plans and updates their owning state instead of creating a second queue record. Programs remain artifacts because they own direction and relationships across independently tracked workstreams.

The canonical local state is `inbox`, `draft`, `ready`, `running`, `blocked`, or `done` for issues and `draft`, `ready`, `running`, `blocked`, or `done` for plans. Treat legacy `active` directories as `running` and move a record only when it is next updated. Classify legacy `.agents/designs/` records by content into explorations, decisions, or specifications, and treat legacy `.agents/queues/` files as derived views whose authoritative state belongs in issues, plans, or programs.

## Skills

- `pair`: pair-program continuously while the user controls every mutation boundary.
- `evolve`: grow broad visions through the smallest complete working forms.
- `design`: resolve unclear requirements, interfaces, architecture, and tradeoffs.
- `spec`: define stable observable behavior and acceptance boundaries.
- `record-decision`: preserve consequential choices and rationale.
- `plan`: create executable plans and carry accepted plans with one durable progress surface.
- `work-management`: manage issues, serial queues, and long-running programs.
- `continuity`: preserve recoverable state and transfer active work.
- `debug`: reproduce failures and prove root causes.
- `dispatch-subagents`: brief and supervise isolated agent work.
- `review`: review bounded work or evaluate review feedback.
- `verify`: match completion claims to current evidence.
- `docs`: write source-grounded product and repository documentation.
- `worktree`: create or understand isolated workspaces.
- `commit`: stage and commit one intentional change safely.
- `pr`: create or update reviewer-focused pull requests.
- `safety`: bound destructive or irreversible operations.

Installations may expose names through a namespace such as `praxis:continuity`; the host determines invocation syntax.
