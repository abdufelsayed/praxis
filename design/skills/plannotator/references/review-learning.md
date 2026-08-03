# Review Learning

> **Status: accepted Plannotator reference design; runtime implementation
> pending.**

Read this reference when the human asks to learn from Plannotator history or
repeated feedback makes a longitudinal analysis worth recommending.

## Purpose

Review Learning extends Praxis's ordinary local and global learning across many
human reviews. It finds recurring preferences, agent failure modes, and
successful revision patterns that no single loop can reveal.

It is optional. Never run it after every gate, inject its conclusions
automatically, or silently rewrite Praxis, project rules, personal
instructions, or another skill.

## Establish the analysis scope

Begin with an explicit scope:

- current Project;
- current repository;
- selected period; or
- full archive.

Preserve the repository, Project, time, target, and native review provenance of
every supporting example. Never blend unrelated feedback without showing the
distinction. A pattern found in one repository does not become a global
preference merely because it recurred.

## Read the native archive

Resolve the Plannotator data directory from `PLANNOTATOR_DATA_DIR` when set and
otherwise from `~/.plannotator`. The native planning archive is its `plans/`
directory. Feature-detect the files that actually exist and report an empty or
unsupported archive honestly rather than manufacturing a dataset.

For the native archive layout that records plan outcomes:

- `*-approved.md` is an approved submitted plan;
- `*-denied.md` contains the submitted plan followed by the human feedback;
- `*.annotations.md` is a redundant annotation projection and must not be read
  alongside its denied file, because doing so double-counts feedback; and
- dates may appear at the beginning or elsewhere in a filename in
  `YYYY-MM-DD` form.

Read a denied file as one evidence unit. Locate the boundary that separates
submitted content from appended feedback, but do not assume every ordinary
Markdown horizontal rule is that boundary without checking the surrounding
archive format. Preserve the filename, date, repository or Project scope,
submitted topic, actual feedback language, requested changes, individual
annotations when present, and later outcome when it can be identified.

Approved files may support counts, date ranges, revision rates, and plan-size
trends without being treated as evidence of why a denial occurred. Never infer
a reviewer preference from approved content alone. When the archive format has
changed or a native reference cannot connect revisions, expose that limit and
analyze only the relationships that remain demonstrable.

`plannotator archive` is a human browsing surface, not the analysis transport.
Review Learning reads the scoped native files directly and may return reliable
native references for human inspection. It creates no second feedback archive.

## Inventory before interpretation

Before extracting patterns, report:

- the selected scope and exclusions;
- approved and denied counts available in that scope;
- the covered date range;
- missing, malformed, or unlinked evidence; and
- whether the run is full or limited to material after a stated cutoff.

An incremental analysis may build on an earlier reviewed report, but it must
keep overall archive counts distinct from newly analyzed evidence. If the new
sample is too small for a supported trend, say so and offer a full analysis;
do not invent a numerical threshold in the runtime contract.

## Analyze trajectories

When native history supports it, reconstruct:

```text
submitted revision
    -> human feedback
    -> meaningful revision
    -> later outcome
```

The change that converted a denied candidate into an accepted one often carries
more useful learning than the denial category itself. Counts and recurring
phrases support the analysis but do not replace revision trajectories.

Distinguish:

- presentation preference from governing behavior;
- project convention from personal preference;
- process feedback from outcome failure;
- repeated evidence from repeated wording;
- correlation from a demonstrated causal improvement; and
- stable patterns from one-off contextual corrections.

For every reviewed denial in scope, extract at least the topic, actual denial
reason, requested change, evidence-backed category, notable reviewer language,
annotation count and summaries when available, date, and provenance. Let the
categories emerge from the evidence rather than forcing a predefined taxonomy.
Sampling is acceptable only when the human explicitly asks for a sample or the
result is clearly labeled exploratory; a claimed complete analysis must account
for every denied evidence unit in scope.

## Use delegation proportionately

For a small archive, inspect it directly. For a large archive, follow Praxis
delegation policy:

1. The supervisor defines the scope, evidence schema, exclusions, and required
   provenance.
2. Bounded extraction delegates inspect disjoint review subsets only when they
   materially save supervisor context or total cost.
3. Delegates return compact evidence rather than broad narrative.
4. The supervisor verifies coverage, resolves conflicts, synthesizes patterns,
   and owns every human-facing recommendation.

Do not hardcode a vendor model, fixed batch size, or delegation threshold.
Elapsed time alone does not justify polluting the result with poorly integrated
extracts.

## Produce adoptable findings

For each material finding, include:

- the recurring pattern;
- representative supporting examples and provenance;
- meaningful revision trajectories when available;
- likely scope: current work, Project convention, personal agent preference,
  or Praxis-wide improvement;
- exceptions, conflicting evidence, uncertainty, and confidence;
- the smallest justified behavioral change; and
- the exact instruction or convention that should own it.

A visual or HTML report may make the evidence easier to inspect. The caller
invokes [Make Tangible](../../make-tangible/README.md) to construct and verify
that report before invoking Plannotator. This reference only presents the
supplied verified report for Reaction Review when faithful and returns the
scoped reaction; otherwise the caller uses the native medium. The report
remains a reaction artifact rather than the adoption mechanism.

Every displayed number must be recalculable from the extraction, every quote
must be traceable to a named native source, and every proposed instruction must
name the recurring failure it would address. A useful report can show the
story in the evidence, ranked patterns, change over time, supported contrasts,
recurring phrases, and proposed instruction changes, but none of those sections
is mandatory when the evidence does not support it.

## Adopt through a reviewed diff

Turn an accepted recommendation into a proposed change against its actual
owning file. Show the diff through the appropriate human review. Only that
reviewed change updates the instruction or convention.

Do not use `plannotator improve-context`, compound-learning hooks, or another
automatic prompt-injection path. Review Learning proposes; the human decides
what is adopted and at what scope.

Do not hardcode model assignments, batch-size thresholds, a fixed report
filename scheme, host-specific transcript fallbacks, a fixed dashboard style, or an
automatic improvement hook. Praxis delegation, Make Tangible, ownership, and
reviewed adoption govern those choices.

## Persistence and stopping

Native review history remains the source evidence. Keep temporary extraction
files outside the durable record tree. Preserve a report only when a named
future consumer needs its exact analysis; otherwise the adopted owning-file
change and its evidence are enough.

Finish with the findings, unsupported hypotheses, proposed changes, and one
recommended adoption step. Start no edit until the human chooses it.
