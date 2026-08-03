# Praxis Status

## Current state

Praxis 1.0 has a coherent tracked design source and a minimal runtime plugin
skeleton.

Installed and cached historical Praxis copies have been removed. The previous
partial runtime candidates were discarded after source review. The maintained
design now lives in repository history so design changes can be reviewed with
the implementation boundaries they govern.

`.agents/plugins/praxis/` currently contains only basic plugin identity,
licensing, and status material. It contains no implemented runtime skill. Add
one complete package only after its runtime design decisions have been settled
and reviewed here.

## What the cleanup resolved

The preserved snapshot contained 95 files and approximately 29,000 lines.
Current meaning had been distributed across:

- eight model documents;
- a second 3,400-line skill-contract document;
- individual skill guides and their references;
- a chronological decision ledger;
- a large scenario corpus; and
- research documents.

The cleanup consolidated the system into five Core documents, packaged every
skill with its own conditional material, created focused shared references,
separated evidence from governing truth, and moved chronological material into
cold history. The duplicated `model/` and `docs/` layers no longer exist.

## Current structure

The cleaned design source uses this shape:

```text
praxis-design/
├── README.md
├── STATUS.md
├── core/
│   ├── premise.md
│   ├── system.md
│   ├── work.md
│   ├── control.md
│   └── context.md
├── skills/
│   ├── README.md
│   └── <skill>/
│       ├── README.md
│       ├── references/
│       ├── assets/
│       └── scripts/
├── references/
├── evidence/
└── history/
    ├── decisions.md
    └── scenarios.md
```

Empty `references/`, `assets/`, or `scripts/` directories will not be created.
A skill package contains only material that the skill genuinely owns.

## Ownership rules

### Core

The five core documents own the current system:

- `premise.md` explains why Praxis exists.
- `system.md` explains the three owners and local and global recursion.
- `work.md` explains Initiative, Project, Evolution, Issue, Plan, Direct Work,
  and route choice.
- `control.md` explains agent-led navigation, bounded autonomy, workflow entry,
  recommendations, gates, authority requests, learning, backtracking,
  assurance, acceptance, and stopping.
- `context.md` explains records, artifacts, references, envelopes,
  persistence, placement, and lifetime.

### Skills

Every skill is physically packaged with its own design and conditional
material. Phase membership is navigation in `skills/README.md`, not directory
ownership.

The package's `README.md` is the current human-readable skill design, not the
future runtime skill. It owns purpose, boundaries, triggers, collaboration,
procedure, authority, returns, stopping, examples, and source basis.
Skill-local references hold substantial knowledge for named branches and are
loaded through direct pointers; behavior common to the branches remains in the
runtime skill. Keep each concept's rules and caveats co-located rather than
scattering or repeating them.

For each implemented skill, the accepted package informs a freshly written
`SKILL.md`, co-located behavioral `SPEC.md`, and `agents/openai.yaml`. It must
not be copied or renamed into the runtime package. The [runtime contract and
projection](skills/README.md#runtime-contract-and-projection) makes `SPEC.md`
the maintainer authority for intended behavior and `SKILL.md` the instruction
surface the runtime agent actually follows. The [host metadata and invocation
rule](skills/README.md#host-metadata-and-invocation) keeps behavioral workflow
entry separate from model-facing triggers, host launch policy, and
presentation. A disagreement inside either contract invalidates the component.
The final plugin has one human-facing root `README.md`; public `docs/guide/` and
`docs/reference/` trees; maintained system documentation under
`docs/concepts/{premise,system,control,context,work}.md`; and concise packaging
and release guidance under `docs/maintainers/`. The five concept documents
preserve the durable cross-skill authority currently held by `core/`. Each
skill's `SPEC.md` remains that skill's documentation and maintainer authority;
skill packages contain no README. Contradictions between local and cross-skill
authority invalidate the plugin and must be reconciled against accepted human
judgment. Runtime skills do not depend on loading `docs/`.

The root `README.md` is a concise landing page: what Praxis is and is not, its
human-agent promise, current installation and readiness, one ordinary-language
start, key authority and stopping guarantees, and links to the deeper
documentation. It does not duplicate the capability catalog, complete control
vocabulary, Setup procedure, or system architecture.

Each `docs/concepts/*.md` file is the complete maintained successor to its
corresponding accepted `core/*.md` document, not a summary or mechanical copy.
It preserves durable cross-skill meaning while removing design-workspace
framing, historical argument, and implementation notes that do not belong in
the final plugin. It is maintained documentation, not runtime model context.

`docs/concepts/premise.md` owns the Praxis thesis and durable commitments:
lights-on collaboration, unknown-driven learning, proportional structure,
changeability under known pressure, human judgment, bounded agent autonomy, and
deliberate stopping. It may retain concise explanatory source links, but not the
research ledger or design history; exact mechanics remain with their concept
owners.

`docs/concepts/system.md` owns recursive composition: the three owning loops,
supporting calls and returns without ownership transfer, backward learning to
the earliest causal owner, the placement of gates, Pair, and Orient, and
representative non-prescriptive routes. A caller retains its question and
interpretation while Make Tangible owns artifact construction and lifetime. It delegates exact authority to
`control.md`, persistence to `context.md`, and work-form structure to `work.md`.

`docs/concepts/control.md` is the normative cross-system contract for the
human-agent responsibility split; separate recommendation, entry, approval,
effect authority, acceptance, and stopping; entry and transition classes;
continue-or-return, revision, bounded execution, gates, assurance, stopping,
and reconstruction; and the cross-system Pair and Orient boundaries. Orient
cannot cross into Requirements Discovery or Formalization. Skill
specifications apply these rules locally without redefining them.

`docs/concepts/context.md` owns conceptual persistence and reconstruction:
conversation versus durable context, ownership and placement, context
categories, promotion, distinct record, artifact, Reference, and
message/checkpoint lifetimes, active Delivery continuity, progressive loading,
and reconstruction. It does not mirror runtime procedures. Runtime
`references/records/` owns exact record lifecycle and schemas, while Make
Tangible's skill-local
`skills/make-tangible/references/artifact-lifetime.md` owns exact artifact
handling.

`docs/concepts/work.md` owns proportional route and work-form meaning: no
implementation structure, Direct Work, Initiatives, Projects, Evolutions,
Issues, Implementation Plans, durability, standalone and nested composition,
results, completion, and route changes. It rejects lifecycle stages and
mandatory nesting; `control.md` owns exact gates and runtime
`references/records/` owns exact record contracts.

`docs/maintainers/skill-packages.md` owns the authoring contract for one skill:
directory shape, `SKILL.md`/`SPEC.md` projection and reconciliation, metadata,
skill-local optional resources, direct skill and shared-reference dependencies,
and package-level validation. Individual behavior remains in the skill's
`SPEC.md`; plugin-wide release remains elsewhere.

`docs/maintainers/conformance-and-release.md` owns implementation and review,
per-skill structural and behavioral conformance, cross-surface consistency,
forward-testing, manifest and versioning, marketplace and host adapters,
integrations, release gates, and changelog requirements. Validation remains
lightweight and reproducible; there is no permanent evaluation framework,
Praxis validator CLI, or generated receipt system.

`docs/guide/getting-started.md` owns the shortest path from making Praxis
available to the first real ordinary-language request. Repository Setup remains
explicit, creates no placeholder work state, and verifies Plannotator only when
readiness is needed. The guide introduces agent recommendation and separate
effect authority without expanding into the system model, capability catalog,
or every workflow.

`docs/guide/working-with-praxis.md` owns the observable day-to-day
collaboration model: proactive agent recommendations, agent-startable work,
human-selected forward work, separate effect authority, redirection,
resumption, bounded evidence returns, and stopping. It uses small examples
without teaching internal loop architecture or enumerating every capability.

`docs/guide/examples.md` owns a small curated set of realistic conversations
and outcomes contrasting Direct Work, bounded Delivery, Evolve, explicitly
requested Pair, and suggested or declined Orient. They illustrate the
interaction without becoming golden transcripts, executable tests, rigid
process scripts, or exhaustive skill coverage.

`docs/reference/capabilities.md` is the public non-lifecycle catalog. It
describes each capability's purpose, behavioral entry, and bounded return,
organized by owned responsibility and entry behavior. It distinguishes
agent-startable capabilities, suggested paths requiring acceptance, explicitly
invoked workflows, and human-initiated postures without duplicating internal
composition or dependency contracts from skill specifications.

`docs/reference/integrations.md` documents verified support only. Each entry
states the enabled capability, required or optional status, recommendation,
configuration, and use ownership, supported hosts or versions, installation
and update paths, and operational and authority limits. Its initial scope is
Praxis host availability, required Plannotator, and optional Docker for selected
Security audits; it is not a general tool catalog or compatibility wishlist.

### Shared references

The final plugin's top-level `references/` tree preserves the accepted shared
runtime contracts for feedback and evaluation, learning and return, worktree
isolation and preservation, and record schemas. A top-level
reference exists only when several skills need the same rich knowledge and
duplicating it would create drift. It is selectively loaded by declared direct
consumers, is not public documentation, and never becomes a workflow owner.
The plugin root has no `references/README.md`: each consuming `SKILL.md` links
the exact shared file at its decision point, states when to load it, and
declares it in `SPEC.md`. `references/records/README.md` remains only as a
record-family selector when the kind is not yet known; known kinds link their
exact schema file or heading directly. Each shared reference is operationally
self-contained with its consuming `SKILL.md`; it cannot require `docs/` or a
hidden reference chain. If a decision needs two shared contracts, the skill
links and declares both directly. Shared references reuse the skill-local
reference-quality contract: plain lowercase-kebab Markdown, no frontmatter or
universal template, inspectable scope, guidance, limits, and failures, and
navigation proportional to length. Split only by load condition. Plugin-level
placement additionally requires multiple direct skill consumers. Keep the tree
shallow: the three shared contracts remain directly under `references/`, and
`records/` is the only initial nested family. Generic organizational folders
are invalid; another nested family requires several related files and a real
runtime selection problem.

### Evidence and history

Evidence preserves sources, landscape research, and candidate material without
governing runtime behavior.

History preserves the complete chronological ledger and scenario corpus. It is
cold provenance. A few realistic public conversations and outcomes live in
`docs/guide/examples.md`; skill-local behavioral examples and conformance cases
live in `SPEC.md`. Ordinary readers and maintainers do not need history for
current guidance.

## Maintenance discipline

Future design corrections remain local and proceed in small reviewed packages:

1. identify every source contributing to the package;
2. preserve its unique accepted meaning;
3. rewrite current truth as coherent prose rather than approval history;
4. show the exact local diff or faithful review surface;
5. review links, contradictions, and lost headings;
6. keep `praxis-design` tracked and review its exact diff; and
7. recommend the next correction.

Do not shorten material merely to reduce line count. Remove repetition and
obsolete implementation direction, not explanation, examples, evidence, or
important boundaries.

Do not add runtime skills, implementation Plans, evaluation machinery, or
candidate plugin code to this design source.

## Implementation handoff

The later implementation session must:

- ignore installed or cached Praxis 0.9 behavior;
- inspect `.agents/plugins/praxis/` only to understand current implementation
  state and preserve valid existing work;
- use `core/` as the accepted authority for cross-skill system behavior;
- use the selected skill package and its directly linked references as the
  accepted authority for that skill's contract;
- use `skills/README.md` for runtime projection, package structure, host
  metadata, dependency, validation, and [package-link
  projection](skills/README.md#package-link-projection) rules;
- preserve incremental [partial-runtime
  composition](skills/README.md#partial-runtime-composition) without expanding
  a package slice merely to satisfy a missing callee;
- use the root `README.md` and this status file for the target plugin structure
  and implementation process;
- apply the root [concept-document
  projection](README.md#concept-document-projection) when moving durable
  `core/` meaning into its final maintained owner;
- treat `evidence/` and `history/` as provenance only, never implementation
  authority;
- use [Writing Great Skills](../skills/writing-great-skills/SKILL.md) and its
  [Glossary](../skills/writing-great-skills/GLOSSARY.md) as the sole
  skill-authoring and review methodology for predictability, invocation/load,
  information hierarchy, branch disclosure, co-location, completion criteria,
  pruning, no-op testing, and observed behavior;
- use `skills/README.md`, the package and release gates in the root `README.md`,
  and any checked-in Praxis validation script as the mechanical sources for
  package structure, frontmatter, host schema, links, resources, and release
  checks. Inspect such scripts before relying on them; no generic authoring
  guide supplies these contracts;
- recommend and discuss one meaningful runtime change at a time;
- implement directly after conversational authorization without creating an
  implementation Plan or plan artifact;
- write the runtime skill for direct agent use rather than transcribing its
  design `README.md`;
- write its co-located behavioral `SPEC.md`;
- write its `agents/openai.yaml` interface and invocation policy;
- review and validate the exact runtime diff;
- stage only the design, runtime, and other paths the human explicitly includes,
  review the complete staged snapshot, and commit only after the human asks;
- use meaningful incremental commits instead of batch or monolithic commits;
- stop after each accepted change and recommend what could follow; and
- retire or retain this design source only through a later explicit human
  decision after all lasting Praxis value has a maintained owner.

Do not create executable eval machinery, migration helpers, wrappers, a Praxis
CLI, a global kernel, or placeholders for unimplemented skills.

The runtime root is `.agents/plugins/praxis/` with an MIT `LICENSE`, one public
`README.md`, the established `assets/praxis.png` identity image, the tracked
public, concept, and maintainer documentation trees, the shared runtime
`references/` tree, the required `.codex-plugin/plugin.json`, and independently
discoverable packages under `skills/`. Each skill's `SPEC.md` documents its
behavior; skill packages contain no README. Add a root `CHANGELOG.md` with the
first public release. The plugin has no plugin-root skill, behavioral
specification, hooks, scripts, MCP manifest, or app manifest initially. Add
another optional component only for one concrete accepted capability.

Marketplace registration uses the repository-local
`.agents/plugins/marketplace.json` and eventual `./plugins/praxis` source entry.
Do not update the personal marketplace. Marketplace installation and Codex or
Pi export remain deferred until the complete runtime passes validation.

Each runtime skill must pass structural validation, `SPEC.md`-to-`SKILL.md`
conformance review, resource checks, and bounded behavioral confidence testing
where subtle behavior warrants it. Release `1.0.0` only after every accepted
package and the assembled plugin pass; Plannotator's required commands, result
shapes, question transports, archive behavior, and Make Tangible visual
resources have direct contracts and conformance evidence; public surfaces
agree; adapters are validated; and the complete result receives human review.
Keep validation helpers outside the plugin; create no permanent eval harness
or executable scenario suite.

## Next step

Inspect the partial runtime, recommend the smallest missing plugin-wide
prerequisite or one complete skill package under the root [implementation
boundary](README.md#implementation-boundary), and wait for the human's choice.
After authorization, implement that slice directly, review and validate it,
commit only when asked, stop, and recommend the next meaningful change.
