# Plannotator

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

## What it does

Plannotator gives Praxis one precise human reaction surface for documents,
visual artifacts, coherent file collections, code changes, and delivered
results. It opens the native Plannotator UI, waits for the human judgment,
interprets the returned decision and annotations, and sends that meaning back
to the loop that owns the work.

Its leading idea is **make the human judgment exact without letting the review
surface control the workflow**. Approval accepts only the named revision and
declared consequence. It never starts the next activity or grants mutation
authority.

## Required capabilities

The runtime package must expose these native Plannotator capabilities without
recreating their UI or adding a separate Plannotator-owned workflow:

- annotation of files, folders, text, HTML, URLs, and the latest assistant
  response;
- stable gates with structured JSON results, including approval, denial,
  feedback, dismissal, and closure without treating non-approval as a tool
  failure;
- review of the complete local Git diff or one named remote pull or merge
  request;
- one active human session with native session and archive recovery;
- temporary bundled interview and facts surfaces for small independent,
  already-grounded inputs; and
- optional Review Learning over native review history, with scoped trajectory
  analysis and reviewed adoption rather than automatic instruction changes.

Visual explainer construction, shared styling, host-theme behavior, accessible
SVG and Mermaid rendering, and plan, PR, and report presentation patterns are
owned by [Make Tangible](../make-tangible/README.md), which creates and verifies
the target before Plannotator presents it. Its accepted CSS asset and visual
reference contain the reusable components and verification rules required to
construct those surfaces consistently. Praxis installs only the native CLI;
all required agent behavior lives in the Praxis runtime packages rather than
host-specific Plannotator integrations.

## The interaction paths

Use **Reaction Review** while meaning is still being formed. It supports
annotation, comparison, correction, and discussion around a record, artifact,
URL, folder, or the latest assistant response. It produces feedback, not
acceptance.

Use a **Record Gate** when one complete Initiative, Requirements bundle,
Evolution Map, Evolution definition, Issue batch, or Implementation Plan is
ready to become the provisional basis for later judgment. Project or Initiative
Closure may also use a stable gate when no complete Result Gate already carries
that exact closure judgment. The owner declares what approval means and what
remains unauthorized before opening the gate.

Use **code review** to show the complete fixed implementation diff produced
under an approved Plan. Human code review is required before Result Acceptance
for Plan-governed code, but it supplies evidence rather than accepting the
result.

Use a **Result Gate** after review and verification when the result needs a
native gate: a formal record, a composed Evolution or Project closure, a
required code-review interaction, or a native reaction surface that materially
improves judgment. The owning loop presents a current result explanation that
states what works, the evidence, limitations, learning, unresolved questions,
exact acceptance claim, and excluded adjacent actions. Approval closes only
that result. A simple standalone Result Acceptance may remain in conversation
and does not invoke Plannotator. When one complete result claim is clearly in
focus, an unambiguous ordinary-language acceptance is enough; partial,
multi-claim, and composed outcomes require the human to name the acceptance.
Persist the explanation only when a named future consumer needs it.

Use **Review Learning** when review history contains recurring patterns worth
understanding across sessions. It proposes scoped improvements from evidence;
it does not inject new instructions automatically.

## Callers and ownership

Plannotator is a shared agent-startable skill, not a passive plugin-wide
reference. A caller invokes it for one interaction and receives the reaction,
annotations, decision, fidelity limits, and reliable native reference when one
exists. The caller retains the question, governing meaning, record or artifact,
gate consequence, revision causality, authority, transition, and stopping.

### Direct callers

- **[Coordinate Initiative](../coordinate-initiative/README.md)** invokes
  Initiative Alignment and, when useful as a distinct durable judgment,
  Initiative Closure.
- **[Discover Requirements](../discover-requirements/README.md)** invokes
  Reaction Review for an already-existing faithful target, the optional facts
  surface, and Requirements Alignment.
- **[Interview](../interview/README.md)** invokes the bundled interview surface
  only for a small independent, already-grounded question set. Dependent
  consequential questions remain adaptive and conversational.
- **[Evolve](../evolve/README.md)** invokes Evolution Map Approval, Evolution
  Definition Approval, and applicable Evolution Acceptance.
- **[Define Issues](../define-issues/README.md)** invokes the optional facts
  surface and bounded Issue Approval gates.
- **[Plan](../plan/README.md)** invokes Plan Reaction Review and Implementation
  Plan Approval. Approval stops and grants no implementation authority.
- **[Deliver](../deliver/README.md)** invokes complete fixed-diff code review,
  a native Result Gate when its trigger is present, and a composed Evolution or
  Project outcome closure only when the complete result proves that exact claim.
  Simple standalone Result Acceptance remains in conversation under Deliver's
  ownership.
- **[Make Tangible](../make-tangible/README.md)** invokes Reaction Review only
  after constructing and verifying an artifact whose intended judgment
  Plannotator can preserve.
- **[Using Praxis](../using-praxis/README.md)** invokes only an explicit
  Plannotator-native utility that is itself the current concern, such as
  annotating the latest response or scoped Review Learning.

Only the skill that owns a Plannotator-native judgment calls Plannotator
directly.

### Indirect routes and non-callers

- [Orient](../orient/README.md), [Research](../research/README.md),
  [Design Solution](../design-solution/README.md),
  [Verify](../verify/README.md), [Prepare PR](../prepare-pr/README.md), and
  [Write Docs](../write-docs/README.md) invoke Make Tangible when something
  must be constructed or made perceptible. Make Tangible chooses Plannotator
  or the native medium and returns the reaction.
- [Formalize](../formalize/README.md) owns no gate. Evolve and Define Issues
  invoke the gates of the records they own.
- [Review](../review/README.md) returns adversarial findings, and
  [Pair](../pair/README.md) returns its integrated implementation result.
  Deliver owns human code review and Result Acceptance.
- [Setup](../setup/README.md) installs and characterizes the native CLI. It
  opens no interaction and does not invoke this skill.

Review Learning is an optional Plannotator path for scoped revision
trajectories. Any proposed instruction change returns to the owner of that
instruction and is adopted only through a reviewed diff.

## How an interaction works

Before opening Plannotator, state:

- the interaction kind;
- the exact target;
- what the requested judgment means; and
- what it does not authorize.

Invoke the native CLI and leave the browser session open until the human
submits, dismisses, or asks to stop. A quiet process usually means the human is
still reading; it is not a reason to open another copy.

Treat the returned annotations as a message to the owning loop. Interpret the
native result before doing anything else:

- `approved` without feedback accepts only the declared judgment;
- `approved` with feedback carries notes that are non-blocking by default;
- `annotated` or a plaintext feedback result requests that the owner address
  the returned reaction;
- `dismissed`, an empty closed session, or equivalent closure supplies no
  judgment and invokes no continuation; and
- command or transport failure leaves the interaction unpassed.

If an approval note actually changes the accepted meaning, explain the
conflict, revise the owner, and repeat its gate. Do not silently turn every
approval note into a change request, and do not ignore a meaning-changing note
because the transport labeled the result approved.

Approval binds the exact content shown. A material record revision repeats its
gate. Any implementation change after human code review repeats code review;
new test evidence alone does not when the reviewed diff is unchanged.

The approval returned by Plannotator is never Implementation Authorization.
The owning loop must receive a separate explicit human instruction before
ordinary reversible implementation; consequential actions still require their
exact action, target, and effect.

## Stable and mutable targets

A local record or captured snapshot can support a governing gate because its
reviewed revision can be identified. A mutable URL is useful for Reaction
Review but cannot carry a governing approval by name alone.

Several files may pass one folder gate when they form one coherent judgment.
Name every included record or Issue ID and exclude unrelated files. If the
collection becomes too large to judge honestly, use bounded batches without
inventing a collection record.

`plannotator last` is a conversational annotation convenience. It never acts as
a Record or Result Gate. A current result may remain in the conversation;
durable conclusions move into the record that owns their meaning only when a
named future consumer needs them.

## Artifacts and Make Tangible

Make Tangible decides what artifact will make a question perceptible, builds
it, verifies its intended medium, and defines the judgment its fidelity can
support. Plannotator presents that artifact when its supported surface remains
faithful and collects the reaction.

Plannotator does not own prototype construction, visual design, HTML patterns,
or artifact verification. When a live application, video, terminal, image, or
another native medium would lose essential behavior inside Plannotator, use
that medium directly and return the reaction normally.

When a caller needs a visual explainer, comparison, dashboard, PR explainer, or
Review Learning report that does not yet exist, it invokes Make Tangible before
calling Plannotator. Make Tangible constructs and verifies the surface;
Plannotator only presents the supplied target and returns reaction. This
direction prevents a Plannotator-to-Make-Tangible-to-Plannotator recursion.

## Bundled question surfaces

The native interview UI can present a small group of independent,
well-grounded questions efficiently. Questions whose answers change the next
question remain in Praxis's adaptive Interview skill, one at a time with
recommendations.

The native facts UI can help the human edit observable behaviors or acceptance
criteria before the complete owning record is gated. It creates no `Fact`
record and does not replace Requirements or Issue judgment.

Both commands use temporary JSON transport. Their useful answers return to the
owning loop; their working files do not join the durable record tree.

## Learning from reviews

Review Learning starts with an explicit Project, repository, time period, or
archive scope. It keeps unrelated work distinct and studies revision
trajectories—candidate, feedback, change, and later outcome—when native history
supports them.

Each proposed improvement shows the recurring pattern, examples, exceptions,
confidence, likely scope, and the instruction or convention that should own the
change. The likely scope may be current work, a Project convention, a personal
agent preference, or Praxis itself. The human decides what is adopted through
a reviewed diff.

For a large archive, the supervising agent may recommend bounded extraction
delegates to preserve main-thread context or reduce cost. The supervisor owns
the evidence schema, synthesis, recommendation, and human-facing result.

## Setup and direct commands

Praxis uses the native Plannotator CLI for selected interactions. Compatibility
is established from the commands, options, and structured results required by
the selected interaction, not from a minimum version number. A simple
standalone conversational Result Acceptance does not require this CLI.

Praxis drives the CLI explicitly. It installs no harness plugin, automatic
Stop hook, wrapper, or automatic context-improvement hook. Normal gates consume
structured JSON without `--require-approval`, because denial is a useful
collaboration result rather than a failed process. A result file is transient
fallback transport only when the host cannot retain stdout reliably.

If Plannotator is unavailable for a selected interaction, notify the human
with the exact failure and affected judgment, and recommend checking the
installation or invoking Setup to repair it. Stop at that interaction and
wait for the human's choice. No substitute surface or conversational response
counts as the Plannotator interaction or gate.

## Persistence

Plannotator's archive preserves native review history. Praxis keeps only the
current gate projection and reliable native reference when a future loop needs
them. It creates no separate feedback ledger, canonical hash, receipt graph, or
duplicate decision file.

The native CLI and its archive are the only external Plannotator surfaces
Praxis retains. The runtime package must implement the required capabilities
above from the accepted contracts in this design and Make Tangible. No external
agent skill package supplies missing Praxis behavior at runtime.

## It is working when

- The human knows exactly what each interaction asks them to judge.
- Approval accepts only the exact target and declared consequence.
- Feedback returns to the owner that can act on it.
- Approval notes that change meaning cause revision and another gate.
- A second browser session is never opened over an active one.
- Make Tangible owns artifacts while Plannotator owns their review surface.
- Plan-governed code is reviewed as the complete fixed diff.
- Review Learning proposes scoped improvements without silently adopting them.
- Native history provides continuity without duplicate project records.
- A failed required interaction stops at its boundary instead of manufacturing
  acceptance.

## Skill structure

Keep selection, declaration, native command execution, response
interpretation, ownership, and failure behavior in `SKILL.md`. Use focused
references and load only the one required by the current interaction:

- [Gates](references/gates.md)
- [Present Artifacts](references/present-artifacts.md)
- [Code Review](references/code-review.md)
- [Review Learning](references/review-learning.md)
- [Setup and Native Commands](references/setup.md)

These references design the selected interaction paths. Visual construction
belongs to Make Tangible, interaction transport belongs to Plannotator, and
Review Learning owns its specialized historical analysis.

## Direct dependencies

### Skills

- None.

Plannotator never invokes Make Tangible; callers construct and verify a missing
surface before invoking Plannotator.

### Shared references

- [Feedback and Evaluation](../../references/feedback-and-evaluation.md) —
  loaded only by Review Learning for longitudinal feedback and revision
  trajectories.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

Plannotator is model-invoked because owning skills call its native human
interaction paths and the human may request its direct utilities.

```yaml
---
name: plannotator
description: "Present one exact target through Plannotator. Use for an owner-selected native annotation, Plannotator gate, fixed-diff review interaction, Review Learning, or directly requested Plannotator utility."
---
```

```yaml
interface:
  display_name: "Plannotator"
  short_description: "Collect precise native human judgment"
  default_prompt: "Use $plannotator to present this exact target for native human judgment."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps path selection, exact target and consequence declaration, one
active session, native invocation, wait and recovery, response interpretation,
owner return, failure behavior, and stopping inline. An interaction completes
only with a structured decision, feedback, dismissal, closure, or an explicit
tool failure; non-approval is not a command failure.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Record or Result Gate | `references/gates.md` | A complete governing record, coherent collection, or result needs native judgment. | A simple standalone acceptance remains conversational. | Plannotator | [Gates](references/gates.md) | Plannotator | None. |
| Artifact or bundled surface | `references/artifacts.md` | Presenting a file, folder, text, HTML, URL, comparison, interview, or facts surface. | The latest-response utility needs only the inline native call. | Plannotator | [Present Artifacts](references/present-artifacts.md) | Plannotator | None. |
| Fixed implementation diff | `references/code-review.md` | Presenting the complete local diff or one named remote pull or merge request. | The target is not code review. | Plannotator | [Code Review](references/code-review.md) | Plannotator | None. |
| Longitudinal review learning | `references/review-learning.md` | The human requests history learning or recurring review patterns justify a bounded suggestion. | One current review contains no trajectory question. | Plannotator | [Review Learning](references/review-learning.md) | Plannotator | None. |
| Native CLI compatibility | `references/native-cli.md` | Checking command compatibility, recovering a failed interaction, or selecting the exact native command. | A characterized normal command is already known. | Plannotator | [Setup and Native Commands](references/setup.md) | Plannotator | None. |
| Evaluation trajectory | `../../references/evaluation.md` | Review Learning compares repeated feedback or revisions across sessions. | All non-learning interaction paths. | Cross-skill | [Feedback and Evaluation](../../references/feedback-and-evaluation.md) | Plannotator | None. |

References contain only their selected native path and never own caller gates,
authority, or next work. Plannotator invokes no skill. Its authorized effect is
opening and waiting on one native session plus reading scoped native archives;
it does not construct visual artifacts or write adopted instructions.

The package has no scripts, assets, fixtures, templates, or MCP dependency;
Setup owns native CLI readiness. Target files add the five named references to
the required package files.

`SPEC.md` adds cases for Reaction Review, Record Gate, local and remote code
review, simple conversational acceptance, Result Gate, bundled interview and
facts transport, active-session reuse, dismissal, denial, closure, command
failure, archive recovery, scoped Review Learning, incomplete archive evidence,
and approval without forward authority. No package decision remains unresolved.
