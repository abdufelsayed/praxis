# Artifact Contract and Lifetime

> **Status: accepted skill-local runtime contract owned by Make Tangible.**

Use this reference when Make Tangible creates, revises, presents, retains, or
removes a concrete artifact. It defines the common contract shared by every
Make Tangible pattern without prescribing a medium, layout, HTML template, or
serialized wire format.

An artifact is a concrete output a human or agent can inspect, run, hear,
measure, compare, or react to: a single-page HTML surface, multi-file
prototype, repository-native component, CLI or TUI, diagram, image, audio or
video, simulation, experiment harness and result, benchmark, dataset,
annotated diff, editor, report, demonstration, or similar native thing. One
judgment may use a set containing several native forms. It is evidence or a
reaction surface. It becomes governing truth only after the owning loop
interprets its result and updates the record that owns that meaning.

## Start from a bounded artifact brief

The caller supplies only the context Make Tangible needs:

- the owning question;
- the intended reader and relevant starting point;
- the judgment the artifact should improve;
- the evidence or accepted truth it must respect;
- consequential fidelity needs and known limits;
- the reaction that must be captured; and
- any authority or retention constraint.

These are semantic handoff requirements, not a required document or object
schema. Omit what is already clear in the active context. “Make an HTML
diagram” is insufficient when the real need is to compare two ownership
boundaries or experience one failure flow.

## Carry a visible judgment frame

Every retained artifact makes the following visible:

- the question it makes judgeable;
- its intended reader;
- what is sourced fact, inference, proposal, simulation, or placeholder;
- the material fidelity limits on conclusions; and
- the reaction it seeks or preserves.

Put the frame inside the artifact when the medium supports it. Otherwise the
owning record states it beside the exact artifact link. Disposable artifacts
used only in the active conversation need no metadata sidecar.

The judgment frame is not an apology or generic disclaimer. It prevents a
polished surface from implying that mocked data is real, proposed architecture
already exists, or simulated behavior proves latency, reliability, or
feasibility that the artifact never exercised.

## Put provenance where it changes interpretation

Mark sourced fact, inference, proposal, simulation, and placeholder content at
the point where the distinction affects judgment. Link consequential facts to
their source or exact evidence. Name inferred relationships explicitly. A
simulation identifies the real behavior it does not exercise or prove.

A global legend may explain the visual language, but it cannot replace local
provenance when different elements carry different epistemic status.

## Match fidelity to the declared judgment

Build the lowest fidelity that can answer the question honestly. Implement
only the behavior and context needed for that judgment. Compared alternatives
receive comparable consequential fidelity, or the difference is made visible
and the supported conclusion is narrowed.

Higher polish is justified only when visual hierarchy, motion, interaction, or
audience comprehension is itself part of the judgment. Fidelity does not
expand the caller's authority, validate governing truth, or convert a
prototype into product implementation.

Choose form from the judgment rather than defaulting to HTML or assuming that
Make Tangible must be visual. A short relationship may need prose or a diagram;
side-by-side visual reaction may need self-contained HTML; behavior coupled to
real application dependencies may need a repository-native multi-file
prototype; feasibility may need an executable harness and measured results.
Prefer the cheapest form or artifact set that preserves what the reader must
inspect, run, hear, experience, measure, or prove.

Prefer self-contained artifacts when they preserve the required judgment
faithfully and make inspection, sharing, or retention easier. Do not isolate a
prototype from the repository when real components, data, styles,
accessibility behavior, or integration boundaries materially affect the
conclusion.

Prototype code remains an artifact while it exists to support bounded
judgment. It becomes product implementation only when an accepted Plan or
Direct Work boundary deliberately adopts it under ordinary Delivery authority.
Copying prototype code into governed source without that transition is not
artifact retention.

## Verify the intended reaction surface

Inspect the artifact through the medium in which the reader will use it.
Verify proportionately:

- readability and navigation;
- required interaction or simulation behavior;
- visible provenance and fidelity limits;
- consequential source links;
- the states needed for the declared judgment; and
- reaction export when the artifact captures compositional feedback.

Successful file generation and visual polish are not verification. A clipped
comparison, misleading mock, broken source link, or incomplete export prevents
the artifact from supporting its declared judgment.

## Freeze judged versions

Before consequential reaction, an artifact may be revised in place. Once a
version is judged, freeze that exact version. A material change receives a new
visible version:

```text
artifacts/
├── auth-flow-v1.html
└── auth-flow-v2.html
```

A multi-file surface uses versioned directories:

```text
artifacts/auth-flow/
├── v1/
└── v2/
```

The owning record links the exact judged version and preserves the accepted
consequence. Keep an older version only while its reaction, evidence, or
comparison has a named consumer. Praxis creates no universal artifact
manifest, version ledger, or permanent archive.

## Export reactions only when conversation is insufficient

An interactive artifact provides explicit copy, download, or another
inspectable export when its reaction cannot be reconstructed reliably from a
short message. The export identifies the artifact version and preserves the
relevant selections, rejections, mixed choices, edits, annotations, and
unresolved points.

Use the native format suited to the interaction. Praxis imposes no universal
JSON or Markdown schema. The export remains evidence: the calling loop
interprets it and promotes accepted meaning into the governing record.

## Return one causal native message

Make Tangible returns:

- the exact artifact path and judged version;
- the judgment the artifact can support;
- the captured human reaction;
- decisive evidence;
- material fidelity limits;
- implications for the owning question; and
- unresolved points.

This return remains a native message rather than a report file or wire schema.
The caller owns interpretation, governing-record revision, any affected gate,
and the next recommendation.

## Retain only exact form a future consumer needs

Artifacts begin as disposable working outputs. Promote one into durable
`artifacts/` storage only when a named later activity needs its exact behavior,
evidence, comparison, or reaction surface. Retain the smallest useful judged
version. Once its accepted meaning has moved to the owning record and no
consumer needs the exact form, remove it.

Bundle-level artifacts live under their Initiative or Project:

```text
projects/authentication/artifacts/
```

When an Evolution, Issue, or Plan specifically owns retained artifacts, use a
lazy sidecar directory beside that record:

```text
issues/
├── i2-revoke-sessions.md
└── i2-revoke-sessions/
    └── artifacts/
        └── revocation-flow-v1.html
```

Create the sidecar only when retained bytes exist. Accepted ownership changes
move the artifact and update links. The path organizes current ownership; it
is not a stable record identity.

## Keep artifacts native

Artifacts do not receive the structured-record envelope, stable record IDs,
gates, authority, or disposition. Their exact path and visible judged version
identify the concrete output. A multi-file runtime may contain its own
manifest when that runtime genuinely requires one, but Praxis adds no metadata
manifest merely for uniformity.

The owning record preserves the artifact's purpose, accepted consequence, and
continued relevance. Plannotator may judge a governing record or collect
annotations, but it does not turn the artifact into a record or grant the next
activity authority.

## Common failure modes

- Building a polished surface before naming the human judgment.
- Presenting proposals or simulations with the visual authority of sourced
  fact.
- Comparing alternatives at materially different fidelity without limiting
  the conclusion.
- Overwriting a version after binding consequential reaction to it.
- Leaving compositional reaction trapped in browser state.
- Keeping every iteration after its useful meaning has been promoted.
- Adding record metadata, gates, or status lifecycles to native artifacts.
- Treating a generated file as verified without exercising its intended
  reaction surface.
