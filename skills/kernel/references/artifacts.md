# Praxis Artifacts

Artifacts are durable SDLC memory. Create one when future agents, subagents, reviewers, queues, or future sessions need current truth without replaying the conversation.

## Principles

- Write the useful present truth, not a transcript or archaeology.
- Preserve live goals, constraints, truth status, decisions, blockers, acceptance criteria, verification, and next actions.
- Keep each artifact scoped to one purpose.
- Link related artifacts instead of copying the same facts everywhere.
- Keep raw logs, diffs, dumps, and reports as evidence links unless a template asks for a short summary.
- Use repo convention first; otherwise use `storage-policy.md`.
- Use the matching template and omit empty sections.

## Truth Metadata

Durable artifacts that can drive future work should declare their truth state when the repo format allows it:

```text
Truth Status: draft | provisional | accepted | superseded | invalidated
Program:
Depends on:
Supports:
Invalidates:
Supersedes:
Superseded by:
Evidence:
Revisit when:
```

Use this metadata to prevent stale assumptions from silently driving execution. Keep it proportional: tiny local artifacts do not need every field, but any artifact that is provisional, superseded, invalidated, or linked to a program should make that status visible.

## Truth Records

Programs embed small records by default:

- `FACT-*`: source-backed truth;
- `GAP-*`: unknown that can change direction;
- `ASM-*`: assumption used to proceed;
- `HYP-*`: testable explanation or prediction;
- `CAND-*`: proposed design/spec/plan/model/code shape;
- `CE-*`: concrete counterexample;
- `INV-*`: invalidation or supersession event;
- `RISK-*`: accepted risk with revisit condition.

Promote a record into its own artifact only when it needs independent ownership, review, execution, detailed evidence, or handoff.

## Artifact Types

| Artifact | Purpose | Create When | Default Path | Owner | Template |
| --- | --- | --- | --- | --- | --- |
| `program` | Root truth container for long-running uncertain work. | Work is architecture-shaping, research-heavy, multi-session, or depends on durable assumptions/hypotheses/candidates. | `.agents/programs/YYYY-MM-DD-short-title.md` | `praxis:program` | `templates/program.md` |
| `context` | Living truth about project, session, or active work. | Future work needs current status, constraints, blockers, or next action. | `.agents/context/<name>.md` | `praxis:context` | `templates/context.md` |
| `exploration` | Distilled investigation or pre-decision reasoning. | Research, code reading, diagnosis, brainstorming, or a spike is worth preserving. | `.agents/explorations/YYYY-MM-DD-short-title.md` | `praxis:explore` or `praxis:discuss` | `templates/exploration.md` |
| `design` | Provisional or accepted architecture/model/API/boundary/vocabulary. | A design candidate must survive future sessions or guide specs, decisions, plans, or implementation. | `.agents/designs/YYYY-MM-DD-short-title.md` | `praxis:design` | `templates/design.md` |
| `decision` | A binding choice future agents should respect. | A tradeoff, policy, architecture choice, or naming choice becomes durable. | `.agents/decisions/YYYY-MM-DD-short-title.md` | `praxis:decide` | `templates/decision.md` |
| `spec` | Desired behavior, constraints, and acceptance criteria. | Requirements should guide implementation or review. | `.agents/specs/YYYY-MM-DD-short-title.md` | `praxis:spec` | `templates/spec.md` |
| `issue` | Independently trackable SWE work slice. | Work should be queued, delegated, reviewed, or verified independently. | tracker or `.agents/issues/<state>/YYYY-MM-DD-short-title.md` | `praxis:issue` | `templates/issue.md` |
| `plan` | Executable recipe. | Another agent or future session must run the work without reconstructing context. | `.agents/plans/<state>/YYYY-MM-DD-short-title.md` | `praxis:plan` | `templates/plan.md` |
| `evidence` | Saved proof, review findings, counterexample, retrospective, or audit-worthy signal. | Review, verification, counterexample, or learning must survive the current turn or support handoff/refinement. | `.agents/evidence/YYYY-MM-DD-short-title.md` | `praxis:review`, `praxis:verify`, or `praxis:refine` | `templates/evidence.md` |
| `handoff` | Continuation note for another agent, thread, or session. | Ownership changes, compaction is likely, or work pauses midstream. | `.agents/handoffs/YYYY-MM-DD-short-title.md` | `praxis:handoff` | `templates/handoff.md` |

## Not Artifacts

Runtime directories, worktrees, branches, commits, PRs, CI jobs, subagent threads, queues, and trackers are operational surfaces. They may contain or point to artifacts, but they are not artifact types.

## Boundary Tests

- If it explains the product or codebase for humans, use `praxis:docs`.
- If it gives standing editing rules to agents, use `praxis:agent-guide`.
- If it manages evolving truth for a long-running uncertain workstream, use `program`.
- If it states a provisional or accepted architecture/model/API/boundary, use `design`.
- If it proves a claim, disproves a candidate, or records retrospective learning, use evidence or a short final verification/refinement note.
- If it is only useful during the active run, keep it in runtime.
- If it is a command, branch, PR, or external ticket, link it from the artifact that needs it.

## Fresh Context Rule

When converting messy conversation into an artifact, write what a capable future agent needs next. Drop discarded branches unless they prevent a likely mistake. Do not frame artifacts around what was ignored.

## Supersession Rule

When evidence invalidates an artifact, do not edit around the stale truth silently. Route to `praxis:refine`, mark the affected artifact `superseded` or `invalidated`, link the cause and successor, then repair downstream specs, issues, plans, briefs, or context before execution continues.
