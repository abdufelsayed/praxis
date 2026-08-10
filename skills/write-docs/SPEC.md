# Write Docs — Maintainer Contract

This is the acceptance contract for the shipping
[Write Docs owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Every durable documentation effect first binds and validates the shared
Proposed Action envelope against current record, gate, authority,
latest-direction, and inquiry policy projections. Reader checks refine but
never replace that fail-closed decision.

Write Docs creates or repairs durable guidance for one named reader and one
primary purpose. It reconstructs current truth from authoritative source and
observable behavior, selects the owning documentation surface and form,
translates internal actors into reader-facing language, writes a coherent
reader path, verifies that path, reports evidence and limits, and stops. It may
call Make Tangible for a non-trivial reader-facing visual or interactive
explanation while retaining the documentation purpose and publication
boundary.

## Invocation, inputs, and exclusions

The package is internally reachable because an explicit documentation request or an
authorized implementation boundary may require it. The accepted description and host projection
are the package's invocation surface. Entry requires either:

1. a clear request from the requester for documentation, or
2. an already-authorized implementation boundary that names a documentation
   result, whether or not a Plan governs it.

The input names the reader, purpose, starting knowledge and state, supported
version or environment, affected documentation surface, actor relationship and
voice, current evidence sources, and exact edit authority. A request to explain
something only in conversation is not a durable documentation entry. Missing
reader, purpose, supported boundary, source, or authority returns `blocked`
before editing.

Write Docs excludes product or system judgment, Requirements, Evolutions,
Issues, Plans, implementation, review acceptance, publication, release,
deployment, commit, push, pull-request creation, and unrelated documentation.
It does not turn conversation, approvals, plans, implementation notes,
research logs, or agent activity into a transcript. It does not document
accepted future behavior as current, patch disposable generated output, invent
unsupported syntax, or choose a next route after returning. Any additional
durable record requires a distinct purpose, consumer, lifecycle, and authority
boundary.

## Ownership and behavior

Write Docs owns this bounded procedure:

1. bind one reader, purpose, starting point, supported boundary, actor map,
   voice, and exact documentation authority;
2. reconstruct current source, interfaces, behavior, documentation structure,
   and material truth status;
3. choose one primary document form and load the common reader-language
   reference plus its one local form reference;
4. locate the owning surface, native documentation path, and exact edit
   targets;
5. write the smallest coherent reader path and reconcile stale or duplicate
   explanations;
6. verify runnable examples and decide whether a tangible surface earns its
   cost;
7. verify the complete reader journey, actor language, and form-specific
   claims; and
8. return a scoped documentation result and stop.

The package retains reader purpose, source reconstruction, form selection,
surface ownership, narrative placement, current-truth interpretation,
reader-journey verification, publication boundary, and stopping. It never
inherits a caller's product judgment, gate, mutation authority beyond the
named documentation edit, acceptance, release, or route.

## Invariants

1. Every run has one named reader, one primary purpose, one starting point,
   one supported boundary, one actor map and voice, one source basis, and one
   exact edit authority.
2. A conversational explanation without a durable documentation request does
   not create documentation ceremony or a file.
3. Each document surface has exactly one primary form: task guidance,
   contract reference, understanding, operations, or change communication.
4. Mixed forms remain separate owned surfaces; one page does not become a
   tutorial, exhaustive catalog, architecture essay, runbook, and migration
   narrative at once.
5. Current delivered source and observable behavior outrank accepted intent,
   plans, discussion, and activity evidence for present-tense claims.
6. A mismatch between intended and delivered behavior returns to its causal
   owner; the skill does not document the intended future as present.
7. Existing owning surfaces and native repository documentation mechanisms are
   preferred; new files require a distinct durable need and discoverable owner.
8. Generated documentation is corrected through its authoritative source and
   native regeneration path, never by hand-patching disposable output.
9. A local edit occurs only inside the explicit request or authorized
   implementation boundary;
   publication, release, commit, push, deploy, and unrelated cleanup remain
   outside this package.
10. Private paths, credentials, secrets, customer or personal data, temporary
    task state, and agent coordination do not enter durable documentation.
11. Runnable examples are realistic, sanitized, internally consistent,
    current-source verified, and include consequential error handling.
12. A visual or interactive surface is added only when it materially reduces
    reader mental simulation and has a truthful text equivalent and fidelity
    or source limit.
13. Make Tangible is called only for a non-trivial tangible judgment with an
    exact reader question, fidelity need, requested reaction, placement, and
    current authority or lifetime; its result never grants authority or
    substitutes for a failed or dismissed native interaction.
14. A retained artifact has a named future consumer, exact owner/path/version,
    reaction export, disposition, and preservation or removal evidence;
    otherwise the artifact and reaction remain transient.
15. Every generation, rendering, lint, build, or example command is classified
    before execution. Ordinary local verification inside documentation edit
    authority may run; networked, credentialed, privileged, persistent,
    product/external-state, secret/data, permission, material-cost,
    publication, release, or deployment effects return to their causal owner
    before execution. Reader-journey verification then covers prerequisites,
    exact sequence, syntax, observable result, consequential choices,
    limitations, failures or recovery, navigation, generation, rendering, and
    native build/lint where relevant.
16. Every consequential claim, command, example, version, link, anchor,
    rendered surface, and transition that cannot be exercised is named with
    its confidence limit.
17. A result returns changed surfaces, reader need, current owners, decisive
    evidence, material gaps, and tangible result limits when applicable; it
    never begins publication or adjacent documentation.

## Form references and load conditions

The six local references consist of one common reader-language reference and
five direct, standalone projections of form-specific knowledge. `SKILL.md`
loads Reader Language for every surface and selects exactly one form reference
at the primary-form decision; none links to another runtime reference, calls a
skill, grants authority, defines common completion, or owns publication.

| Primary reader job | Runtime reference | Load condition |
| --- | --- | --- |
| every documentation surface | [`reader-language.md`](references/reader-language.md) | Translate internal actors into the declared reader's concrete vocabulary and voice. |
| tutorial, setup guide, or how-to | [`task-guides.md`](references/task-guides.md) | The surface's primary job is learning or completing one activity. |
| API, CLI, configuration, schema, library, or event lookup | [`contract-reference.md`](references/contract-reference.md) | The reader needs precise stable-interface lookup. |
| concept, architecture, behavior, or rationale | [`understanding.md`](references/understanding.md) | The reader needs a durable mental model or prediction. |
| maintenance, deployment, troubleshooting, recovery, or incident response | [`operations.md`](references/operations.md) | The reader must diagnose or safely act on a real operational condition. |
| release, changelog, deprecation, or migration | [`change-communication.md`](references/change-communication.md) | The reader needs versioned impact or transition guidance. |

Reader Language loads for every surface. Exactly one form reference then loads
for each surface. Several distinct surfaces may each select their own form
reference. The common reader, source, authority, composition, verification,
result, and stop behavior stays inline in `SKILL.md`.

## Direct composition

Direct calls carry the callee's required brief and preserve its exact return: one complete
brief, lossless returns, and no authority transfer. Each callee's own contract
owns its intake fields. This package's caller policy is:

### Make Tangible

When prose, code, or a simple table cannot answer the reader's question
without material mental simulation, Write Docs calls [Make
Tangible](../make-tangible/SPEC.md). `no-op` maps to the prose or simple-table
path; a `constructed` or `revised` artifact may be integrated only when its
returned path/version and placement remain inside the named documentation
authority; `blocked` or `stopped` maps to Write Docs' own partial, blocked, or
stopped result without an invented fallback, reaction, cleanup, publication,
or acceptance. Make Tangible owns construction, medium exercise, versioning,
reaction capture, artifact provenance, fidelity, and retention handling. Write
Docs retains the reader question, documentation ownership and placement,
source truth, surrounding narrative, reader-journey verification,
interpretation, publication boundary, and stopping. A native reaction never
grants Write Docs edit, publication, or release authority.

## Effects, authority, persistence, and lifetime

Permitted effects are read-only inspection, ordinary local edits to exact
documentation sources within the request or authorized implementation boundary, ordinary local
generation/render/lint/build needed to verify those named surfaces, and
ordinary local integration of an authorized tangible artifact. Each command is
classified before execution. A networked, credentialed, privileged,
persistent, product/external-state, secret/data, permission, material-cost,
publication, release, or deployment effect returns `blocked` with its causal
owner before execution; an already-attempted authorized local verification gap
may return `partial` or `failed` with the exact surface and evidence.

Publication, release, deployment, commit, push, pull-request creation,
external-site changes, credentials, secrets, product mutation, and unrelated
cleanup are outside the package. A documentation request never implies those
effects. The package has no direct safety call because it does not execute an
external or product effect; a caller must establish any separate authority and
owning safety boundary before such work is considered.

Documentation edits and generated outputs are durable only when the named
request or Plan requires them. Make Tangible artifacts and reactions are
transient by default. Persist an artifact only for a named future consumer and
return its exact version, owner/path, reaction export, disposition, and
preservation or removal evidence. Any additional durable record requires a
distinct purpose, consumer, lifecycle, and authority boundary.

## Outcomes and observable return

The package returns exactly one outcome:

- `complete`: every named surface supports its reader purpose from current
  truth and has proportionate reader-journey verification;
- `already-current`: no edit is needed and the existing surface satisfies the
  named reader purpose and supported boundary;
- `partial`: some requested surfaces or claims are complete while another
  remains open, outside authority, or unverified;
- `blocked`: a missing reader, source, authority, native documentation path,
  or tangible-medium boundary prevents an honest result;
- `failed`: an authorized edit, generation, build, rendering, or verification
  attempt failed; or
- `stopped`: the requester ended the bounded documentation work.

The native return is:

```text
Write Docs Result {
  outcome,
  reader_and_purpose,
  primary_forms_and_surfaces,
  surfaces_changed,
  current_truth_and_owners,
  examples_or_tangible_result?,
  decisive_verification,
  evidence,
  material_gaps,
  publication_status: not_published,
  recommendation?
}
```

`complete` and `already-current` identify the exact reader path and checks.
`partial`, `blocked`, `failed`, and `stopped` preserve current files/artifacts,
name the boundary or failed attempt, and never imply an unverified success.
Every outcome states the documentation authority and stopping boundary.

## Invocation and host projection

```yaml
---
name: write-docs
description: "Write durable documentation for one reader. Use for requested guides, contract reference, explanation, operations, change communication, or an authorized implementation result."
---
```

```yaml
interface:
  display_name: "Write Docs"
  short_description: "Create verified current-source documentation"
  default_prompt: "Use $write-docs to create this documentation for the named reader and their concrete reader-facing voice."
policy:
  allow_implicit_invocation: false
```

Host metadata is presentation and launch copy only. It cannot introduce a
new form, effect, direct call, authority, publication path, or continuation.

## Resources and exact package tree

The package has no scripts, assets, fixtures, templates, hooks, wrappers, MCP
dependencies, or required external integration. Its exact sparse tree is:

```text
skills/write-docs/
├── SKILL.md
├── SPEC.md
├── agents/openai.yaml
└── references/
    ├── reader-language.md
    ├── change-communication.md
    ├── contract-reference.md
    ├── operations.md
    ├── task-guides.md
    └── understanding.md
```

## Source basis

At runtime, `SKILL.md` loads shared [Praxis Control](../../references/control.md)
once at owner entry and [Reader Language](references/reader-language.md) for
every documentation surface.


This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work and routes](../../docs/concepts/work.md)
owners; the plugin-local [skill-package contract](../../docs/maintainers/skill-packages.md)
and [conformance and release contract](../../docs/maintainers/conformance-and-release.md);
the assembled sibling [Make Tangible](../make-tangible/SPEC.md)
contract; and the verified behavior of this package and its six exact runtime
references.
Those plugin-local files are the complete maintainer source basis, not runtime
dependencies. The declared skill surface, common reader-language reference,
and five local form references are the complete runtime; direct-call
composition rules remain inline. No
non-plugin material is required to use, review, validate, or maintain this
package.

## All-package conformance baseline

1. The explicit human request or authorized implementation boundary reaches this internally reachable
   package; a conversational explanation remains conversational.
2. Missing reader, purpose, starting state, source, supported boundary, actor
   map or voice, or edit authority stops before editing.
3. Each surface has one primary form and one direct reference pointer only at
   its matching decision; no reference chain exists.
4. Current delivered source and observable behavior control present claims;
   accepted future behavior remains visibly future or returns to its owner.
5. Existing owning surfaces and native generators are used; disposable output
   is never hand-patched and no parallel documentation system is invented.
6. Exact local edits stay inside authority; publication, release, commit,
   push, deploy, and unrelated cleanup never start from this package.
7. Examples, visuals, provenance, sanitized values, text alternatives, and
   fidelity limits are truthful and proportionate.
8. Make Tangible is called only at its named non-trivial judgment boundary,
   and its result plus retention declaration (or transient/disposable status)
   is returned without authority transfer.
9. Reader-journey verification covers the declared start, path, result,
   choices, actor language and voice, limitations, failures/recovery, links,
   generation, rendering, and form-specific requirements.
10. `complete`, `already-current`, `partial`, `blocked`, `failed`, and
    `stopped` remain distinct; every result contains evidence, gaps, and
    publication status and stops without adjacent work.

## Representative conformance cases

1. **Explicit entry:** an explicit documentation request reaches Write Docs;
   an ordinary conversational explanation does not create a file.
2. **Reader gap:** an unspecified reader, purpose, or actor relationship
   returns `blocked` with the missing question rather than inventing one from
   source layout.
3. **Current truth:** a Plan or accepted design that is not delivered is not
   documented as current; the mismatch returns to its causal owner.
4. **Task form:** a tutorial, setup guide, or how-to loads only task guidance,
   begins from a declared state, includes a complete path, checkpoints,
   branches, replay semantics, and recovery.
5. **Contract form:** a CLI/API/configuration/schema/event reference covers
   every supported member in one version boundary, generated facts, failures,
   constraints, anchors, and conforming examples.
6. **Understanding form:** one learning question starts from observable
   behavior, preserves invariants and exceptions, labels claim status, and
   verifies prediction or teach-back when consequential.
7. **Operations form:** a runbook begins from an observable condition,
   reconstructs state, branches on evidence, names exact target/effect,
   checkpoints, re-entry, containment/recovery, and escalation.
8. **Change form:** release, changelog, deprecation, or migration communication
   identifies affected readers, baseline/destination, rollout/removal boundary,
   impact, required action, and tested transition.
9. **Mixed forms:** one change needing a guide and migration note keeps two
   owned surfaces with separate primary forms and no merged catalog or essay.
10. **Native documentation system:** an existing owner is updated; a generated
    page is changed through its source and generator; a new file is created
    only for a distinct discoverable reader need.
11. **Runnable example:** a realistic sanitized example includes required setup,
    difficult safety property, exact syntax, expected result, and meaningful
    error handling; unsupported toy syntax is rejected.
12. **Tangible decision:** a non-trivial visual or interactive explanation
    calls Make Tangible with reader question and fidelity; `no-op` stays prose,
    constructed/revised requires authorized placement, and blocked/stopped is
    returned without invented fallback or reaction.
13. **Retention:** no named future consumer produces a transient artifact
    result; a retained artifact reports exact owner/path/version, reaction
    export, disposition, and preservation/removal evidence.
14. **Out-of-authority publication:** a request to publish or update an
    external site returns the exact boundary and stops; it does not commit,
    push, release, deploy, or claim publication.
15. **Reader verification:** a command-valid guide whose full sequence cannot
    be exercised returns the untested transition and confidence limit instead
    of `complete`.
16. **Already current:** an existing surface already satisfies the named reader
    purpose returns `already-current` without ceremonial rewriting.
17. **Failure and stop:** failed generation/build/rendering returns `failed`
    with preserved state; a human stop returns `stopped`; neither is reported
    as complete.

The package is ready only when the exact tree, frontmatter/host agreement,
plugin-local links, standalone references, no forbidden runtime source paths,
clean fences and whitespace, and these cases all hold.
