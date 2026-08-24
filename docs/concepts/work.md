# Praxis working forms

Praxis distinguishes strategic direction, collaboratively bounded Projects,
coherent advances, required work, and implementation authority. These are
responsibility boundaries, not mandatory ceremony:

```text
optional Initiative
  -> independently governed Projects

Project
  -> direct Issues
  OR
  -> Evolution Map with at least two Evolutions
     -> one human-selected Evolution
        -> Issues

standalone Issue OR Project/Evolution Issues
  -> sequential Implementation Plans inside Delivery

Implementation Plan
  -> separate human implementation authorization
  -> execution, evidence, acceptance, and STOP
```

These are working forms available to one active Inquiry, not a workflow the
requester must execute in this order. Direct Work may skip every record or
artifact that adds no useful judgment or continuity. The
[system model](system.md) explains the Inquiry positions, while
[control](control.md) explains approval, authority, acceptance, and stopping.

## Choosing a proportional working form

Selection is advisory. The agent recommends one form from current
understanding, consequence, delivery shape, and useful control; the requester
chooses or changes it in ordinary product language without naming a skill.

At a human-owned routing or revision point, state what is understood,
recommend one proportional path, explain why it fits and what would happen
next, what remains unauthorized, and the material alternatives, then ask for
judgment. Do not dump every Praxis option or wait for a magic command. Routine
supporting work continues without interruption while it remains inside the
Inquiry's accepted truth, posture, persistence policy, and authority.

Before recommending implementation, ask whether current Requirements, system
understanding, boundaries, and evidence support honest Formalization or
Delivery. If not, Requirements Discovery probes the highest-value
uncertainty. Learning during Formalization or Delivery may return there, so
route choice is revisable rather than a one-time stage.

When the outcome is judgeable, recommend among:

1. no implementation;
2. Direct Work;
3. one standalone Implementation Plan;
4. one or more standalone or Project-owned Issues; or
5. Evolve inside a Project.

Size informs the recommendation but never decides it. A large diff, several
Issues, several sequential Plans, a durable Project, or an Initiative does not
imply Evolve. Project and Evolution boundaries are collaborative judgments
derived from actual Requirements, territory, complexity, uncertainty, and
preferred solution.

Discussion creates no authority. A Map, Issue, or Plan becomes provisionally
accepted only through its own gate. Approval of one record never chooses the
next route. After a gate, explain what was accepted, recommend the next
working form when evidence supports one, and wait unless the requester already named
that activity separately in the same message. Plan Approval always stops
before implementation; explicit Implementation Authorization remains a
separate act whether it appears in the same message or later.

A later reply such as “continue” may confirm one already-named,
non-consequential activity when no competing route is plausible. It does not
choose among material alternatives or grant mutation or external authority.

## No implementation

Use no implementation when the honest outcome is understanding, aligned
Requirements, accepted risk, rejection, or deferral. Preserve that outcome
only when a future reader needs durable context, then stop.

## Direct Work

Use Direct Work when the requested behavior and local implementation pattern
are clear and a durable Implementation Plan adds no useful control. The
human's bounded request authorizes only the obvious, contained, ordinary
reversible local mutation.

Implement, inspect, verify, report, and stop. Direct Work needs no Project,
Issue, Implementation Plan, Evolution Map, or runtime Praxis state. A formal
Result Gate remains optional unless consequence, compatibility, safety,
external mutation, governing policy, or explicit human direction makes it
useful.

If the [Check Safety contract](../../skills/check-safety/SKILL.md) triggers because
the action is destructive, irreversible, production-affecting, data-affecting,
permission-changing, secret-handling, cross-project, shared-state, broad,
migratory, infrastructural, or otherwise consequential—including a remote
action whose actual credible effect is consequential—do not mutate through
Direct Work. Externality or remoteness alone does not trigger Check Safety;
ordinary same-repository PR or push work may remain direct when its real effect
is contained and authorized. Recommend a standalone Plan when the exact effect,
recovery, evidence, and human authority need to be judged before action.
Read-only safety inspection may remain direct.

If the edit exposes structural repair outside its obvious contained
authority, return the evidence and recommend the proportional Issue and
Delivery path instead of hiding broader work inside Direct Work. A contained
result still preserves inherited behavior materially exposed by its change.

## Initiative

An **Initiative** is optional durable direction for one strategic objective
that requires multiple independently governed Projects. It preserves the
shared objective, success conditions, cross-Project truth and constraints,
relationships or ordering rationale, and material learning.

Coordinate Initiative may begin after the requester chooses it once at least two
credible independently governable Project candidates are visible. It develops
the shared direction collaboratively; it does not wait for every Project's
Requirements to be complete or predefine them.

An Initiative structurally groups its Projects but contains no Issues or
Implementation Plans of its own and owns no delivery authority. Each Project
retains its Requirements, Formalization, gates, execution, acceptance, and
stopping. The Initiative may record Project dependencies, priority, and
recommended order as strategic truth. Completing one Project may update
Initiative learning but never selects or starts another Project automatically.

Cross-Project learning updates the Initiative through an explicit before-and-
after revision. It identifies affected Projects and recommends the exact owner
each should reopen, but never edits their governing truth or transfers
authority for them. Routine evidence and non-consequential clarification may
update in place. Changed shared objectives, success conditions, constraints,
or Project relationships repeat Initiative Alignment; only Projects whose
accepted meaning changes repeat their affected gates.

An Initiative closes when its strategic objective is satisfied, rejected, or
superseded, not when an original Project checklist is exhausted. When its
Projects no longer share consequential direction, constraints, or learning,
recommend splitting, superseding, or closing it rather than preserving a
miscellaneous portfolio.

Do not create an Initiative merely because one Project is large, durable, or
uses Evolutions. A Project is enough when one coherent outcome can be judged
and governed independently.

## Project

A **Project** is a substantial body of Requirements that the requester and agent
choose to govern as one coherent Project Outcome. It provides the boundary
within which they can judge whether the intended result has been achieved.

Project boundaries are designed for the actual situation. A Project may be one
feature, a whole application, a systems capability, a migration, or another
substantial body of work. Size and product vocabulary are evidence, not
classification rules. If later inquiry shows that a Project combines, omits,
or misstates substantial outcomes, return to Requirements Discovery and
reconsider the boundary collaboratively.

A Project may remain conversational when one session carries enough context.
Create its offline bundle only when named future loops need its Project Brief,
Requirements, Unknowns Map, interpreted References, retained native
artifacts, later Formalization, or Delivery state. A standalone Project lives
under `.praxis/projects/`; an Initiative-owned Project lives beneath that
Initiative. Accepted ownership changes move the complete bundle and preserve
its stable ID.

A Project may:

- end with understanding or no implementation;
- use Direct Work for an ordinary reversible local edit when structure adds no
  useful control and Check Safety does not trigger;
- deliver one coherent outcome through Issues and, when needed,
  Implementation Plans; or
- use Evolve when at least two meaningful working forms justify progressive
  delivery.

Project durability never selects a delivery route or grants implementation
authority.

## Evolution

An **Evolution** is the high-level formal specification of one small but
substantial, coherent advancement inside a Project, selected from an accepted
Evolution Map:

```text
Evolution {
  tangible_outcome,
  accepted_truth,
  deliberate_limitations,
  learning_target,
  required_proof
}
```

It states what working form should exist, what it deliberately does not yet
promise, and how that form will be judged. The result must be integrated and
real enough to exercise, review, prove, and learn from as a coherent advance
inside this Project; its meaning comes from how it advances the Project
Requirements, not from an external lifecycle or audience category, and it
need not complete the Project.

An Evolution links governing truth rather than copying it, defines complete
behavior only at the high-level altitude, and leaves detailed flows,
interfaces, edge cases, failure behavior, acceptance boundaries, and
dependencies to one or more Issues. Its Required Proof names integrated
observable claims; Issues refine them and Plans choose concrete checks.

When known change pressure matters at this altitude, state the pressure,
deliberate limitation, or learning target the working form must support. Do
not prescribe speculative architecture or turn possible future work into
present behavior.

An Evolution may establish, extend, deepen, refine, replace, or remove
behavior. It may be shaped like a feature, subsystem, migration state,
compatibility step, quality improvement, or technical refinement. None of
those categories automatically makes or disqualifies an Evolution. A
dependency, task collection, Plan boundary, or arbitrary checkpoint becomes
an Evolution only when it forms a coherent Project advancement.

An Evolution is not an Implementation Plan. It does not prescribe file edits,
commands, code structure, or execution order.

### Evolution Map and selection

Evolve requires an Evolution Map containing at least two Evolutions. A
one-Evolution Map creates no progressive choice or learning path, so that
Project uses Issues directly.

Each Map entry carries enough high-level meaning to judge the progression:

```text
Evolution Map entry {
  stable_id,
  sequence_position,
  tangible_advancement,
  deliberate_limitations,
  why_this_position_is_useful,
  learning_target?
}
```

The Map carries concise Evolution definitions sufficient to judge the
progressive sequence. It explains how the sequence collectively advances the
Project Requirements through semantic coverage of their meaning.
Map Approval selects nothing and authorizes no further specification. The
the requester selects one Evolution in ordinary language, then collaboratively
develops its complete high-level specification and passes Evolution Definition
Approval. Stop and recommend Issue definition. Only after the requester chooses to
continue is that Evolution expanded collaboratively into detailed Issues.
Later Evolutions remain concise Map entries so current learning can change
their content.

Evolve develops the Map from Project Requirements, current system,
complexity, dependencies, uncertainty, and preferred solution. Depending on
the question, Evolve may call Research for a bounded factual finding,
Interview for a human-owned choice, Make Tangible for a reaction surface, or
Design Solution for a consequential solution shape. Each returns to Evolve,
which retains Map ownership. If mapping shows that the Project Outcome or
boundary is wrong, return the conflict to Requirements Discovery rather than
forcing a sequence.

An accepted Evolution's implementation and proof remain sequential. Later
implementation boundaries stay unformed until earlier results and learning
have been interpreted. A clear selected Evolution may enter Delivery directly;
use a Plan when its implementation proposal needs judgment. Plan count does not
define whether a working form is an Evolution. The integrated working form
passes Evolution Acceptance and returns its learning before any later Evolution
is selected or prepared. One final Result Acceptance may also judge the
Evolution only when it explicitly presents and proves both claims.

Learning may revise future Map entries. Repeat Map Approval when the number,
order, boundary, meaning, or progression of future Evolutions changes
materially; ordinary clarification and supporting evidence may update in place
when they preserve the accepted strategy. If several meaningful Evolutions no
longer govern the remaining work, return lasting learning to its owners and
remove the unreferenced Map.

If planning unexpectedly reveals a useful progressive sequence, return to
route discussion and recommend Evolve. Never relabel work retroactively. If a
proposed Evolution loses independent meaning, revise the Map or return to
Issues and sequential Implementation Plans.

The complete Map lives at `evolutions/map.md`. Create a lowercase
`evolutions/eN-<name>.md` file only when that Evolution is selected for
collaborative high-level specification. Its stable descriptive ID remains
separate from its current sequence position and filename. A direct-Issue
Project creates neither the Map nor the directory.

## Issue

An **Issue** is a small, concrete, detailed formal specification of what must
become true. It is written so a competent future reader can judge it without
reconstructing its originating conversation:

```text
Issue {
  observable_outcome,
  included_behavior,
  deliberate_exclusions,
  dependencies_and_order,
  required_proof
}
```

Issues define required behavior and acceptance boundaries, not implementation
steps. They may include interface constraints, edge cases, and failure
behavior when those determine the result, but they do not prescribe file
edits, code structure, commands, or implementation sequence.

The exact local envelope and body are defined by the [Issue record
contract](../../references/records/formalization.md#issue). Its opening outcome,
Context, Requirements, and Acceptance Criteria form the stable core. Out of
Scope and Dependencies appear only when meaningful, and contextual
subsections expose interfaces, states, failures, compatibility, or other
detail only when useful.

Required proof includes inherited accepted behavior materially exposed by the
Issue when a change crosses a shared invariant, ownership boundary, interface,
or other known pressure point. This is an impact judgment, not a requirement
to repeat every Project check for every Issue.

One Issue remains coherent when its behavior, exclusions, dependencies, and
proof can be understood and judged together. Split Issues when required
outcomes can be meaningfully specified, revised, or proved independently,
never merely because implementation crosses files, components, or technical
layers. An Issue is ready when its required meaning and proof are judgeable;
unknown implementation mechanics may remain for Delivery planning.

An Issue may be standalone when its required outcome is clear without a
durable Project. Otherwise it has exactly one specification owner:

- the currently selected Evolution;
- the Project Outcome when the Project does not use Evolve; or
- its own explicit outcome when no Project is useful.

Later Evolutions depend on accepted results rather than sharing or reopening
an earlier Issue. If later work must change accepted behavior, create a new
Issue owned by that later Evolution.

Praxis has no sub-Issues. If one Issue contains several independently judgeable
required outcomes, split it into sibling Issues under the same owner. If the
detail only explains how to implement one outcome, keep it in the
Implementation Plan.

Store a Project-owned Issue in that Project's `issues/iN-<name>.md` and a
standalone Issue in `.praxis/issues/i-<name>.md`. IDs are lowercase and stable
across the context workspace. Refining or moving an Issue without changing
its identity keeps the ID. Splitting, merging, or replacing one creates new
IDs and records only the minimal supersession relationship needed to interpret
the current set.

An Issue file remains a current detailed specification. Delivery may update its
one concise current Result summary
with proved coverage, decisive evidence, and remaining limitations, but Plans,
implementation notes, command output, and verification history remain outside
it.

## Issue Approval

Develop the Issue set collaboratively from the selected Evolution, direct
Project Outcome, or explicit standalone outcome. Explain proposed boundaries
and meaningful alternatives, then present the complete current group through
one or more bounded, coherent native review interactions. When a Plannotator
surface is selected, it presents the exact records and returns the decision or
annotations; that interaction is the Issue Approval Record Gate. Otherwise an
equivalent conversational judgment may be enough.
Use several batches when one interaction would be too large for honest
judgment. Each interaction is Issue Approval, names the exact Issue IDs it
judges, and presents those complete current files; it does not create another
collection record or duplicate the authoritative Issue files.

Formalization may call Research, Interview, Make Tangible, or Design Solution
for one bounded specification question. Their evidence or reaction returns to
Formalization, which retains specification ownership. If the answer changes a
Requirement, Project Outcome, constraint, preference, or problem understanding,
return learning to Requirements Discovery instead of absorbing it into an
Issue.

Approval provisionally accepts only the named Issues' outcomes, included
behavior, exclusions, dependencies, ordering, and proof. Cross-batch
dependencies and ordering remain visible. Planning may depend only on
accepted Issues and waits until every Issue required by its proposed boundary
is accepted. Approval grants no planning or implementation authority.

After every required current batch is accepted, explain the accepted Issues,
recommend Delivery planning, and wait. Material learning may revise affected
Issues before or during Delivery. Return to the Issue proposal, foreground the
diff from the last reliably identified accepted version, and repeat Issue
Approval for each affected batch before dependent planning continues.
A shared interface, invariant, or dependency change may affect Issues in
several batches; re-present every affected Issue while unaffected Issues remain
accepted.

## Implementation Plan

An **Implementation Plan** belongs to Delivery and describes how one accepted
Issue boundary or already-clear standalone implementation outcome would be
produced inside a proposed bounded authority. Its exact local envelope and
body are defined by the [Implementation Plan record
contract](../../references/records/delivery.md#implementation-plan).

Use a standalone Plan when the intended behavior and outcome are clear but
implementation approach, mutation boundary, risk, recovery, or proof deserves
collaborative review. Do not invent an Issue or Project merely to provide it
with a parent. Delivery may proceed without a Plan only when the requester's
direct request already settles the result, governing truth, targets, exclusions,
dependencies, risk and recovery, and capable completion proof. Otherwise
Delivery discusses one current Plan, passes Plan Approval, obtains separate
Implementation Authorization, produces and proves the bounded result, returns
learning to any actual causal owner, and stops again.

Its opening bounded result and required sections make exact Context and
Coverage, Proposed Approach, Changes and Sequence, Scope and Exclusions,
Risks and Recovery, and Verification judgeable. Safe Open Implementation
Choices and a useful Decision Checkpoint appear only when they genuinely
exist. Ordered implementation steps explain consequential mutations,
integration, and evidence without becoming Tasks, progress records, or
separate authority boundaries.

The Plan is precise about consequential implementation choices and authority,
not exhaustive about routine edits. Name exact files, commands, resources, or
steps when they define scope, safety, coordination, recovery, or proof.
Mechanical implementation detail remains adaptable inside the accepted
boundary.

Program-design representations and Decision Checkpoints are conditional Plan
content, not new phases, record types, Evolutions, or gates. A Decision
Checkpoint pauses only when a decision can still change a consequential choice
cheaply. If the decision preserves the approved Plan, Delivery continues under
existing authority; material change returns through the exact owning proposal
and gate.

A Plan may carry an implementation uncertainty only when every plausible
resolution preserves accepted specifications, targets, exclusions,
consequences, dependencies, risk, recovery, and proof. Name that uncertainty
and its safe decision envelope. Otherwise resolve it or return it to its
causal owner before Plan Approval.

When current source shows that the approved result depends on structural
repair, include that repair at the concrete pressure point and include the
cumulative proof needed around it. Do not add unrelated cleanup or speculative
abstractions. Refactoring discovered later remains inside existing authority
only while the Plan's targets, consequences, risk, exclusions, and required
proof remain intact. A dedicated refactoring capability may be called for
substantial pressure analysis, seam selection, transformation, and
preservation proof without transferring ownership or expanding authority.
That capability is named Refactor; it returns the pressure analysis and proof
to Delivery, which retains Plan and result ownership.

“Plan” in Praxis always means this Implementation Plan, never another work
item or product specification.

Implementation Plan Approval accepts only that exact proposal and stops.
Delivery proceeds into implementation only after an explicit ordinary-
language Implementation Authorization. The authorization may accompany
approval in the same message from the requester only when it is clearly stated as a
separate act. Later Plans remain unapproved and unformed until earlier results
and learning are interpreted and the requester chooses another planning
discussion.

Store only the current just-in-time Plan beneath its Project when one owns the
work, or under `.praxis/plans/` when it is standalone. Use a stable lowercase
ID. Persist a future Plan only after the requester selects its result for
planning. Retain a completed Plan only while it governs work or a named future
loop still needs its authority, limitations, or learning. After Result
Acceptance, its Result section preserves proved coverage, evidence, limitations,
unresolved work, and exhausted authority.

Praxis assumes no fixed one-to-one relationship:

- one Implementation Plan may cover several approved Issues when they form
  one coherent implementation, risk, review, and verification boundary;
- one Issue may require several sequential Implementation Plans when useful
  authority or risk boundaries divide its implementation; and
- one standalone Plan may govern an already-clear outcome without inventing an
  Issue or Project.

Convenience alone cannot hide unrelated Issues inside one Plan. Every Plan
names its coverage explicitly, and all Plans are discussed, formed, approved,
separately authorized, executed, reviewed, verified, and accepted sequentially
inside Delivery.

## Results and completion

Result Acceptance may close one or more covered Issues only
when the result explicitly proves each Issue's acceptance claims. Issues do not
receive redundant individual result gates.

Delivery returns a bounded result in this shape:

```text
Result {
  working_form,
  evidence,
  limitations,
  learning,
  unresolved_questions
}
```

The result is interpreted by Delivery and the requester; the shape does not create
another record or authorize adjacent work.

If only part of an Issue is proved, that implementation result cannot close the Issue.
Result Acceptance may still close the actual implementation result as partial when the
requester explicitly accepts the current state. A partial result requires an
explicit acceptance statement; an unambiguous ordinary-language acceptance may
close one complete standalone claim in focus. Record the proved coverage,
limitations, and unresolved work, exhaust the implementation boundary and any
Plan authority, and stop. If
the requester does not accept the partial result, return it and its learning for a
later choice to preserve the baseline, revise the Plan, backtrack, or stop.

When one final implementation result also proves every remaining Issue and the complete
integrated selected Evolution, the same Result Acceptance interaction may
explicitly judge both the bounded result and Evolution Acceptance. When it
proves only its implementation boundary, it closes only that coverage and Delivery
recommends the additional integration or proof still needed.

The same composition applies to a Project using direct Issues: its final
Result Acceptance may also accept the complete Project Outcome only when it
explicitly presents and proves both claims. That composed judgment is Project
Closure; it needs no second gate. Use a distinct Project Closure interaction
only when the Project is rejected or superseded, or when no Result Gate
already judged the complete outcome.

Result Acceptance updates each affected Issue, when any exist, with one
concise current Result summary: proved coverage, decisive evidence
references, remaining limitations, and unresolved work. Later accepted work
replaces that summary rather than appending Plan history. A standalone Plan
returns its result, proof, limitations, and learning directly to the requester and
any actual causal owner in the conversation. Any additional durable record
requires a distinct purpose, consumer, lifecycle, and authority boundary.

No Issue, implementation result, Evolution acceptance, Project closure, or Initiative
learning silently authorizes adjacent work.

## Changing working form or Pair posture

The requester may change working form or enter or leave Pair in ordinary language.
Preserve accepted truth and completed authorized work, then derive future
activity and authority from the latest human direction and still-valid binding
records.

Never carry permission from an abandoned working form or posture into adjacent work.
When the working form changes, return affected meaning to its exact owner instead of
retrofitting old records to justify the new direction.

Pair is a human-initiated interaction posture inside a current approved
delivery implementation boundary, not a form the agent recommends. A Plan is
required only when planning was useful. The requester must request Pair
directly; it returns integrated work and evidence to Delivery with each
mutation permission scoped and revocable, whether granted per boundary or as
an explicitly declared wider arrangement naming a boundary-covered surface or
sequence and a termination or check-in condition. Orient is neither a route
nor a posture: an owner may recommend one bounded orientation as supporting work,
and begins it only after the requester agrees.

## Linear vocabulary boundary

Project and Issue use a relative scale familiar from Linear, but Praxis does
not inherit Linear's complete workflow:

- a Linear Initiative inspired the optional strategic grouping, but Praxis's
  Initiative owns no Project delivery authority;
- Linear Milestones are ordinary project-local stages or checkpoints, too
  weak to carry Praxis Evolution semantics;
- Linear sub-Issues help coordinate tracking, while Praxis uses sibling Issues
  and sequential Implementation Plans instead; and
- the Implementation Plan remains Praxis-specific because it defines the exact
  mutation boundary a later human instruction may authorize.

External terminology does not change these maintained meanings.
