# Praxis context

Praxis context is curated working memory for recursive human–agent
collaboration. It preserves the accepted meaning, evidence, uncertainty,
learning, and authority boundaries that a later judgment genuinely needs. It
does not turn every conversation, attempt, or message into permanent state.

Source, tests, Git, tools, and observable behavior remain authoritative for
reconstructible implementation truth. Context preserves what those surfaces
cannot recover honestly by themselves: human intent, accepted Requirements,
provisional specifications, interpreted evidence, bounded authority,
consequential reactions, limitations, and causal learning.

## Persistence boundary

Praxis is offline-first. A repository normally keeps durable context beneath
its ignored `.praxis/` directory, and repository Setup establishes that ignore
rule before creating records. Create durable context only when one of these
reasons is real:

- a future owner or human gate needs governing meaning;
- the work must survive the current conversation;
- exact discovery behavior or a reaction surface must remain available;
- substantial research must survive compaction for a named consumer;
- current Delivery state cannot be reconstructed safely from its Plan, source,
  tests, Git, and native messages; or
- the requester explicitly asks for persistence.

Praxis also reads the released legacy record roots
`.agents/{initiatives,projects,issues,plans}` when no canonical counterpart
exists. A record present in both trees is a conflict, never an implicit
precedence rule. Setup may migrate those four roots only on an explicit human
request; plugin, skill, configuration, script, and unrelated `.agents/`
content remain outside that migration boundary.

Direct Work and short conversational inquiry may create nothing. Work may
begin with an Initiative, Project, Issue, Plan, or no durable record. Praxis
never invents a parent, bundle, file, or empty directory merely to satisfy a
preferred layout. Persistence follows the record kind and active Inquiry
policy. Substantial research persists automatically when that policy permits
it; governing meaning uses its own record and gate rules. Persistence improves
later context; it does not approve a
proposal, select a route, start an activity, or create mutation authority.

## Ownership and placement

The durable tree is owner-shaped and lazy:

```text
.praxis/
├── initiatives/<initiative>/
│   ├── brief.md
│   ├── references.md
│   ├── references/
│   ├── research/
│   ├── artifacts/
│   └── projects/<project>/...
├── projects/<project>/
│   ├── brief.md
│   ├── requirements.md
│   ├── unknowns.md
│   ├── references.md
│   ├── references/
│   ├── research/
│   ├── artifacts/
│   ├── evolutions/
│   ├── issues/
│   └── plans/
├── issues/i-<name>.md
└── plans/p-<name>.md
```

This is a set of possible ownership locations, not a tree to pre-create. Once
a durable Initiative or Project exists, `brief.md` is its only required file.
Other records and sidecars appear lazily when they contain meaningful content
and have a named consumer.

An Initiative may contain Projects structurally, while each Project retains
its own Requirements, Formalization, Delivery, gates, and stopping. Every
Evolution belongs to exactly one Project. Issues and Plans may belong to a
Project or remain standalone. A Project using direct Issues creates no
`evolutions/` directory.

When collaborative understanding changes ownership, move the complete record
or bundle and update affected links. Stable IDs survive path changes. A
filesystem move changes no authority and triggers no gate; changed meaning
follows the normal owning judgment.

The exact common envelope, body grammar, paths, movement, supersession, and
cleanup rules are in the [record foundations](../../references/records/foundations.md)
and the kind-specific [discovery](../../references/records/discovery.md),
[research findings](../../references/records/research.md),
[formalization](../../references/records/formalization.md), and
[delivery](../../references/records/delivery.md) references.

## Active Inquiry and four durable context categories

The active Inquiry is the transient envelope for the present question,
position, posture, accepted and provisional context, unresolved conditions,
effect and persistence policies, authority references, and closure condition.
Conversation and host compaction carry it. It is reconstructed from current
direction and durable evidence rather than written to a parallel state tree.

Records, artifacts, references, and messages remain distinct because they
support different judgments.

### Records

Records preserve governing meaning that a competent future human or agent must
understand. Examples include Initiative and Project Briefs, Requirements,
Unknowns Maps, Research Findings, Evolution Maps, Evolutions, Issues,
References indexes, and Implementation Plans.

A governing record is reader-ready current truth, not a transcript, activity
log, task tracker, or frozen conversation. A Research Findings record is the
narrow exception for substantial factual work: it preserves evidence,
counterevidence, limitations, and provisional implications without becoming
accepted product meaning. Every record explains its concern in ordinary
product, domain, and engineering language, links broader governing truth
instead of copying it, and preserves only the causal context needed to judge
or continue the work.

Every structured record uses a minimal machine-readable envelope for identity,
revision, governing dependencies, meaning state, ownership, and the gate,
disposition, or authority projections that genuinely apply. Gates bind the
exact content revision they judged. The Markdown body owns meaning. Meaning,
gate state, disposition, and authority remain independent; they are never
compressed into one generic status. The
[record references](../../references/records/foundations.md) define exact
envelopes and the family references define each body and lifecycle.

### Artifacts

Artifacts are native things made perceptible for inspection, comparison,
manipulation, experience, explanation, or reaction. They may be HTML
prototypes, diagrams, images, screenshots, videos, demonstrations, experiment
harnesses and results, working code, or another medium suited to the question.

An artifact is defined by the judgment it enables, not by its file type. Keep
the native form and fidelity needed for that judgment. Its existence never
makes it governing truth. Human reaction and environmental evidence stay bound
to the exact version and conditions judged, then return to the owner that can
interpret what they change. The skill that constructs an artifact owns its
provenance, fidelity, verification, reaction export, storage, and retention
contract when that capability is present.

### References

References are existing or external inputs such as source repositories, code
paths, products, screenshots, papers, documentation, or observed behavior.
Preserve not only the source but also:

- its exact version, commit, date, path, or conditions when relevant;
- what should be inspected;
- what the requester values, rejects, or wants compared;
- what governing judgment it informs; and
- its limitations or remaining uncertainty.

The structured `references.md` index interprets current relevance. Retain
source bytes in `references/` only when their exact or unstable form has a
named future consumer. A link alone is not an interpreted Reference, and a
Reference never becomes governing truth merely because it was authoritative
elsewhere.

### Messages

Messages are native conversational or supervisor–agent communication carrying
the smallest relevant intent, truth, evidence, question, result, learning, or
authority-source pointer another owner needs.

They are communication unless a durable owner needs their meaning. A new record
type requires a distinct purpose, consumer, lifecycle, and authority boundary.
A message never transfers authority. A receiving agent independently establishes any still-
current human grant and implementation boundary, exact approved Plan when one
governs, valid ancestors, route, and latest human direction before mutation.

## Learning return and promotion

A supporting or child result returns a compact Learning envelope: origin and
receiving Inquiry, observation, evidence, confidence and limits,
contradiction, affected meaning, proposed consequence, and unresolved
conditions. The requester judges changes to product or shared meaning; an
agent does not turn a research inference into accepted truth.

Substantial research persists without separate permission for every write when
the Inquiry's persistence policy permits it. Its Research Finding preserves
source talking points, observed behavior, findings and inferences, research
learnings, contradictions and limits, provisional implications, and the named
consumer. This is durable evidence, not promotion.

Most feedback corrects the current candidate and remains conversational.
Promote learning only when a named later judgment needs it. Promotion
translates supported meaning into the narrowest record that owns it:

- changed need, constraint, preference, or problem truth enters Requirements;
- changed progressive strategy enters the Evolution Map;
- changed high-level advancement enters the selected Evolution;
- changed detailed behavior or proof enters the affected Issue;
- changed implementation boundary or authority enters the current Plan; and
- shared strategic learning enters the Initiative only when it genuinely
  governs multiple Projects.

Raw selections, comments, test outcomes, prototype reactions, and agent
findings remain evidence until their causal meaning is interpreted. Preserve
material disagreement and feedback kind when a future owner could otherwise
mistake preference for proof, critique for acceptance, or passing checks for
authority.

Broader promotion needs evidence that the learning applies beyond the current
candidate and a named future consumer. Any additional record type requires a
distinct purpose, consumer, lifecycle, and authority boundary.

## Revision across accepted boundaries

Working records and artifacts may change according to their record-kind and
Inquiry persistence policies. When a revision or artifact reaction changes
accepted meaning, return that meaning to the exact causal record, repeat the
affected gate, and mark only meaning-dependent descendants stale. Independent
evidence and records remain current; authority derived from changed meaning is
withdrawn. An artifact itself
never passes a record gate or receives authority.

## Record lifecycle

Semantic refinement preserves stable identity. Splitting, merging, replacing,
or changing identity creates new IDs and retains only the minimal supersession
relationship a current consumer needs. Praxis preserves current meaning
rather than an append-only document history.

A record's gate projection, disposition, and authority are independent. A
record may be `open`, `paused`, `closed`, or `superseded` without that state
granting an adjacent activity or effect. Retain a current or completed record
only while a named consumer needs its governing meaning, authority,
limitations, or learning. Never remove current governing truth while a live
descendant depends on it. Remove superseded drafts and reconstructible
narration after their useful truth and any necessary supersession pointer have
moved to the current owner.

## Artifact lifetime

Artifacts begin as disposable working outputs. Revise freely before
consequential reaction; freeze the exact judged version afterward. Retain an
artifact only while a named consumer needs its exact behavior, evidence,
comparison, or reaction—not merely because its interpreted meaning remains
important.

An artifact's path expresses current ownership, not stable identity. It
receives no record envelope, gate, authority, or disposition. Once accepted
meaning has moved to its owning record and no consumer needs the exact native
form, remove it. The artifact-owning capability carries the detailed
construction, fidelity, verification, versioning, reaction, return, storage,
and cleanup rules.

## Reference lifetime

Retain an interpreted Reference while a named judgment needs its source,
version, interpretation, or limitations. Revalidate consequential volatile
sources before dependent judgment. Keep source bytes only when their exact or
unstable form has a future consumer; otherwise retain the durable
interpretation and a resolvable pointer. Do not create an active/deprecated
source archive or preserve older versions without a current purpose.

## Envelope and checkpoint lifetime

Native messages are ephemeral communication, not durable context. Promote only
the meaning a later owner needs. Preserve a temporary checkpoint during active
Delivery only when its current implementation boundary, source, tests, Git,
and ordinary messages
cannot reconstruct the current safe state honestly; remove it after the state
is reconstructed or its lasting truth is promoted.

## Active delivery continuity

During substantial Delivery, temporary notes may preserve meaningful
deviations, evidence, and unresolved learning needed for the current result.
They are execution memory, not governing records.

Before a foreseeable context reset or handoff, create a compact temporary
checkpoint only when the active state cannot be reconstructed honestly from
the current implementation boundary, any governing Plan, source, tests, Git,
and native messages. It may preserve:

- the intended bounded result;
- the current approach;
- verified completed work;
- the current failure or unresolved deviation;
- the last safe point; and
- the next bounded action with exact evidence pointers.

The checkpoint grants no authority and never becomes a global lifecycle
projection. Promote changed governing meaning before Result Acceptance and
discard the remaining checkpoint when no active consumer needs it.

## Reading context progressively

Start from the requester's current request and repository state. Read the nearest
owner and only the ancestors, accepted evidence, artifacts, references, or
current Plan needed for the question.

Do not load an entire Initiative, Project, artifact collection, decision
history, or plan archive merely because it exists. Expand context only when a
concrete ambiguity, dependency, authority boundary, or judgment requires it.
The purpose of persistence is to make the right context discoverable, not to
maximize how much context an agent consumes.

When resuming, reconstruct the active Inquiry, accepted meaning, exact Plan and
ancestors, latest human direction, current authority, and current
state from the smallest sufficient context. Native messages can point to
sources but cannot substitute for that reconstruction. If the state cannot be
reconstructed honestly, preserve only the compact Delivery checkpoint needed
to make the next safe judgment, then remove it once reconstruction or
promotion is complete.

Context never chooses the next position or silently reactivates work. The agent
uses the [working-form model](work.md) and [control rules](control.md) to
recommend a proportionate next judgment, obtain any required human choice, and
stop at its boundary.
