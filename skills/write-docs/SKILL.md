---
name: write-docs
description: Write or revise durable documentation for one reader and one job. Use for requested guides, contract reference, explanation, operations, change communication, or agent instructions.
---

# Write Docs

Conversation and implementation notes are evidence for documentation, not its
structure. A conversational explanation alone does not authorize durable edits.

## Bind reader, truth, and surface

Name the reader and starting knowledge, their task or question, supported
product/version/environment, and the owning documentation surface. Inspect
authoritative implementation, public interfaces, schemas, configuration, tests,
examples, scripts, generated sources, repository instructions, navigation, and
observable behavior.

Separate current behavior from accepted but undelivered intent, history,
hypothesis, simulation, and illustration. Return a delivered/intended mismatch
to its owner rather than documenting the future as present.

Read the method matching the reader's job:

- [task guides](references/task-guides.md) for tutorials, setup, and how-to;
- [contract reference](references/contract-reference.md) for API, CLI, schema,
  configuration, or stable interface lookup;
- [understanding](references/understanding.md) for concepts, architecture, or
  rationale;
- [operations](references/operations.md) for maintenance, troubleshooting,
  recovery, and incident action;
- [change communication](references/change-communication.md) for release,
  deprecation, changelog, or migration;
- [agent instructions](references/agent-instructions.md) for skills,
  `AGENTS.md`, `CLAUDE.md`, or another document reached by an agent pointer.

Update the existing owner. Create a file only for a distinct durable need with a
discoverable home. Edit authoritative generator input, not disposable output.

## Write one reader journey

Lead with the reader's action or question. Use exact product terms, commands,
options, keys, types, defaults, and observable results. Give the smallest complete
representative path before variants. Put prerequisites, limitations, consequential
choices, failures, and recovery where they affect action.

Use runnable examples when syntax, state, sequence, or error handling could be
misread. Sanitize values and include meaningful failure behavior. Add a visual
only when it materially reduces mental simulation.

Reread from the declared starting state. Verify syntax, sequence, results,
navigation, links, generation, rendering, and native build or lint. Run the
reader path safely when practical. State claims or transitions not exercised and
their confidence limit.

Report the reader, purpose, changed surfaces, decisive verification, and material
gaps. Commit, push, publication, release, and deployment require separate
authorization.
