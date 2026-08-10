---
name: orient
description: "Orient the requester to one settled model. Use after a direct teaching request or accepted orientation suggestion whose purpose is comprehension."
---

# Orient

Load [Praxis Control](../../references/control.md).

Orient is a supporting capability inside the active Inquiry. It may organize
and test comprehension autonomously, but it does not select a lifecycle
position, meaningful transition, gate, authority, or continuation. A direct
teaching request may establish one bounded Inquiry.

Begin from a direct teaching request or an accepted bounded orientation
suggestion. Orient owns the learning objective, teaching order, examples,
checks, and interpretation. It is read-only.

## Bind a settled model

Fix one learning objective, the requester's likely starting point, the settled
observed or accepted model, authoritative anchors, important ownership and
failure boundaries, and visible uncertainty. Ask at most one calibration
question when it would materially change the explanation.

Teach only what is settled enough to explain. A question that could change a
need or constraint returns to Requirements Discovery; changed governing
behavior or proof returns to Formalization; an unsettled implementation shape
returns to Plan or [Design Solution](../design-solution/SKILL.md). Do not use
teaching questions to elicit preferences, negotiate behavior, or disguise
disagreement as misunderstanding.

Inspect current source, interfaces, configuration, tests, runtime behavior, or
authoritative references far enough to support the model. Distinguish sourced
fact, accepted meaning, inference, and uncertainty. Call
[Research](../research/SKILL.md) only for a bounded factual gap that prevents
an accurate explanation. Integrate `answered`; use `no-op` only for sufficient
existing context; preserve `unverified` or `conflicting` within the evidence
bar; return `revised` or `needs-human-judgment` to the causal owner; map
`blocked` to `orientation-blocked` only when the objective cannot be supported;
and preserve `stopped`. Changed governing truth returns to its causal owner.

## Teach proportionately

Order the explanation around the whole:

1. purpose, responsibilities, ownership, and primary flow;
2. the few relationships that make it work;
3. concrete examples or decisive source anchors;
4. one difficult transition or failure; then
5. that detail's place in the whole model.

Use conversation, examples, small diagrams, state tables, and source
walkthroughs by default. Call [Make Tangible](../make-tangible/SKILL.md) only
when a visual, navigable, interactive, simulated, or multi-state surface is a
substantial fidelity problem. The surface may test comprehension only; it
cannot discover Requirements, select a solution, approve work, or accept a
result.

Make Tangible `no-op` uses ordinary explanation; `constructed` or `revised`
preserves exact artifact, reaction, fidelity, and retention state; `blocked`
or `stopped` remains exact without inferred comprehension. Design Solution
results return intact as `causal-return`; Orient never teaches an unsettled
choice.

Optional checks ask the requester to predict a transition, distinguish boundaries,
apply the model, or identify uncertainty. Adapt after the reaction. Checks
support only the current understanding judgment; they do not verify
implementation or grant authority.

## Return and stop

If teaching exposes contradictory evidence, missing governing meaning, a new
preference, or disagreement with accepted truth, distinguish it from a
misconception and return it to the exact owner. Durable guidance for future
readers belongs to [Write Docs](../write-docs/SKILL.md); do not invoke it
without that separate entry.

Return what was explained, source anchors and truth status, checks and
interpretations, uncertainty, any surface and fidelity limits, and one of:
`explained`, `understanding-observed`, `understanding-unconfirmed`,
`misconception-unresolved`, `orientation-blocked`, `causal-return`, or
`stopped`. Comprehension is not approval, acceptance, or authority.
