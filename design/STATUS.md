# Praxis Status

## Current state

Praxis 1.0 has a tracked maintained design source and a Praxis-specific runtime
plugin skeleton. Check Safety is the first implemented package candidate; it
remains unreleased while the package set is completed and validated.

The previous partial runtime was discarded after review. The skeleton under
`.agents/plugins/praxis/` preserves Praxis identity, licensing, marketplace
classification, branding, and logo while design work remains separate.

The maintained design now contains 28 accepted behavioral designs and 28
accepted target runtime package designs, including Manage Worktree. Every
package records its invocation, executable information hierarchy, runtime tree,
references, direct composition, resources, `SPEC.md` boundary, representative
cases, gaps, and observable checks. These are implementation-ready design
decisions, not runtime files.

All 46 skill-local semantic source files have an explicit accepted runtime
projection. The cross-skill audit admits six shared runtime references, gives
Using Praxis one local record-navigation projection, keeps Research's compact
evaluation discipline inline, and assigns repository isolation behavior to the
Manage Worktree skill. No reference-placement decision is left to an
implementation worker.

## Maintained owners

```text
praxis-design/
|-- README.md              # system overview and design-to-runtime boundary
|-- STATUS.md              # current progress and next decision
|-- core/                  # canonical cross-skill Praxis meaning
|-- skills/
|   |-- README.md          # normative package contract and accepted inventory
|   `-- <skill>/
|       |-- README.md      # accepted behavior and target runtime package
|       |-- references/    # semantic source with explicit target projection
|       `-- assets/        # semantic/output source with explicit projection
|-- references/            # shared semantic source and runtime architecture
|-- evidence/              # research and candidate evidence
`-- history/               # cold provenance
```

The [root design](README.md) owns the distinction among global meaning, local
behavior, semantic source, target package design, and runtime implementation.
The [skill index](skills/README.md) owns package shape, runtime surface roles,
invocation, reference admission, composition, conformance, and the
implementation gate. The [cross-skill material index](references/README.md)
owns the six shared targets, their direct consumers and load conditions, and
the meanings deliberately projected elsewhere.

Evidence and history may explain, challenge, or recover current truth. They do
not override maintained owners by themselves.

## Accepted packaging foundations

- **SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT
  FOR PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**
- [Writing Great Skills](../skills/writing-great-skills/SKILL.md) and its
  glossary are the sole skill-authoring method.
- Global means canonical semantic ownership, not an automatic global runtime
  file. Each skill projects the instructions it needs at the point of use.
- Design `README.md` files are not draft runtime `SKILL.md` files.
- Material that owns procedure, effect authority, direct calls, completion, or
  stopping belongs to a skill or another capability, not a passive reference.
- Runtime meaning is placed inline, locally, in one accepted shared reference,
  or outside runtime according to actual decision points and load conditions.
- Every runtime skill requires `SKILL.md`, `SPEC.md`, and
  `agents/openai.yaml`. Optional resources exist only when its accepted package
  names them.
- All current skills remain model-invoked after individual reach review because
  each must be found from natural-language entry or a direct skill call. Their
  descriptions and host prompts are distilled invocation surfaces rather than
  summaries of runtime behavior.
- Writing Great Skills governs every agent-readable runtime surface. Skill
  bodies are executable projections; loaded references are conditional
  knowledge projections; descriptions are top-level context pointers; and host
  prompts only launch the selected work.
- Skills compose through direct bounded calls. Callers retain governing work,
  authority, synthesis, and stopping.
- The runtime contains no plugin-root skill, hidden kernel, global router,
  lifecycle wrapper, Praxis CLI, empty package, or placeholder dependency.

## Pending work

Runtime implementation continues under separate explicit authority, one
complete accepted package or concrete plugin-wide prerequisite at a time. The
implementation must realize the recorded package without choosing invocation,
reference architecture, optional resources, global-rule projection, gaps, or
conformance criteria.

Partial implementation may report unresolved cross-skill assembly dependencies
without creating placeholders. Before release, every direct skill call,
reference, resource, and cyclic composition must resolve and pass the accepted
package checks.

The complete public, concept, and maintainer documentation surface is now
implemented and independently verified in the working tree. Check Safety's
`SPEC.md` resolves its source basis only to those plugin-local owners. The six
accepted shared runtime references are also implemented and independently
verified. The whole-plugin release surface still follows package assembly and
conformance.

## Next step

Commit the self-contained documentation, shared-reference, Check Safety, and
maintained-design foundation as one coherent slice: the documentation links
the accepted shared-reference targets, so separating those files would preserve
broken internal links. Then implement, verify, and commit complete skill
packages through the accepted direct-dependency components.
