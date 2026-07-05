---
name: grill-me
description: "Use to grill the user or challenge a human proposal, product direction, strategy, requirements, design direction, or plan interactively. Trigger when the user says grill me, stress-test this, challenge this, poke holes, or when preflight/discussion finds unresolved user or product judgment that needs one-question-at-a-time pressure before agents build."
---

# Grill Me

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Challenge the human-facing proposal before the team builds the wrong thing.

This is human-facing. Use `praxis:preflight` when the agent needs to challenge its own route, assumptions, scope, plan, design, or proof standard. Use `praxis:review` for artifact/diff correctness and `praxis:verify` for proof.

Grill-me asks whether the premise, scope, plan, design, constraints, and proof standard are strong enough to build from when the remaining uncertainty depends on user judgment.

## Required Reads

- Read the linked plan, spec, issue, decision, design note, or user proposal.
- Load `praxis:explore` when a question can be answered from the repo, sources, or running code.
- Load `praxis:source` when the challenge depends on current external facts.
- Load `praxis:preflight` first when the agent has not self-checked its own route and assumptions.
- Load `praxis:spec`, `praxis:design`, `praxis:plan`, or `praxis:decide` after the challenge produces durable changes.

## Use Automatically When

- The user asks to be grilled, challenged, stress-tested, or have holes poked in a plan/design.
- `praxis:preflight` finds that a human preference, product choice, or proposal-level tradeoff is the real blocker.
- A design/spec affects product direction, pricing, UX, public API, or broad package boundaries and needs user judgment.
- The user is steering strategy or requirements and explicitly wants pushback.

Skip for agent self-checks; use `praxis:preflight` instead. Skip for source-answerable facts, tiny edits, direct commands, already-approved narrow fixes, or when the user explicitly opts out.

## Procedure

1. Name the human-facing decision tree: what is being challenged and what would change if an answer goes the other way.
2. Inspect local evidence before asking. If the repo can answer the question, read or run the smallest useful check instead of making the user answer.
3. Ask one question at a time. Do not dump a questionnaire.
4. For each question, include your recommended answer and why it is your current recommendation.
5. Walk dependencies in order: purpose -> user/caller -> constraints -> design shape -> scope -> risks -> verification -> rollout/handoff.
6. After each answer or discovered fact, update the current leaning and choose the next highest-leverage question.
7. Stop when the remaining uncertainty no longer changes the plan, or when the next question requires user preference.
8. Route durable outcomes to the owning artifact skill. Do not leave changed requirements trapped in chat.

## Challenge Axes

- Goal: are we solving the right problem, for the right user/caller, now?
- Scope: what is intentionally out, and will agents respect that boundary?
- Current reality: what does the repo already do, and what are we assuming without evidence?
- Design: is the abstraction, API, module boundary, or data model the smallest one that fits?
- Operations: migrations, rollout, observability, secrets, cost, performance, support, and rollback.
- Verification: what evidence would prove this worked, and what would remain unverified?
- Agent execution: can another agent execute the plan without re-discovering context or overbuilding?

## Question Shape

Use this pattern:

```text
Question: <one concrete question>
Recommended answer: <your current answer>
Why it matters: <what changes based on the answer>
```

Keep questions specific. Prefer "Which caller owns this behavior when API and UI disagree?" over "Any concerns?"

## Output

- current leaning;
- one active question, with recommended answer;
- facts discovered from source instead of asked;
- changes needed to spec/design/plan/decision;
- stop reason when challenge is complete.

## Transition

```text
output: challenge question, resolved assumption, artifact update, or stop reason
lane: <current lane>
state: exploring | draft | ready | blocked
result: challenged | needs-user | needs-exploration | artifact-update
next: preflight | discuss | explore | design | spec | plan | decide | stop
evidence: user answer, code fact, source, artifact path, or unresolved assumption
```
