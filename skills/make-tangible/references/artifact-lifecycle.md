# Artifact Lifecycle

Load this reference when a Make Tangible artifact is retained, revised after a
judgment, presented across a context boundary, or removed. A disposable
one-turn artifact returned and discarded needs no lifecycle handling.

## Contract

An artifact is a native thing a person can inspect, run, hear, measure,
compare, or react to: a diagram, HTML surface, prototype, CLI/TUI, image,
audio/video, simulation, experiment result, benchmark, dataset, annotated
diff, editor, report, or set of such forms. It is evidence or a reaction
surface, not governing truth. The owner interprets its result and updates its
own record.

Every retained artifact exposes the question, intended audience, primary
judgment, sourced/inferred/proposed/simulated/placeholder status, material
fidelity limits, and requested or preserved reaction. Put this frame inside
the artifact when the medium supports it; otherwise place it beside the exact
artifact link. Mark provenance at the point where it changes interpretation
and link consequential facts to their exact source.

## Version and revision

Before consequential reaction, a working artifact may be revised in place.
Once a version is judged, freeze that exact version. A material revision gets a
new visible version, such as `artifacts/auth-flow-v2.html` or
`artifacts/auth-flow/v2/`. The owning record links the judged version. Carry
unaffected reactions forward only when their basis remains valid and reopen
changed or invalidated judgments. Never overwrite a judged version.

Export interaction when conversation cannot reconstruct it reliably. The
export names the artifact version and preserves selections, rejected parts,
mixed choices, edits, annotations, qualifications, and unresolved points. Use
the native format that fits the surface. Add a manifest only when the artifact's
consumer and lifecycle require one.

## Storage and retention

Artifacts start as disposable working outputs. Promote exact bytes into a
named owner only when a later activity needs their behavior, evidence,
comparison, or reaction surface. Use the smallest useful judged version:

```text
projects/<project>/artifacts/<artifact>
issues/<issue>/artifacts/<artifact>
```

Create a sidecar directory only when retained bytes exist. Move the complete
artifact and update links when accepted ownership changes. The path is current
organization, not identity. Remove retained bytes after accepted meaning has
moved to the governing record and no named consumer needs the exact form.
Never remove current truth while a live descendant depends on it.

Artifacts remain native. Add record metadata only when the artifact's distinct
purpose, consumer, lifecycle, and authority boundary require it. A Plannotator
session may judge the artifact but does not convert it into a record or grant
the next activity.

## Safe removal

Before removal, identify the exact path and version, owner, named consumers,
accepted meaning, recovery, and effect. Preserve a version when its reaction,
evidence, comparison, or future consumer is still needed. Remove only the
minimum unneeded native bytes under the caller's normal authority; consequential
loss, external cleanup, or deletion beyond the artifact remains the caller's
separate action and safety boundary.

## Completion

Lifecycle work is complete only when the exact version links, retained bytes,
reaction export, provenance, named consumer, and removal or preservation
decision are verified. Return those facts and limitations to the caller; do
not create a record or continue its workflow.
