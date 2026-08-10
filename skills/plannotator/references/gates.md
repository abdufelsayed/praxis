# Native gates

Load this reference only when the caller has selected a native Record Gate or
Result Gate. It supplies the gate-specific target and interpretation rules;
the caller still owns the governing record, consequence, authority, and next
activity.

## Declare one judgment

Before opening the gate, name the interaction kind, complete target, exact
approval claim, and what approval does not authorize. Approval accepts the
complete presented revision as the provisional basis for later judgment. It
starts no activity, grants no mutation authority, and is not a quality score.
Dismissing the interaction grants nothing and stops the caller at the gate.

Use the native command:

```text
plannotator annotate <stable-record-or-folder> --gate --json
```

Normal gates omit `--require-approval`. A denial is useful feedback, not a
failed command. Structured stdout is the normal transport; use a transient
`--result-file` only when the host cannot retain stdout reliably.

## Record Gate

Use a Record Gate for one complete current Initiative, Requirements bundle,
Evolution Map, selected Evolution definition, coherent Issue batch, or
Implementation Plan. There is no generic Project Approval gate:
Requirements Alignment judges the current Project Brief and Requirements,
while Project Closure judges the delivered outcome.

Approval accepts the exact complete content presented, not a mutable path,
Git state, or only visible changed lines. The caller foregrounds a reliable
revision from the last accepted version when available and repeats the gate
after a material revision. If the baseline is unavailable or uncertain,
present the complete current target and say that a reliable diff is absent.

One folder gate is appropriate only when every included record or Issue ID is
named, the files form one coherent judgment, cross-file dependencies are
visible, and the collection remains small enough for honest inspection. Use
separate coherent batches when it is too large; do not invent an Issue Set or
another collection record for the interface.

Map Approval selects no Evolution. Evolution Selection is a separate ordinary
human choice. Evolution Definition Approval does not invoke Issue definition.
Issue Approval does not invoke planning. Implementation Plan Approval does
not authorize implementation. A human may explicitly approve a record and
choose the next activity in one message, but those remain separate acts.

## Result Gate

Use a native Result Gate only when the owning loop selected it because the
result is formal, composed, requires code review, or benefits materially from
a native reaction surface. A simple standalone Result Acceptance may remain
conversation-only. For a complete single claim, an unambiguous ordinary
acceptance can close that claim; partial, multi-claim, and composed results
need an explicit acceptance statement.

Prepare a current result explanation containing:

- the actual working result;
- decisive evidence and checks;
- known limitations;
- material learning and unresolved questions;
- the exact acceptance claim; and
- excluded adjacent actions.

Present that complete explanation through the selected gate. A partial result
must state proved coverage, limitations, and unproved claims. Approval closes
only the named result and exhausts its bounded authority; it does not grant a
commit, push, merge, deployment, cleanup, later Plan or Evolution, or another
external action. When the final implementation result proves the complete Project
Outcome or selected Evolution, declare both judgments explicitly if one gate
is carrying both.

## Notes and revisions

Interpret an approval note by meaning, not by the transport label alone:

- carry presentation guidance forward when it preserves governing content;
- return a meaning-changing note to the causal owner, revise there, and repeat
  the affected gate.

After a material revision, keep the complete new target available and show a
reliable diff only when its baseline is identified. Earlier feedback remains
evidence about the exact version and conditions judged; revalidate it when
behavior, constraints, evidence, environment, or presentation changed enough
to alter the conclusion.

## Native return

Report the decision, material feedback, reliable native reference if any,
revision required, and one useful recommended next activity. Recommendation
is navigation, not invocation. Wait for the requester's choice after returning.

Preserve only the following gate projection when a named future consumer needs
durable continuity:

```text
Gate {
  target, // one record ID or an ordered list of Issue IDs
  outcome,
  declared_provisional_consequence,
  native_plannotator_reference,
}
```

If no reliable native reference exists, retain `accepted_reference:
unavailable` and present the complete target on a later revision. Any additional
durable record requires a distinct purpose, consumer, lifecycle, and authority
boundary.
