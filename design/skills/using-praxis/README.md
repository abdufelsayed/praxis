# Using Praxis

> **Design document — not a runtime skill.** The accepted behavioral contract
> and target package design remain here; runtime assembly status is tracked in
> [Praxis Status](../../STATUS.md).

## What it does

Using Praxis is a thin router. It identifies the smallest relevant Praxis owner
or recognizes ordinary Direct Work, transfers only the context that owner
needs, and then gets out of the way.

Its leading idea is **route one concrete question without creating a global
workflow**. It never becomes the parent of Requirements Discovery,
Formalization, Delivery, or the smaller capabilities they compose.

## When to reach for it

Use the router when:

- the human explicitly asks to use Praxis;
- ownership is genuinely ambiguous; or
- existing Praxis context is materially relevant to the current request.

The presence of `/.agents/` alone is not a trigger. A clear typo, contained
edit, explanation, or ordinary bounded request remains normal agent behavior
unless governing Praxis truth actually changes its meaning.

## Begin with the current request

Understand the human's concrete intent, whether the request authorizes mutation
or asks only for analysis, the repository currently in scope, and the decision
or result the human needs next.

Do not begin by placing the work in a lifecycle stage. Praxis is a network of
owning loops, and the current question determines ownership:

- consequential uncertainty about needs or constraints belongs to
  [Discover Requirements](../discover-requirements/README.md);
- translation of accepted truth into an implementation-ready Issue shape
  belongs to [Formalize](../formalize/README.md), whether or not a Project
  exists;
- a direct request to plan accepted work enters [Plan](../plan/README.md) while
  establishing or resuming the planning portion of one
  [Deliver](../deliver/README.md) loop;
- implementation and result acceptance for one approved Plan belong to
  [Deliver](../deliver/README.md), whether or not an Issue or Project exists;
- a clear contained ordinary reversible local edit may remain Direct Work;
- a smaller capability such as [Research](../research/README.md),
  [Interview](../interview/README.md),
  [Make Tangible](../make-tangible/README.md),
  [Design Solution](../design-solution/README.md),
  [Debug](../debug/README.md), [Review](../review/README.md), or
  [Verify](../verify/README.md), or [Security](../security/README.md) may own
  one bounded local question.

When learning shows that an earlier accepted source is wrong, route to the
earliest owner whose truth must change rather than preserving the apparent
current stage or restarting the whole system.

## Load durable context progressively

Start with current intent and repository state. Read only enough nearby durable
navigation to identify likely ownership, whether that is an Initiative,
Project, standalone Issue, or standalone Plan, then load the governing record
and the ancestors or evidence that actually exist and are needed by that owner.

Do not ingest every Project, prototype, reference, Evolution, Issue, or old Plan
because it exists. Expand context only when the routing decision or receiving
owner requires it. Current source and observed behavior remain authoritative
for reconstructible implementation truth; Praxis records govern accepted
intent, specification, authority, uncertainty, and learning.

If several Projects or owners remain materially plausible, explain the exact
ambiguity and ask one focused question. Do not guess or replace the question
with a dump of Praxis taxonomy.

## Recommend one concrete path

State:

1. the concrete understanding of the request;
2. the recommended owner or Direct Work path;
3. why that path fits the present uncertainty, consequence, and existing
   context; and
4. what will happen immediately if that path begins.

Recommend one path rather than presenting every available capability. Mention
an alternative only when it is genuinely plausible and would materially change
the work. Speak in the Project's terms, not as a lesson about the framework.

Recommendations are the agent's navigation duty. They are not permission
requests, workflow invocation, approval, or effect authority. Whether the
agent proceeds or waits depends on the boundary below, not on the fact that it
made a recommendation.

## Navigate workflow entry without conflating authority

Inside an active workflow, internal transitions and automatic supporting
capabilities do not require a new human invocation. When an agent-startable
local capability has a clear trigger, explain the route briefly and invoke it
proportionately.
[Discover Requirements](../discover-requirements/README.md) may begin for a
consequential unknown; [Refactor](../refactor/README.md) may relieve a concrete
structural pressure; [Review](../review/README.md) may inspect a fixed target;
[Verify](../verify/README.md) may test a bounded claim.

When the recommended path is a human-selected forward activity—
[Formalize](../formalize/README.md), [Evolve](../evolve/README.md),
[Define Issues](../define-issues/README.md), or
[Deliver](../deliver/README.md)—or strategic coordination through
[Coordinate Initiative](../coordinate-initiative/README.md)—present it and
wait for the human's ordinary-language choice. The agent should recommend the
transition clearly enough that the human does not need to know Praxis's graph
or skill names.

Explicitly invoked workflows—[Setup](../setup/README.md),
[Commit](../commit/README.md), [Prepare PR](../prepare-pr/README.md), and
[Write Docs](../write-docs/README.md)—begin only after a clear human request,
except that already-authorized Delivery may call Write Docs when its accepted
Plan explicitly includes required documentation. The agent may recommend any
of these workflows, but that recommendation does not start one. The human's
request may use ordinary language; behavioral explicit invocation is not a
literal skill command or an OpenAI-host metadata setting. An explicit setup
request routes to Setup; Setup does not run merely because Praxis is present.

[Pair](../pair/README.md) is a human-initiated interaction posture, not a
workflow or route the agent recommends. Enter Pair only when the human directly
asks to collaborate that way during implementation of an approved Plan. Do not
infer Pair from conversational behavior.

[Orient](../orient/README.md) is a human-selected supporting capability, not a
route or posture. An owner may recommend one bounded orientation when a
nontrivial mental model would materially improve the human's participation in
its current judgment. State what would be clarified, why it matters, the scope
and likely medium, and what happens if accepted. Begin only after the human
agrees; respect refusal and continue with the caller's ordinary concise
explanation. A direct human request may also begin Orient.

When a selected capability cannot use the required Plannotator interface, its
owning loop notifies the human and recommends Setup. When a Security audit
needs Docker for disposable isolation, Security owns the runtime recommendation
to the human; Setup owns readiness and any installation or repair after the
human chooses it. The caller still owns whether the missing capability blocks
its judgment.

Routing never converts an earlier record approval into the next activity,
mutation authority, or external authority. The human may approve a record and
explicitly name the next collaborative activity in the same message; that
separate choice, not approval, starts it. Plan Approval and Implementation
Authorization remain separate acts, and a single human message may contain
both only when each is explicit. A clear bounded mutation request may already
authorize obvious ordinary reversible local Direct Work; an analysis-only
request authorizes no edit. If Check Safety triggers, recommend a standalone
Plan instead of mutating through Direct Work.

Workflow entry, supporting-path selection, posture entry, and effect authority
remain independent.
Entering Formalize, Deliver, Setup, Commit, Prepare PR, or Write Docs grants
only the entry or effect clearly contained in the human's request and the
skill's contract. Entering Pair selects only that interaction posture;
accepting Orient selects only the bounded teaching interaction. When a mutation
or external effect is not already covered, ask separately for its exact action,
target, and effect.

## Resume from truth, not lifecycle assumptions

When resuming existing Praxis work, reconstruct:

- the current owning question;
- accepted versus draft records;
- the latest working result and proof;
- unresolved learning or limitations;
- any active-Delivery checkpoint carrying otherwise unreconstructible current
  failure or partial execution state;
- the exact activity that stopped; and
- any human choice or authority still required.

Use durable truth and current repository state rather than relying on a stale
conversation or the presence of a file. An approved Plan does not prove that
Implementation Authorization occurred. A Map does not prove that an Evolution
was selected. A completed Plan does not begin the next one.

Explain the stopping point and recommend the next action. If ambiguity could
release a forward activity, mutation, or external consequence, ask one focused
question before routing. A later reply such as “continue” may confirm one
already-named, non-consequential activity when no competing route is plausible;
otherwise ask the human to choose the route.

## Transfer and exit

Pass the receiving owner only the intent, governing truth, evidence,
authority-source pointer, and unresolved question it needs. The message never
transfers authority. Once one owner or Direct Work is identified:

- invoke the agent-startable local capability; or
- present the human-selected path and wait; or
- return control to ordinary Direct Work.

Then stop routing. Do not monitor the owner, wrap every smaller capability,
receive every later message, or preserve a global Praxis state machine. A
later genuine ownership ambiguity may invoke Using Praxis again as a fresh
question.

Using Praxis creates no routing record, lifecycle receipt, or permanent
session record.

## It is working when

- Obvious work does not inherit Praxis ceremony.
- Material existing context is neither ignored nor loaded wholesale.
- One concrete path is recommended in the Project's language.
- Local capabilities proceed while human-selected forward work waits.
- Resumption preserves every still-required gate and authority boundary.
- The receiving owner gets enough context without inheriting the router.
- Routing ends after one handoff and creates no global lifecycle.

## Skill structure

Keep activation, minimal context loading, ownership tests, recommendation
shape, invocation policy, resumption, transfer, and immediate exit in
`SKILL.md`. Using Praxis needs no skill-local reference.

Invoke [Plannotator](../plannotator/README.md) directly only when the selected
owner's native Reaction Review, Record Gate, code review, Result Gate, bundled
question surface, or scoped Review Learning interaction is itself the current
human concern. Otherwise route to the owning skill and exit; that owner invokes
Plannotator when needed. Using Praxis does not load Plannotator as a reference,
reproduce its procedure, retain its session, or become the owner of the
judgment.

Load only the exact plugin-wide reference required by the current routing
question:

- Learning and Return for causal messages and authority non-transfer;
- Records for locating and resuming the exact durable owner.

These references inform one bounded question. They do not re-explain another
skill, hide ownership or authority, or turn Using Praxis into a runtime kernel.
Review, Verify, and Delivery retain assurance composition directly; there is no
shared Assurance reference.

## Direct dependencies

### Skills

- [Discover Requirements](../discover-requirements/README.md) — begin one
  consequential unknown-finding inquiry; transfer the current context and
  exit; Discover Requirements owns synthesis and Alignment.
- [Research](../research/README.md) — resolve one bounded factual question;
  receive its evidence and exit; Research owns investigation and stopping.
- [Interview](../interview/README.md) — resolve one human-owned judgment;
  receive its scoped answer and exit; Interview owns question order.
- [Make Tangible](../make-tangible/README.md) — construct and verify one needed
  reaction surface; receive its artifact and reaction and exit; Make Tangible
  owns fidelity and lifetime.
- [Design Solution](../design-solution/README.md) — resolve one consequential
  solution comparison; receive its reasoned shape and exit; Design Solution
  owns the comparison.
- [Debug](../debug/README.md) — diagnose one unexpected behavior; receive its
  causal result and exit; Debug owns diagnosis.
- [Refactor](../refactor/README.md) — relieve one concrete structural pressure;
  receive its preservation result and exit; Refactor owns transformation.
- [Review](../review/README.md) — inspect one fixed target; receive findings and
  exit; Review owns adversarial judgment.
- [Verify](../verify/README.md) — prove one bounded claim; receive its evidence
  status and exit; Verify owns the proof procedure.
- [Security](../security/README.md) — investigate one attacker-focused
  question; receive validated findings and exit; Security owns threat
  reasoning and coverage.
- [Plannotator](../plannotator/README.md) — invoke only when an explicit
  Plannotator-native utility such as annotating the latest response or scoped
  Review Learning is itself the current concern; return its reaction and exit.

Human-selected forward owners and optional workflows are recommendations, not
direct calls and not dependencies merely because Using Praxis can route to
them. Pair is not a recommendation and begins only by direct human request.
Orient may be recommended as bounded supporting work but begins only after the
human agrees.

### Shared references

- [Learning and Return](../../references/learning-and-return.md) — reconstruct
  the exact causal owner and preserve authority non-transfer.
- [Records](../../references/records/README.md) — select only the owning record
  path required to locate or resume current work.

## Target runtime package


### Invocation and host projection

Using Praxis is model-invoked because it must notice ambiguous ownership and
material existing Praxis context without requiring the human to remember an
internal capability name.

```yaml
---
name: using-praxis
description: "Route one concrete request to Direct Work or its smallest Praxis owner. Use for explicit Praxis requests, genuine ownership ambiguity, or existing Praxis state whose owner affects the request; obvious contained work stays Direct Work."
---
```

```yaml
interface:
  display_name: "Using Praxis"
  short_description: "Route one request to the right Praxis owner"
  default_prompt: "Use $using-praxis to route this request to its smallest owner."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps request interpretation, minimal context loading, ownership
tests, Direct Work, agent-startable calls, human-selected recommendations,
resumption, transfer, and immediate exit inline. Routing completes when exactly
one owner or ordinary-work path has the necessary context and the router is no
longer active.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Causal resumption | `../../references/learning-return.md` | Existing learning or invalidated truth makes the current owner unclear. | A fresh request has an obvious owner. | Cross-skill | [Learning and Return](../../references/learning-and-return.md) | Using Praxis | None. |
| Durable record navigation | `references/record-navigation.md` | The agent must locate the current owner or resumable record without revising its schema. | Conversation already identifies current truth. | Using Praxis | [Records](../../references/records/README.md) and [Records Core](../../references/records/core.md) | Using Praxis | None. |

The local navigator contains only record kinds, canonical locations, parent
relationships, and current-position cues; record authoring and lifecycle stay
in shared record references. The existing Direct dependencies section is the
accepted call contract.

Using Praxis is read-only and creates no record, artifact, route receipt,
wrapper, or persistent session. It has no scripts, assets, fixtures, templates,
or required integration. Target files are `SKILL.md`, `SPEC.md`,
`agents/openai.yaml`, and `references/record-navigation.md`.

`SPEC.md` adds cases for obvious Direct Work, explicit Praxis use, ambiguous
ownership, material existing context, minimal record loading, agent-startable
support, human-selected forward work, explicitly invoked repository work,
Pair's direct-request boundary, Orient's accepted suggestion, resumption after
invalidated authority, and one-transfer exit. No package decision remains
unresolved.
