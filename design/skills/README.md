# Praxis Skill Design Packages

> **Status: accepted design source; runtime implementation pending.**

Each directory is the self-contained design package for one future Praxis
skill. Read its `README.md` for the owned procedure and load only the local
references it names for the current path. Shared contracts remain under
[`references/`](../references/).

When authoring or reviewing a runtime skill, use [Writing Great
Skills](../../skills/writing-great-skills/SKILL.md) and its
[Glossary](../../skills/writing-great-skills/GLOSSARY.md) as the sole
skill-authoring method. That guidance governs predictability, invocation
choice and load, information hierarchy, branch-driven disclosure, co-location,
completion criteria, pruning, no-op testing, and observed behavior. This index
and the root design `README.md` govern Praxis package shape, host schema,
composition, authority, validation, and release; no host-generic authoring
guide overrides them.

## Design package, not runtime package

Nothing under this directory is an implemented skill merely because it
describes one. A package `README.md` is a human-readable design contract. It
captures what the future skill must accomplish, why its boundaries exist, and
which examples and sources shaped it.

Do not mechanically convert a package by renaming `README.md` to `SKILL.md` or
copying all of its prose into agent context. When implementing the package,
apply the authoring method above and:

1. preserve its accepted behavioral meaning and resolve any remaining gap with
   the human;
2. shape the runtime description and entry metadata for the accepted Praxis
   entry contract, using only the trigger words and branches that need
   discovery;
3. keep instructions common to every reachable branch in `SKILL.md`, put
   branch-specific knowledge behind direct context pointers, and end each
   meaningful unit with a checkable completion criterion;
4. co-locate related definitions, rules, and caveats; keep one source of truth
   for each meaning and add only conditional references, reusable scripts, or
   output assets that materially improve execution;
5. write the co-located behavioral `SPEC.md` for maintainers;
6. write the host-facing invocation and interface metadata in
   `agents/openai.yaml`;
7. prune duplicated, stale, irrelevant, or no-op lines and check the resulting
   behavior in fresh context; keep broader design rationale, source evidence,
   maintenance documentation, and historical explanation outside routine
   runtime context.

### Canonical runtime directory

Every implemented Praxis skill uses this sparse package shape:

```text
skills/<skill-name>/
|-- SKILL.md
|-- SPEC.md
|-- agents/
|   `-- openai.yaml
|-- references/       # optional
|-- scripts/          # optional
`-- assets/           # optional
```

`SKILL.md`, `SPEC.md`, and `agents/openai.yaml` are required. Create an optional
directory only when the package genuinely needs at least one resource of that
kind; do not preserve empty directories or placeholder files.

No skill receives `scripts/` by default, and Praxis defines no generic bundled
script suite. Admit a script only when runtime implementation identifies one
specific, validated capability that materially benefits from deterministic
reuse. Discuss that script's owner, narrow interface, effects, authority, and
proof from the concrete capability before adding it; do not pre-design scripts
for hypothetical repetition.

No skill receives `assets/` by default, and Praxis defines no generic asset
inventory, template collection, HTML shell, or visual workbench. During runtime
implementation, inspect one concrete upstream or newly required capability and
decide whether its owner should preserve behavior in `SKILL.md`, preserve
conditional knowledge in a reference, retain one reusable asset, replace it
with a simpler mechanism, or omit it with a stated reason. Retained assets
belong to the skill that owns the output behavior; do not assign them to
Plannotator merely because it may present the result. Keep interface icons
absent unless plugin-wide branding and actual icon assets are separately
accepted.

Do not add a package `README.md`, changelog, installation guide, general
maintenance documentation, or generic `examples/` directory. Put behavioral
examples and conformance cases in `SPEC.md`. Put an executable fixture beside
the script or asset that consumes it when the fixture is genuinely part of the
runtime package.

Keep conditional references directly reachable from `SKILL.md`. Do not create
a deep reference hierarchy that makes the agent reconstruct its procedure by
browsing. The host discovers and loads `SKILL.md`; co-location does not make
`SPEC.md` an executable instruction surface or routine model context.

### Runtime contract and projection

`SPEC.md` is the maintainer authority for the skill's intended behavior and
documentation. It preserves the observable local contract, boundaries,
conformance cases, composition, and source basis that must survive after this
temporary design package is retired. It is complete about what must hold, not a
transcription target for the runtime procedure or design history.

`SKILL.md` is that contract's runtime projection. It is the instruction surface
the agent actually follows, so it must carry the behavior shared by reachable
branches, their decision points, completion criteria, and direct context
pointers for conditional knowledge in a form the agent can follow.

The runtime agent does not routinely load `SPEC.md`, and `SPEC.md` must not hide
instructions required for ordinary execution. When `SKILL.md` and `SPEC.md`
disagree about behavior, the component is invalid: runtime execution cannot
silently consult the specification, and maintainers cannot treat the current
skill text as changing the contract. Reconcile the disagreement against the
accepted design and human judgment, update both surfaces, and repeat
conformance review before calling the skill implemented.

Every `SPEC.md` preserves these inspectable meanings:

- the skill's purpose, behavioral entry, and composition contract;
- the input contract and assumptions the caller may supply;
- behavioral invariants and boundaries that remain true across valid runtime
  procedures;
- the result contract, including incomplete, revised, refused, and stopped
  outcomes when they are meaningful;
- authority, side effects, and explicit exclusions;
- persistence and lifetime of any state, record, artifact, or result;
- composition with callers, invoked skills, and retained ownership;
- concrete behavioral cases that expose important distinctions and failure
  boundaries;
- conformance criteria by which maintainers can judge the runtime package; and
- the accepted source basis needed to maintain the contract after this design
  source is retired.

The headings may combine closely related meanings, but none of these meanings
may disappear merely to make specifications uniform or short. This is
completeness of the observable local contract, not an invitation to copy every
design sentence. Keep rationale, history, and runtime step order out of
`SPEC.md`; keep each meaning in one authoritative surface. `SKILL.md` alone
owns runtime instructions, completion criteria, routing, and conditional
context pointers. Necessary semantic overlap remains small: the specification
defines what must hold, while the skill tells the agent how to make it hold.

### Package-link projection

Translate temporary package links according to the final surface that consumes
them:

- in `SPEC.md`, sibling skill behavior links to `../<skill>/SPEC.md`;
- in `SPEC.md`, cross-system authority links to
  `../../docs/concepts/<concept>.md`;
- in `SPEC.md`, exact shared and skill-local runtime references retain their
  final runtime paths;
- in `SKILL.md`, a direct skill call names the capability and links
  `../<skill>/SKILL.md` at the invocation point; and
- in `SKILL.md`, every conditional reference links its exact runtime file at
  the load decision.

`SKILL.md` does not depend on `SPEC.md` or `docs/`. Neither final surface links
into `praxis-design/`, `core/`, or a temporary skill `README.md`.

### Runtime skill content

Every `SKILL.md` contains the meanings the executing agent needs:

- triggering metadata whose leading words and branch triggers make the skill
  discoverable for its intended requests and callers;
- instructions common to every reachable branch, without requiring `SPEC.md` or
  a conditional reference to reconstruct them;
- explicit decision points, including when another skill is invoked and what
  ownership the caller retains;
- checkable completion criteria for each meaningful unit of work, demanding
  enough coverage to prevent premature completion, or one exhaustive criterion
  for a non-sequential judgment;
- direct context pointers that state exactly when a branch-specific reference
  must be loaded or a bundled resource used;
- the result the skill returns, including material limitations or unresolved
  state; and
- the point at which the skill stops and returns control.

These are required meanings, not a universal heading order or numbered
template. Choose steps, grouped rules, or a reference-shaped form according to
the actual branches and sequence: keep the information hierarchy legible and
co-locate the rules each path needs. Do not distort one kind of skill merely
to resemble another.

### Skill-local references

A file under `references/` earns runtime inclusion only when substantial
knowledge or path-specific guidance is needed under a named branch condition.
A reference may deepen a selected pattern, schema, protocol, domain rule set,
example family, edge case, or technique. It does not decide behavioral entry,
select the path, own a skill call, grant authority, define completion, or stop
the skill.

`SKILL.md` keeps every branch-common instruction and links each branch-specific
reference directly at the decision point where it becomes relevant. The pointer
names:

1. the exact condition for loading the file;
2. the question or selected path it supports; and
3. the guidance the agent should take from it.

Write each reference pointer with its exact condition, supported question or
path, and guidance to apply; a reference cannot introduce or override behavior
declared by `SKILL.md` or `SPEC.md`, and it is not an independently invoked
capability. Co-locate a reference's definition, rules, and caveats so the
selected path gets the meaning together. If a referenced path calls another
skill, `SKILL.md` owns and declares that call.

Keep skill-local references as direct, lowercase kebab-case Markdown files:

```text
references/
|-- compare-and-choose.md
`-- teaching-surface.md
```

Do not add nested directories, `references/README.md`, or another index hop.
Detailed content lives in one place; only the branch-selection pointer and
necessary context may remain in `SKILL.md`. References use no mandatory
universal heading template, but make their scope, detailed guidance, evidence
or limitations, and applicable failure boundaries inspectable.

Add a table of contents when a reference exceeds roughly 100 lines. If a
reference becomes extremely large, split it by distinct load condition. When
it cannot be split honestly, give the runtime agent precise search terms from
`SKILL.md` rather than requiring a broad read.

### Host metadata and invocation

Every runtime skill includes `agents/openai.yaml`.

Apply the custom invocation vocabulary to the description and host metadata,
but preserve the accepted Praxis entry mechanics below. The description is an
always-loaded context pointer: front-load the leading capability, name one
genuine trigger per branch, and remove duplicated identity or trigger prose.
The host's discoverability and implicit-loading policy remain separate from
Praxis behavioral entry, human choice, and effect authority.

The `SKILL.md` frontmatter contains exactly `name` and `description`:

```yaml
---
name: skill-name
description: What the skill does, which requests or callers should reach it, and any crucial adjacent-skill exclusion.
---
```

`name` is the stable skill identity. It uses only lowercase letters, digits,
and hyphens, is shorter than 64 characters, and exactly matches the package
directory. Preserve accepted Praxis skill names rather than renaming them
merely to satisfy a generic naming preference.

`description` is the model-facing discovery surface available before the skill
body loads. It states the capability, concrete requests, caller situations, or
behavioral entry conditions that should trigger it, and any crucial exclusion
needed to distinguish an adjacent skill. Treat it as always-loaded context:
front-load the leading capability, use one trigger per genuine branch, and
remove duplicated identity. Put all discovery information here; do not add a
body section that merely repeats when the skill should be selected.

The description reflects the Praxis entry contract but grants no authority.
The body still verifies and enforces any behavioral precondition before acting.
Host presentation, explicit-versus-implicit host-launch policy, UI copy,
dependencies, and icons do not belong in frontmatter.

`agents/openai.yaml` owns OpenAI-host presentation, explicit-versus-implicit
invocation policy, and declared host or tool dependencies. Interface copy does
not add behavior or authority, and dependency declarations do not replace the
runtime instructions for using those capabilities.

Use this minimal canonical shape:

```yaml
interface:
  display_name: "Human-facing skill name"
  short_description: "Human-facing summary between 25 and 64 characters"
  default_prompt: "Use $skill-name to perform one representative request."

policy:
  allow_implicit_invocation: true
```

Quote every string value and leave keys unquoted. `display_name`,
`short_description`, and `default_prompt` are required. The default prompt is
one short UI example that explicitly names `$skill-name`; that host syntax does
not make a literal skill command part of Praxis behavioral entry.

Set `allow_implicit_invocation: true` explicitly for every Praxis skill. This
makes natural-language requests and skill-to-skill composition eligible to load
the package. It does not start its behavior: `SKILL.md` still enforces whether
the work is agent-startable, human-selected, explicitly requested, or
human-initiated.

Omit icons and `brand_color` unless plugin-wide branding has been accepted and
the actual assets exist. Omit `dependencies` unless the skill directly requires
a host-supported MCP dependency. Praxis skill calls, shared references, bundled
scripts, local tools, and transitive dependencies are not host dependencies.

Derive interface values from the accepted runtime skill and regenerate or
review them whenever its identity or discovery contract changes. They may
summarize but never introduce behavior, authority, broader triggers, or a
capability absent from `SKILL.md` and `SPEC.md`.

Praxis behavioral entry and host invocation policy are separate layers. The
[core control model](../core/control.md#bounded-autonomy-workflow-entry-and-authority)
declares whether the agent may start work as an internal or automatic
supporting capability, must receive human agreement for recommended supporting
work such as Orient, must wait for a human-selected forward transition, must
receive a clear ordinary-language request for an explicitly invoked workflow,
or must receive a direct human request for a posture such as Pair. `SKILL.md`
enforces those behavioral preconditions.

Host policy controls how the OpenAI host exposes or launches the package. It
does not decide whether a Praxis workflow may begin and it cannot grant
mutation or external-effect authority. A behavioral explicit invocation does
not mean a literal `$skill` command; conversely, a host's ability to route to a
skill does not satisfy missing behavioral entry conditions. Choose host policy
to provide the intended interface, then verify that its copy does not
misrepresent the behavioral contract.

When frontmatter, host policy, interface copy, or dependency declarations
materially disagree about package identity, discoverability, host behavior, or
available capability, reconcile the interface. When `SKILL.md` disagrees with
`SPEC.md` or the accepted design about behavioral entry or authority, the
component is invalid under the runtime contract and projection rule above.

Use [Writing Great Skills](../../skills/writing-great-skills/SKILL.md) and its
[Glossary](../../skills/writing-great-skills/GLOSSARY.md) as the sole
skill-authoring and review methodology. Judge the result through its
predictability and observed behavior, not as a faithful transcription of this
temporary directory. The package shape, frontmatter, host schema, links,
dependencies, resource checks, and release gates remain mechanical Praxis
contracts defined in this index and the root design `README.md`; use any
checked-in Praxis validation script only after inspecting its implementation.

The groups below are navigation, not a mandatory workflow. Clear work may skip
any skill whose question is already answered, and learning may return to the
exact earlier owner whose truth changed.

## Composition rule

Skills form a callable network, not a bag of prose references. When one skill
needs a capability another skill owns, its package names and links that skill,
invokes it for one bounded question, and interprets the returned evidence or
reaction. The caller keeps its governing meaning, synthesis, gates, authority,
route, and stopping rule. The callee keeps its own procedure and cannot advance
the caller's workflow.

A dependency does not bypass behavioral entry. The caller directly starts a
callee only when that callee is agent-startable in the current context or the
human has already selected or explicitly invoked it as required. A host launch
capability, package link, or recommendation alone never satisfies that entry
condition.

A shared reference may deepen knowledge used by several skills, but it never
stands in for invoking the skill that owns the behavior. Runtime `SKILL.md`
files must preserve these explicit calls using discoverable skill names and
paths rather than copying another skill's procedure.

The final plugin has no root `references/README.md`. A consuming `SKILL.md`
links the exact shared file at the decision point with
`../../references/<file>.md`, states the condition that requires loading it,
and records the dependency in `SPEC.md`. Keep
`references/records/README.md` only as a semantic router when the consumer must
select a record family. If the record kind is already known, link the exact
schema file or heading directly. A plugin-level shared reference must be
operationally self-contained when loaded with the consuming `SKILL.md`. It may
link optional depth, but it cannot require `docs/` or a hidden reference chain.
If one decision requires two shared contracts, `SKILL.md` links both and
`SPEC.md` declares both. Plugin-level shared references follow the same
[reference contract](#skill-local-references) as skill-local references: plain
lowercase-kebab Markdown, no frontmatter or universal template, inspectable
scope, guidance, limits, and failure cases, and navigation proportional to
length. Split only when distinct load conditions justify it. Plugin-level
placement additionally requires multiple direct skill consumers. Keep shared
references shallow: the three cross-skill contracts remain directly under the
plugin `references/` root, while `records/` is the only initial nested schema
family. Do not add generic grouping directories; another nested family must
solve a real selection problem across several related files.

Every skill documents only its **direct** dependencies. It names another skill
when it invokes that skill itself, and names a shared reference when it directly
uses that reference's knowledge. Dependencies internal to an invoked skill stay
encapsulated: a caller of Make Tangible does not also claim Plannotator merely
because Make Tangible may choose it.

### Partial-runtime composition

Implement one complete package with its final dependency names and paths. A
missing direct skill target does not expand the authorized slice and never
causes a placeholder package. During partial implementation, validate that
each unresolved skill target names an accepted design package and report it as
an unresolved assembly dependency. The current source and declared links
reconstruct that set; create no persistent dependency ledger.

This partial-runtime exception applies only to cross-skill links. Every skill-
local resource and directly loaded plugin reference must exist in the same
implementation slice as its consumer. A locally package-conformant skill may
remain unavailable on a path whose callee is missing. Before release, every
skill target exists, all links resolve, and cyclic compositions are tested
together.

Every design package and eventual runtime skill uses this section:

```markdown
## Direct dependencies

### Skills
- Make Tangible — trigger, expected return, retained ownership.

### Shared references
- None.
```

List all and only direct dependencies. Also name each active skill call at the
actual decision point in the procedure, where its trigger, expected return, and
retained ownership are understandable. Local conditional references are
internal parts of the same skill package; they are not external dependencies
and remain documented under that skill's structure or path selection.

The artifact and review direction is:

```text
caller -> Make Tangible (construct and verify)
       -> Plannotator when Make Tangible selects it (present and return reaction)
```

Call Make Tangible when something must be constructed, transformed, simulated,
explained, or made perceptible. Call Plannotator directly only when the target
already exists and the remaining need is native presentation, annotation, a
bundled interaction, code review, Review Learning, or a declared gate. The
skill that owns that judgment calls Plannotator; supporting skills return their
result to the owner instead of opening the owner's gate.

## Requirements Discovery

- [Discover Requirements](discover-requirements/README.md) owns the inquiry,
  synthesis, Requirements Alignment, and return.
- [Research](research/README.md) resolves bounded factual questions.
- [Interview](interview/README.md) resolves human-owned judgment.
- [Make Tangible](make-tangible/README.md) creates the smallest useful reaction
  surface.

## Formalization

- [Formalize](formalize/README.md) proposes the proportional specification
  route.
- [Evolve](evolve/README.md) defines a sequence of at least two meaningful
  working forms.
- [Define Issues](define-issues/README.md) creates detailed observable
  specification boundaries.
- [Design Solution](design-solution/README.md) resolves consequential solution
  structure without becoming an Implementation Plan.

## Delivery

- [Deliver](deliver/README.md) owns one bounded working result through
  implementation, review, proof, explanation, and return.
- [Plan](plan/README.md) proposes how work will be implemented and the exact
  bounded authority requested.
- [Debug](debug/README.md) diagnoses unexpected behavior before correction.
- [Refactor](refactor/README.md) improves changeability while preserving
  accepted behavior.
- [TDD](tdd/README.md) develops behavior through the narrowest stable proving
  seam.
- [Review](review/README.md) performs adversarial judgment against the accepted
  boundary.
- [Verify](verify/README.md) produces current evidence for delivery claims.

## Shared control and support

- [Using Praxis](using-praxis/README.md) selects a proportionate route and
  keeps the network coherent.
- [Orient](orient/README.md) teaches one bounded settled model after the human
  requests or accepts the suggested orientation.
- [Plannotator](plannotator/README.md) presents negotiable material, gates,
  diffs, artifacts, and code review through the native tool.
- [Delegate](delegate/README.md) assigns bounded questions or outcomes without
  transferring ownership or authority.
- [Check Safety](check-safety/README.md) guards consequential actions.
- [Security](security/README.md) composes threat reasoning, deterministic
  evidence, adversarial review, and validation.

## Human-selected strategic coordination

- [Coordinate Initiative](coordinate-initiative/README.md) preserves optional
  direction across related Projects after the agent recommends it and the human
  chooses that forward path.

## Human-initiated interaction postures

This posture is never an agent recommendation. It begins only because the
human directly asks for that way of interacting.

- [Pair](pair/README.md) is literal collaborative implementation after
  planning.

## Repository work

These workflows begin only after a clear human request or, for required
documentation, explicit inclusion in already-authorized Delivery. They never
appear automatically at the end of another workflow.

- [Setup](setup/README.md) prepares the local Praxis environment.
- [Commit](commit/README.md) records one intentional change.
- [Prepare PR](prepare-pr/README.md) prepares reviewer-ready pull requests.
- [Write Docs](write-docs/README.md) creates current-source documentation for
  the appropriate audience and purpose.

## Packaging rule

The later runtime implementation follows the [canonical runtime plugin
root](../README.md#canonical-runtime-plugin-root) one skill at a time. Each
skill follows the [canonical runtime directory](#canonical-runtime-directory),
including only the optional resources it genuinely needs. The plugin has one
human-facing root `README.md` as a concise landing page, not a duplicate
catalog, control contract, Setup procedure, or system description; public
guides and references under `docs/`;
maintained `docs/concepts/{premise,system,control,context,work}.md`; concise
maintainer guidance; and plugin-level shared runtime `references/`. The concept
documents own cross-skill meaning, while each `SPEC.md` remains its skill's
documentation and maintainer authority. Contradictions invalidate the plugin
and require reconciliation against accepted human judgment. Skill packages
contain no README. Runtime skills remain self-sufficient and do not depend on
loading `docs/`; declared direct consumers selectively load plugin-level or
skill-local runtime references. Each concept document is the complete
maintained successor to its corresponding accepted `core/` document, preserving
durable meaning while shedding design-workspace framing; it is neither a
summary nor runtime instruction. `docs/concepts/premise.md` owns the durable
thesis and commitments, including concise explanatory intellectual sources but
not research provenance or exact mechanics owned elsewhere.
`docs/concepts/system.md` owns recursive loops, skill composition, causal
return, and the placement of gates, Pair, and Orient without turning routes into
a lifecycle or duplicating control, context, or work-form contracts.
`docs/concepts/control.md` is the normative cross-system owner for bounded
autonomy, entry, transitions, authority, gates, continuation, revision,
assurance, reconstruction, stopping, and the Pair and Orient boundaries. Local
`SPEC.md` files apply rather than redefine it.
`docs/concepts/context.md` owns the conceptual persistence, context-category,
distinct record, artifact, Reference, and message/checkpoint lifetime,
continuity, progressive-loading, and reconstruction model without mirroring
runtime procedures. Shared record references retain exact record lifecycle and
schemas; Make Tangible's local reference retains the artifact procedure.
`docs/concepts/work.md` owns proportional route and work-form meaning,
durability, composition, results, completion, and route changes without
mandatory nesting or lifecycle-stage mapping. Control owns gates and runtime
references own exact record contracts.
`docs/maintainers/skill-packages.md` is the final plugin's maintained authoring
contract for one package: directory shape, projection and reconciliation,
metadata, optional resources, direct dependencies, and package validation. It
does not own individual behavior or plugin-wide release.
`docs/maintainers/conformance-and-release.md` owns whole-plugin implementation,
review, cross-surface conformance, behavioral forward-testing, versioning,
marketplace and adapters, integrations, release gates, and changelog policy
without creating a permanent evaluation framework or Praxis validator CLI.
`docs/guide/getting-started.md` is the shortest
public path from availability and explicit Setup when needed to the first real
ordinary-language request; it does not reproduce the system model, capability
catalog, or skill procedures. `docs/guide/working-with-praxis.md` explains the
observable everyday collaboration model—recommendation, proceeding, waiting,
authority, redirection, resumption, evidence return, and stopping—without
reproducing internal architecture or the full capability catalog.
`docs/guide/examples.md` holds a small curated contrast among Direct Work,
bounded Delivery, Evolve, explicitly requested Pair, and suggested or declined
Orient; it is neither executable conformance material nor exhaustive skill
coverage. `docs/reference/capabilities.md` is the public non-lifecycle catalog
of each capability's purpose, behavioral entry, and bounded return; it does not
duplicate internal composition or dependency contracts from `SPEC.md`.
`docs/reference/integrations.md` documents only verified host and external-tool
support, including ownership, installation, updates, versions, and limits; it
does not turn available tools into behavioral entry or authority. The local
[runtime contract and projection](#runtime-contract-and-projection) and [host
metadata and invocation](#host-metadata-and-invocation) rules become part of
`docs/maintainers/skill-packages.md`; they do not remain hidden in this
temporary design index. These temporary `README.md` files preserve the accepted
contracts until then. Their filenames, section order, length, and explanatory
voice are not a runtime template. Mechanical package and schema checks come
from this index, the root design `README.md`, and applicable Praxis-owned
validation scripts; the linked authoring method supplies quality and review
judgment only.
