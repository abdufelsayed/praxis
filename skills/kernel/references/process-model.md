# Praxis Process Model

This reference explains how Praxis work moves. Use it for substantial, unclear, failed, delegated, or long-running work. Skip it for direct fast requests when the next safe action is obvious.

## Process Invariant

Every turn follows the same control shape:

```text
diagnose -> choose process -> call one driver -> act to transition -> adapt -> stop or continue
```

Good Praxis behavior is not "use every step." It is choosing the smallest process that preserves intent, evidence, safety, and continuity.

The control plane overrides preference. If `control-plane.md` or an `Agent Control` header names a required process, follow that route before applying a lighter playbook.

## Diagnosis Questions

Answer these before choosing a driver:

- What is the user actually trying to accomplish?
- Is the next action obvious from current context?
- What could be harmed by guessing: user preference, source code, data, branch state, public docs, or committed history?
- Is this work tiny, bounded, substantial, long-running, delegated, or a recovery?
- What proof would justify the final claim?
- Will another agent or future session need state?

If one question blocks the next step and local inspection cannot answer it, ask. Otherwise inspect first.

## Task Playbooks

### Direct Inspection Or Command

Use for status checks, branch checks, single-file reads, and simple factual answers.

1. Run the minimal command or read.
2. Report the exact answer and evidence.
3. Stop.

Do not create artifacts, plans, worktrees, reviews, or subagents.

### Tiny Edit

Use for typo fixes, one-line text changes, and obviously local mechanical edits.

1. Locate the exact target.
2. Edit only that target.
3. Run the cheapest meaningful check, or explain why none is useful.
4. Report the changed file and evidence.

Escalate only if the target is ambiguous, generated, public API, cross-cutting, or safety-sensitive.

### Unclear Intent Or Product Judgment

Use when the user asks for taste, direction, UX, naming, workflow, or a vague improvement.

1. State the real decision or ambiguity.
2. Inspect local context if it can answer the question.
3. Offer a recommended path with alternatives, or ask one blocking question.
4. Route to `design`, `spec`, `plan`, or `execute` only when the intent becomes executable.

Do not turn every conversation into requirements.

### Exploration

Use when facts, code shape, tool behavior, or external behavior are unknown.

1. Inspect local source and repo policy first.
2. Form one or two hypotheses.
3. Probe with reversible commands or source reads.
4. Stop when the next action is clear enough, not when every possible fact is known.
5. Save an exploration only when future work would otherwise re-discover the same evidence.

### Design Or Spec Work

Use when structure, API boundaries, behavior, acceptance criteria, or durable choices matter.

1. Name the design question or behavior contract.
2. Read the closest existing patterns and constraints.
3. Compare two or three viable shapes when there is a real choice.
4. Choose the smallest shape that fits the repo.
5. Write a decision/spec only when the result must survive future sessions or agents.

### Bounded Implementation

Use when one slice can be implemented and verified in the current context.

1. Confirm scope, acceptance criteria, checkout, and relevant commands.
2. Implement one vertical slice.
3. Add or update tests when behavior changes and a useful seam exists.
4. Run targeted proof.
5. Route failed checks to `repair`; route successful work to `review`, `verify`, or `deliver`.

Do not absorb unrelated cleanup or final delivery into execution.

### Repair Or Failed Verification

Use when something fails, crashes, regresses, flakes, or a final check fails.

1. Reproduce the exact signal or name the missing repro.
2. Read error output, recent diffs, and relevant code.
3. State a falsifiable hypothesis.
4. Probe or fix one cause at a time.
5. Re-run the original signal.
6. After repeated failed hypotheses, stop guessing: broaden exploration, bisect, inspect environment, or replan.

Never claim done from a failed or stale check.

### Docs Or AGENTS Rewrite

Use when user-facing docs, maintainer docs, or agent-facing repo guidance are stale or missing.

1. Identify the reader and job.
2. Inspect source, manifests, scripts, lockfiles, parent guides, and examples before preserving claims.
3. Keep high-level maps when they help orientation; avoid file-by-file inventories unless explicitly requested.
4. Move conventions to AGENTS.md or repo-scoped skills; move work state to artifacts.
5. Verify command, link, and example claims when practical; name gaps plainly.

### Swarm Or Multi-Package Work

Use when parallel work materially improves speed or quality.

1. Keep one supervisor truth source.
2. Split by disjoint ownership and independently checkable outcomes.
3. Give each worker a bounded natural task brief.
4. Review worker output against the brief before implementation quality.
5. Integrate in a deliberate order.
6. Verify the integrated result yourself.
7. Distill only durable residue into artifacts.

Worker reports are inputs, not proof.

### Commit Or PR

Use when the user asks to commit, push, or open/update a PR.

1. Inspect status, branch, staged diff, and unstaged diff.
2. Identify intended changes versus unrelated user work.
3. Verify or name verification gaps before presenting readiness.
4. Stage only intended changes.
5. Write commit/PR text for reviewers: why, what changed, how verified, risks.
6. Do not include transcripts, unrelated files, or stale evidence.

### Messy Recovery

Use when prior work is confused, stale, partially wrong, or after compaction.

1. Reconcile the latest user request first.
2. Inspect branch, dirty tree, active runtime/artifacts, recent diffs, and verification state.
3. Classify what is useful, wrong, unrelated, blocked, or unknown.
4. Preserve user work and unrelated edits.
5. Salvage the smallest coherent path, then verify.
6. Write context or handoff only if future continuation needs it.

### Long Autonomous Run

Use when the user wants a loop to continue across time, agents, or sessions.

1. Define objective, stop conditions, risk limits, and proof standard.
2. Create runtime progress for active coordination.
3. Maintain current state, task board, latest transition, and event log.
4. Use subagents for bounded side work while the supervisor continues integration.
5. Update durable artifacts only with current truth, decisions, future work, evidence, or handoff.

## Adaptation Rules

- De-escalate when work becomes a small direct edit.
- Escalate when scope crosses packages, public behavior, data, security, branch history, or future sessions.
- Ask when user preference is the blocker.
- Inspect when source can answer the question.
- Replan when implementation disproves the plan.
- Repair when verification fails.
- Review when a human or worker could have satisfied the wrong requirement.
- Handoff when the next owner would otherwise reconstruct state.

## Driver Call And Return

A driver should do one bounded transition and return a packet. Helpers such as `repo-policy`, `source`, and `safety` return to the caller, not to a new workflow.

Use `result` for local outcomes and `state` for lifecycle state.

```text
output:
lane:
state:
result:
next:
evidence:
```

Save the packet only when it helps coordination, recovery, verification, or future work.
