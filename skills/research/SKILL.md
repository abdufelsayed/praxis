---
name: research
description: "Research one bounded factual question against current code, primary sources, or an empirical probe. Use when a claim needs evidence, falsification, provenance, or freshness before work can continue."
---

# Research

Answer one factual question with the smallest evidence path that can support or
falsify it. Keep facts, inference, conflict, and uncertainty distinct.

## Bind the question

State the claim, why it matters, required freshness, relevant environment or
jurisdiction, consequence of error, and evidence that would settle it. Use
existing context when it already answers the question at the required
confidence. A preference, priority, tolerance, or meaning choice belongs to
[Interview](../interview/SKILL.md), not Research.

This step is complete when the question has a bounded answer shape and a cheap
meaningful falsifier.

## Follow the evidence

Choose the applicable method and read its reference before investigating:

- [codebase evidence](references/codebase-evidence.md) for repository behavior,
  dependencies, runtime wiring, tests, generated interfaces, or history;
- [external evidence](references/external-evidence.md) for documentation,
  standards, laws, papers, datasets, releases, freshness, or jurisdiction;
- [empirical probes](references/empirical-probes.md) when actual behavior must
  distinguish competing claims.

Prefer current source, configuration, installed versions, generated interfaces,
reproduced behavior, and primary documentation. Search results and secondary
sources help find evidence but do not own the claim. Before a negative
conclusion, inspect plausible hidden paths or state why the method would have
exposed them.

For a consequential or favored claim, name what would make it false and run the
cheapest disconfirming or independent check. Use a background research agent
when the question can be investigated independently while other useful work
continues. Give it the bounded question and require primary-source evidence.
Keep synthesis with this skill.

Use [Make Tangible](../make-tangible/SKILL.md) when existing evidence needs a
comparison or perceptible form. Use [Manage Worktree](../manage-worktree/SKILL.md)
only for a mutating probe with a real collision or rollback risk. Consequential
experiments retain their normal authorization and safety checks.

This step is complete when more searching is unlikely to change the bounded
answer or when the exact missing evidence is known.

## Synthesize the answer

Lead with the answer. Cite each consequential claim near its source and state
the versions, dates, environments, or conditions that limit it. Explain
conflicts through differing conditions where the evidence supports that;
otherwise preserve the disagreement. Qualify negative findings by what was
actually inspected.

Keep the result conversational by default. Write a cited Markdown report only
when the requester asks, names a durable consumer, or the research must survive
the conversation. Use the repository's existing location or the relevant
`.praxis` effort when selected. A research report records evidence; it does not
create a Requirement, decision, priority, or implementation task.

Return the bounded answer, decisive evidence and provenance, freshness and
environment, inference, conflicts, limits, unresolved questions, and the
implication for the caller. Stop before implementing or publishing anything.
