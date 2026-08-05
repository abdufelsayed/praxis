# Record Navigation

Use this reference only to locate the smallest durable Praxis context needed to
answer one routing or resumption question. It is a terminal navigator: it gives
record kinds, locations, parent relationships, and position cues. It does not
author, revise, validate, route, or grant authority for a record.

## Start with the owner-shaped location

Durable state is lazy beneath the repository's ignored `.agents/` directory.
The presence of the directory or one file does not prove that a workflow was
selected or that its next activity is authorized.

| Record kind | Canonical location | Parent cue |
| --- | --- | --- |
| Initiative bundle | `.agents/initiatives/<initiative>/brief.md` | Initiative may contain Projects under `projects/<project>/`. |
| Project bundle | `.agents/projects/<project>/brief.md` | Optional `parent: initiative-<name>`; related records sit beside the Brief. |
| Requirements, Unknowns, References | `.agents/projects/<project>/requirements.md`, `.agents/projects/<project>/unknowns.md`, `.agents/projects/<project>/references.md` | Each belongs to its Project Brief. |
| Evolution Map and Evolutions | `.agents/projects/<project>/evolutions/map.md`, `.agents/projects/<project>/evolutions/eN-<name>.md` | Map and Evolutions belong to one Project. |
| Issues | `.agents/projects/<project>/issues/iN-<name>.md` or `.agents/issues/i-<name>.md` | An Issue may belong to an Evolution or Project, or stand alone. |
| Plans | `.agents/projects/<project>/plans/pN-<name>.md` or `.agents/plans/p-<name>.md` | A Plan may belong to a Project or stand alone. |

Resolve `<project>` and `<initiative>` from the actual path and frontmatter;
never infer a parent from a familiar name. If no durable record is needed,
keep the route conversational.

## Read only the cues that locate current work

Use the record's frontmatter for `kind`, stable `id` when present, `parent`,
current gate projections, `disposition`, and—on an Implementation Plan—
`authority`. In the body, look first for these position cues:

- Project Brief: `Current Position` and `Current Recommendation`;
- Evolution Map: `Current Recommendation` and the selected high-level entry;
- Evolution or Issue: its governing context, current recommendation, and
  accepted result when present; and
- Plan: `Scope and Exclusions`, `Verification`, the current result or
  acceptance, and any explicit Delivery checkpoint needed to recover a failure
  or partial execution state.

Follow only the ancestor or evidence links needed to explain the current
question. A gate is a current judgment on a record revision; `approved` does
not mean the next record was selected. An Evolution Map does not select an
Evolution, and Plan Approval does not activate Implementation Authorization.
Keep gate, disposition, and Plan authority as separate cues.

## Keep the load minimal and honest

Load one candidate owner and the smallest governing ancestors or evidence it
needs. Do not scan every Project, Evolution, Issue, Plan, artifact, Reference,
or historical message because it exists. Current source, tests, Git, and
observed behavior remain the evidence for reconstructible implementation truth;
records preserve accepted intent, specification, uncertainty, and authority
boundaries. If two owner paths remain materially plausible, return the exact
ambiguity for one human question instead of guessing.
