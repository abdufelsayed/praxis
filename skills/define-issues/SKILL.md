---
name: define-issues
description: "Define tracer-bullet issues from an accepted outcome. Use when a plan, specification, or settled conversation needs implementation-ready issues with explicit blocking edges."
---

# Define Issues

Turn one accepted outcome into the smallest complete set of reader-ready
issues. Define behavior, boundaries, dependencies, and proof. Planning and
implementation begin after this skill stops.

## Bind one accepted outcome

Start from the current conversation or the exact effort map, plan,
specification, or issue reference the requester supplied. Read the complete
source and its relevant comments. Inspect current code, tests, interfaces, and
behavior when they affect what can be specified honestly.

Separate accepted meaning from open questions. If an unanswered question can
change the desired outcome, a requirement, a shared invariant, or the boundary
between issues, ask the requester before drafting around it. Keep factual
investigation bounded to the claim that blocks issue definition. Use
[Make Tangible](../make-tangible/SKILL.md) or
[Design Solution](../design-solution/SKILL.md) only when prose cannot expose a
material behavior or solution choice clearly enough to specify it.

If an existing issue set already covers the accepted outcome without material
gaps or stale assumptions, return that set and explain why no rewrite is
needed.

This step is complete when the governing outcome is explicit and every open
question that can change issue meaning has either been answered or returned to
the requester.

## Divide by judgeable behavior

Shape each issue as a **tracer bullet**: a narrow but complete behavior that
cuts through every layer it needs and can be demonstrated or verified on its
own. Size it for one fresh implementation context.

Keep behavior together when its outcome, exclusions, dependencies, and proof
must be understood and judged together. Split when outcomes can be specified,
implemented, revised, and proved independently. Files, repositories,
frontend/backend, technical layers, components, and expected commit count are
not issue boundaries by themselves.

Give every issue its **blocking edges**. An edge exists only when another issue
must finish before this one can start or be proved. Issues with all blockers
complete form the implementation frontier.

When no vertical tracer bullet can keep a wide mechanical refactor working,
define an expand-contract sequence:

1. Add the new form beside the old.
2. Migrate callers in independently reviewable batches.
3. Remove the old form after every migration batch is complete.

Each migration batch should leave the codebase working and fit one fresh
implementation context. When that is impossible, add a final
integration-and-verification issue that owns the combined proof. Create a
preparatory refactoring issue only when demonstrated structural pressure blocks
the outcome.

This step is complete when every behavior has one independently judgeable
issue owner and every blocking edge represents a real prerequisite.

## Write reader-ready issues

Each issue needs only the sections its behavior requires:

```markdown
# <Issue title>

<One concise observable outcome.>

## Context
## Requirements
## Acceptance criteria
## Blocked by
## Out of scope
```

Omit empty optional sections. Context gives a future engineer enough accepted
meaning to work without replaying the conversation. Requirements cover normal
behavior, relevant states and transitions, shared invariants, compatibility,
edge cases, and failures. Acceptance criteria state observable claims and the
evidence capable of proving them, not implementation steps or test-file names.

Describe behavior without file paths or code snippets. When a prototype
captured a decision more precisely than prose, include only its decision-rich
snippet and identify the source.

Include an implementation choice only when it is already an accepted
constraint. Later planning owns code structure, commands, execution order, and
routine implementation decisions.

This step is complete when a future engineer can judge every issue without
replaying the source conversation or inventing missing behavior.

## Check the complete set

Read the issues together and account for every material behavior, constraint,
exclusion, dependency, ordering relationship, failure, compatibility duty, and
required proof in the accepted outcome. Remove accidental overlap and name any
remaining gap with the decision or evidence needed to close it. Every
obligation must have one clear owner, and every blocking edge must represent a
real dependency.

Present the proposed set as a numbered list. For each issue show its title,
what it delivers, and what blocks it. Recommend the granularity and edge
changes you believe are needed, then let the requester approve, revise, merge,
or split the set. When the requester explicitly asks for
[Plannotator](../plannotator/SKILL.md), present the complete set through that
interaction. Otherwise recommend it only when the set is too large to judge
honestly in chat. Silence is not approval.

This step is complete when every accepted obligation has exactly one issue,
every exclusion and failure is accounted for, and the requester has reviewed
the complete set.

## Persist only when selected

Keep the set conversational by default. Persist it only when the requester
asks, names a destination, or selects durable handoff to a future owner. Use
one file per issue and stable local identities. In `.praxis`, keep the files
under `.praxis/<effort>/` rather than creating a global schema. On an issue
tracker, read `.praxis/setup.md` when present, follow repository conventions,
and inspect the current tool surface before creating or revising issues. Leave
collection documents and parent issues unchanged unless the requester selected
them as the destination.

Return the complete issue set, its blocking edges, coverage, unresolved
questions, and recommended implementation frontier. Stop before planning or
implementation.
