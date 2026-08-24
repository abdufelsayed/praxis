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
and short discovery may create nothing. A durable Project begins with
`brief.md`, `requirements.md`, `unknowns.md`, and `references.md`. Detailed
references, Research Findings, artifacts, Evolutions, Issues, and Plans remain
lazy. A Project using direct Issues does not need `evolutions/`. Top-level
Projects, Issues, and Plans may stand alone.

Before creating a durable file, name its distinct purpose, future consumer,
lifecycle, and authority boundary. Use an existing canonical record when that
record owns the meaning. Create a new record type only when the existing records
cannot carry the meaning without mixing responsibilities. Small provisional
material stays in conversation; substantial factual work belongs in a canonical
Research Findings record; and governing meaning belongs in its existing owner.

Canonical locations are owner-shaped and lazy:

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

Requirements, Unknowns Maps, Research Findings, Evolution Maps, Evolutions,
Issues, and Plans are records. Information remains communication unless a
durable owner needs it. A new record type requires a distinct purpose, consumer,
lifecycle, and authority boundary. A file placed under `artifacts/` does not
become governing truth. Preserve an artifact in its native format; promote only
the meaning a governing record needs.

## Common record envelope

Structured records begin with minimal YAML frontmatter. Fields are conditional:

```yaml
---
kind: <record-kind>                 # required
id: <stable-id>                     # independent or movable records
parent: <owner-id>                  # when structurally owned
revision: <positive-integer>        # when a gate or dependency binds content
governing:
  - id: <record-id>
    accepted_revision: <positive-integer>
meaning:
  state: provisional | pending_gate | accepted | stale | superseded
gates:
  <gate-name>:
    state: pending | approved
    content_revision: <positive-integer> # one-record gate
    target_revisions:                    # coherent multi-record gate
      - id: <record-id>
        revision: <positive-integer>
    consequence: <provisional consequence>
    accepted_reference: <last reliable Plannotator reference or unavailable>
disposition: open | paused | closed | superseded
authority:
  state: absent | awaiting | granted | withdrawn | exhausted
---
```

`id` is omitted for project-owned singletons whose identity is `parent + kind`;
it is required for independently referenced or movable records. `revision`,
`governing`, and `meaning` appear only when a later gate, guard, or consumer
must validate exact content or dependency freshness. A governing edge names
the accepted revision actually consumed; it never copies the ancestor body.

`gates` project the current decision on a complete revision, not an approval
history. Use `content_revision` for one record and `target_revisions` for a
coherent multi-record gate; never use both for the same judgment. Material
revision increments `revision`, returns the affected gate to pending, and
changes `meaning.state` to `pending_gate` when the record requires acceptance.
`accepted_reference` points to the last reliably identified accepted reference
from Plannotator, the plugin's native interaction surface package. When no
reliable baseline exists, use
`accepted_reference: unavailable` and present the complete record rather than
inventing a reference.

`meaning`, `disposition`, and `gates` remain independent. `stale` means current
evidence challenged accepted meaning and dependent effects must stop pending
causal judgment; it is not rejection or supersession. `authority` appears only
where a later effect must validate it and remains independent of the other
dimensions. `withdrawn` preserves that earlier authority existed but is no
longer eligible after invalidation or revocation. Headers, messages, handoffs,
and delegate briefs never become authority. Mutation still requires the latest
direction and implementation boundary, the exact approved Plan when one
governs, fresh governing dependencies, and current authority.

## Apply record-kind persistence policy

Persistence is an active-inquiry policy constrained by each record kind's
maximum safe default:

- substantial Research Findings, interpreted References, retained evidence,
  and genuine Unknowns may update automatically inside a named research or
  discovery persistence boundary;
- Requirements drafts may update at a coherent discovery topic closeout;
- other governing drafts may update inside their selected shaping inquiry;
- gate state changes only through the owning judgment;
- Plan authority changes only through current authorization, invalidation,
  revocation, or acceptance; and
- product source, Git, and external systems are not record persistence and need
  their own effect authority.

The active inquiry may narrow or prohibit these defaults. A request to discuss,
pause, not start, or not edit disables persistence unless it explicitly names a
bounded read-only action. Never infer automatic acceptance from automatic
draft or evidence persistence.

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

A temporary learning impact checkpoint may exist only when reconciliation must
survive compaction or several sessions. Remove it when governing records can
reconstruct the reconciliation state.

Retain an open or completed record only while a named consumer needs its
governing meaning, accepted basis, authority, limitations, or learning. Never
remove current truth while a live descendant depends on it. `closed` is not a
promise of permanent archival, and `superseded` is not immediate deletion:
retain the current record and the smallest supersession pointer needed for
honest reconstruction.
