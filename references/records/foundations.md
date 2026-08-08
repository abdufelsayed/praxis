# Record Foundations

Records preserve governing meaning for a later loop. They are neither workflow
logs nor archives of every message.

## Persist only durable meaning

Praxis is offline-first. Durable state lives under the repository's ignored
`.praxis/` directory. Create a record only when a later owner or gate needs its
governing truth, work must survive the originating exchange, exact discovery
material must remain available, or explicit direction requires durability.

Work may start with an Initiative, Project, Issue, Plan, or no record. Parents,
briefs, and directories belong only to a durable owner or bundle. Direct Work
and short discovery may create nothing. A durable Initiative or Project bundle
requires `brief.md`; a Project using direct Issues does not need `evolutions/`.
Top-level Projects, Issues, and Plans may stand alone.

Canonical locations are owner-shaped and lazy:

```text
.praxis/
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
│   ├── evolutions/map.md
│   ├── evolutions/eN-<name>.md
│   ├── issues/iN-<name>.md
│   └── plans/pN-<name>.md
├── issues/i-<name>.md
└── plans/p-<name>.md
```

For compatibility with released Praxis records, owners also read
`.agents/initiatives/`, `.agents/projects/`, `.agents/issues/`, and
`.agents/plans/` when the corresponding canonical record is absent. The rest
of `.agents/` is not a record namespace. A duplicate stable ID, singleton
owner, or destination across legacy and canonical trees is a conflict that
must be returned rather than merged or resolved by timestamp. Only an explicit
Setup migration may move complete legacy bundles, update their affected links,
and remove empty migrated owner directories after verification; it never
removes the `.agents/` root or touches plugins, skills, host configuration,
scripts, or another tool's state.

When ownership changes, move the complete record or bundle and update affected
links. Stable IDs survive path and ownership moves; only a real identity change
creates a new ID and supersession. A filesystem move changes no authority and
triggers no gate.

## Keep four categories distinct

- **Records** preserve meaning later loops must understand.
- **Artifacts** are native things to inspect, view, run, compare, or react to.
- **References** are external inputs interpreted through an owner's
  `references.md` index.
- **Messages** are native conversational or supervisory communication carrying
  intent, truth, evidence, authority pointers, results, or learning.

Requirements, Unknowns Maps, Evolution Maps, Evolutions, Issues, Plans,
interview transcripts, research prose, and generic notes are records or
communication, not artifacts. A file placed under `artifacts/` does not become
governing truth. Preserve an artifact in its native format; promote only the
meaning a governing record needs. Do not create a message directory.

## Common record envelope

Structured records begin with minimal YAML frontmatter. Fields are conditional:

```yaml
---
kind: <record-kind>                 # required
id: <stable-id>                     # independent or movable records
parent: <owner-id>                  # when structurally owned
gates:
  <gate-name>:
    state: pending | approved
    consequence: <provisional consequence>
    accepted_reference: <last reliable Plannotator reference or unavailable>
disposition: open | paused | closed | superseded
authority:
  state: awaiting | active | exhausted
---
```

`id` is omitted for project-owned singletons whose identity is
`parent + kind`; it is required for independently referenced or movable
records. `gates` project the current decision on a complete revision, not an
approval history. Material revision returns the affected gate to pending.
`accepted_reference` points to the last reliably identified accepted reference
from Plannotator, the plugin's native interaction surface package. When no
reliable baseline exists, use
`accepted_reference: unavailable` and present the complete record rather than
inventing a receipt.

`disposition` and `gates` remain independent. `authority` appears only on the
current Implementation Plan and is independent of both; its states are
`awaiting`, `active`, and `exhausted`. Headers, messages, handoffs, and delegate
briefs never become authority. Mutation still requires the current instruction
and implementation boundary, the exact approved Plan when one governs, valid
ancestors, route, and latest direction.

## Keep bodies reader-ready

Record bodies use impersonal, declarative, record-oriented prose. Each section
states facts, constraints, required outcomes, evidence, decisions,
consequences, or remaining uncertainty. Conversation history, actor labels,
and process narration remain outside the body. Use direct record terms such as
`Starting Point`, `Accepted Baseline`, `Evidence and Decision`, `Required
Outcome`, `Current Position`, `Remaining Uncertainty`, and `Decision` when the
record kind needs them.

Write for a competent future reader without relying on the originating exchange:

- one H1 names the record;
- ordered H2 headings carry its kind-specific meaning;
- H3 headings identify repeated entries or useful local subdivisions;
- bold labels carry short scalar facts; and
- prose and lists explain meaning in ordinary product, domain, and engineering
  language.

Omit empty optional sections. Do not add placeholder headings, body YAML,
unrelated tables, transcripts, or workflow narration.

## Refine, move, supersede, and clean up

Semantic refinement keeps a stable ID. Splitting, merging, or changing identity
creates new IDs and leaves only the minimal supersession pointer current
consumers need. Working records may change freely inside their owning loop.

A material change across an accepted transition returns to the earliest causal
owner, repeats the affected gate, and invalidates descendant authority. Causal
return handling remains with the owning caller; this foundation only defines
the record consequence.

Temporary Delivery notes may exist while substantial work is underway. Before
acceptance, move lasting truth into the causal record or evidence reference and
remove reconstructible narration.

Retain an open or completed record only while a named consumer needs its
governing meaning, accepted basis, authority, limitations, or learning. Never
remove current truth while a live descendant depends on it. `closed` is not a
promise of permanent archival, and `superseded` is not immediate deletion:
retain the current record and the smallest supersession pointer needed for
honest reconstruction.
