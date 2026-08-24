# Review Learning

Load this reference only when review history contains a bounded longitudinal
question. Review Learning studies native Plannotator evidence and proposes a
scoped instruction change; it never runs automatically, injects instructions,
or replaces the owner of the instruction being changed.

## Establish scope

Require one explicit scope before reading the archive:

- current Project;
- current repository;
- selected time period; or
- full archive.

Record repository, Project, time, target, and native review provenance for
every example. Keep unrelated feedback separate. A recurring pattern in one
repository does not become a global preference without evidence for that
scope.

## Read native history

Resolve the data directory from `PLANNOTATOR_DATA_DIR`, or `~/.plannotator`
when it is unset. The native plan archive is `plans/`. Feature-detect files
that actually exist and report an empty, malformed, unsupported, or
incompletely linked archive honestly.

For the archive format that records plan outcomes:

- `*-approved.md` supports counts, date ranges, and plan-size trends but does
  not explain a denial;
- `*-denied.md` is one evidence unit containing the submitted plan and human
  feedback;
- `*.annotations.md` is a redundant projection and must not be read beside
  its denied file, or one review will be counted twice; and
- a date may occur at the start or elsewhere in the filename in `YYYY-MM-DD`
  form.

Read each denied file as one unit. Locate the boundary between submitted
content and appended feedback from the surrounding archive format rather than
assuming every Markdown horizontal rule is that boundary. Preserve filename,
date, repository or Project scope, submitted topic, actual feedback language,
requested changes, annotations, and later outcome when it can be connected.
If the native format cannot connect a revision, expose that limitation and
analyze only demonstrable relationships. `plannotator archive` is a browsing
surface, not the analysis transport; read the scoped native files directly.

## Inventory before interpretation

Report the selected scope and exclusions, available approved and denied
counts, covered date range, missing or malformed evidence, unlinked revisions,
and whether the run is full or limited after a stated cutoff. Keep overall
archive counts distinct from newly analyzed evidence when incrementally
building on an earlier reviewed report. If the new sample does not support a
trend, say so and offer a full analysis; do not invent a numerical threshold.

## Analyze trajectories

When history supports it, reconstruct:

```text
submitted revision -> human feedback -> meaningful revision -> later outcome
```

For every denied unit in a claimed complete scope, extract at least the topic,
actual denial reason, requested change, evidence-backed category, notable
reviewer language, annotation count and summaries when available, date,
provenance, and any later outcome. Let categories emerge from evidence rather
than forcing a fixed taxonomy. Sampling is valid only when requested or
clearly labelled exploratory.

Distinguish presentation preference from governing behavior, Project
convention from personal preference, process feedback from outcome failure,
repeated evidence from repeated wording, correlation from demonstrated causal
improvement, and stable patterns from one-off corrections. Use the evaluation
context that was loaded for the branch to keep signals bound to what was
actually judged; counts, confidence language, and evaluator agreement are not
universal scores.

## Delegate proportionately

Inspect a small archive directly. For a large archive, a supervisor may define
scope, exclusions, provenance, and an evidence schema, then use bounded
delegates on disjoint subsets when they materially save context or cost. The
supervisor verifies coverage, resolves conflicts, synthesizes patterns, and
owns the recommendation. Delegates return compact evidence rather than broad
narrative; do not hardcode a vendor, batch size, or time-only threshold.

## Produce an adoptable proposal

For each material finding, include the recurring pattern, representative
examples and provenance, meaningful revision trajectories, likely scope
(current work, Project convention, personal preference, or Praxis-wide),
exceptions, conflicting evidence, uncertainty, confidence, the smallest
justified behavior change, and the exact instruction or convention that should
own it. Every number must be recalculable from extraction, every quote
traceable to a native source, and every proposed instruction tied to the
failure it addresses.

If a visual report would help, the caller must construct and verify it before
Plannotator presents it. This reference does not own artifact construction or
visual design. The report remains a reaction artifact, not an adoption path.

Turn an accepted recommendation into a proposed diff against its actual
owning file. Show that diff through the appropriate human review. Only the
reviewed change updates the instruction or convention. Do not use
`plannotator improve-context`, compound-learning hooks, or another automatic
prompt-injection path.

## Persistence and stopping

Native review history remains the evidence source. Keep temporary extraction
files outside the durable record tree. Persist a report only for a named
future consumer; otherwise the adopted owning-file change and its provenance
are sufficient. Finish with findings, unsupported hypotheses, proposed
changes, and one recommended adoption step, then wait for the requester's choice.
