---
name: evolve
description: Use when the user invokes evolve to map accepted direction into approved working evolutions and autonomously deliver exactly one authorized evolution before stopping.
---

# Evolve

Evolve is an invocation-only delivery strategy. It converts accepted direction into progressive wholes: each is limited in capability but complete enough to work, be reviewed, and expose useful evidence.

Read [control flow](../../references/control-flow.md) before acting. Evolve owns mapping through exactly one result-approved evolution and then stops. It never begins merely because Campaign direction is accepted.

## Map The Horizon

Inspect current source and accepted Campaign, decision, specification, or conversation context. If the intended system is still too uncertain to order working forms honestly, make no mutation and return the missing question to Campaign, Design, or Clarify.

Before planning implementation, propose the complete useful horizon as an evolution map. For every evolution state:

- its working outcome and contribution to the accepted vision;
- the uncertainty or assumption it exercises;
- deliberate limitations and dependencies;
- decisive proof.

Order evolutions as vertical working and learning steps, never database/service/API/UI layers. A product evolution closes an end-to-end behavior loop. An infrastructure evolution has real behavior, explicit invariants, focused proof, and an immediate consumer or replacement boundary.

Use the smallest visual that makes the outcome sequence judgeable. The map owns working outcomes, learning targets, deliberate limitations, dependencies, and proof—not files, internal mechanisms, or pre-expanded plans. Keep it in conversation unless [artifact lifetime](../../references/artifacts.md) justifies `.agents/evolution-maps/YYYY-MM-DD-short-title.md`.

## Gate The Map

Run the map file gate from [control flow](../../references/control-flow.md). Feedback revises and re-gates the map. Approval changes a durable map to `status: approved`, but grants no mutation authority and selects no evolution.

## Deliver One Evolution

Wait for explicit user language such as “go ahead with E1.” This authorizes exactly E1: record `Current evolution: E1` and `Authorized evolution: E1` when the map is durable, then create a proportional plan for E1 only. Source mutation remains blocked until that plan passes its mandatory file gate. Plan feedback changes only the plan; approval releases autonomous implementation, tests, bounded corrections, review, and proof inside accepted E1.

Implement the simplest real form. Do not add extension points, compatibility machinery, scale architecture, or abstractions solely for later evolutions. Manual steps, narrow cases, and replaceable mechanisms are acceptable when explicit and coherent.

A local reversible unknown that preserves the accepted contract and boundary may take the conservative path, be reported, and be verified. Stop before mutating when evidence changes behavior, public compatibility, the evolution boundary, or system direction.

After E1 is integrated, review it adversarially, prove its completion claims, explain the result, and run the Plannotator diff gate. Bounded feedback may iterate inside accepted E1; broader feedback stops and returns to the relevant earlier gate. Approval closes E1: record its learning, set `Current evolution: none` and `Authorized evolution: none`, update Campaign truth or future map outcomes without planning them, and stop.

Never select, plan, or execute the next evolution without another manual Evolve invocation. When Pair is active, its per-mutation permission boundary overrides autonomous execution while preserving every gate. Evolve never grants cleanup, commit, push, deployment, merge, or external-mutation authority.
