# Praxis Context

> **Status: accepted core context model.** Exact record envelopes and bodies
> belong to the shared Records reference; skill-local procedures decide when
> their owning context should change.

Praxis treats context as curated working memory for recursive human-agent
collaboration. It preserves the accepted meaning, evidence, uncertainty,
learning, and authority boundaries that a later judgment genuinely needs
without turning every conversation or attempt into permanent state.

Source, tests, Git, tools, and observable behavior remain authoritative for
reconstructible implementation truth. Praxis context preserves what those
surfaces cannot recover honestly by themselves: human intent, accepted
Requirements, provisional specifications, interpreted evidence, bounded
authority, consequential reactions, limitations, and causal learning.

## Persistence boundary

Praxis is offline-first. A normal repository stores durable Praxis context
under an ignored `/.agents/` directory. Setup establishes that ignore rule
before creating records. This dotfiles repository is an explicit exception
because its tracked `.agents/` tree is source for agent configuration and the
eventual plugin.

Create durable context only when:

- a future owner or human gate needs governing meaning;
- work must survive the current conversation;
- the exact behavior or reaction surface of discovery material must remain
  available;
- current Delivery state cannot be reconstructed safely from its Plan, source,
  tests, Git, and native messages; or
- the human explicitly asks for persistence.

Direct Work and short conversational inquiry may create nothing. Praxis may
begin with an Initiative, Project, Issue, Plan, or no durable record. It never
invents a parent, bundle, file, or empty directory merely to satisfy a
preferred layout.

Persistence improves later context; it does not grant approval, select a route,
start an activity, or create mutation authority.

## Ownership and placement

Durable context follows the smallest current human-meaningful owner:

```text
.agents/
├── initiatives/<initiative>/
│   ├── brief.md
│   ├── references.md
│   ├── references/
│   ├── artifacts/
│   └── projects/<project>/...
├── projects/<project>/
│   ├── brief.md
│   ├── requirements.md
│   ├── unknowns.md
│   ├── references.md
│   ├── references/
│   ├── artifacts/
│   ├── evolutions/
│   ├── issues/
│   └── plans/
├── issues/i-<name>.md
└── plans/p-<name>.md
```

This tree shows possible ownership, not directories to pre-create. Once a
durable Initiative or Project exists, `brief.md` is its only required file.
Every other record or sidecar appears lazily when it has meaningful content and
a real consumer.

An Initiative may structurally contain Projects while every Project retains
its own Requirements, Formalization, Delivery, gates, and stopping. Evolutions
always belong to one Project. Issues and Plans may belong to a Project or
remain standalone. A Project using direct Issues creates no `evolutions/`
directory.

When collaborative understanding changes ownership, move the complete record
or bundle and update affected links. Stable IDs survive path changes.
Filesystem movement alone grants no authority and triggers no gate; changed
meaning follows the normal owning judgment.

## Four context categories

Praxis keeps records, artifacts, references, and envelopes distinct because
they support different judgments.

### Records

Records preserve governing meaning a competent future human or agent must
understand. Examples include Initiative and Project Briefs, Requirements,
Unknowns Maps, Evolution Maps, Evolutions, Issues, References indexes, and
Implementation Plans.

A record is reader-ready current truth, not a transcript, activity log,
research diary, task tracker, or frozen conversation. It explains its concern
in ordinary product, domain, and engineering language, links broader governing
truth instead of copying it, and preserves only the causal context needed to
judge or continue its work.

Every structured record uses a minimal machine-readable envelope for identity,
ownership, and the gate, disposition, or authority projections that genuinely
apply. The Markdown body owns meaning. Gate state, disposition, and authority
remain independent; they are never compressed into one generic status.

The shared [Records reference](../references/records/README.md) defines exact
envelopes, headings, paths, and lifecycle rules for each record kind.

### Artifacts

Artifacts are native things made perceptible for inspection, comparison,
manipulation, experience, explanation, or reaction. They may be HTML
prototypes, diagrams, images, screenshots, videos, demonstrations, experiment
harnesses and results, working code, or another medium suited to the question.

An artifact is defined by the judgment it enables, not by file type. It keeps
the native form and fidelity needed for that judgment. Its existence never
makes it governing truth. Human reaction and environmental evidence remain
bound to the exact version and conditions judged, then return to the owner that
can interpret what they change.

Make Tangible's
[Artifact Contract and Lifetime](../skills/make-tangible/references/artifact-lifetime.md)
defines provenance, fidelity, verification, reaction export, storage, and
retention.

### References

References are existing or external inputs such as source repositories,
code paths, products, screenshots, papers, documentation, or observed
behavior. Praxis preserves not only the source but also:

- its exact version, commit, date, path, or conditions when relevant;
- what should be inspected;
- what the human values, rejects, or wants compared;
- what governing judgment it informs; and
- its limitations or remaining uncertainty.

The structured `references.md` index interprets current relevance. Retained
source bytes remain native under `references/` only when their exact or
unstable form has a named future consumer. A link alone is not an interpreted
Reference, and a Reference never becomes governing truth merely because it was
authoritative elsewhere.

### Envelopes

Envelopes are native conversational or supervisor-agent messages carrying the
smallest relevant intent, truth, evidence, question, result, learning, or
authority-source pointer another owner needs.

They are communication, not another durable file kind. Praxis creates no
message directory, handoff ledger, or transcript archive. A message never
transfers authority. A receiving agent must independently establish any
still-current human grant, exact approved Plan, valid ancestors, route, and
latest human direction before mutation.

## Promotion and learning

Most feedback corrects the current candidate and remains conversational.
Promote learning only when a named later judgment needs it.

Promotion means translating the supported meaning into the narrowest record
that owns it:

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

Praxis does not create scalar reward histories, reflection diaries, complete
trajectories, or generalized “lessons learned” files. Broader promotion
requires evidence that the learning really applies beyond the current
candidate.

## Revision across accepted boundaries

Working records and artifacts may change freely inside their owning loop.
When a revision or artifact reaction changes accepted meaning, return that
meaning to the exact causal owner, repeat the affected record gate, and
invalidate dependent authority as defined by [Control](control.md). An artifact
itself never passes a record gate or receives authority.

## Record lifecycle

Semantic refinement preserves stable identity. Splitting, merging, replacing,
or changing identity creates new IDs and retains only the minimal supersession
relationship a current consumer needs. Praxis preserves current meaning rather
than an append-only document history.

A record's gate projection, disposition, and authority are independent. A
record may be `open`, `paused`, `closed`, or `superseded` without that state
granting an adjacent activity or effect. Retain a current or completed record
only while a named consumer needs its governing meaning, authority,
limitations, or learning. Never remove current governing truth while a live
descendant depends on it. Remove superseded drafts and reconstructible
narration after their useful truth and any necessary supersession pointer have
moved to the current owner.

Exact envelopes, kind-specific bodies, disposition, movement, supersession,
and cleanup rules live in [Records](../references/records/README.md).

## Artifact lifetime

Artifacts begin as disposable working outputs. Revise freely before
consequential reaction; freeze the exact judged version afterward. Retain an
artifact only while a named consumer needs its exact behavior, evidence,
comparison, or reaction—not merely because its interpreted meaning remains
important. Its path expresses current ownership rather than stable identity,
and it receives no record envelope, gate, authority, or disposition. Once the
accepted meaning has moved to its owning record and no consumer needs the exact
native form, remove it.

Exact artifact construction, fidelity, verification, versioning, reaction,
return, storage, and cleanup live with Make Tangible's
[Artifact Contract and Lifetime](../skills/make-tangible/references/artifact-lifetime.md).

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
Delivery only when approved plans, source, tests, Git, and ordinary messages
cannot reconstruct the current safe state honestly; remove it after the state
is reconstructed or its lasting truth is promoted.

## Active Delivery continuity

During substantial Delivery, temporary notes may preserve meaningful
deviations, evidence, and unresolved learning needed for the current result.
They are execution memory, not governing records.

Before a foreseeable context reset or handoff, create a compact temporary
checkpoint only when the active state cannot be reconstructed honestly from
the approved Plan, source, tests, Git, and native messages. It may preserve:

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

Start from the human's current request and repository state. Read the nearest
owner and only the ancestors, accepted evidence, artifacts, references, or
current Plan needed for its question.

Do not load an entire Initiative, Project, artifact collection, decision
history, or plan archive merely because it exists. Expand context only when a
concrete ambiguity, dependency, authority boundary, or judgment requires it.

The purpose of persistence is to make the right context discoverable, not to
maximize how much context an agent consumes.
