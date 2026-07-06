# Praxis

Praxis is an autonomous engineering operating system for coding agents. Its kernel diagnoses the work, enforces the control plane, chooses the lightest safe process, routes to one current driver, and coordinates discussion, program truth, refinement, preflight, human challenge gates, repo policy, artifacts, runtime coordination, documentation, agent guidance, lifecycle state, context continuity, worktree isolation, planning, execution, review, verification, and delivery.

The main entry point is `praxis:kernel`.

## Process Shape

Praxis is optimized for proportional autonomy:

```text
diagnose -> choose process -> call one driver -> act to transition -> adapt -> stop or continue
```

The control plane is binding. Agents must enter through the kernel, read `control-plane.md`, obey `Agent Control` headers in specs/issues/plans/task briefs, and route failed checks, review findings, dirty commits, and delegated execution through the required skills instead of improvising.

Long-running uncertain work should attach to `praxis:program` before plans depend on assumptions. A program artifact manages evolving truth: current synthesis, frontier, facts, gaps, assumptions, hypotheses, candidates, counterexamples, accepted risks, and artifact maps. When evidence disproves or weakens a candidate, `praxis:refine` classifies the counterexample, updates/supersedes affected artifacts, and routes repair, redesign, reset, or replan.

Large or risky agent-authored work should pass `praxis:preflight` before it hardens into execution: the agent challenges its own route, assumptions, scope, design, proof, and handoff. `praxis:grill-me` stays human-facing: it asks the user one question at a time, recommends an answer, inspects the repo instead of asking when possible, and routes durable changes back into the owning artifact.

Driver skills carry the executable process for their job. References support those skills with shared vocabulary, templates, storage policy, quality gates, and runtime primitives; they are not a substitute for the skill's local procedure.

Small work should stay small: direct inspection, tiny edits, and focused fixes should not create plans, worktrees, artifacts, or subagents unless continuity or safety requires them.

Substantial work gets more structure: exploration, design, spec, issue, plan, worktree, supervised subagents, review, verification, delivery, commit, PR, or handoff appear only when they improve correctness, continuity, or parallel execution.

Failed verification is not delivery. When a check fails, Praxis routes back to refinement, repair, execution, exploration, replanning, a blocker, or handoff with evidence.

Long autonomous work uses runtime coordination for active state and distills only durable residue into existing artifacts: program, context, exploration, design, decision, spec, issue, plan, evidence, or handoff.
