# Inspect and Annotate

> **Status: accepted semantic source; target runtime projection: `references/inspect-and-annotate.md`.**

> Load this reference only after Make Tangible selects Inspect and Annotate as
> the artifact's primary pattern.

## The judgment it supports

Inspect and Annotate organizes exact evidence so a human or agent can scrutinize
it, preserve evidence-bound reactions, and navigate between an overview and the
source being discussed.

It is useful for diffs, source, traces, screenshots, risks, findings, design
systems, test results, and other evidence where comments lose meaning when
separated from their target.

Review, Research, Debug, a human gate, or another caller still owns the
judgment. This pattern does not decide that something is a defect, promote an
annotation into a finding, assign acceptance, or create new review authority.

## Bind annotations to exact evidence

Every consequential annotation identifies:

- the artifact, source, or evidence version;
- a stable location, region, event, or state;
- the relevant excerpt or visible target;
- enough surrounding context to interpret it; and
- supporting evidence or links where needed.

Use stable anchors that survive navigation. If the underlying evidence changes,
mark the annotation stale and show the changed context. Do not silently move a
comment to a nearby line, component, timestamp, or state merely because its
original target disappeared.

## Preserve annotation status and weight

Distinguish the meaning carried by an annotation:

- observed fact;
- inferred concern;
- question about intent or behavior;
- correction;
- suggestion;
- human reaction;
- caller-supplied finding;
- disputed interpretation; or
- unresolved point.

Preserve confidence, severity, or qualification when supplied or supported.
The surface may organize these properties, but it cannot convert suspicion into
a confirmed defect, a suggestion into an accepted change, or an annotation into
caller-owned judgment.

## Keep inspection scope visible

State what evidence is included, excluded, filtered, stale, or unavailable.
When filters or groupings are active, show the current scope and counts of
hidden material. Preserve orientation when navigating from a risk summary or
finding list to exact evidence and back.

The absence of an annotation proves nothing by itself. A clean-looking region,
file, or artifact is not reviewed, correct, or accepted unless the owning
reviewer explicitly makes that claim and has sufficient evidence.

## Export evidence-bound reaction

When conversation cannot preserve the reaction safely, export each material
annotation with:

- its exact evidence anchor and version;
- annotation type and wording;
- qualification, confidence, or severity where meaningful;
- related evidence;
- relevant response or correction; and
- current stale, disputed, unresolved, or caller-supplied status.

State inspected scope separately from annotation coverage. Do not create a
permanent annotation ledger merely because the interaction is rich. Return the
smallest inspectable result the caller needs.

## Compose supporting patterns proportionately

Inspect and Annotate may use:

- Understand and Navigate for overview-to-evidence movement;
- Observe and Assess for trends, clusters, or changing evidence;
- Elicit and Articulate for contextual human corrections;
- Manipulate and Export for compositional annotation;
- Communicate and Align for reviewer guidance; and
- Demonstrate and Prove when annotations support explicit claims.

It remains primary when exact evidence and evidence-bound reaction are what
make the owning question judgeable.

## Verify before presenting

Check that:

- the artifact names the exact evidence version and inspected scope;
- every annotation anchor resolves to the intended target;
- excerpts and surrounding context match the source;
- source and supporting-evidence links work;
- fact, inference, question, suggestion, reaction, and finding remain distinct;
- active filters, groupings, and hidden-item counts are visible;
- navigation preserves orientation between summary and evidence;
- changed targets mark annotations stale rather than relocating them;
- unresolved and disputed annotations remain visibly open; and
- exported annotations round-trip with their anchors, status, wording, and
  qualifications intact.

## Return to the caller

Return the exact artifact version together with:

- inspected evidence and scope;
- evidence-bound annotations;
- annotation types, qualifications, and status;
- stale, disputed, hidden, excluded, or unavailable evidence;
- corrections and relevant responses;
- unresolved points; and
- the implication for the caller's judgment.

The caller interprets the annotations, decides whether they become findings or
changes, and owns every resulting gate or governing-record update.

## Worked compositions

Thariq Shihipar's
[annotated pull-request review](https://github.com/ThariqS/html-effectiveness/blob/main/03-code-review-pr.html)
connects review guidance, diff context, and comments. The
[design-system reference](https://github.com/ThariqS/html-effectiveness/blob/main/05-design-system.html)
organizes exact visual evidence, while the
[reference semantics map](https://github.com/ThariqS/html-effectiveness/blob/main/unknowns/07-reference-port.html)
ties behavioral interpretations to code excerpts and edge cases. They are
examples of evidence arrangement rather than a required review interface.
