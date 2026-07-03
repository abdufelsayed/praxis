---
name: decide
description: Use when recording a durable technical, product, workflow, naming, architecture, or policy decision with rationale and consequences. Keeps decision records concise and prevents discarded ideas from polluting plans.
---

# Decide

Record decisions that future agents should respect.

## Required Reads

Read `../workflow/references/artifacts.md` for the canonical decision shape.
Read `../workflow/references/persistence.md` before choosing the decision path.

## Location

Use repo convention first. Otherwise:

```text
.agents/decisions/YYYY-MM-DD-short-title.md
```

## Shape

- Decision.
- Context.
- Rationale.
- Consequences.
- Important rejected alternatives only if they prevent likely confusion.

Do not include a transcript of the debate.

## Next Skills

Load `praxis:context` when the decision changes living project state. Load `praxis:spec`, `praxis:issue`, or `praxis:plan` when the decision unblocks work.
