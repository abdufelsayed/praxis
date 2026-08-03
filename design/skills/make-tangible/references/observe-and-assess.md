# Observe and Assess

> **Status: accepted semantic source; target runtime projection: `references/observe-and-assess.md`.**

> Load this reference only after Make Tangible selects Observe and Assess as the
> artifact's primary pattern.

## The judgment it supports

Observe and Assess makes measured state, change, trends, clusters, and anomalies
judgeable when raw evidence or prose summaries would hide their shape.

It may reveal a pattern and help form a causal hypothesis. It does not prove
the hypothesis, diagnose the system, verify correctness, or accept a result.
Debug, Verify, Review, Research, or another caller owns those judgments and
interprets what the surface exposes.

Useful situations include compatibility runs, benchmark results, test
populations, implementation deviations, incident timelines, status evidence,
resource measurements, and behavior observed across many cases.

## Preserve the observation context

Show the context required to interpret every consequential observation:

- source and collection method;
- collection time and freshness;
- environment or execution context;
- covered population and denominator;
- baseline and comparison window;
- active filters and groupings;
- sampling or aggregation;
- missing, excluded, failed, or unavailable data; and
- known measurement limitations.

Do not combine runs, environments, time windows, or populations without making
the aggregation and its limitations visible. An accurate percentage can still
mislead when the denominator, sample, or freshness is hidden.

## Summarize without distorting

Organize the surface around the owning question rather than displaying every
available metric. Preserve:

- absolute values and denominators;
- the relevant baseline;
- direction and magnitude of change;
- uncertainty or variability where meaningful;
- thresholds and their source; and
- a path from aggregation to underlying evidence.

Use tables, timelines, distributions, clusters, charts, or annotated summaries
according to the evidence shape. Avoid visual scale, color, ordering, or
relative percentages that exaggerate a small or weak signal.

## Separate observation from interpretation

Keep distinct:

- measured or directly observed state;
- derived aggregation;
- anomaly or pattern detection;
- causal hypothesis;
- recommended discriminating probe; and
- caller-owned finding or conclusion.

The surface may say that failures cluster after one parser change and recommend
isolating that boundary. It may not state that the parser caused the failures
without supporting evidence. Show evidence that supports and conflicts with a
hypothesis.

## Keep scope visible during interaction

If the surface supports filtering, grouping, time selection, or drill-down,
keep the active query and population visible. Show hidden and excluded counts
where they affect interpretation. Preserve a path back from a cluster or
summary to the exact cases that formed it.

When conversation cannot retain a consequential observation safely, export the
exact artifact version together with the query, population, filters, grouping,
baseline, and evidence references that produced it.

## Compose supporting patterns proportionately

Observe and Assess may use:

- Understand and Navigate for overview-to-evidence movement;
- Inspect and Annotate for exact cases and source;
- Manipulate and Export for filters or query construction;
- Communicate and Align for a status or incident audience;
- Demonstrate and Prove when current evidence supports a bounded claim; and
- Elicit and Articulate when human interpretation or threshold preference is
  part of the judgment.

It remains primary when the purpose is seeing the shape and condition of
measured evidence rather than proving a predetermined claim.

## Verify before presenting

Check that:

- summaries reconcile with their underlying evidence;
- counts, denominators, percentages, and derived values are correct;
- timestamps, environments, populations, and baselines match the source;
- every filter, grouping, drill-down, and reset produces the declared scope;
- active scope, hidden counts, exclusions, missing data, and staleness remain
  visible;
- visual scales and emphasis represent magnitude honestly;
- observations, aggregations, hypotheses, and findings remain distinct;
- supporting and conflicting evidence links resolve; and
- exported observations retain the exact query and context that produced them.

## Return to the caller

Return the exact artifact version together with:

- the observed state and consequential changes;
- source, population, baseline, freshness, filters, and limitations;
- patterns and anomalies exposed;
- clearly labeled causal hypotheses;
- supporting and conflicting evidence;
- recommended discriminating probes;
- missing or stale data; and
- the implication for the caller's question.

The caller decides whether the evidence resolves its judgment, requires
diagnosis or verification, or returns learning to another owner.

## Worked compositions

Thariq Shihipar's
[engineering status report](https://github.com/ThariqS/html-effectiveness/blob/main/11-status-report.html)
organizes current state and progress evidence, while the
[incident report](https://github.com/ThariqS/html-effectiveness/blob/main/12-incident-report.html)
uses a timeline and supporting observations to make change and response
inspectable. The
[implementation-notes surface](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/09-implementation-notes.html)
shows how many recorded deviations can be filtered and summarized. These are
examples of observation mechanics; their underlying records remain owned by
their callers.
