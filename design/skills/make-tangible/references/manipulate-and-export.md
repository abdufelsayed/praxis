# Manipulate and Export

> **Status: accepted semantic source; target runtime projection: `references/manipulate-and-export.md`.**

> Load this reference only after Make Tangible selects Manipulate and Export as
> the artifact's primary pattern.

## The judgment it supports

Manipulate and Export provides a purpose-built interface when composing,
classifying, arranging, tuning, or editing structured values through
conversation would be materially harder or less reliable.

It begins from inspectable source state, exposes the operations and constraints
needed for one bounded judgment, and exports an explicit proposed result for
the caller to interpret. It does not apply the change or inherit authority to
mutate the underlying system.

Useful examples include prioritization boards, configuration editors, prompt
tuners, compositional design reactions, dependency-aware selectors, and
structured annotation tools.

## Keep the editor bounded

Expose only the fields, context, operations, and constraints needed for the
declared judgment. Keep unrelated state read-only or absent.

A feature-flag editor created to change three flags does not need to become a
configuration console with permissions, audit history, deployment, and
rollback. A temporary Issue-arrangement surface does not become a work
tracker. Build the smallest interface that makes the structured decision
reliable.

Make the loaded source, current scope, and proposed state visibly distinct.
The human should always know what they are editing and what remains unchanged.

## Validate without silently deciding

Validate consequential constraints while the human edits:

- identities and required fields;
- allowed values and combinations;
- dependencies and incompatibilities;
- ordering or cardinality constraints;
- governing limits supplied by the caller; and
- conditions that make an output unsafe or incomplete.

Block export only for genuinely invalid results. Present warnings and
dependencies with their reasons when a qualified result remains meaningful.
Never repair, expand, reorder, or default a consequential change silently.
Suggested corrections remain visible and attributable before they become part
of the proposed output.

## Export the smallest useful result

The normal export contains:

- the source identity or visible version;
- the proposed diff or changed values;
- ordering and stable identities where relevant;
- conditions, qualifications, and unresolved values;
- consequential warnings; and
- the artifact version that produced the result.

Include the complete resulting value only when the consumer genuinely needs
it. A diff without its baseline may be ambiguous; a full file without a diff
may hide the human's actual decision. Provide the form that lets the caller
interpret and apply the proposal safely without generating duplicate prose.

Label every export as proposed state. Copying Markdown, downloading JSON, or
producing a patch grants no planning, implementation, production, or external
mutation authority.

## Detect a stale baseline

Bind edits to the loaded source identity or version. Before final export,
detect whether the baseline changed.

If it changed:

1. load or inspect the current source;
2. rebase the proposed edits where that can be done without guessing;
3. show the semantic difference caused by the new baseline; and
4. reopen only reactions whose meaning changed.

Do not overwrite newer state or silently replay an edit whose target,
constraint, or consequence moved.

## Compose supporting patterns proportionately

Manipulate and Export may use:

- Elicit and Articulate when edited state expresses latent human meaning;
- Compare and Choose when the editor composes understood alternatives;
- Explore and Discover when manipulation reveals new criteria;
- Inspect and Annotate when changes attach to exact evidence;
- Observe and Assess when live metrics or validation affect the edit; and
- Demonstrate and Prove when an exported result must carry supporting evidence.

It remains primary when reliable structured manipulation and explicit export
are what make the owning question judgeable.

## Verify before presenting

Check that:

- the correct source state and scope load visibly;
- every supported edit changes the intended value;
- identities, ordering, and unchanged values remain stable;
- hard validation, warnings, dependencies, and suggested corrections behave as
  declared;
- consequential edits can be undone or reset where needed for safe reaction;
- stale-baseline detection and rebase behavior preserve meaning;
- every export path includes the required source identity, qualifications, and
  warnings;
- proposed state is never presented as applied state; and
- the export round-trips into the expected structure when practical.

## Return to the caller

Return the exact artifact version together with:

- the source identity or version;
- the proposed diff and, when required, complete resulting value;
- preserved identities, ordering, and qualifications;
- validation results and consequential warnings;
- any stale-baseline reconciliation;
- unresolved values or conflicting constraints; and
- the implication for the owning question.

The caller decides whether to promote the proposal into a governing record,
request another reaction, or later apply it under separate authority.

## Worked compositions

Thariq Shihipar's
[triage board](https://github.com/ThariqS/html-effectiveness/blob/main/18-editor-triage-board.html)
supports arrangement and exports Markdown. The
[feature-flag editor](https://github.com/ThariqS/html-effectiveness/blob/main/19-editor-feature-flags.html)
shows dependency warnings and exports a diff or complete JSON, while the
[prompt tuner](https://github.com/ThariqS/html-effectiveness/blob/main/20-editor-prompt-tuner.html)
composes structured values into a copyable result. These are examples of
bounded editor mechanics, not reusable product interfaces.
