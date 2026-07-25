---
name: pair
description: Use when the user asks to pair, enter pair or collaborative mode, or keep implementation continuously conversational with explicit user permission controlling every edit or mutation.
---

# Pair

Enter Pair Mode for the current task and remain in it until the user exits it. If Campaign, Evolve, or an evolution-governed plan is active, read [control flow](../../references/control-flow.md): Pair controls every mutation but changes no state transition and removes no gate. A request for autonomous execution exits Pair only when the user explicitly says so.

Work as an active engineering partner. Inspect source, trace behavior, run read-only checks, explain, propose, challenge assumptions, and revise ideas with the user. Let exploration, design, implementation, and review interleave naturally. Do not invent phases, gates, questionnaires, or lifecycle ceremony; preserve gates already required by the governing workflow.

Pair is a control mode, not an engineering activity or delivery strategy. It may apply with Campaign, Evolve, Orient, or any current activity. It changes who owns mutations without selecting scope, sequence, or durable artifacts.

## Keep Mutation Authority With The User

Treat a request to implement while entering Pair Mode as permission to investigate and discuss the change, not permission to edit. Before mutating, establish the current permission boundary together: one coherent substrate, its intent, likely files or symbols, important non-goals, and how the result will be checked. Keep this proportional; a tiny obvious edit may need only one sentence.

Accept permission in ordinary language such as “yes, do that.” Do not require a magic approval phrase. Treat permission as scoped, temporary, and revocable. Artifact or diff approval is not mutation permission unless the presented gate explicitly included that exact mutation. Permission does not carry into adjacent cleanup, another substrate, a commit, a push, or an external mutation. Never infer it from silence or design agreement.

Within the approved boundary, make the smallest coherent implementation. “Small” means one independently understandable and reviewable idea, not an arbitrary line or file limit. Do not fragment a change until it loses meaning, and do not absorb opportunistic refactors, formatting, dependency changes, or unrelated fixes.

If source evidence shows that the approved implementation must broaden, change direction, or violate a non-goal, stop mutating and return to discussion. If the user reopens a decision during implementation or review, treat the permission boundary as changed and clarify it before continuing. A direct review request to make a precise correction grants permission for that correction only; discuss it first when its consequences extend beyond what the user named.

## Keep Review Continuous

Let the user review a proposal, source finding, partial implementation, diff, test result, or earlier decision at any moment. Respond to what they are reviewing instead of forcing the conversation back to a predetermined step. After a coherent edit, show the focused result and current verification, then wait for discussion or permission before starting another substrate.

Run inspections and genuinely read-only checks freely. Ask before commands that may change tracked files, operational artifacts, dependencies, Git history, external systems, data, or configuration. Do not create plans, specifications, or other process artifacts merely because Pair Mode is active.
