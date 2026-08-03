# Demonstrate and Prove

> **Status: accepted semantic source; target runtime projection: `references/demonstrate-and-prove.md`.**

> Load this reference only after Make Tangible selects Demonstrate and Prove as
> the artifact's primary pattern.

## The judgment it supports

Demonstrate and Prove makes a bounded claim-to-evidence case inspectable. It
shows what current evidence proves, limits, contradicts, or leaves unresolved.

Verify, Review, Delivery, or another caller owns the claim, evidence generation,
correctness judgment, and acceptance boundary. This pattern arranges their
current evidence for scrutiny. It cannot certify missing evidence, strengthen a
weak method through presentation, or grant acceptance.

## Decompose the claim

Break broad assertions into the observable claims the caller must judge.
“Session revocation works” may contain separate claims about:

- the public API response;
- active and future sessions;
- behavior across multiple instances;
- event or audit emission;
- authorization boundaries;
- failure and recovery; and
- compatibility with accepted existing behavior.

For every claim, make visible:

- exact scope and governing source;
- current proof status;
- evidence and provenance;
- environment, version, and freshness;
- limitations and unexercised behavior;
- missing or stale evidence; and
- contradiction or failure.

One successful demonstration never proves adjacent behavior it did not
exercise.

## Preserve evidence strength

Identify what each evidence item is and what it can establish:

- deterministic test;
- integration or end-to-end exercise;
- measurement or benchmark;
- controlled experiment;
- source or configuration inspection;
- runtime observation;
- human demonstration or recording; or
- reasoned inference.

Record relevant environment, inputs, source version, collection time, and
reproducibility. A recording may make a flow understandable, an integration
test may prove a boundary contract, and source inspection may only suggest that
an event is emitted. Equal-looking cards or badges must not imply equal proof.

## Foreground missing and contradictory proof

Show missing, stale, failed, and contradictory evidence beside the affected
claim. Derive no aggregate status stronger than the governing claims permit.

A required unproved or contradicted claim remains visible and blocking even
when many unrelated claims pass. Avoid percentages and green summaries that
average away a required failure.

Use statuses whose meaning is explicit, such as proved within scope,
partially supported, unproved, contradicted, or stale. Derive them from the
displayed evidence rather than assigning them manually for presentation.

## Make proof inspectable and reproducible

Let the reader move from claim to evidence and, where useful, reproduce the
demonstration or inspect its exact command, conditions, inputs, and result.
Keep filters and summaries from hiding failed or missing evidence.

When the surface captures a human response, preserve questions, rejection,
conditions, and requests for stronger evidence. Viewing a proof surface or
running a demonstration does not constitute acceptance; the caller owns that
gate.

## Compose supporting patterns proportionately

Demonstrate and Prove may use:

- Inspect and Annotate for exact evidence and reviewer reaction;
- Observe and Assess for measurements and populations;
- Experience or Simulate for reproducible demonstrations;
- Understand and Navigate for claim-to-source movement;
- Communicate and Align for an audience-specific proof presentation; and
- Teaching Surface when the reader must comprehend the behavior
  before judging the evidence.

It remains primary when the purpose is judging whether explicit claims are
supported by current evidence.

## Verify before presenting

Check that:

- every claim is explicit, observable, and scoped;
- governing sources and acceptance boundaries are current;
- evidence links resolve to the claimed result;
- source versions, environments, inputs, timestamps, and freshness are
  accurate;
- consequential demonstrations reproduce or preserve exact conditions;
- evidence type and strength remain visible;
- each proof status follows from the displayed evidence;
- broad summaries cannot hide a required missing, stale, failed, or
  contradictory claim;
- claim-to-evidence and evidence-to-source navigation works; and
- captured human response remains distinct from proof status and acceptance.

## Return to the caller

Return the exact artifact version together with:

- explicit claims and scope;
- proof status derived for each claim;
- evidence, provenance, environment, version, and freshness;
- limitations and behavior not exercised;
- missing, stale, failed, and contradictory evidence;
- human questions or conditions;
- reproducibility information; and
- the implication for the caller's correctness or acceptance judgment.

The caller decides whether the evidence is sufficient, another proof step is
needed, a claim fails, or learning returns to an earlier owner.

## Worked compositions

Thariq Shihipar's
[annotated pull-request review](https://github.com/ThariqS/html-effectiveness/blob/main/03-code-review-pr.html)
demonstrates navigation between review claims, exact diff evidence, and
comments. The
[buy-in document](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/10-pitch-doc.html)
places a demonstration beside evidence and reviewer objections. They show
useful presentation mechanics, but neither substitutes for caller-owned
verification or acceptance.
