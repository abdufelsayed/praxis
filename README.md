# Praxis

Praxis is a lean engineering framework for capable coding agents: one loop with optional stations — EXPLORE → DECIDE → CONTRACT → PLAN → EXECUTE → PROVE → DELIVER — where each station's skill loads only when its activity is present. Enter at the first station whose question you cannot already answer; exit at the last station whose artifact someone needs.

Invoke `using-praxis` when Praxis is requested generally, activities overlap, or durable Praxis state exists; it routes on state first, then activity.

Praxis defines the boundary, durable state, evidence, and stop condition for consequential work. It does not prescribe a universal lifecycle, replace repository judgment, or explain how to be an engineer step by step.

## Principles

- Direct answers and clear local changes remain direct.
- Repository rules and the user's latest instruction override Praxis.
- Source and fresh evidence outrank saved prose.
- Durable artifacts exist only when another owner, session, or system needs them.
- One artifact owns each kind of state; link instead of copying.
- Delegation uses bounded ownership and supervisor-owned integration.
- Verification proves a named claim and nothing broader.
- Human gates — plan acceptance, PR review — are mandatory checkpoints with an optional tool.
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
| Campaign | `.agents/campaigns/YYYY-MM-DD-short-title.md` |
| Continuity record | `.agents/continuity/<short-title>.md` |
| Handoff | `.agents/handoffs/YYYY-MM-DD-short-title.md` |
| Review or verification evidence | `.agents/evidence/YYYY-MM-DD-short-title.md` |

Conversation is enough for one-turn alignment, direct answers, and ephemeral coordination. Once a skill determines that a durable artifact is warranted, a chat response is not a substitute for writing the owning record.

Design and queue execution are activities, not artifact types. Durable pre-decision reasoning becomes an exploration; accepted choices become decisions; observable contracts become specifications. A queue operates over issues or plans and updates their owning state instead of creating a second queue record. Campaigns remain artifacts because they own direction and relationships across independently tracked workstreams.

The canonical local state is `inbox`, `draft`, `ready`, `running`, `blocked`, or `done` for issues and `draft`, `ready`, `running`, `blocked`, or `done` for plans. Treat legacy `active` directories as `running` and move a record only when it is next updated. Classify legacy `.agents/designs/` records by content into explorations, decisions, or specifications, and treat legacy `.agents/queues/` files as derived views whose authoritative state belongs in issues, plans, or campaigns.

## Skills

- `using-praxis`: route on durable state, then activity, to one current skill.
- `clarify`: interview the user for missing product intent.
- `pair`: pair-program continuously while the user controls every mutation boundary.
- `evolve`: grow broad visions through the smallest complete working forms.
- `design`: resolve unclear requirements, interfaces, architecture, and tradeoffs.
- `spec`: define stable observable behavior and acceptance boundaries.
- `decision`: preserve consequential choices and rationale.
- `plan`: author executable plans and gate their acceptance.
- `execute`: run accepted plans to verified results.
- `issues`: represent and prioritize durable issues and serial queues.
- `campaign`: keep long-running initiatives' direction and uncertainty durable.
- `continuity`: preserve recoverable state and transfer active work.
- `debug`: reproduce failures and prove root causes.
- `dispatch`: brief and supervise isolated agent work.
- `review`: review bounded work or evaluate review feedback.
- `verify`: match completion claims to current evidence.
- `docs`: write source-grounded product and repository documentation.
- `worktree`: create or understand isolated workspaces.
- `commit`: stage and commit one intentional change safely.
- `pr`: create or update reviewer-focused pull requests.
- `safety`: bound destructive or irreversible operations.

Installations may expose names through a namespace such as `praxis:continuity`; the host determines invocation syntax.
