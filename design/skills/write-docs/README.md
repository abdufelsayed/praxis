# Write Docs

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

Write Docs creates or repairs durable guidance for a real reader. It identifies
the reader's next action, reconstructs current truth from authoritative source
and behavior, chooses the owning documentation surface, writes a fresh coherent
explanation, verifies the reader journey, reports the result, then stops.

Conversation is evidence, not documentation structure. Write Docs never turns
interviews, design discussions, approvals, Plans, implementation notes, or
agent activity into a polished transcript. It uses them to locate claims worth
checking, then authors from the reader's perspective and the system that
actually exists.

## Start with a reader and an owned purpose

Name who will use the documentation, what they are trying to accomplish or
understand, and what they already know. A document without a concrete reader
need is not made durable merely because work occurred.

Inspect the existing documentation structure before creating a file. Put the
change where that reader already looks:

- a README or index for orientation and the main usable path;
- a task guide for completing an end-to-end activity;
- reference documentation for a stable interface or contract;
- an explanation for a mental model, mechanism, or consequential rationale;
- a runbook for recurring operations, recovery, or troubleshooting;
- repository instructions for standing contributor rules; or
- release notes, changelogs, deprecations, or migration guidance for change
  across versions.

Update the current owning surface whenever it exists. Create a new document
only for a distinct durable reader need with clear ownership and a discoverable
place in navigation.

## Reconstruct current truth

Inspect the authoritative implementation, interfaces, schemas, configuration,
tests, examples, scripts, generated sources, and observable behavior relevant
to the reader's task. Accepted Requirements, Issues, Plans, discussion, and
result evidence explain intent and help locate risk, but they do not override
what the delivered interface currently does.

When intended and actual behavior differ, return the mismatch to its owning
work. Never document the intended future as present behavior to make the
project appear complete.

Preserve consequential rationale only when a future reader needs it to use,
operate, or modify the system correctly. Explain the present constraint, the
mechanism chosen, and the consequence of violating it. Omit who proposed or
approved it, rejected alternatives, and conversational chronology unless the
repository has a genuine historical-decision surface and that history is
required for future judgment.

## Choose one primary document form

Each document serves one primary reader job:

- **Task guidance** teaches or guides the reader through an activity.
- **Contract reference** supports precise lookup of a stable interface.
- **Understanding** builds the mental model behind behavior or architecture.
- **Operations** supports safe action under recurring or urgent conditions.
- **Change communication** explains versioned impact and required transition.

Several forms may be needed for one delivered change, but they remain distinct
linked surfaces. Do not combine a tutorial, exhaustive API catalog, architecture
essay, and recovery runbook into one page.

README and index pages orient the reader, demonstrate the main path, and route
deeper needs. Contributor documentation composes task guidance for workflows,
contract reference for standing rules, and the repository's owning instruction
surface rather than inventing another method.

## Write the reader's path

Lead where the reader's action or question begins. Use exact product terms,
commands, configuration keys, types, and observable results. Include a concrete
example when syntax, state, or sequencing is easy to misunderstand.

Use progressive disclosure. Show the smallest complete representative path,
then introduce variants and complexity where they become relevant. Move
advanced configuration, exhaustive contract detail, and rare failures into
clearly named later sections or linked owning docs. Never hide a prerequisite,
safety condition, or limitation that changes correctness.

Preserve the repository's terminology, tone, heading depth, and example style.
Use direct factual prose and active instructions. Remove generic introductions,
repeated conclusions, unsupported best practices, marketing filler, and
agent-process narration.

## Reconcile the documentation system

Search for materially affected explanations. Update or remove stale and
duplicate claims instead of adding another correction. Keep one owning
explanation for each consequential fact and link or summarize it lightly from
other surfaces.

Current guidance describes supported present behavior. Migration material
explains only the transition an affected reader must perform. Changelogs and
release notes carry relevant shipped history. Do not make the main guide retain
an implementation timeline.

After editing, reread the affected path from the reader's entry point. Repair
sequencing, terminology, navigation, duplication, examples, and links across
the smallest coherent section. Preserve unrelated useful prose instead of
rewriting the document wholesale.

## Use examples and visuals as evidence

Examples use realistic sanitized data and one coherent domain. They expose
required setup, complete the behavior they claim to demonstrate, include
consequential error handling, and remain internally consistent across related
pages. Prefer the smallest copyable example that preserves the real contract;
toy placeholders must not erase the difficult or safety-critical part.

Add a diagram, screenshot, recording, or interactive example only when it
reduces mental simulation beyond prose or code. State what the reader should
notice, preserve a truthful source or reproducible capture path, and provide an
accessible text equivalent. Remove stale or decorative visuals.

For a nontrivial visual, interactive explanation, or generated demonstration,
invoke [Make Tangible](../make-tangible/README.md) with the exact reader
question and fidelity requirement. Write Docs retains the documentation
purpose, placement, surrounding narrative, and verification; Make Tangible
returns the verified artifact and its limits.

## Respect the native documentation system

Inspect the repository's documentation instructions, site structure,
navigation, frontmatter, generators, link policy, formatting, linting, and
build path. Integrate through those mechanisms instead of creating a parallel
documentation structure.

Resolve whether each affected surface is hand-authored, generated, synchronized,
or externally owned. Correct generated documentation through its authoritative
schema, source comment, or generator, then regenerate. Never hand-patch
disposable output and call it fixed.

Exclude private machine paths, credentials, secrets, customer or personal data,
private payloads, temporary branches, active task state, and agent coordination.
Use repository-relative paths, placeholders, and sanitized examples without
removing technical properties the reader needs.

## Verify the reader journey

Treat commands, examples, links, signatures, defaults, version claims, and
rendered structure as behavioral claims. Verify them against current source or
behavior and run the documented path when practical.

Start from the reader's declared state and check:

- prerequisites and required authority;
- the sequence and exact syntax;
- expected observable results;
- consequential choices and limitations;
- likely failure handling or recovery; and
- navigation, generation, rendering, and links.

An individually valid command does not prove a guide when the intended reader
cannot complete its task. State the exact verification gap when an important
claim cannot be tested; never invent plausible syntax or unobserved success.

## Stay inside documentation authority

Write Docs runs when the human explicitly asks for documentation or when
already-authorized implementation includes documentation required by its
delivered behavior. Internal movement that changes no public interface,
operation, integration, troubleshooting path, or contributor workflow creates
no documentation obligation by itself.

Required documentation belongs to Delivery only when its owning surface is
inside current implementation authority. If the delivered behavior would make
guidance false or incomplete outside that boundary, return the exact affected
surface and recommend a small Plan revision. Do not silently broaden authority
or present a result for acceptance with consequential stale guidance.

Governing Praxis records are inputs rather than templates. Public and
operational documentation excludes approval semantics, mutation authority,
coordination, proof bookkeeping, abandoned uncertainty, and implementation
diaries unless one of those facts has become genuine reader-facing behavior.

## Return a verified documentation result and stop

Complete when the intended reader can perform or understand the named task from
coherent, current, proportionately verified documentation. Report the surfaces
changed, the reader need they now serve, decisive verification, and material
gaps.

Write Docs does not commit, push, open a pull request, publish a site, release,
deploy, or expand into adjacent documentation without separate authority.

## Conditional writing paths

The future runtime skill keeps the common procedure in `SKILL.md` and loads
only the selected skill-local reference:

- [Task Guidance](references/task-guidance.md) covers tutorials, setup guides,
  and how-to guides.
- [Contract Reference](references/contract-reference.md) covers APIs, CLIs,
  configuration, schemas, libraries, events, and other stable interfaces.
- [Understanding](references/understanding.md) covers concepts, architecture,
  behavioral models, and consequential rationale.
- [Operations](references/operations.md) covers runbooks, maintenance,
  recovery, deployment, troubleshooting, and incident response.
- [Change Communication](references/change-communication.md) covers release
  notes, changelogs, deprecations, and migration communication.

Those references deepen form-specific writing and verification mechanics. They
do not duplicate the shared method, own the documentation request, or inherit
mutation, publication, or release authority.

## Direct dependencies

### Skills

- [Make Tangible](../make-tangible/README.md) — construct and verify a
  non-trivial reader-facing explanation or teaching surface; return the
  artifact, reaction, and fidelity limits; Write Docs retains reader intent,
  source truth, and publication boundary.

### Shared references

- None.
