---
name: program
description: Use when starting, resuming, or maintaining a long-running design, research, architecture, or development program where truth evolves over time. Trigger for uncertain multi-session work, design programs, hypothesis/gap ledgers, candidate designs, counterexample-driven loops, artifact maps, current synthesis, or when assumptions must be durable before planning/execution.
---

# Program

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Manage evolving truth before work hardens into plans.

`program` is the root artifact for long-running uncertain work. It is not a plan, spec, or transcript. It keeps the current synthesis, frontier, and truth records durable from day 1 so later agents do not turn "maybe" into "true."

## Required Reads

Use `../kernel/references/templates/program.md` for program artifacts.
Read `../kernel/references/artifacts.md` when choosing whether a record should stay embedded or become its own artifact.
Load `praxis:refine` when a counterexample, invalidation, or supersession is discovered.
Load `praxis:explore`, `praxis:design`, `praxis:decide`, `praxis:spec`, `praxis:issue`, or `praxis:plan` only when the program frontier routes there.

## Create Or Attach

Create or attach a program when work is long-running, architecture-shaping, research-heavy, multi-session, repeatedly self-correcting, or depends on assumptions that future execution could silently inherit.

Use the repo convention first. Otherwise:

```text
.agents/programs/YYYY-MM-DD-short-title.md
```

Do not create a program for tiny direct work, local bug fixes with a clear repro, or short conversations whose uncertainty will not survive the turn.

## Contract

A program artifact preserves current truth:

- purpose and stop conditions;
- current synthesis;
- frontier and next pressure point;
- accepted vocabulary;
- facts, unknowns, assumptions, hypotheses, candidates, counterexamples, invalidations, and accepted risks;
- artifact map and supersession links;
- proof standard for promoting candidates into decisions/specs/plans.

Records are embedded by default:

- `FACT-*`: source-backed truth;
- `GAP-*`: unknown that can change direction;
- `ASM-*`: assumption used to proceed;
- `HYP-*`: testable explanation or prediction;
- `CAND-*`: proposed design/spec/plan/model/code shape;
- `CE-*`: concrete counterexample;
- `INV-*`: invalidation or supersession event;
- `RISK-*`: accepted risk with revisit condition.

Promote a record into its own artifact only when it needs independent ownership, review, execution, or detailed evidence.

## Flow

1. Name the program purpose, current frontier, and proof standard.
2. Record the current synthesis in present-tense truth, not conversation history.
3. Capture live uncertainty as gaps, assumptions, hypotheses, or candidates.
4. Name the next verifier: source exploration, preflight, review, tests, user discussion, runtime checks, or implementation probe.
5. Route executable work only after the dependent truth is stable enough or explicitly provisional.
6. When evidence changes the model, route to `praxis:refine` before continuing downstream work.
7. Keep the artifact map current enough that a future agent knows which decisions, specs, issues, plans, evidence, and handoffs depend on the program.

## Promotion Rules

- Candidate becomes `design` when it describes a provisional architecture, model, interface, or boundary.
- Candidate becomes `decision` only after the program accepts the choice as binding.
- Candidate becomes `spec` when it describes desired observable behavior.
- Candidate becomes `issue` or `plan` only when execution is bounded and acceptance criteria are known.
- Counterexample becomes `evidence` when the proof trail must outlive the program summary.

Do not promote uncertainty into a decision or plan just to make progress. Mark it provisional, state the verifier, and keep the revisit condition visible.

## Transition

```text
output: program path, updated synthesis, promoted artifact, next pressure point, or blocker
lane: focused | full | swarm
state: exploring | draft | ready | blocked
result: program-created | program-updated | candidate-promoted | needs-refine | blocked
next: refine | discuss | explore | design | decide | spec | issue | plan | preflight | stop
evidence: program path, record IDs, artifact links, source fact, user constraint, or open gap
```
