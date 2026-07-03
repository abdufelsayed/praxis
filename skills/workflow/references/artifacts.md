# Praxis Artifacts

Artifacts are durable SDLC memory, not transcripts. Create one when it helps future agents, subagents, reviewers, queues, or a future session continue without replaying the conversation.

## Rules

- Write current truth, not conversation archaeology.
- Preserve live goals, constraints, decisions, blockers, acceptance criteria, and evidence.
- Keep each artifact scoped to one purpose.
- Link related artifacts instead of copying the same facts everywhere.
- Keep raw logs, diffs, transcripts, and dumps as evidence links unless a template asks for a short summary.
- Use repo convention first; otherwise use the default paths in `persistence.md`.
- Use the target template when writing a durable artifact; omit empty sections.

## When To Read

Read this file before choosing, moving, splitting, or reshaping durable state.

Skip it for pure chat answers, tiny edits, or when the current skill already owns the artifact you need.

## Families

- Orientation: `context`
- Exploration: `exploration`
- Direction: `decision`, `spec`
- Execution: `issue`, `plan`
- Quality: `evidence`
- Continuity: `handoff`

## Boundaries

- Docs explain the current system to users, developers, maintainers, or contributors. Use `praxis:docs`.
- AGENTS.md gives stable repo or subtree editing context. Use `praxis:agent-guide`.
- Source code and tests are behavior truth.
- Artifacts coordinate work; they do not replace source, tests, docs, or repo instructions.

## Artifact Map

Before reorganizing or creating multiple artifacts, make a short map in chat or a scratch note:

```text
current item -> artifact type -> destination -> reason
```

Use the map to keep mixed material from becoming one bloated file.

## Catalog

| Artifact | Purpose | Create When | Skip When | Default Path | Owner | Template |
| --- | --- | --- | --- | --- | --- | --- |
| `context` | Living truth about project, session, or active work. | A future agent needs current state, conventions, blockers, or next action. | The fact belongs in source, tests, docs, or a short final answer. | `.agents/context/<name>.md` | `praxis:context` | `templates/context.md` |
| `exploration` | Distilled investigation or pre-decision reasoning. | Research, code reading, brainstorming, debugging, or prototype evidence is worth keeping. | The conversation is casual, resolved, or only needs a final answer. | `.agents/explorations/YYYY-MM-DD-short-title.md` | `praxis:distill`, then the relevant thinking skill | `templates/exploration.md` |
| `decision` | A durable choice future agents should respect. | A tradeoff, policy, architecture choice, or workflow convention becomes binding. | The user is still exploring or the choice is obvious from code. | `.agents/decisions/YYYY-MM-DD-short-title.md` | `praxis:decide` | `templates/decision.md` |
| `spec` | Desired behavior, constraints, and acceptance criteria. | Requirements are stable enough to guide implementation or review. | The work is a tiny direct edit or still needs exploration. | `.agents/specs/YYYY-MM-DD-short-title.md` | `praxis:spec` | `templates/spec.md` |
| `issue` | Durable SWE work slice. | Work should be tracked, queued, delegated, reviewed, or verified independently. | The task is one small immediate edit with no durable coordination value. | repo tracker or `.agents/issues/<state>/YYYY-MM-DD-short-title.md` | `praxis:issue` | `templates/issue.md` |
| `plan` | Executable recipe for non-trivial or delegable work. | Another agent, subagent, or future session must execute without reconstructing context. | The next step is obvious and low risk. | `.agents/plans/<state>/YYYY-MM-DD-short-title.md` | `praxis:plan` | `templates/plan.md` |
| `evidence` | Persisted proof, review findings, or audit-worthy quality signal. | Review or verification must survive the turn, justify completion, or support handoff. | A brief command result in the final answer is enough. | `.agents/evidence/YYYY-MM-DD-short-title.md` | `praxis:review` or `praxis:verify` | `templates/evidence.md` |
| `handoff` | Continuation note for another agent, thread, or session. | Ownership changes, compaction is likely, or work pauses midstream. | The work is finished or current context is short and active. | `.agents/handoffs/YYYY-MM-DD-short-title.md` | `praxis:handoff` | `templates/handoff.md` |
