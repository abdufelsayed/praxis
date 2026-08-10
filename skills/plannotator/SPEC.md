# Plannotator — Maintainer Contract

This is the acceptance contract for the shipping
[Plannotator owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Every gate or review interaction first binds and validates the shared Proposed
Action envelope against the active Inquiry, exact target revision, current
gate, authority, and latest direction. Plannotator transports judgment but
cannot create it; missing or stale inputs fail closed.

Plannotator is the native human-reaction surface for one exact Praxis target.
It presents an existing record, artifact, coherent file collection, code
diff, delivered result, or scoped native review history through the
Plannotator CLI; captures one human interaction; interprets the returned
decision and evidence; and returns that meaning to the owner. It does not own
the caller's governing question, gate consequence, authority, route, or
stopping rule.

## Invocation, inputs, and exclusions

The package is internally reachable because owning skills may call a Plannotator-native
interaction and a human may request a direct Plannotator utility. Its
frontmatter description and host metadata identify the same internally reachable
capability without adding a second trigger or authority claim.

The input is exactly one selected interaction and its current target or scope:

- Reaction Review of a file, folder, text, HTML, URL, comparison, or latest
  assistant response;
- Record Gate for one complete governing record or coherent Issue batch;
- Result Gate for a result, Evolution Acceptance, or composed Project or
  Initiative closure;
- Code Review of the complete local diff or one named remote pull or merge
  request;
- scoped Review Learning over native review history; or
- a small independent bundled interview or observable-behavior surface.

The caller supplies the target revision or archive scope, requested judgment,
relevant authority boundary, and exclusions. A target that is missing,
incomplete, mutable where approval requires stability, outside the caller's
scope, or too large for honest judgment is not a valid input.

Ordinary non-gate judgment, construction or verification of a missing
artifact, adaptive dependent interviewing,
native-medium interaction that Plannotator cannot faithfully preserve,
installation or repair, automatic context improvement, and workflow
continuation are exclusions. Plannotator never creates a substitute target,
Goal, Fact record, collection record, route, or authority.

## Behavioral entry and ownership

The capability begins only after an owner or human has selected a
Plannotator-native concern and an exact target or explicit history scope is
available. Model selection alone does not satisfy that behavioral entry.

Before invocation, the owner states interaction kind, exact target or scope,
judgment requested, and what the judgment does not authorize. Plannotator
retains ownership of presentation compatibility, one native session, exact
transport capture, result interpretation at the transport boundary, and the
return. The caller retains the governing record or artifact, causal meaning,
feedback interpretation, revision, gate consequence, authority, forward
choice, acceptance, persistence promotion, and stopping.

The package judges one interaction at a time. It never invokes another skill,
chooses a route, opens a later gate, starts implementation, or silently
promotes feedback. A native approval remains a human judgment, not an
Implementation Authorization or quality score.

## Invariants

1. Exactly one interaction kind, target revision or archive scope, and caller
   are established before the CLI opens.
2. A governing gate presents the complete stable revision or explicitly named
   coherent collection. A mutable URL supports Reaction Review only.
3. A code review presents the complete fixed local diff or one verified named
   remote revision; a partial or moving change never receives a complete-review
   claim.
4. The interaction declares what approval means and what it does not
   authorize. Approval starts no activity and grants no mutation, commit,
   publication, deployment, cleanup, or external authority.
5. Ordinary non-gate judgment does not incur native-gate ceremony. Every named
   Record, Result, and Code Review gate remains native and cannot fall back to
   conversational acceptance.
6. Every satisfied branch-specific condition loads and applies its selected
   final local reference before the native session begins; Review Learning
   additionally loads and applies the shared evaluation reference. An absent
   condition adds no reference load, and no reference loads another reference.
7. One active browser session is maintained. Quiet output means wait unless
   the requester submits, dismisses, asks to stop, or explicitly requests recovery.
8. Native denial, annotation, dismissal, closure, and transport failure stay
   distinct; none is manufactured into approval or a successful command.
9. Approval notes that change governing meaning return to the causal owner and
   require a revised target and repeated gate.
10. Bundled interview and facts results preserve stable IDs and all material
    answer, edit, skip, removal, comment, and verification state. Their
    temporary JSON is not a Praxis record or durable artifact. Interview
    questions are bundled only when independent and already grounded;
    dependent questions remain adaptive conversation.
11. Review Learning has explicit scope and reports archive limitations,
    provenance, trajectories, exceptions, and uncertainty before proposing a
    scoped reviewed diff. It never adopts instructions automatically.
12. The return preserves the exact target or scope, native decision or
    closure, human feedback, reliable native reference when available,
    fidelity or transport limits, unresolved questions, and the next human
    judgment needed.

## Interaction branches and outcomes

### Reaction Review

`plannotator annotate <target>` presents a faithful existing target for
annotation or comparison. `plannotator last` reviews the latest assistant
response and remains conversational. The surface returns the reaction and
fidelity limits; it does not accept a record or result.

### Record and Result Gate

`plannotator annotate <stable-record-or-folder> --gate --json` presents one
complete provisional judgment. Record Gate covers Initiative, Requirements,
Evolution Map, selected Evolution, Issue batch, and Implementation Plan
records. Result Gate covers a native result, Evolution Acceptance, or explicit
composed closure. Approval accepts only the exact complete target and named
consequence. Dismissal grants nothing. Ordinary non-gate reaction remains
outside this branch.

### Code Review

`plannotator review --git` or `plannotator review <PR-or-MR-URL>` presents the
complete fixed change. Review feedback is evidence before Result Acceptance.
Any later source, generated, configuration, formatting, or implementation
change invalidates the reviewed revision and requires a new review.

### Bundled interview and facts

`plannotator setup-goal interview <bundle.json-or-> --json` is limited to a
small group of independent, already-grounded questions. Dependent questions
return to adaptive Interview. `plannotator setup-goal facts <bundle.json-or->
--json` is limited to editing observable behaviors or acceptance criteria; it
creates no Fact record and does not replace an owning record gate.

### Review Learning

Review Learning reads the native `plans/` archive under the configured data
directory, inventories the explicit scope, reconstructs demonstrable
revision trajectories, and proposes the smallest scoped instruction change.
Native history remains evidence. Adoption happens only through a reviewed
diff against the actual owning file after the requester chooses it.

### Tool and session failure

An unavailable required command or option, failed transport, malformed result,
or unrecoverable native session returns an explicit tool failure with the exact
affected judgment and limitation. It recommends checking or invoking Setup
and stops. A dismissed or empty closed session returns no judgment and stops.
No alternate surface or conversational reply substitutes for a failed native
gate or required code review.

## Effects, authority, persistence, and lifetime

The package's effects are limited to invoking and waiting on one native
Plannotator session, capturing its structured or textual result, reading the
explicitly scoped native review archive for Review Learning, and using
temporary transport files when reliable stdout or resumed bundled interaction
requires them. It does not edit governing records, adopt instructions,
construct artifacts, install or repair the CLI, mutate the repository, or
perform any external action represented by a reviewed target.

The caller's authority remains unchanged. Approval is not authority; code
review is not acceptance; feedback is not a route choice. Temporary JSON and
result-file transport remain outside the durable record tree and are removed
when no unfinished interaction needs recovery. Native Plannotator history is
the detailed review provenance. Persist only a gate projection or result
explanation when a named future consumer needs it:

```text
Gate {
  target,
  outcome,
  declared_provisional_consequence,
  native_plannotator_reference,
}
```

When no reliable native reference exists, preserve
`accepted_reference: unavailable` and later present the complete target. Do
not infer an accepted reference. Any additional durable record requires a
distinct purpose, consumer, lifecycle, and authority boundary.

## Composition and resources

### Direct skills

None. Plannotator directly invokes no Praxis skill. A caller constructs or
verifies any missing artifact before invoking this package; Setup owns
installation and compatibility repair outside this package.

### Runtime references

| Decision point | Direct target | Load condition | Ownership |
| --- | --- | --- | --- |
| Record or Result Gate | [`gates.md`](references/gates.md) | A complete governing record, coherent collection, or native result needs judgment. | Plannotator gate surface |
| Artifact or bundled surface | [`artifacts.md`](references/artifacts.md) | An artifact, comparison, URL, latest response, interview, or facts target is presented. | Plannotator presentation surface |
| Complete fixed diff | [`code-review.md`](references/code-review.md) | Local or remote implementation changes require native human review. | Plannotator review surface |
| Longitudinal review analysis | [`review-learning.md`](references/review-learning.md) | Explicit scope or recurring native review patterns justify Review Learning. | Plannotator history analysis |
| CLI compatibility or recovery | [`native-cli.md`](references/native-cli.md) | Required command, option, structured transport, archive, or session recovery is uncertain. | Plannotator native transport |
| Evaluation of longitudinal signals | [`../../references/evaluation.md`](../../references/evaluation.md) | Review Learning compares feedback, revisions, evaluator context, or competing evidence. | Shared evaluation |

The five local references are branch-specific and self-contained. The shared
evaluation reference is loaded only by Review Learning. None selects entry,
grants authority, calls another reference, decides the caller's route, or
continues work.

The package has no scripts, assets, fixtures, templates, MCP dependency, host
hook, wrapper, or automatic context-improvement integration. Its required tree
is `SKILL.md`, `SPEC.md`, `agents/openai.yaml`, and the five local references.

## Invocation and host projection

Frontmatter and host metadata are internally reachable and agree on one name,
presentation purpose, and no extra authority:

```yaml
interface:
  display_name: "Plannotator"
  short_description: "Collect precise native human judgment"
  default_prompt: "Use $plannotator to present this exact target for native human judgment."
policy:
  allow_implicit_invocation: false
```

The host prompt is launch copy, not a second procedure. It cannot widen
triggers, effects, dependencies, or continuation.

## Source basis


This contract is maintained against the plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), and [Work and routes](../../docs/concepts/work.md)
owners. Its package projection follows the [skill-package contract](../../docs/maintainers/skill-packages.md)
and [conformance and release contract](../../docs/maintainers/conformance-and-release.md).
The exact local projections are [gates](references/gates.md),
[artifacts](references/artifacts.md), [code review](references/code-review.md),
[Review Learning](references/review-learning.md), and [native CLI](references/native-cli.md);
the shared runtime projections are [Praxis Control](../../references/control.md)
and [evaluation](../../references/evaluation.md).
These plugin-local files are the complete maintainer source basis; the declared
skill surface and runtime references are the complete runtime. No non-plugin
material is required to use, review, validate, or maintain this package.

## All-package conformance baseline

1. The selected native concern reaches this internally reachable package only
   with an exact target or explicit history scope; ordinary non-gate judgment
   and missing-artifact construction stay with their owners.
2. The package presents exactly one interaction and leaves a quiet active
   session alone until human submission, dismissal, stop, or explicit recovery.
3. Description, host prompt, body, and references agree on internal reachability,
   branches, effects, exclusions, return, and stopping.
4. Every conditional reference has one load condition and final plugin-local
   path; each satisfied condition is loaded and applied before the session,
   while absent conditions add no load and no hidden reference chain.
5. The caller retains governing question, interpretation, authority,
   transitions, persistence promotion, acceptance, and stopping after return.
6. Approval, feedback, annotation, denial, dismissal, closure, and tool
   failure remain distinct; no non-approval is rewritten as a failed command or
   approval.
7. A complete gate or code-review target is exact and stable; an unavailable
   baseline yields the complete target rather than a manufactured diff.
8. Bundled IDs, edits, skips, removals, comments, and verification choices
   survive transport and resume; temporary transport creates no record.
9. Review Learning inventories explicit scope and limitations, accounts for
   every denied unit in a claimed complete analysis, and proposes reviewed
   adoption without automatic instruction changes.
10. A result returns evidence, limitations, native reference, and unresolved
    questions, then stops without adjacent work or new authority.

## Package-specific conformance cases

1. **Reaction Review:** a bounded Markdown or HTML target receives annotations
   and returns reaction without record approval; `plannotator last` does not
   receive a preamble and remains conversational.
2. **Faithful medium:** a live app, terminal, video, audio, or image that would
   lose essential behavior is returned to its native medium rather than forced
   through Plannotator.
3. **Stable Record Gate:** a complete stable record receives one structured
   gate; a mutable URL is accepted only as exploratory reaction.
4. **Coherent collection:** a bounded named folder gate includes every named
   file and excludes unrelated material; an oversized collection is batched
   without an invented collection record.
5. **Gate authority:** approval accepts only the declared complete judgment,
   grants no implementation or external authority, and does not start a later
   activity.
6. **Approval note:** a non-blocking presentation note is carried forward;
   a meaning-changing note returns to the causal owner and repeats the gate.
7. **Result Acceptance:** every named Result Acceptance uses a native Result
   Gate and closes only its proved coverage; ordinary explanation and reaction
   remain conversational without passing the gate.
8. **Complete code diff:** local and remote review show the complete fixed
   change; any subsequent mutation requires a fresh review before acceptance.
9. **Review feedback:** an implementation defect stays local while Plan
   meaning and authority hold; changed behavior, proof, or approach returns to
   its causal Issue, Evolution, or Plan owner.
10. **Bundled interview:** supported answer modes and stable question IDs round
    trip with notes, custom answers, completion, skips, and uncertainty; a
    selected option or answer text establishes completion despite a false
    transport flag, and only an otherwise incomplete answer remains skipped;
    a skipped required question returns for adaptive follow-up.
11. **Bundled facts:** edits, removals, comments, accepted state, IDs, and
    verification choices round trip in input order; an edit may clear an
    earlier comment, a blank non-removed fact is rejected, and no Fact record
    is created.
12. **Single session:** quiet output leaves the requester's browser open; no second
    session starts and `sessions` or `archive` is used only for explicit or
    confirmed recovery.
13. **Denial and dismissal:** denial returns feedback without command failure;
    dismissal or empty closure returns no judgment and no continuation.
14. **Native failure:** unavailable command, malformed result, or transport
    failure reports exact impact, stops the selected interaction, and never
    manufactures approval through another surface.
15. **Review Learning scope:** a bounded Project, repository, period, or full
    archive is inventoried with counts, dates, exclusions, missing evidence,
    and provenance; incomplete linkage remains explicit.
16. **Review Learning trajectory:** each denied unit in a claimed complete
    scope accounts for topic, reason, requested change, category, language,
    annotations, date, provenance, and later outcome when demonstrable.
17. **Scoped adoption:** proposed instruction changes name scope, examples,
    exceptions, uncertainty, confidence, and owning file; adoption occurs only
    through a reviewed diff and never through an automatic hook.
18. **Proportionate persistence:** temporary input and result files leave no
    durable record; a gate projection or result explanation persists only for a
    named future consumer.
19. **Bundle versus gate:** dependent interview questions never enter a bundle
    for speed, while a required Record or Result Gate never falls back to
    conversational approval.
