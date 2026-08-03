# Gates

> **Status: accepted Plannotator reference design; runtime implementation
> pending.**

Read this reference when Plannotator is judging a governing record, coherent
record collection, or a delivered result that needs a native Result Gate. For
exploratory annotation or a simple standalone Result Acceptance kept in chat,
use the core owner procedure without loading this file.

## Declare the judgment

Before opening a gate, state:

- the interaction kind;
- the exact target;
- what approval means; and
- what approval does not authorize.

Approval accepts only the complete target and declared consequence as the
current provisional basis for later judgment. It starts no next activity and
grants no mutation authority. Dismissal grants nothing and stops the owning
loop at that boundary. Approval is a provisional human judgment, not an
objective quality score or evidence that every property is correct.

Use:

```text
plannotator annotate <stable-record-or-folder> --gate --json
```

Do not use `--require-approval` for the normal path. A denial is useful
feedback, not a failed command. Structured stdout is the ordinary decision
transport. Use `--result-file` only when the host cannot retain stdout
reliably, and keep the file transient.

## Record Gate

Use a Record Gate when one complete current Initiative, Requirements bundle,
Evolution Map, selected Evolution specification, coherent Issue batch, or
Implementation Plan is ready for provisional judgment.

Approval accepts the exact complete version presented, not its mutable path,
Git state, or only the visible changed lines. Feedback returns to the
Requirements Discovery, Formalization, or Delivery owner that can revise its
meaning. The owner foregrounds the revision and repeats the affected gate.

The human may approve the record and explicitly choose the next collaborative
activity in the same conversational message. Those remain two judgments:
approval alone never invokes the child activity. Implementation Plan Approval
remains separate from Implementation Authorization. Consequential actions
still need their exact action, target, and effect named by the human.

## Where gates appear

Use Plannotator for these provisional judgments when their owning records
exist:

- Initiative Alignment;
- Requirements Alignment;
- Evolution Map Approval;
- Evolution Definition Approval for the selected Evolution;
- Issue Approval;
- Implementation Plan Approval;
- Implementation Plan Result Acceptance;
- Evolution Acceptance; and
- Project or Initiative Closure when a durable visual judgment helps.

There is no separate generic `Project Approval` gate. Requirements Alignment
is the judgment that accepts the current Project Brief, Requirements, and
visible uncertainty. Project Closure is the later outcome judgment. Name one
of those exact meanings instead of inventing an ambiguous Project gate.

Evolution Selection ordinarily remains a clear conversational human choice.
It names one Evolution for collaborative specification and authorizes nothing.
Map Approval selects nothing. Evolution Definition Approval does not invoke
Issue definition. Issue Approval does not invoke planning. Plan Approval does
not authorize implementation.

## Coherent multi-file gates

Use one folder gate only when several complete files form one bounded coherent
judgment. Before opening it:

- name every included record or Issue ID;
- keep unrelated files outside the target folder;
- expose cross-file relationships and dependencies; and
- ensure the collection remains small enough for honest judgment.

Approval accepts the exact named collection. Adding, removing, or materially
changing a member repeats the affected gate. When one interaction would be too
large, use several coherent batches and keep cross-batch dependencies visible.
Do not invent an Issue Set or another collection record for the UI.

Each Issue retains its own approval projection. Planning may consume only the
Issues whose complete files have passed their required batches.

## Approval with notes

Interpret notes by meaning rather than by the `approved` label alone.

- Carry genuinely non-blocking guidance forward with the accepted revision.
- Treat anything that changes governing content as a change request, revise
  the owner, and repeat the gate.

Before recommending the next activity, explain which interpretation was made.
For example, “show the diagram first next time” may be presentation guidance;
“rename this field before implementation” changes the Plan and requires
revision.

## Result Gate

Use this path only when the owning loop selected a native Result Gate. A simple
standalone Plan with no Issue, Project, composed closure, required code review,
or useful native reaction surface may be accepted directly in conversation by
Deliver. For one complete result claim clearly in focus, an unambiguous
ordinary-language acceptance is enough; partial, multi-claim, and composed
outcomes require an explicit acceptance statement.

After review and verification, prepare the current result explanation for the
owning loop's Result Acceptance. Keep it in the conversation by default; use a
durable result document only when a named future consumer needs one. Do not add
a Result section to the Implementation Plan. Explain:

- the actual working result;
- the decisive evidence and checks;
- known limitations;
- material learning and unresolved questions;
- the exact acceptance claim; and
- excluded adjacent actions.

Present that exact explanation through the selected Result Gate. The
`plannotator last` command remains conversational Reaction Review and does not
substitute for Result Acceptance.

Approval accepts and closes only the named result. The named result may be
explicitly partial; the explanation must state proved coverage, limitations,
and unproved claims. It grants no commit, push, merge, deployment, later Plan
or Evolution, cleanup, external mutation, or other next activity.

When a final Plan Result Gate explicitly presents and proves the complete
Project Outcome, the same interaction may also carry Project Closure. Declare
both judgments explicitly. Use a separate Project Closure interaction when the
Project is rejected or superseded, or when no earlier result judged the
complete outcome.

## Revisions and reliable diffs

When learning materially revises an accepted record, return to its exact causal
owner and repeat that record's gate. Foreground Plannotator's diff from the
last reliably identified accepted version while keeping the complete current
record available. Approval accepts the complete new version.

If the accepted baseline is unavailable or uncertain, present the complete
record and explain what changed. Never manufacture a diff, canonical hash, Git
binding, or receipt to create false certainty.

Earlier feedback remains evidence about the exact version and material context
judged. Preserve still-applicable reactions, but obtain fresh judgment when
behavior, constraints, evidence, or presentation changed enough to alter the
conclusion.

## Durable gate projection

Plannotator feedback is an incoming message, not another Praxis record. Apply
it to the owner and rely on native Plannotator history for detailed revisions.
When a named future loop needs repository-local continuity, retain only:

```text
Gate {
  target, // one record ID or an ordered list of Issue IDs
  outcome,
  declared_provisional_consequence,
  native_plannotator_reference
}
```

Record the native reference only when it reliably identifies the accepted
interaction. If Plannotator returns none, preserve
`accepted_reference: unavailable` and present the complete record on a later
revision. Create no separate feedback ledger, decision JSON, canonical hash,
receipt graph, or receipt database.

## Return and stop

After the gate, report the judgment, material feedback, any revision it
requires, and one useful recommended next activity. The recommendation is not
an invocation. Wait for the human's choice.
