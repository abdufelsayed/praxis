# Formalize

> **Design document — not a runtime skill.** Accepted behavioral contract; `SKILL.md` implementation pending.

## What it does

Formalize translates accepted truth into the complete current specification
that Delivery can later plan. It recommends standalone Issues, direct
Project-owned Issues, or Evolve, composes the chosen path, and ensures that the
resulting specifications still express the governing truth.

Its leading idea is **choose and complete the right specification path**.
Evolve and Define Issues own their local work; Formalize owns whether their
combined result faithfully translates the accepted truth.

## When to reach for it

Begin when Requirements Discovery or the current conversation has produced
enough accepted truth for honest specification and the human chooses to
formalize it. A durable Project is optional. Do not invoke it automatically
after Requirements Alignment. The agent explains the next useful activity and
waits for the human's conversational choice.

Direct Work may skip Formalize when neither a durable Project nor explicit
specification would improve judgment or control.

## Start from accepted truth

Read what exists and is relevant:

- the explicit outcome, Project Brief, and accepted Requirements when present;
- relevant current source and system behavior;
- interpreted References and retained artifacts;
- accepted solution context; and
- uncertainty and known change pressure whose consequences may affect
  specification.

Do not reopen Requirements merely because files, code structure, commands, or
implementation sequence remain unknown. Those questions normally belong to
Delivery planning. Return to Requirements Discovery only when the accepted
need, constraint, preference, evidence, or Project boundary when one exists is
missing or wrong.

## Recommend a route

Recommend standalone Issues when an outcome needs detailed specification but no
durable Project would improve judgment or continuity. Recommend direct
Project-owned Issues when one coherent Project Outcome should be specified in
detail. Recommend Evolve only for a Project when at least two meaningful
coherent advances make progressive specification and learning useful.

Explain the recommendation from the actual work:

- accepted truth, Requirements when present, and intended outcome;
- complexity and meaningful dependencies;
- current system and solution shape;
- consequential uncertainty and learning;
- the value or cost of progressive working forms; and
- what each route would ask the human to judge next.

Artifact count, Project size, feature count, technical layers, expected Issue
count, and expected Plan count do not decide the route by themselves.

Discuss meaningful alternatives and let the human select one in ordinary
language. This route discussion creates no approval record and needs no
Plannotator gate. Formalize does not enter Evolve or Define Issues by momentum,
inference, or approval of Requirements.

## Remain the outer owner

Formalize remains responsible until the complete current formal specification
exists:

- one or more standalone Issues for an outcome that needs no Project;
- direct Project-owned Issues for one Project Outcome; or
- an accepted Map, a human-selected and accepted Evolution specification, and
  the complete accepted Issues for that Evolution.

[Evolve](../evolve/README.md) owns the progressive Map and selected Evolution.
[Define Issues](../define-issues/README.md) owns the detailed specification
set. [Design Solution](../design-solution/README.md) makes consequential shapes
judgeable. Formalize may invoke [Research](../research/README.md),
[Interview](../interview/README.md), or
[Make Tangible](../make-tangible/README.md) for one bounded factual,
human-judgment, or reaction question. Each returns evidence or reaction;
Formalize interprets the return and checks the combined specification without
duplicating records or artifacts or directing every local step.

When settled background is too complex for meaningful specification judgment,
Formalize may recommend one bounded [Orient](../orient/README.md) interaction
and invoke it only after the human agrees. Orient explains existing or accepted
meaning; Formalize still owns every question about what behavior, boundary,
exclusion, or proof should govern. A human disagreement with the proposal is
specification work, not a misconception for Orient to correct.

Invoke [Security](../security/README.md) when an attacker-focused question
could change a specification boundary or required proof. Security returns
validated findings; Formalize either incorporates their specification meaning
or returns changed Requirements truth to Requirements Discovery.

Agent-startable supporting capability calls need no permission ceremony.
Orient is human-selected supporting work: recommend its exact benefit and
begin only after the human agrees. Any material change a supporting result
reveals still returns to its exact governing owner and passes that record's
normal gate.

Interpret proposal feedback before revising the nearest editable file. A
clarification or correction to the current Evolution or Issue stays with that
owner. A newly revealed need, constraint, preference, or changed human truth
returns to Requirements Discovery. Revise only the descendants whose meaning
changed and foreground their semantic diff for renewed judgment.

## Let a failed route fail honestly

If Evolve cannot produce at least two meaningful advances, it returns the
evidence to Formalize. Explain what changed, recommend direct Issues, and wait
for the human to select that replacement route.

If direct Issue definition exposes several useful coherent advances whose
learning should shape later work, return the evidence and recommend discussing
Evolve. Do not silently relabel Issues as Evolutions.

If either path reveals that the accepted Requirements or Project boundary are
wrong, return to Requirements Discovery rather than repairing the nearest
Formalization record.

## Check the complete translation

For standalone or direct Project-owned Issues, confirm that the complete set
specifies its explicit outcome. For Evolve, confirm that the Map expresses a
coherent progression and that the selected Evolution and its Issues faithfully
specify the current advancement.

Surface consequential gaps, conflicts, exclusions, dependencies, proof, and
uncertainty that is safe to carry. Explain coverage where it improves judgment,
but do not manufacture an exhaustive Requirement-to-Evolution-to-Issue ledger
when the relationship is already clear.

Coverage is semantic, not a mention count. A complete-looking Issue set remains
wrong when two Issues assign the same state to different owners, contradict
failure behavior, omit an exclusion, or require proof that cannot establish the
accepted outcome.

Formalization carries established change pressure into ownership, interfaces,
deliberate limitations, learning targets, and required proof at the altitude
where it matters. It does not prescribe the refactoring or file structure that
Delivery will choose, and it does not invent future behavior to justify
abstraction.

## Preserve navigation, not duplicate truth

Formalize creates no `formalization.md`, route decision file, orchestration
record, or duplicate specification.

When a Project exists and another session needs continuity, update its Brief
with:

- the chosen route;
- the current selected Evolution or direct Project Outcome;
- links to the governing Map, Evolution, and Issue files;
- remaining consequential uncertainty; and
- the current recommendation.

Keep those entries terse. The authoritative contents remain in Requirements,
`evolutions/`, and `issues/`. A standalone Issue carries enough local outcome
and accepted-truth context to remain understandable without manufacturing a
Project Brief.

## Finish through the owned gates

Formalize has no separate approval gate. The selected path supplies the gates
that judge governing truth:

- Map Approval for the progressive strategy;
- Evolution Definition Approval for the selected high-level specification; and
- one or more bounded coherent Issue Approval interactions for the complete
  current detailed specification set.

Before each gate, revalidate only volatile evidence that materially supports
the proposed record. Preserve stable Requirements and unaffected
specification; reopen the exact boundary whose feasibility or meaning changed.

After a material revision, compare the affected record against governing
Requirements and still-valid accepted truth, not only the latest annotations.
The next version diff foregrounds both requested changes and any unintended
semantic loss introduced during revision.

After the complete current Issues pass approval, explain the accepted
specification, coverage, exclusions, and remaining safe uncertainty. Recommend
Delivery planning and stop for the human's separate choice. Approval and
recommendation grant no planning or implementation authority.

## It is working when

- The human chose Formalize after accepted Requirements became sufficient.
- The route recommendation follows the actual work rather than size or
  technical structure.
- The human selected standalone Issues, Project-owned Issues, or Evolve
  conversationally.
- Evolve, Define Issues, and supporting skills retain their local ownership.
- Failed route premises return with evidence and no silent switching.
- Proposal feedback changes the correct semantic owner.
- The current formal specification coherently covers its accepted owner rather
  than merely mentioning every Requirement.
- Volatile supporting evidence is current at the owning gate.
- Material revisions preserve still-valid truth and expose semantic loss.
- Known change pressure has consequences in the specification without
  speculative implementation.
- The nearest durable owner navigates governing files without copying them.
- Existing Record Gates judge the work without a duplicate Formalization
  gate.
- Formalize explains the result, recommends Delivery planning, and stops.

## Skill structure

Route recommendation, conversational selection, outer ownership, composition,
coverage, exact returns, navigation, completion, and stopping belong in
`SKILL.md`. Formalize invokes [Evolve](../evolve/README.md),
[Define Issues](../define-issues/README.md),
[Design Solution](../design-solution/README.md),
[Research](../research/README.md), [Interview](../interview/README.md),
[Orient](../orient/README.md),
[Make Tangible](../make-tangible/README.md), and
[Security](../security/README.md) only for the bounded procedures
each owns. The selected record-owning child invokes
[Plannotator](../plannotator/README.md) for its own gate; Formalize creates no
duplicate interaction or Formalization gate. It uses
[Learning and Return](../../references/learning-and-return.md) and only the
Core and Requirements Discovery record schemas needed to update Project Brief
navigation. Evolve and Define Issues own their record schemas. Make Tangible
owns artifact fidelity and any non-trivial comparison surface.
A local reference is justified only if a recurring rich route-comparison path
would otherwise obscure this common procedure.

## Direct dependencies

### Skills

- [Evolve](../evolve/README.md) — define a sequence of meaningful working
  forms; return the accepted Map and selected Evolution; Formalize retains
  route ownership.
- [Define Issues](../define-issues/README.md) — define detailed specification
  boundaries; return approved Issues; Formalize retains coverage and route.
- [Design Solution](../design-solution/README.md) — resolve a consequential
  specification structure; return a solution shape; Formalize retains the
  proposal.
- [Research](../research/README.md) — resolve one formalization fact; return
  evidence and limits; Formalize retains synthesis.
- [Interview](../interview/README.md) — resolve one human-owned specification
  judgment; return the scoped answer; Formalize retains ownership.
- [Orient](../orient/README.md) — teach one settled model after the human
  accepts the suggestion; return comprehension and uncertainty; Formalize
  retains specification meaning and judgment.
- [Make Tangible](../make-tangible/README.md) — construct and verify a bounded
  proposal surface; return reaction and fidelity limits; Formalize retains the
  specification question.
- [Security](../security/README.md) — investigate a security question that
  affects specification; return validated findings; Formalize retains routing
  or returns changed Requirements truth upstream.

### Shared references

- [Learning and Return](../../references/learning-and-return.md) — route Map,
  Evolution, and Issue learning to the exact causal owner.
- [Records: Core](../../references/records/core.md) and
  [Requirements Discovery](../../references/records/discovery.md) — update only
  Project Brief navigation that Formalize directly owns; Evolution and Issue
  schemas remain owned by Evolve and Define Issues.
