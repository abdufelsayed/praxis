# Praxis

Praxis is an autonomous engineering operating system for coding agents. Its kernel diagnoses the work, chooses the lightest safe process, routes to one current driver, and coordinates discussion, repo policy, artifacts, runtime coordination, documentation, agent guidance, lifecycle state, context continuity, worktree isolation, planning, execution, review, verification, and delivery.

The main entry point is `praxis:kernel`.

## Process Shape

Praxis is optimized for proportional autonomy:

```text
diagnose -> choose process -> call one driver -> act to transition -> adapt -> stop or continue
```

Small work should stay small: direct inspection, tiny edits, and focused fixes should not create plans, worktrees, artifacts, or subagents unless continuity or safety requires them.

Substantial work gets more structure: exploration, design, spec, issue, plan, worktree, supervised subagents, review, verification, delivery, commit, PR, or handoff appear only when they improve correctness, continuity, or parallel execution.

Failed verification is not delivery. When a check fails, Praxis routes back to repair, execution, exploration, replanning, a blocker, or handoff with evidence.

Long autonomous work uses runtime coordination for active state and distills only durable residue into existing artifacts: context, exploration, decision, spec, issue, plan, evidence, or handoff.
