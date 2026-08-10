# Design an Evolution Map

Load this method when creating or materially revising an Evolution Map.

Start from one accepted Project and its Requirements. Design the smallest
serious sequence of at least two coherent integrated working advances. An
advance must be tangible enough to exercise, review, prove, and learn from; a
feature category, technical layer, milestone, release, migration phase, or
learning-only probe does not qualify by itself.

Give every entry:

```text
stable_id
sequence_position
tangible_advancement
deliberate_limitations
why_this_position_is_useful
learning_target?  # only when it can change a named later Map judgment
```

Stable identity is independent from sequence position and filename. Reordering
preserves IDs. Splitting, merging, or replacing meaning creates new IDs and
supersedes the old identity.

Explain how the sequence advances the Project Requirements and expose material
dependencies, omissions, pressure, and uncertainty. Keep future entries high
level. The Map owns future strategy. Create an Evolution, Issue, or Plan only
after its owning workflow is selected.

When several sequences are serious, compare their consequences and recommend
one. When only one coherent advance exists, return `one-advance`, recommend
direct Issue definition, and wait for a human route choice; never manufacture
a second entry. When every sequence is artificial because Project truth is
wrong, return that changed boundary to Requirements Discovery.

Persist the current Map at `<project>/evolutions/map.md` with its Project
parent, current approval projection, stable entry IDs, and these bodies:

- `Governing Context`
- `Progressive Strategy`
- `Evolution Sequence`
- `Cross-Evolution Dependencies and Uncertainty` only when useful
- `Current Recommendation`

The current Map is the canonical collection for the sequence. Any additional
record type requires a distinct purpose, consumer, lifecycle, and authority
boundary.
