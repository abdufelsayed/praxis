---
name: orient
description: "Explain one settled model in the requester's vocabulary. Use when a system, domain, code path, or decision is accepted enough to teach without reopening its meaning."
---

# Orient

Teach one settled model accurately and proportionately. Orientation improves
understanding. It does not settle a requirement, choose a solution, prove an
implementation, or approve work.

## Bind the model

State the learning objective, likely starting point, authoritative anchors,
important ownership and failure boundaries, and visible uncertainty. Ask one
calibration question only when the answer would materially change the
explanation.

Inspect current source, interfaces, configuration, tests, runtime behavior, or
primary references far enough to support the model. Use
[Research](../research/SKILL.md) for a factual gap that prevents an accurate
explanation. Return unsettled desired behavior or implementation choices to the
requester rather than teaching one option as fact.

This step is complete when the explanation has a supported model and a bounded
learning objective.

## Teach from whole to detail

Explain in this order when it fits the subject:

1. Purpose, responsibilities, boundaries, and primary flow.
2. The few relationships that make the model work.
3. One concrete example or decisive source anchor.
4. A difficult transition, edge, or failure.
5. How that detail fits back into the whole.

Reuse the requester's and repository's vocabulary. Distinguish sourced fact,
accepted meaning, inference, and uncertainty. Use conversation, examples,
small diagrams, state tables, and source walkthroughs before richer artifacts.
Use [Make Tangible](../make-tangible/SKILL.md) when a visual, interactive,
navigable, or multi-state surface materially improves comprehension.

Optional checks may ask the requester to predict a transition, apply the model,
or identify a boundary. Treat the response as evidence about this explanation,
not as proof, approval, or a durable learner profile.

This step is complete when the requester can locate the important boundaries
and reason through the objective, or when the exact remaining misconception or
missing evidence is known.

Return what was explained, source anchors, uncertainty, checks and reactions,
and any unresolved misconception. Durable guidance for future readers belongs
to [Write Docs](../write-docs/SKILL.md) only when separately requested.
