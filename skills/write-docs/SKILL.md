---
name: write-docs
description: "Write durable documentation for one reader. Use for requested guides, contract reference, explanation, operations, change communication, or an authorized Plan result."
---

# Write Docs

Create or repair durable guidance for one real reader and one named purpose.
Write from current source and observable behavior, keep each surface's reader
job coherent, verify the reader's path, report evidence and limits, and stop.
Conversation, plans, approvals, implementation notes, and agent activity are
evidence for finding claims; they are not documentation structure.

## 1. Bind the request and reader

Begin only when the human explicitly asks for documentation or an already-
authorized Implementation Plan names a documentation result. A request to
explain something conversationally does not create a durable documentation
obligation. Name:

- the intended reader and what they already know;
- the one task, question, operational condition, or transition the reader
  must complete or understand;
- the supported product, version, environment, and starting state;
- the documentation surface or repository area that may be affected; and
- the exact documentation edit authority carried by the request or Plan.

If the reader, purpose, starting state, supported boundary, or edit authority
is missing, ask one focused question or return `blocked` with the missing
boundary. Do not invent a reader from the files you happen to find. Keep
approval, Plan Approval, Implementation Authorization, publication authority,
and Result Acceptance distinct. An explicit documentation request may cover
ordinary local edits to its named surfaces; it does not authorize publication,
release, commit, push, deploy, or unrelated documentation.

This step is complete only when one reader, one primary purpose, one starting
point, one supported boundary, and one exact documentation authority are
explicit, or the missing decision is returned.

## 2. Reconstruct current truth

Inspect the authoritative implementation, public interfaces, schemas,
configuration, tests, examples, scripts, generated sources, repository
instructions, and observable behavior that determine the reader's path. Use
accepted Requirements, Issues, Plans, discussion, and result evidence to find
claims and risks, but treat delivered source and behavior as the authority.

Separate current behavior, accepted but undelivered intent, historical
rationale, hypothesis, simulation, and illustration whenever the distinction
could change a reader's action or prediction. If intended and delivered
behavior disagree, return the exact mismatch to its causal owner and do not
document the future as present. Preserve rationale only when the current
constraint, mechanism, and consequence change how a future reader should use,
operate, or modify the system.

This step is complete when every consequential claim in the proposed surface
has a current source or observable evidence, a visible truth status where
needed, and an identified mismatch or limitation rather than an assumption.

## 3. Choose one primary form

Choose the form from the reader's job, not the feature or source layout. Each
document has exactly one primary form:

- **Task guidance** for a tutorial, setup guide, or how-to path.
- **Contract reference** for precise API, CLI, configuration, schema, library,
  event, or other stable interface lookup.
- **Understanding** for a concept, architecture, behavioral model, or
  consequential rationale.
- **Operations** for maintenance, deployment, troubleshooting, recovery, or
  incident response.
- **Change communication** for a release note, changelog, deprecation, or
  migration transition.

At the selected branch, load exactly the matching local reference and apply
its form-specific writing and verification rules before writing or checking
that surface:

- task guidance → [`task-guides.md`](references/task-guides.md);
- contract lookup → [`contract-reference.md`](references/contract-reference.md);
- mental model → [`understanding.md`](references/understanding.md);
- operational action → [`operations.md`](references/operations.md); or
- versioned change → [`change-communication.md`](references/change-communication.md).

If one delivered change needs several forms, keep separate owned surfaces,
give each its own primary job, and load the matching reference for each. Do
not merge a tutorial, exhaustive contract catalog, architecture explanation,
recovery runbook, and migration narrative into one page. Keep README or index
surfaces orienting and routing rather than making them a second owner of deep
detail.

This step is complete when every affected surface has one named primary form,
one matching reference decision, and an explicit reason any additional form
is a separate surface rather than mixed prose.

## 4. Locate the owning surface and authority

Inspect the existing documentation tree and its navigation before creating a
file. Update the current owner whenever it exists. Create a new file only for
a distinct durable reader need with an owned and discoverable place. Name the
exact files, sections, generated sources, navigation entries, and links that
the requested result will change.

Reconcile the repository's documentation system before editing: instructions,
site structure, navigation, frontmatter, generators, synchronization rules,
link policy, formatting, linting, rendering, and build path. Determine whether
each surface is hand-authored, generated, synchronized, or externally owned.
For generated output, edit the authoritative source and regenerate through the
repository's mechanism; do not patch disposable output.

Before every edit, confirm its target and effect are inside the explicit
request or authorized Plan. If a delivered behavior makes a surface outside
that boundary false or incomplete, return the exact surface and the smallest
Plan revision needed. If publication, release, deployment, commit, push,
external-site editing, or unrelated cleanup would be needed, state that it is
outside Write Docs and stop. Keep private paths, credentials, secrets,
customer or personal data, temporary task state, and agent coordination out
of durable documentation; use repository-relative paths and sanitized values.

This step is complete when every intended edit has one owner, an exact target,
an allowed effect, and a verified native documentation path—or the smallest
out-of-authority boundary is returned without editing.

## 5. Write the smallest coherent reader path

Lead with the reader's action or question. Use the repository's exact product
terms, commands, options, configuration keys, types, defaults, and observable
results. Give one smallest complete representative path before variants and
advanced detail. Use progressive disclosure: expose prerequisites,
safety conditions, limitations, and decisions at the point they affect
correctness; move rare failures and exhaustive detail to their owning surface.

Update stale or duplicate explanations instead of adding a competing
correction. Keep one owning explanation for each consequential fact and link
or summarize it lightly from other surfaces. Preserve useful unrelated prose
and repair the smallest coherent section. Exclude approval semantics,
mutation authority, coordination, proof bookkeeping, abandoned uncertainty,
and implementation diaries unless one has become genuine reader-facing
behavior.

This step is complete when the named reader can follow one coherent path or
answer one coherent question without reconstructing conversation or choosing
among interleaved unrelated forms.

## 6. Decide examples and tangible surfaces

Use a runnable example when syntax, state, sequencing, or error handling could
be misunderstood. Keep one realistic sanitized domain, include required setup
and consequential error handling, verify every command and value against
current source or behavior, and state what success looks like. A placeholder
must preserve the technical property that determines correctness.

Add a diagram, screenshot, recording, interactive explanation, or generated
demonstration only when it reduces mental simulation beyond honest prose or
code. State what the reader should notice, provide an accessible text
equivalent, and preserve a truthful source or reproducible capture path.

For a non-trivial visual, interactive explanation, or generated demonstration,
call [Make Tangible](../make-tangible/SKILL.md) with the exact reader question,
audience and starting point, evidence, primary judgment, required medium and
fidelity, requested reaction, placement, and current authority or lifetime.
Make Tangible may return `no-op`, `constructed`, `revised`, `blocked`, or
`stopped`. Map its result without inventing a fallback: use `no-op` as prose
or a simple table; integrate a constructed or revised artifact only when its
path, version, and placement remain inside current documentation authority;
and return the exact blocked or stopped state without construction, cleanup,
publication, or inferred reaction. Make Tangible retains artifact
construction, versioning, fidelity, reaction capture, and retention details;
Write Docs retains reader purpose, source truth, placement, surrounding
narrative, reader-journey verification, interpretation, publication boundary,
and stopping.

An artifact is transient unless a named future consumer requires its exact
behavior, evidence, comparison, or reaction. When retained, record the exact
version, owner and path, reaction export, disposition, and preservation or
removal evidence in the return; do not create a generic artifact ledger.

This step is complete when every example is internally consistent and
verified, every visual is justified or omitted, and any Make Tangible result
has an explicit placement, fidelity limit, retention state, and owner.

## 7. Verify the reader journey

Reread the affected path from the declared reader state. Before any generator,
render, lint, build, or example command, classify its actual effect. Ordinary
local generation or temporary verification inside the named documentation edit
authority may proceed. A networked, credentialed, privileged, persistent,
product/external-state, secret/data, permission, material-cost, publication,
release, or deployment effect belongs to its causal owner and returns `blocked`
before execution. Then verify prerequisites,
authority assumptions, exact sequence and syntax, expected observable
results, consequential choices and limitations, likely failure handling or
recovery, navigation, anchors, links, generation, rendering, and the native
documentation build or lint path when available. Run the documented path in a
safe representative environment when practical; an individually valid
command or passing lint does not prove that the reader can finish the task.

Apply every form-specific completion check in each selected reference; that
reference remains the sole owner of its form's exhaustive verification rules.

State every important claim, command, render, environment, or transition that
could not be exercised and the resulting confidence limit. If verification
finds a current-source mismatch, return it to its causal owner rather than
silently weakening the guide.

This step is complete only when the intended reader can perform or understand
the named purpose from coherent current documentation, or the exact untested
claim and its effect on confidence are returned.

## 8. Return and stop

Return one native result:

```text
Write Docs Result {
  outcome: complete | already-current | partial | blocked | failed | stopped,
  reader_and_purpose,
  primary_forms_and_surfaces,
  surfaces_changed,
  current_truth_and_owners,
  examples_or_tangible_result?,
  decisive_verification,
  evidence,
  material_gaps,
  publication_status: not_published,
  recommendation?
}
```

Use `complete` only when the named reader can reach the intended outcome and
the affected path is proportionately verified. Use `already-current` when no
edit is needed and the existing surface satisfies the request. Use `partial`
when some requested surfaces are complete but another requested claim,
surface, or verification remains open. Use `blocked` for a missing reader,
source, authority, native documentation boundary, or tangible-medium result;
`failed` for an authorized edit, generation, build, or verification attempt
that did not succeed; and `stopped` when the human ends the bounded work.

Include exact files and sections changed, reader need, current truth, decisive
checks, evidence, unverified claims, Make Tangible outcomes and limits when
used, and one recommendation only when a human choice is needed. Write Docs
does not commit, push, publish, release, deploy, open a pull request, or begin
another documentation form or workflow. Return control to the human and stop.
