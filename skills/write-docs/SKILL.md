---
name: write-docs
description: "Write durable documentation for one reader. Use for requested guides, contract reference, explanation, operations, change communication, or an authorized implementation result."
---

# Write Docs

Load [Praxis Control](../../references/control.md).

Begin from an explicit documentation request or an authorized implementation
boundary that includes documentation.
Conversation, plans, approvals, and implementation notes are evidence for
claims, not documentation structure.

## Bind reader, truth, and owning surface

Name the reader and starting knowledge; one task, question, condition, or
transition; supported product/version/environment; affected documentation
area; and exact edit authority. A conversational explanation alone does not
authorize durable docs.

Inspect authoritative implementation, public interfaces, schemas,
configuration, tests, examples, scripts, generated sources, repository
instructions, and observable behavior. Separate current behavior from
accepted but undelivered intent, history, hypothesis, simulation, and
illustration. Return delivered/intended mismatch to its causal owner rather
than documenting the future as present.

Choose each surface's primary reader job and load its method:

- [task guides](references/task-guides.md) for tutorials, setup, and how-to;
- [contract reference](references/contract-reference.md) for precise API, CLI,
  schema, configuration, or stable interface lookup;
- [understanding](references/understanding.md) for concepts, architecture, or
  rationale;
- [operations](references/operations.md) for maintenance, troubleshooting,
  recovery, and incident action;
- [change communication](references/change-communication.md) for release,
  deprecation, changelog, or migration.

Keep different forms in separate owned surfaces. Inspect navigation,
frontmatter, generators, synchronization, links, formatting, rendering, and
build paths. Update the existing owner; create a file only for a distinct
durable need with a discoverable home. Edit authoritative generator input,
not disposable output. Publication, release, commit, push, deployment, or
external-site editing remain outside documentation edit authority.

## Write and verify one reader journey

Lead with the reader's action or question. Use exact product terms, commands,
options, keys, types, defaults, and observable results. Give the smallest
complete representative path before variants. Place prerequisites, safety,
limitations, decisions, failures, and recovery where they affect action.
Repair stale owning prose rather than adding a competing explanation.

Use runnable examples when syntax, state, sequence, or error handling could be
misread. Sanitize values, include necessary setup and meaningful failure, and
verify against current behavior. Add a visual only when it materially reduces
mental simulation and provide a text equivalent. Call
[Make Tangible](../make-tangible/SKILL.md) for a nontrivial visual, interactive
explanation, or generated demonstration; retain it only inside current docs
authority with exact version, placement, fidelity, and lifetime.

`no-op` keeps prose or a simple table. Integrate `constructed` or `revised`
only when the returned path, version, and placement stay inside documentation
authority. Preserve `blocked` or `stopped` as Write Docs' exact incomplete or
stopped state; never invent a fallback reaction, cleanup, publication, or
acceptance. Make Tangible retains construction and lifecycle ownership.

Reread from the declared reader state. Verify prerequisites, exact syntax and
sequence, observable results, consequential choices and limits, failure and
recovery, navigation, anchors, links, generation, rendering, and native
build/lint. Run the reader path safely when practical. A passing command or
lint alone does not prove the journey. State every material claim or
transition not exercised and its confidence limit.

Return `complete`, `already-current`, `partial`, `blocked`, `failed`, or
`stopped` with reader and purpose, forms and surfaces, exact changes, current
truth and owners, examples or artifacts, decisive verification, evidence,
material gaps, and `not published`. Do not commit, push, publish, release,
deploy, or continue adjacent work.
