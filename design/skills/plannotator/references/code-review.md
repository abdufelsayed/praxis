# Code Review

> **Status: accepted semantic source; target runtime projection: `references/code-review.md`.**

Read this reference when Plannotator will present local implementation changes
or a remote pull or merge request for human inspection.

## Select the exact change

Use the native change-review surface:

```text
plannotator review --git
plannotator review <PR-or-MR-URL>
```

Before opening it, inspect the actual change boundary and ensure the surface
includes every intended tracked and untracked implementation file that belongs
to the result. If the tool cannot represent the complete intended change, fix
the review target before asking for judgment.

For a remote request, confirm that the URL and represented head revision are
the intended target. The review is about the shown change, not whatever the
branch may contain later.

## Plan-governed results

Every Plan-governed code result must show its complete fixed diff through
native human code review before Result Acceptance. Explanations, diagrams,
file tours, risk groupings, and review-order cues may make the change easier to
judge, but they never replace showing the code.

Direct Work uses this surface only when consequence, repository policy, or the
human requires it.

Completing code review supplies human evidence. It does not accept the result,
close the Plan, authorize a commit, or grant any next action.

## Interpret feedback

Return code-review feedback to the narrowest owner that can explain and correct
it:

- Correct an implementation defect locally when the accepted specification and
  Plan authority remain valid.
- Return a Plan approach or authority-boundary problem to the Plan.
- Return changed detailed behavior or proof to its Issue.
- Return changed high-level advancement meaning to its Evolution.
- Return a mistaken need or constraint to Requirements Discovery.

Do not absorb an upstream mistake into the nearest editable file merely to make
the review green.

## Bind the exact diff

Human code-review approval binds the exact complete diff shown. Any later
source, configuration, generated-file, formatting, or implementation change
invalidates that approval and requires review of the updated diff.

New verification evidence does not invalidate code review when the reviewed
change itself remains identical. If a hook, formatter, generator, or correction
mutates the diff after review, inspect the mutation and repeat the human
review.

## Prepare Result Acceptance

Resolve in-bound findings, repeat review when the diff changes, and pass the
required verification. Then prepare the current result explanation—normally in
the conversation—and return to Deliver for Result Acceptance. Deliver invokes a
native Result Gate only when its trigger is present. Persist the explanation
only when a named future consumer needs it. Never represent code-review
approval as Result Acceptance.

Report the exact reviewed boundary, the human judgment, unresolved comments,
subsequent mutations if any, and whether a fresh review is required.
