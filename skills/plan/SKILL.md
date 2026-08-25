---
name: plan
description: "Plan one bounded implementation result. Use when an accepted issue, specification, or clear outcome needs a credible approach, sequence, risks, and proof before implementation."
---

# Plan

Turn one accepted outcome into an implementation-ready proposal. Planning owns
the approach and proof envelope. It does not choose new product meaning or
implement the result.

## Bind one result

Start from the exact issue, specification, conversation, or outcome supplied by
the requester. Read it completely, then inspect the current source, interfaces,
tests, configuration, dependencies, and relevant runtime behavior.

Separate accepted meaning from implementation choices. Return any question
that can change desired behavior, shared invariants, or scope to the requester
or its owning skill. Resolve factual uncertainty with
[Research](../research/SKILL.md), consequential solution shape with
[Design Solution](../design-solution/SKILL.md), and substantial structural
pressure with [Refactor](../refactor/SKILL.md). Use
[Make Tangible](../make-tangible/SKILL.md) when the choice cannot be judged from
prose.

This step is complete when the outcome, baseline, exclusions, dependencies, and
unresolved implementation choices are explicit.

## Shape the approach

Choose the smallest approach that can produce one integrated, reviewable, and
provable result. Describe the responsible seams, interfaces, data flow,
migration or compatibility work, and the order in which the code can remain
working. Include preparatory refactoring only when a demonstrated pressure
blocks the result.

Compare alternatives only when they materially change ownership, interfaces,
risk, reversibility, migration, or proof. Make a recommendation and state the
condition that would change it. Routine reversible choices belong to the
implementer.

Leave a choice open only when every allowed option preserves the accepted
behavior, scope, risks, recovery, and proof. Name the options and the evidence
that will decide between them. Put a decision checkpoint at the exact sequence
position only when implementation must expose something tangible before the
choice can be made.

This step is complete when a competent engineer can explain how the result fits
the current system and why the sequence is safe.

## Write the proposal

Use only the sections the result needs:

```markdown
# <Plan title>

<The integrated result this plan will produce.>

## Context and scope
## Approach
## Changes
## Risks and recovery
## Verification
## Documentation
## Open decisions
```

The Changes section describes coherent implementation slices and their
dependencies, not a file inventory. Verification maps each completion claim to
evidence capable of disproving it. Name documentation work only when public,
operational, integration, troubleshooting, or contributor behavior changes.

Keep the plan conversational by default. Persist it only when the requester
asks, names a future owner, or the work must survive this conversation. If
`.praxis` is selected, store the plan under `.praxis/<effort>/` rather than in
a global plan collection.

This step is complete when every covered obligation, material risk, recovery
path, and completion claim has a clear implementation or verification owner.

## Review the whole plan

Present the complete proposal with its result, sequence, risks, proof, and open
decisions. Recommend changes you believe are needed. When the requester asks for
[Plannotator](../plannotator/SKILL.md), present the plan through that interaction.
Otherwise recommend Plannotator only when the plan is too large to judge honestly
in chat. Revise material feedback and present the affected whole again. Silence
is not agreement.

Return the current plan, covered issue or outcome, remaining decisions,
evidence and assumptions, and implementation recommendation. Agreement on a
The plan does not authorize commits, pushes, deployment, production changes, or
other external effects. If the same request already asks to implement the
result, return to the caller so implementation can continue without inventing
another approval step.
