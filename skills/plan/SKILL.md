---
name: plan
description: Use when the user requests an implementation plan, another owner needs an executable handoff, or an accepted non-trivial plan must be carried out with durable progress.
---

# Plan

Use planning when work crosses meaningful boundaries or must survive another owner or session. An obvious local edit needs no plan.

## Create

Inspect accepted requirements, relevant source, tests, and repository constraints before naming files or commands. Divide work into independently checkable results, not setup trivia. For each task, identify the affected responsibilities, interfaces it consumes or produces, required behavior, important edge cases, and a check with a decisive expected signal.

Put contracts and migrations before consumers. Name serial dependencies and genuinely independent work. Map every accepted requirement to a task and end with integrated proof. Keep exact code out unless the implementation must follow it.

Write the plan in conversation unless it must survive. Follow the repository's convention for a durable plan; when none exists and the user wants a file, adapt [references/plan-template.md](references/plan-template.md).

## Execute

Reconcile an accepted plan with current source before editing. Resolve material contradictions; update harmless path or symbol drift as work proceeds. Complete one checkable task at a time, run its focused proof, and update the existing plan only when future execution depends on that state. Never create a second progress artifact; adapt [references/execution-checklist.md](references/execution-checklist.md) only when the durable plan lacks usable progress fields.

Stop when execution requires an unresolved product choice, would overwrite unrelated work, expands into another subsystem, or repeatedly fails its stated proof. Use `verify` for the final integrated claim. Commit, PR, handoff, and delegation remain separate requested outcomes.
