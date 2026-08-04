# Praxis Skill Design Packages

> **Status:** Accepted behavioral source and complete target package
> architecture. Runtime assembly status is tracked centrally in
> [Praxis Status](../STATUS.md).

Each child directory owns the maintained behavioral design for one eventual
Praxis skill. Its `README.md` explains the capability's purpose, entry,
procedure, authority, composition, result, and stopping behavior. Files under
its current `references/` or `assets/` directories preserve semantic or output
material associated with that design.

None of those files is a runtime package written in advance.

When designing or reviewing a target package, use [Writing Great
Skills](../../skills/writing-great-skills/SKILL.md) and its
[Glossary](../../skills/writing-great-skills/GLOSSARY.md) as the sole method for
invocation, information hierarchy, progressive disclosure, co-location,
completion criteria, pruning, no-op testing, and observed behavior. This index
owns Praxis-specific package boundaries, composition, design gates, and
implementation constraints.

**SKILL-CREATOR IS PROHIBITED. DO NOT READ, INVOKE, CITE, FOLLOW, OR USE IT FOR
PRAXIS DESIGN, IMPLEMENTATION, REVIEW, OR VALIDATION.**

## Three distinct states

Keep these states explicit for every skill:

1. **Behavioral and semantic source** — the current design `README.md` and its
   associated material.
2. **Accepted target package design** — an implementation-ready decision about
   runtime surfaces, references, invocation, resources, and conformance.
3. **Implemented and verified package** — the actual `SKILL.md`, `SPEC.md`,
   host metadata, and accepted resources under `.agents/plugins/praxis/`, with
   the accepted package checks passing.

Do not rename a design `README.md` to `SKILL.md`, copy its prose into runtime
context, or treat current reference paths as target files. Preserve accepted
meaning while deriving a new information hierarchy for the executing agent.

## Package-design gate

Before implementation authority, the selected skill's maintained `README.md`
must gain an accepted `## Target runtime package` section. That section is a
decision surface, not draft runtime prose. It records:

- the skill's invocation class and exact host projection;
- the information hierarchy and meaningful completion criteria for
  `SKILL.md`;
- how relevant global Praxis rules apply locally;
- the target package tree;
- every intended local and shared reference;
- direct skill calls, expected returns, and retained ownership;
- `SPEC.md` scope and representative conformance cases;
- justified scripts, assets, tools, fixtures, and effects;
- semantic sources contributing to each target surface;
- resolved gaps, contradictions, failure behavior, and no-op behavior; and
- observable checks for the completed package.

The target reference map uses this minimum meaning:

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |

Use `None` when the skill earns no reference. The table does not require one
row per current source file: several sources may inform one target, one source
may split across load conditions, or its meaning may remain inline or be
omitted.

Implementation is ready only when the target map contains no decision that the
implementer must invent. Genuine unresolved human judgment remains visible and
blocks implementation of that package.

## All-package conformance baseline

Every accepted `SPEC.md` applies these cases in addition to the package-specific
cases named by its owning design:

1. the intended natural-language request or direct caller loads the skill;
2. a nearby negative case remains with ordinary work or its correct owner;
3. every conditional reference loads only at its accepted decision point;
4. every direct skill call returns its named result while the caller retains
   ownership;
5. missing authority or a required dependency stops before the affected action;
6. blocked, revised, failed, dismissed, and partial results remain distinct
   where the behavior exposes them;
7. completion returns evidence and limitations, then stops without adjacent
   work; and
8. a trivial or already-satisfied case performs no ceremonial extra work.

Package-specific cases must still cover the capability's distinctive branches,
effects, record or artifact handling, and likely boundary confusions. This
baseline removes repetitive boilerplate; it does not let implementation choose
which distinctive behavior matters.

## Runtime information placement

Apply this rule to every meaning considered for a target package. Importance
alone does not determine placement; execution path, ownership, and loading
condition do.

First separate behavior from reference. Material that owns a callable
procedure, effect authority, skill calls, completion, or stopping is a skill or
another capability candidate; it does not enter the placement table as passive
runtime information.

| Placement | Use it when | Runtime consequence |
| --- | --- | --- |
| Inline in `SKILL.md` | The instruction is short and needed on the normal path, or the agent must know it before selecting a branch safely. | It enters context whenever the skill is loaded. Repeating a small local projection across skills is valid when each needs it directly. |
| Skill-local reference | One skill owns substantial detail needed only under a precise condition. | The owning `SKILL.md` selects the branch and links the reference at that decision point. |
| Shared runtime reference | At least two skills directly need the same substantial conditional knowledge, each has a named load condition, and separate copies would meaningfully drift. | Every direct consumer links the same accepted target from its own `SKILL.md`; shared placement does not grant behavioral authority. |
| No runtime surface | The material is maintainer rationale, provenance, history, design explanation, superseded sediment, or otherwise unnecessary for execution. | Keep it in its maintained design or evidence owner, or prune it; the runtime agent does not load it. |

A **direct consumer** is an accepted target package whose design requires its
future `SKILL.md` to link the reference at its own decision point. A reference
does not become a hidden router: it does not choose another branch or instruct
the agent to discover a chain of other references. The consuming `SKILL.md`
owns every conditional load and behavioral transition.

Current semantic files may be merged, split, renamed, localized, shared,
inlined, or omitted according to this rule. Their present shape does not earn
runtime placement.

## Canonical implemented package

After target-package acceptance and separate implementation authority, one
runtime skill uses this sparse shape:

```text
skills/<skill-name>/
|-- SKILL.md
|-- SPEC.md
|-- agents/
|   `-- openai.yaml
|-- references/       # optional, only accepted target references
|-- scripts/          # optional, only accepted deterministic resources
`-- assets/           # optional, only accepted output resources
```

`SKILL.md`, `SPEC.md`, and `agents/openai.yaml` are required by the current
Praxis package contract. Optional directories exist only when the accepted
target package contains at least one real resource. Runtime packages contain
no package `README.md`, empty directories, placeholders, generic `examples/`
directory, installation guide, or local changelog.

The package directory and stable skill name use lowercase kebab-case and agree
exactly. Final frontmatter and host fields follow the accepted invocation
design and the verified host schema rather than a generic scaffold default.

## Runtime surface ownership

### `SPEC.md`: maintained local contract

`SPEC.md` becomes the maintainer authority for the implemented skill's
observable behavior. It preserves:

- purpose, entry, inputs, assumptions, and exclusions;
- behavioral invariants and local application of global Praxis rules;
- result, incomplete, revised, refused, and stopped outcomes where relevant;
- authority, side effects, persistence, and lifetime;
- direct composition, retained ownership, and dependency expectations;
- reference and resource architecture;
- representative behavioral cases and conformance criteria; and
- the source basis needed to maintain the package.

It does not transcribe runtime step order, design history, or rationale that
does not change the contract. The runtime agent does not routinely load it.

### `SKILL.md`: executable projection

`SKILL.md` is the instruction surface the agent follows. It carries:

- the accepted invocation-facing metadata for its reach;
- every instruction and in-skill reference needed by all reachable branches;
- decision points and exact context pointers for conditional knowledge;
- direct skill calls with trigger, expected return, and retained ownership;
- the local consequences of applicable entry, authority, persistence, and
  stopping rules;
- checkable and sufficiently demanding completion criteria;
- material limitations and unresolved state in the return; and
- the exact point where the skill stops and returns control.

These are required meanings, not a universal heading template. A skill may be
steps, in-skill reference, or both. Choose the shape that makes the selected
behavior predictable.

`SKILL.md` never depends on loading `SPEC.md`, design files, history, or public
documentation. If it disagrees with `SPEC.md`, the component is invalid; use
accepted human judgment and design authority to reconcile both, then repeat
conformance review.

### Agent-readable runtime projection

Writing Great Skills governs every agent-readable runtime surface:

- A model-invoked frontmatter `description` is the smallest top-level context
  pointer. Front-load its leading word, name only genuine trigger branches and
  any exclusion required to prevent false invocation, and leave procedure,
  return shape, authority handling, and stopping to the body.
- A user-invoked description is one human-facing summary with
  `disable-model-invocation: true`; it carries no trigger list.
- An `agents/openai.yaml` default prompt is the smallest useful launch request,
  not another skill summary. Interface copy stays concise and cannot broaden
  invocation or behavior.
- `SKILL.md` is the smallest executable projection, not a second copy of the
  contract.
- A loaded local or shared reference is the smallest self-contained projection
  of the conditional knowledge selected by its context pointer. Explanation,
  examples, definitions, and caveats earn their place only when they change the
  agent's judgment or action on that branch.

Apply relevance, single-source, no-op, sediment, sprawl, and negation review to
each surface independently and to the combined context the agent receives.
Moving duplicated or inert prose between files does not make it distilled.

`SPEC.md` is the exhaustive maintainer contract and does not enter normal
runtime context. Public documentation, design files, semantic sources, and
history are also outside the runtime projection unless an accepted `SKILL.md`
context pointer deliberately loads a runtime target derived from them.

Every future Praxis implementation worker and reviewer applies this test:

- Map runtime text to actual decisions and state transitions, not to every
  invariant, conformance case, or concept.
- Give a step a completion criterion only when it represents a real runtime
  transition; bind the criterion to that step's observable state.
- Coalesce related checks into one compact frame or checklist when the agent
  needs them together.
- Treat substantial restatement of `SPEC.md` or design, or a projection that
  hides the main process, as size and sprawl rejection evidence; rederive the
  projection instead of sentence-trimming it.
- Add a reference only for substantial conditional knowledge. Size reduction
  alone does not justify inventing a reference.

### Skill-local runtime references

A local runtime reference earns a file only when substantial knowledge is
needed under a distinct condition reached by that skill. It may deepen a
selected schema, protocol, domain rule, example family, edge case, technique,
or other body of reference. It is distilled for the selected branch rather
than copied, summarized wholesale, or padded with explanatory background from
its semantic source.

The consuming `SKILL.md` selects the branch and links the exact file at that
decision point. The context pointer states:

1. the condition that requires loading;
2. the question or branch the material supports; and
3. what guidance to take from it.

A reference does not choose behavioral entry, select its own branch, call
another skill, grant authority, define completion, or stop the skill. Keep
those instructions in `SKILL.md`.

Target references use direct lowercase kebab-case Markdown files unless an
accepted selection problem genuinely requires nesting. They have no
frontmatter or universal heading template. Co-locate each meaning's definition,
rules, caveats, limits, and failure boundaries. Add navigation when length
impedes use; split by distinct load condition rather than arbitrary topic size.

### Accepted skill-local projections

Files currently under a design package's `references/` directory are semantic
sources. Their status banners and owning target package now record the accepted
runtime projection. Their current design names, splits, and directories still
do not become runtime paths by themselves.

The completed package audit applied this method:

1. start from behavior and decision points in the skill design;
2. identify what every branch needs and keep it in `SKILL.md`;
3. inspect only material associated with conditional branches;
4. merge, split, rename, localize, share, inline, or omit meanings as warranted;
5. identify missing knowledge and weak or contradictory behavior; and
6. accept final context pointers and reference boundaries before implementation.

Do not write a target reference merely because a source file exists.

### Accepted shared runtime references

The top-level [cross-skill semantic material](../references/README.md) owns the
accepted six-reference inventory, direct consumers, load conditions, content
boundaries, and semantic sources. Shared placement remains valid only while at
least two target packages directly need the same substantial reference under
named load conditions and duplication would create drift.

A shared reference remains conditional knowledge, not global Praxis authority
and not a callable capability. Each direct consumer links it from its own
`SKILL.md` and declares it in `SPEC.md`. Transitive consumers do not repeat the
dependency.

The accepted runtime targets are `references/evaluation.md`,
`references/learning-return.md`, and the four files under
`references/records/`. There is no runtime reference index. Each direct
consumer links its target from the decision point that requires it. Future
changes must repeat the admission test from concrete package needs rather than
inventing a plugin-wide knowledge tree.

### Invocation and host metadata

Praxis behavioral entry and host invocation are separate:

- behavioral entry decides whether the capability may begin in the current
  Praxis context;
- invocation decides whether the model or only the human can reach the skill;
- host metadata controls presentation and host launch policy; and
- effect authority decides which mutations or external actions may occur.

None grants another.

Implicit model selection only loads a candidate skill; it never satisfies that
skill's behavioral entry. A human-gated skill may remain model-invoked so the
host can recognize the human's ordinary-language selection without requiring
an exact `$skill` command. When the required behavioral entry is absent, the
loaded skill declines or returns to its caller without beginning the
capability.

Writing Great Skills requires a per-skill invocation choice. A skill another
skill must call, or that the agent must discover autonomously, needs
model-invoked reach and pays context load. A skill that only the human may
reach should remain human-invoked and pay cognitive load instead. Do not
default every Praxis skill to the same host policy.

The target package design records the exact invocation class, leading words,
genuine trigger branches, adjacent exclusions, host fields, interface copy,
and explicit-versus-implicit launch policy. It then maps that decision to the
verified schema of every supported host. This cross-host mapping is a design
decision, not an implementation-worker choice.

`agents/openai.yaml` owns OpenAI presentation and launch policy. Its interface
copy may summarize the accepted capability but cannot introduce broader
behavior, authority, or dependencies. Host or tool dependencies appear only
when the skill directly requires the host-supported integration.

### Scripts and assets

No skill receives scripts or assets by default.

A script earns inclusion only when an accepted package behavior materially
benefits from deterministic reuse and its owner, interface, effects,
authority, proof, and failure handling are designed. An asset earns inclusion
only when the skill owns an output behavior that needs a reusable source or
fixture and its use and fidelity checks are designed.

Make these decisions in the target package before implementation authority.
Do not ask the implementation worker to discover whether a resource should
exist. Retain an executable fixture beside the script or asset that consumes it
only when it is part of the accepted package and its representative path is
validated.

## Package-link projection

Current links inside `praxis-design/` navigate maintained design and semantic
source. They are not runtime paths.

After target-package acceptance:

- `SKILL.md` links a directly called skill's final `SKILL.md` at the call point;
- `SKILL.md` links each accepted local or shared reference at its load point;
- `SPEC.md` links sibling behavior to `../<skill>/SPEC.md`, cross-system meaning
  to `../../docs/concepts/<concept>.md`, the package contract to
  `../../docs/maintainers/skill-packages.md`, and exact runtime references at
  their final paths;
- no runtime file links into `praxis-design/`, `history/`, `evidence/`, or a
  design package `README.md`.

The accepted plugin documentation architecture and each concept owner's scope
are defined in the root design's
[self-contained plugin documentation](../README.md#self-contained-plugin-documentation).
Repository-only authoring guidance may shape implementation and review, but it
is never cited as a distributed package dependency. Every `SPEC.md` source
basis must remain meaningful after `praxis-design/` is removed.

## Composition rule

Skills form a callable network. When one skill needs a capability another owns,
the caller invokes it for one bounded question and interprets the return. The
caller keeps its governing meaning, synthesis, gates, authority, route, and
stopping rule. The callee keeps its procedure and cannot advance the caller's
workflow.

A dependency does not bypass behavioral entry. A host launch capability,
package link, recommendation, or caller preference cannot satisfy a missing
human choice or explicit invocation requirement.

Every current skill design uses:

```markdown
## Direct dependencies

### Skills
- Skill Name — trigger, expected return, retained ownership.

### Shared references
- Semantic need or `None`.
```

Skill entries are accepted direct composition claims unless current evidence
shows a contradiction. Shared-reference entries record direct semantic needs;
the owning target package section supplies the accepted runtime name,
local-versus-shared placement, and load condition. Local semantic material is
internal to the package and is not an external dependency.

The artifact and presentation direction remains:

```text
caller -> Make Tangible when something must be constructed or made perceptible
       -> Plannotator when a stable target needs native presentation or reaction
```

Document direct dependencies only. Dependencies internal to an invoked skill
remain encapsulated.

### Partial-runtime composition

Implement one accepted package with its final dependency names and paths. A
missing direct skill target does not expand the authorized slice and does not
justify a placeholder package. Report the unresolved assembly dependency.

This exception applies only to cross-skill calls. Every local resource and
directly loaded shared runtime reference required by the selected package must
exist in the authorized implementation slice. Before release, every target and
link resolves and cyclic compositions are tested together.

## Capability navigation

These groups aid reading; they are not lifecycle stages or automatic routes.

### Requirements Discovery

- [Discover Requirements](discover-requirements/README.md) owns inquiry,
  synthesis, Requirements Alignment, and return.
- [Research](research/README.md) resolves bounded factual questions.
- [Interview](interview/README.md) resolves human-owned judgment.
- [Make Tangible](make-tangible/README.md) creates the smallest useful reaction
  surface.

### Formalization

- [Formalize](formalize/README.md) proposes the proportional specification
  route.
- [Evolve](evolve/README.md) defines multiple meaningful working forms.
- [Define Issues](define-issues/README.md) creates observable specification
  boundaries.
- [Design Solution](design-solution/README.md) resolves consequential solution
  structure without becoming an Implementation Plan.

### Delivery

- [Deliver](deliver/README.md) owns one bounded working result through
  implementation, review, proof, explanation, and return.
- [Plan](plan/README.md) proposes implementation and its exact bounded
  authority.
- [Debug](debug/README.md) diagnoses unexpected behavior before correction.
- [Refactor](refactor/README.md) improves changeability while preserving
  accepted behavior.
- [TDD](tdd/README.md) develops behavior through a stable proving seam.
- [Review](review/README.md) performs adversarial judgment against an accepted
  boundary.
- [Verify](verify/README.md) produces current evidence for delivery claims.

### Shared control and support

- [Using Praxis](using-praxis/README.md) selects a proportionate route.
- [Orient](orient/README.md) teaches one bounded settled model after human
  selection.
- [Plannotator](plannotator/README.md) presents negotiable material, gates,
  diffs, artifacts, and code review.
- [Delegate](delegate/README.md) assigns bounded questions or outcomes without
  transferring ownership or authority.
- [Check Safety](check-safety/README.md) guards consequential actions.
- [Security](security/README.md) composes threat reasoning, evidence,
  adversarial review, and validation.

### Human-selected strategic coordination

- [Coordinate Initiative](coordinate-initiative/README.md) preserves optional
  direction across related Projects after human selection.

### Human-initiated interaction posture

- [Pair](pair/README.md) is literal collaborative implementation after
  planning and begins only through a direct human request.

### Repository work

- [Manage Worktree](manage-worktree/README.md) prepares and preserves one
  isolated checkout when a named repository risk justifies it.
- [Setup](setup/README.md) prepares the local Praxis environment.
- [Commit](commit/README.md) records one intentional change.
- [Prepare PR](prepare-pr/README.md) prepares reviewer-ready pull requests.
- [Write Docs](write-docs/README.md) creates current-source documentation for
  its named audience and purpose.

## Implementation and review boundary

Implementation proceeds one complete target package or one concrete
plugin-wide prerequisite at a time after explicit authority. The agent writes
the runtime package for direct model use, reviews the exact diff, validates
structure and every accepted conformance case, forward-tests subtle behavior
in fresh context when warranted, and stops for human review.

Package validation checks at least:

- required files and accepted host schema;
- agreement among invocation, entry, authority, return, stopping, and metadata;
- traceability from every material `SPEC.md` invariant to executable
  instruction;
- resolution and precise load conditions for every link and resource;
- absence of placeholders, empty directories, copied design files, and hidden
  context chains;
- representative use of scripts and assets;
- Writing Great Skills invocation, information hierarchy, completion,
  distillation, pruning, and no-op behavior across descriptions, host prompts,
  skill bodies, and every loaded reference; and
- observed behavior for distinctions likely to be misread.

The accepted public, concept, and maintainer documentation surface is the first
plugin-wide implementation prerequisite. It must exist before further
`SPEC.md` files rely on cross-system or authoring owners. The runtime skill
packages and shared-reference inventory remain accepted here and in their
owning designs; implementation must use those final plugin-local paths rather
than inventing another tree.
