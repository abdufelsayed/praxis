# Praxis skill packages

This is the self-contained authoring contract for one Praxis runtime package.
It keeps the package sparse, makes the executable projection predictable, and
leaves the maintainer contract available without loading it into normal model
context. A package is ready only when its accepted behavior, runtime surfaces,
resources, links, direct calls, and representative conformance cases agree.

This document and the corresponding `SPEC.md` are maintainer material. They may
be comprehensive because they are not part of the executing agent's reading
path. Only `SKILL.md`, the runtime references it conditionally loads, and the
resources it invokes are executable instructions. Never shorten maintainer
material merely to reduce agent context; keep the runtime boundary explicit
instead.

## Package shape

Every implemented skill uses the smallest accepted runtime tree:

```text
skills/<skill-name>/
├── SKILL.md
├── agents/
│   └── openai.yaml
├── references/       # optional, accepted local runtime references only
├── scripts/          # optional, accepted deterministic helpers only
└── assets/           # optional, accepted output resources only
```

`SKILL.md`, `SPEC.md`, and `agents/openai.yaml` are required in every package:

```text
skills/<skill-name>/SPEC.md
```

Co-location does not make `SPEC.md` executable. The package directory and
stable skill name use lowercase kebab-case and agree exactly.
Optional directories exist only when at least one accepted resource belongs in
them. A package has no package `README.md`, empty directory, placeholder,
generic `examples/` directory, installation guide, or local changelog.

The current [Check Safety package](../../skills/check-safety/SKILL.md) is the
first concrete runtime example. Its executable body and maintainer contract
are [SKILL.md](../../skills/check-safety/SKILL.md) and
[SPEC.md](../../skills/check-safety/SPEC.md), and its host projection is
[agents/openai.yaml](../../skills/check-safety/agents/openai.yaml). It needs
no local reference, script, asset, fixture, or direct skill call, so those
directories and declarations are absent.

## Two surfaces, one contract

### `SPEC.md` — maintained contract

`SPEC.md` is the exhaustive maintainer authority for observable package
behavior. It records:

- purpose, behavioral entry, inputs, assumptions, and exclusions;
- invariants and the local application of Praxis entry, authority,
  persistence, learning, and stopping rules;
- complete, incomplete, revised, refused, blocked, failed, dismissed, and
  partial outcomes where the behavior exposes them;
- effects, authority, side effects, persistence, and lifetime;
- direct composition, retained ownership, and dependency expectations;
- invocation, host projection, reference, and resource architecture;
- representative behavioral cases and package conformance criteria; and
- a plugin-local source basis that a future maintainer can still resolve.

It does not transcribe runtime step order, design history, conversation
provenance, or rationale that does not change the contract. The runtime agent
does not routinely load it.

### `SKILL.md` — executable projection

`SKILL.md` is the smallest instruction surface the agent follows. It carries:

- accepted invocation-facing metadata and the trigger or exclusion needed for
  its reach;
- every instruction and in-skill reference needed by all reachable branches;
- decision points and exact context pointers for conditional knowledge;
- direct skill calls with trigger, expected return, and retained ownership;
- local consequences of applicable entry, authority, persistence, learning,
  effect, and stopping rules;
- checkable and sufficiently demanding completion criteria;
- material limitations and unresolved state in the return; and
- the exact point where the skill returns control and stops.

`SKILL.md` never depends on `SPEC.md`, public documentation, design material,
history, or a hidden chain of references. If it disagrees with `SPEC.md`, the
package is invalid: reconcile both against accepted plugin-local meaning and
current observable behavior before accepting the package.

### Reconciliation

Treat `SPEC.md` as the maintainer contract and `SKILL.md` as its executable
projection, not as two competing owners. For every material invariant and
outcome in `SPEC.md`, identify the executable instruction or intentional
runtime absence that realizes it. For every branch, call, resource, effect,
return, and stopping instruction in `SKILL.md`, identify the contract that
supports it. Remove a sentence rather than preserving an unexplained
disagreement.

A contract may be more exhaustive than the executable projection; this is
normal. The projection may be shorter only when the omitted explanation does
not change runtime judgment and the loaded context still contains all
branch-common behavior. Reconcile material changes before implementation,
after implementation, and after forward testing.

## Invocation and host metadata

Behavioral entry, host invocation, presentation, and effect authority are
independent:

- behavioral entry says whether the capability may begin in the current
  Praxis context;
- catalog reachability says whether a human or active owner may explicitly
  invoke the package;
- implicit invocation says whether the host may select the package from the
  ambient request without an explicit owner call;
- host metadata controls presentation and host launch policy; and
- effect authority says which mutations or external actions may occur.

One does not grant another. A catalog description makes a package discoverable;
it does not make it ambient model context. Implicit host selection loads a
candidate skill; it never satisfies a human-owned entry condition. When
behavioral entry is absent, an explicitly or implicitly loaded package declines
or returns to its caller without beginning the capability.

Apply these invocation rules per package:

- An **implicitly selectable navigator** sets
  `policy.allow_implicit_invocation: true`. Its frontmatter description names
  the genuine ambient-routing triggers and exclusions needed to avoid false
  invocation. Praxis gives this class only to Using Praxis.
- An **internally reachable owner** sets
  `policy.allow_implicit_invocation: false`. It remains available through an
  explicit `$skill` selection and through an active owner's direct call, but
  the host does not select it ambiently. Its description is concise catalog
  discovery copy; its body still enforces behavioral entry.

All Praxis leaf owners use the internally reachable class. Human-owned
judgment is expressed by behavioral entry and the control contract, not by
hiding a package from explicit calls or by a separate invocation key.

`agents/openai.yaml` owns host presentation and launch policy. Its interface
copy is a concise launch request, not a second skill summary; it cannot widen
behavior, authority, effects, or dependencies. Host fields and policy follow
the verified host schema. A host or tool dependency appears only when the
package directly requires that supported integration.

The description, host prompt, and body must agree on the accepted name,
invocation class, genuine branches, and exclusions. A host launch cannot
silently begin a forward route, grant mutation authority, or bypass a missing
dependency.

## Distilling each agent-readable surface

The goal is **predictability**: the agent follows the same useful process on
each run, not that it produces identical output. Apply the same quality test
independently to the description, host prompt, `SKILL.md`, and every loaded
reference.

### Description

Front-load a **leading word**—a compact concept the agent can think with—then
name one trigger per genuine branch. Collapse synonyms that describe one
branch; each extra word increases context load. Keep procedure, return shape,
authority handling, and stopping in the body. For implicit navigator
selection, state an adjacent exclusion only when it prevents a real false
trigger.

### Host prompt

Write the smallest useful launch request. It should name the accepted
capability and the user's immediate purpose without restating the description,
procedure, contract, or safety rules. Interface copy cannot introduce a new
trigger, effect, dependency, or continuation.

### Body

Use ordered steps when the agent must move through real runtime transitions.
Keep branch-common instructions inline when the agent needs them before safely
choosing a branch. End each step with a **completion criterion** that is
checkable and, where required, exhaustive: the agent can tell done from not
done and must account for every affected claim, target, or model.

Use in-skill reference for a flat peer set of rules that every path needs.
Push conditional knowledge behind a context pointer only when a distinct
branch reaches it. A pointer must state the condition, the question it
answers, and what guidance to take; a link alone is not a reliable pointer.

The body owns behavioral entry, effect authority, direct calls, completion,
return, and stopping. These are not passive references and must not be hidden
in a loaded file.

### Loaded references

A loaded reference is the smallest self-contained projection of substantial
conditional knowledge. Co-locate its definition, rules, caveats, limits, and
failure boundaries. It does not choose entry, select its own branch, call a
skill, grant authority, define completion, stop the caller, or point to another
reference chain.

Use **progressive disclosure** to move only branch-specific reference down the
information hierarchy. Inline what every reachable path needs; disclose what
only one condition needs. Size reduction alone is not a reason to invent a
file. If a must-have pointer is reached unreliably, sharpen its condition and
action wording before moving the material back inline.

Keep a concept's definition, rules, examples that change judgment, and caveats
together through **co-location**. Split by distinct load condition, not by
arbitrary file size. A reference is not a hidden router or runtime authority.

### Leading words and completion

Use a small set of strong leading words consistently across prompts, bodies,
and code. They anchor execution and invocation without repeating a paragraph
of meaning. Prefer a familiar word that recruits useful prior knowledge; if a
new term is necessary, define it once and use it consistently.

Completion criteria drive legwork inside a step. They should resist
**premature completion** by binding the current transition to observable
state, and should demand exhaustive coverage where a flat reference or return
would otherwise be thin. Hiding later steps is a last resort for a genuine
cross-context sequence problem; sharpen the local criterion first.

### Pruning

Apply these tests line by line and to the combined context:

- **Single source of truth:** each meaning has one authoritative home.
- **Relevance:** each line still bears on the package's behavior and current
  branches.
- **No-op:** delete an instruction that would not change the model's default
  behavior.
- **Sediment:** remove stale layers instead of preserving them because they
  are old or familiar.
- **Sprawl:** disclose reference or split a real branch when the surface is
  simply too long, while preserving live unique meaning.
- **Negation:** state the positive target behavior; retain a prohibition only
  as a hard guardrail that cannot be phrased positively, paired with what to do.

Moving duplicated or inert prose between description, prompt, body, and
reference does not distill it. Review each surface alone and the context the
agent receives after every conditional load.

## References and optional resources

### Skill-local references

A local runtime reference earns a file only when one skill owns substantial
detail needed under a distinct condition. The consuming `SKILL.md` selects the
branch and links the exact file at that decision point. The local reference is
distilled for that branch, not a copied source document or padded background.

### Shared runtime references

Shared placement requires all of these conditions:

1. at least two skills directly need the same substantial knowledge;
2. each consumer has a named decision point and load condition;
3. separate copies would create meaningful drift;
4. the material is reference rather than behavior owned by another skill;
5. it is self-contained with each consuming `SKILL.md`;
6. it does not hide entry, authority, calls, completion, or stopping; and
7. its name and boundary follow accepted load conditions.

The universal owner path begins with [Praxis
Control](../../references/control.md). Additional shared runtime targets are
[evaluation](../../references/evaluation.md),
[learning-return](../../references/learning-return.md), and the four record
references: [foundations](../../references/records/foundations.md),
[discovery](../../references/records/discovery.md),
[formalization](../../references/records/formalization.md), and
[delivery](../../references/records/delivery.md). Each direct consumer links
its target from its own decision point and declares it in `SPEC.md`.
Transitive consumers do not repeat the dependency. There is no runtime
reference index or reference-to-reference chain.

### Scripts, assets, and fixtures

No package receives scripts or assets by default. A script earns inclusion only
when deterministic reuse materially improves accepted behavior and its owner,
interface, effects, authority, proof, and failure handling are explicit. An
asset earns inclusion only when the skill owns an output behavior requiring a
reusable source or fixture and its use and fidelity checks are designed.

Keep an executable fixture beside the script or asset that consumes it only
when it is part of the accepted package and its representative path is
validated. Do not add a resource to reduce line count, provide generic
examples, or give a future worker a place to guess.

## Direct composition

Record direct skill dependencies only. For each direct call, state:

- the exact trigger or decision point;
- the bounded question or outcome delegated;
- the return shape and relevant incomplete or blocked states; and
- the ownership retained by the caller.

The caller keeps its governing meaning, synthesis, route, gates, effect
authority, acceptance, and stopping rule. The callee returns only the evidence,
reaction, or bounded result it owns; it cannot advance the caller's workflow.
A direct dependency does not bypass behavioral entry.

An unavailable direct target does not justify a placeholder package, copied
procedure, or transitive declaration. Implement the caller with its final
dependency name and path, report the unresolved assembly dependency, and keep
the package's own local resources and directly loaded shared references
complete. Release resolves every target and tests any dependency cycle
together.

## Plugin-local links and source basis

Plugin runtime files link only to final targets inside this plugin:

- `SKILL.md` links a directly called skill's final `SKILL.md` at the call
  point;
- `SKILL.md` links each accepted local or shared reference at its load point;
- a maintainer contract links sibling contracts at their actual maintained
  locations, concept documentation, this authoring contract, and exact runtime
  references at their final paths; and
- host metadata links to no runtime procedure and is kept schema-valid.

Do not link a design workspace, repository-only authoring material, history,
evidence, an unassembled skill, or any path that will not ship with the plugin.
When a target is not yet assembled, use precise contract prose and record the
assembly gap in the maintainer surface rather than inventing a link.

The `SPEC.md` source basis must remain meaningful if all non-plugin source is
removed. Use the plugin-local concept owners ([premise](../concepts/premise.md),
[system](../concepts/system.md), [control](../concepts/control.md),
[context](../concepts/context.md), and [work](../concepts/work.md)), this
maintainer contract, sibling `SPEC.md` contracts, exact runtime references,
and verified package behavior. Source basis is provenance for maintenance, not
a runtime dependency.

Public docs and maintained concepts are not normal executing-model context.
`SKILL.md` remains self-sufficient and loads only accepted runtime references;
public docs do not reproduce complete procedures or runtime reference bodies.

## Partial assembly

Implement one accepted package or one concrete plugin prerequisite at a time.
The public, concept, and maintainer documentation surface is a prerequisite
for package specifications that depend on those durable owners. A cross-skill
call may temporarily point at an unassembled direct target, but that exception
does not permit a placeholder, an invented transitive route, or a missing
package-local resource.

Before release, every accepted package target and link resolves. Dependency
cycles are assembled and forward-tested as one coordinated set. A package is
not accepted merely because its worker reports completion; the frozen diff,
surface reconciliation, link checks, and behavioral evidence still decide.

## Package acceptance

Accept a package only when all applicable checks are true:

1. the sparse tree contains required files and no placeholders or empty
   optional directories;
2. name, frontmatter, invocation class, host metadata, behavioral entry,
   authority, effects, return, and stopping agree;
3. every material `SPEC.md` invariant maps to executable behavior or an
   intentional documented absence;
4. every conditional reference has one precise load condition and resolves at
   its final plugin-local path;
5. every direct call returns its named result while the caller retains
   ownership, and missing authority or dependency stops before the affected
   action;
6. blocked, revised, failed, dismissed, and partial outcomes remain distinct
   wherever the package exposes them;
7. completion returns evidence and limitations, then stops without adjacent
   work;
8. trivial or already-satisfied requests perform no ceremonial extra work;
9. scripts, assets, and fixtures have accepted ownership and a representative
   validated path; and
10. description, host prompt, body, and each loaded reference pass invocation,
    hierarchy, completion, distillation, co-location, pruning, and no-op
    review.

Add package-specific cases for distinctive branches, effects, record or
artifact handling, and likely boundary confusions. A package is accepted only
after its clean-room forward behavior and its exact frozen diff support these
claims; no permanent evaluator, receipt ledger, or plugin-wide validator is
needed for package authoring.
