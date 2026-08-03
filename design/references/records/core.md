# Records: Core

> **Status: accepted semantic source; target runtime projection:
> `references/records/foundations.md`.**

Use this reference with the focused record reference for the current owning
phase.

## In this reference

- [Persistence boundary](#persistence-boundary)
- [Category boundaries](#keep-four-categories-distinct)
- [Common record envelope](#common-record-envelope)
- [Reader-ready body grammar](#reader-ready-body-grammar)
- [Movement, supersession, and cleanup](#movement-supersession-and-cleanup)

## Persistence boundary

Praxis is offline-first. A normal repository stores durable state under an
ignored `/.agents/` directory. Create a record only when:

- a later owner or gate needs governing truth;
- work must survive the current conversation;
- exact discovery material must remain available; or
- the human explicitly asks for durability.

Direct Work and short discovery may create nothing. Work may begin with an
Initiative, Project, Issue, Plan, or no record. Never invent a parent or empty
directory merely to satisfy a layout.

Create files lazily beneath their current human-meaningful owner:

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
│   │   ├── map.md
│   │   └── e1-<name>.md
│   ├── issues/i1-<name>.md
│   └── plans/p1-<name>.md
├── issues/i-<name>.md
└── plans/p-<name>.md
```

`brief.md` is the only required file once a durable Initiative or Project
bundle exists. A Project using direct Issues creates no `evolutions/`
directory. Top-level Projects, Issues, and Plans have no accepted parent.

When ownership changes, move the complete record or bundle and update affected
links. Stable IDs survive path changes. Filesystem reorganization alone grants
no authority and triggers no gate.

## Keep four categories distinct

- **Records** preserve meaning later loops must understand.
- **Artifacts** are native things to inspect, view, run, compare, or react to.
- **References** are external inputs interpreted through `references.md`.
- **Envelopes** are native messages carrying intent, truth, evidence,
  authority pointers, results, or learning.

Requirements, Unknowns Maps, Evolution Maps, Evolutions, Issues, Plans,
interview transcripts, research prose, and generic notes are not artifacts.
Putting a file under `artifacts/` never makes it governing truth.

Artifacts retain their native format. Make Tangible owns their construction,
fidelity, versioning, reaction, storage, retention, and disposal. Envelopes
remain communication; create no message directory. Promote only the necessary
meaning from either category into its owning record.

## Common record envelope

Every structured record begins with minimal YAML frontmatter:

- `kind` is required;
- `id` is required only for independently referenced or movable records; and
- `parent` identifies structural ownership when one exists.

Project-owned singletons such as `requirements.md`, `unknowns.md`, and
`evolutions/map.md` derive identity from `parent + kind`. Omit inapplicable
metadata rather than adding empty placeholders.

Keep these independent:

- `gates` project current human judgments on complete record revisions;
- `disposition` is `open`, `paused`, `closed`, or `superseded`; and
- `authority` is `awaiting`, `active`, or `exhausted` and appears only on the
  current Implementation Plan.

Each gate entry records its state, declared provisional consequence, and last
reliably identified accepted Plannotator reference. It is a current projection,
not an approval history. Material revision returns the judgment to pending.
When no reliable baseline exists, record `accepted_reference: unavailable` and
present the complete record rather than inventing a receipt.

Header metadata, messages, handoffs, and delegate briefs never become
authority. Mutation requires the still-current human instruction, exact
approved Plan, valid ancestors, route, and latest direction.

## Reader-ready body grammar

Write for a competent future reader who was not present in the conversation.
Use ordinary product, domain, and engineering language.

- One H1 names the record.
- Ordered H2 headings carry the kind-specific semantic sections.
- H3 headings identify repeated entries or useful local subdivisions.
- Bold labels carry short scalar facts.
- Normal prose and lists explain meaning.

Omit optional sections with no content. Never add placeholder headings, body
YAML, unrelated tables, conversation transcripts, or workflow narration.

## Movement, supersession, and cleanup

Semantic refinement keeps stable IDs. Splitting, merging, or changing identity
creates new IDs and leaves minimal supersession links while current consumers
need them.

Working records may change freely inside their owning loop. Material change
across an accepted transition returns to the earliest causal owner, repeats the
exact affected gate, and invalidates descendant authority. A consuming skill
that needs the broader return procedure declares and loads Learning and Return
directly; this record contract does not load it transitively.

Temporary implementation notes may exist during substantial Delivery. Before
acceptance, promote lasting truth into the causal record or evidence reference
and remove reconstructible narration.

Retain an open or completed record only while a named consumer needs its
governing meaning, accepted basis, authority, limitations, or learning. Never
remove current governing truth while a live descendant depends on it. Closed
does not mean archived forever, and superseded does not mean delete immediately:
keep only the current record and the minimal supersession pointer still needed
for honest reconstruction.
