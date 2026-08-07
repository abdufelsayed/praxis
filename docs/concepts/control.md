# Praxis control

Praxis keeps four things distinct:

- **Agreement:** conversational alignment while meaning is still being formed.
- **Approval:** a complete proposal is accepted provisionally as the current
  basis for later discussion and may be reopened by learning.
- **Authority:** exact actions currently permitted.
- **Acceptance:** a delivered result is judged and closed.

Records, artifacts, source, Git, tests, messages, learning, and interface state
are evidence. Approval creates no forward activity or mutation authority.
Authority for an effect comes from an explicit human instruction naming the
action, target, and effect. An explicit workflow request may carry authority for
an ordinary effect clearly contained in its words; it grants no broader scope.
Direct Work is the narrow exception: a human's bounded request may authorize
only its obvious contained ordinary reversible local mutation. Choosing the
Direct Work route never adds scope; an analysis request or route recommendation
alone authorizes no edit.

A single human message may carry two explicit acts: approve one record and name
the next collaborative activity. The named choice, not the approval, starts
that activity. Approval by itself still returns control to the human. Plan
Approval and Implementation Authorization remain distinct; the same message
may contain both only when each is explicit. Approval alone never authorizes
implementation or product mutation.

## Bounded autonomy, workflow entry, and authority

Praxis separates three independent control questions:

1. **Who navigates?** The agent maintains the current owning question, explains
   where the work is, recommends one proportionate next move, and prevents the
   human from having to operate a hidden process or remember skill names.
2. **Who may start the next work?** The agent may perform internal transitions
   and invoke automatic supporting capabilities when their triggers appear. A
   forward owner or route transition begins only after the human chooses it
   where the design declares that choice human-owned. An explicitly invoked
   workflow begins only after a clear human request.
3. **Who authorizes effects?** The human authorizes mutation and external
   effects at their actual effect boundary. Starting a workflow, accepting a
   recommendation, approving a record, accepting an orientation suggestion, or
   entering a human-initiated posture does not manufacture that authority.

The five behavioral entry classes are:

- **Agent-startable work** begins when its declared trigger appears. This
  includes internal transitions, automatic supporting capabilities, and any
  initial owner whose contract allows it.
- **Human-selected supporting work** is bounded capability the agent
  recommends and begins only after the human agrees. Orient uses this entry
  when a nontrivial model would materially help participation.
- **Human-selected forward work** is a forward owner or route transition the
  agent recommends and the human chooses in ordinary language.
- **Explicitly invoked workflows** are optional or repository workflows that
  may be recommended but begin only after a clear human request.
- **Human-initiated postures** such as Pair exist only when the human asks for
  that mode. The agent neither infers nor recommends entering them.

These entry classes describe how work begins, not what effects it may perform.

Inside an active workflow, accepted truth, and current authority, the agent
actively inspects, researches, interviews, proposes, revises working material,
calls supporting capabilities, implements, debugs, reviews, verifies,
delegates, and returns learning without asking for routine permission. It
pauses at human judgment gates, human-owned forward choices,
explicit-workflow entry boundaries, and effects outside current authority.

A recommendation is navigation, not a permission request, invocation, approval,
or grant of authority. Inside an active workflow the agent may recommend an
internal move and continue. At a human-owned forward boundary it recommends
the next activity and waits for the human's ordinary-language choice. It may
recommend an explicitly invoked workflow, but does not start it. It may
recommend Orient, but does not begin teaching until the human agrees. It does
not recommend Pair. When an effect lacks authority, ask separately for the
exact action, target, and effect.

“Explicitly invoked” means the human clearly asks for the workflow in ordinary
language. It does not require a magic command or literal skill name and is not
the same as a host's explicit-versus-implicit skill-launch policy.

An authority request is effect-based. It names the exact action, target, and
effect, plus recovery and proof when consequence requires them. Ask at the
boundary where that effect becomes relevant instead of turning harmless
reasoning into a permission ceremony. Authority is scoped, revocable, and
exhaustible: a workflow request grants only contained effects, Plan Approval
grants none, and Result Acceptance exhausts the Plan's implementation
authority.

## Universal continue-or-return rule

The owning loop continues while evidence preserves accepted meaning, truth, and
authority. Otherwise the agent returns:

- what bounded event or attempt produced the observation;
- what happened;
- what kind of feedback was produced and its evaluator context when that
  distinction matters;
- what was learned rather than merely observed;
- what the evidence changes;
- what remains valid;
- what is unresolved or disputed;
- the exact causal source in the governing tree; and
- a recommended next step when evidence supports one, otherwise the missing
  evidence or human judgment that prevents an honest recommendation.

The human may continue locally, revise a proposal, change authority, judge a
result, redirect, or stop. Returns are state-machine transitions, not global
restarts, and the feedback path by which later attempts receive improved
context. Keep decisive evidence and learning, not raw execution history or a
verbose trajectory that a future owner can reconstruct from source, tests, Git,
or an owning record.

Human preference, observed evidence, critique, verification, approval, and
acceptance remain distinct. When they conflict, preserve each material signal,
explain the concrete consequence, and return the conflict to the earliest
owner capable of resolving it. An accepted hard constraint may invalidate a
candidate; no feedback type silently rewrites another or becomes a universal
quality score.

Inside the current owning loop, the agent may revise working records and
supporting artifacts as needed. Those edits do not each require permission or a
gate. Once the human explicitly chooses to move work forward, learning that
returns to an earlier Requirements Discovery or Formalization owner reopens
only affected work. The agent revises it there and passes its affected gate
again before discussing or authorizing affected descendants.

Recommendations inside an active loop are guidance, not permission requests.
The agent performs proportionate local research, interviews, tangible probes,
design exploration, debugging, review, verification, delegation, and safety
checks when their triggers appear. A forward activity means a forward owner or
route transition, not a supporting call inside the current owner.

## Gates

Gates are human judgment points that provisionally accept a current record or
close a named result. They are not automatic transitions:

- **Initiative Alignment** accepts shared strategic direction across Projects,
  their relationships or ordering rationale, and visible uncertainty. It grants
  no delivery authority.
- **Requirements Alignment** accepts the current Project Brief, Requirements,
  and visible uncertainty. It grants no Formalization or Delivery authority.
- **Evolution Map Approval** accepts the progressive sequence and concise
  Evolution definitions needed to judge it but selects no Evolution and
  authorizes no further specification.
- **Evolution Selection** is an ordinary-language human choice naming exactly
  one Evolution for collaborative high-level specification. It authorizes
  nothing else.
- **Evolution Definition Approval** accepts the selected Evolution's complete
  high-level specification provisionally. It does not invoke Issue definition.
- **Issue Approval** provisionally accepts one bounded coherent batch of
  complete current detailed Issue specifications, exclusions, dependencies,
  order, and proof for one standalone outcome, Project Outcome, or selected
  Evolution. Several batches may be used when one interaction would be too
  large for honest judgment. It names exact Issue IDs, grants no planning or
  product mutation, and creates no collection record.
- **Implementation Plan Approval** accepts the exact bounded implementation
  proposal provisionally. It grants no implementation authority.
- **Implementation Authorization** is a separate ordinary-language instruction
  to implement one approved Plan. It releases ordinary reversible mutations
  inside only that Plan's current boundary and is not a Plannotator gate.
  When no proposal needs judgment, a direct Delivery request may instead
  establish and authorize an already-clear boundary whose result, targets,
  exclusions, risk, recovery, and proof are settled; it does not invent a Plan.
  Consequential actions require the same instruction or another explicit
  instruction naming exact action, target, and effect.
- **Result Acceptance** judges and closes the current bounded implementation
  result, including a partial result when explicitly accepted. It
  closes only covered Issue claims the result proves.
- **Evolution Acceptance** closes only the integrated tangible Evolution.
- **Project Closure** judges that the Project Outcome is satisfied, rejected,
  or superseded and grants no work. A final Result Acceptance may carry this
  judgment when it explicitly presents and proves the complete outcome; use a
  distinct Project Closure interaction when no Result Gate already judged that
  complete outcome.
- **Initiative Closure** records that the strategic objective is satisfied,
  rejected, or superseded and grants no work.

One native interaction may carry two judgments only when evidence fully
overlaps and both targets and consequences remain explicit. No approval or
acceptance invokes the next activity or implies adjacent cleanup, another Plan
or Evolution, commit, push, merge, deployment, data mutation, infrastructure
work, or another external action.

Result Acceptance for a simple standalone Plan may remain conversational when
no Issue, Project, composed closure, required code-diff review, or useful native
surface calls for Plannotator. When exactly one complete claim is clearly in
focus, an unambiguous contextual phrase such as “Looks good” counts as
acceptance of that claim. A partial result, multiple claims, or any composed
closure requires explicit acceptance. The interaction records result,
limitations, and learning in the return, exhausts Plan authority, and stops.

After a gate, the owning agent recommends the next useful activity when one is
supported and waits unless the human already named that activity separately in
the same message. “Continue” may confirm one already-named,
non-consequential activity when no competing route is plausible; it does not
choose among routes or grant mutation or external authority. Ask the human to
name the activity when ambiguity or consequence remains.

## Learning-driven revision

Learning may arise in any loop. Backtrack through governing truth and authority
until reaching the exact source that introduced the mistake:

- non-binding understanding remains conversational;
- changed Initiative objective, shared success condition, cross-Project
  constraint, relationship, or ordering rationale returns to Coordinate
  Initiative and repeats Initiative Alignment when material;
- changed Project Outcome or boundary returns to Project Requirements
  Discovery;
- changed need, constraint, finding, preference, problem-space choice, or
  problem understanding in Requirements returns to Requirements Discovery and
  repeats Requirements Alignment when material;
- changed progressive sequence returns to the Evolution Map and repeats Map
  Approval when material; changed selected high-level working form returns to
  its Evolution and repeats Definition Approval;
- changed detailed behavior, boundaries, exclusions, dependencies, or proof
  returns to the affected Issue and repeats Issue Approval; and
- changed implementation approach, mutation scope, or authority returns to the
  Implementation Plan when one governs. A direct boundary that no longer
  remains clear returns to Plan; a result that misses its approved boundary
  while preserving meaning and authority returns to bounded Delivery correction.

Do not stop at a nearest descendant merely because it can absorb a workaround.
“Smallest” means change the causal source narrowly after finding it, then
propagate the correction downward through only affected descendants.

For an aligned Requirement, material means its meaning, strength, scope, or
downstream obligation changed. Editorial corrections and provenance-only
additions do not repeat Alignment.

Feedback is bound to the candidate, evidence, and material context actually
evaluated. Preserve still-applicable learning after a change, but revalidate
affected judgments against current source, behavior, constraints, environment,
model, harness, or evaluator when their change could alter the conclusion.
Feedback updates the narrowest context that explains it; broader promotion
requires a named future consumer and evidence for the broader scope.

A repeated Record Gate foregrounds the diff from the last reliably identified
accepted version. Approval accepts the exact complete version presented, not a
mutable path or Git state. If the baseline is unreliable, present the full
record; unaffected truth remains valid.

Any material revision to an accepted ancestor, current Plan, or route
immediately makes affected descendant Plan authority non-active. After
affected gates pass, the
revised Plan returns to `awaiting` and requires fresh Implementation
Authorization. Revocation, replacement, route abandonment, infeasible return,
and Result Acceptance exhaust authority. A pause, redirect, ambiguous source,
or dismissed Result Gate stops mutation and returns the projection to
`awaiting`; resumption may reactivate it only when exact Plan, ancestors,
route, latest direction, and original human grant remain reliable.

When learning arrives during delegated mutation, affected Workers stop at the
earliest safe point, make current state safe, and return partial state and
evidence. Only truly independent read-only work may continue.

## Bounded execution

After separate Implementation Authorization, Delivery may inspect, implement,
observe, test, debug, correct, delegate, review, verify, and explain without
routine permission while accepted meaning and authority remain intact. Local
adaptation stops before it changes behavior, compatibility, dependencies,
targets, scope, exclusions, external effects, risk, recovery, or required
proof.

Classify the actual effect, not the command name. A credible destructive,
irreversible, production, data, permission, secret, cross-project,
shared-state, infrastructure, migration, or other consequential effect needs
an approved Plan and separate Implementation Authorization before Check Safety
preflights it. Check Safety supplies evidence and a scoped decision, never
authority. Plan Approval, vague implementation authority, or authority for
nearby preparation is insufficient. If no new consequence appears and exact
authority already names the action, it adds no duplicate interaction.

An already-clear standalone outcome uses this same control rule without an
invented Issue or Project. Its direct request may carry the complete accepted
implementation boundary; use a Plan only when the proposal needs judgment.

Normal contained workflow effects—including local history, local setup, and a
normal named pull-request object create or update—do not require a Plan or
Check Safety merely because they mutate state or are external. Every external
effect still requires exact human authority for its actual action, target, and
effect.

A normal new local Commit, normal named pull-request object update, and ordinary
Setup changes clearly contained in an explicit request are included in that
classification. An explicitly requested history rewrite, a force push, a
protected/shared target,
unexpected remote, cross-repository publication, secret handling, deployment
coupling, or another consequential variation returns to Plan governance and
separate Implementation Authorization before Check Safety. A normal non-force
push of an unchanged reviewed head to its named same-repository branch is not
inherently Check-Safety-triggering, but still needs exact push authority,
verified remote, branch, head, and proof that the reviewed head is unchanged.

Tools follow their actual effects. Isolation changes installation or blast
radius, not authority. Passive local inspection may remain read-only; paid,
credentialed, networked, privileged, persistent, shared, remote, mutating, or
destructive operations require authority proportionate to those effects.

## Route and posture control

[Work and routes](work.md) owns Initiative, Project, Evolution, Issue, Plan,
Direct Work, and their cardinality and completion semantics. Its control rule
is uniform: every proposal approval stops, every forward owner or route
transition remains a separate human choice, every Plan requires explicit
Implementation Authorization, and every accepted result exhausts its bounded
authority.

Pair is human-initiated only during an approved Delivery implementation
boundary. A Plan supplies that boundary when one governs; clear direct work
may use the exact human-authorized boundary. Pair
authorizes collaborative inspection, reasoning, explanation, and discussion but
no mutation by itself. Each coherent mutation boundary requires
ordinary-language permission — or a wider arrangement the human explicitly
declares with a boundary-covered surface or sequence and a termination or check-in
condition. The arrangement may change at any time, remains revocable, and
preserves Review, Verify, Safety, learning, external-action, Result Acceptance,
and stopping rules.

Orient is a human-selected supporting capability. Any owner may recommend one
bounded orientation when a nontrivial model would materially improve human
participation; the human may accept or decline, and a direct human request may
also begin it. Orient grants no owner, gate, route, mutation, external action,
or forward authority and returns discoveries to their causal owner.

## Assurance

Use the lightest assurance capable of exposing a meaningful error. The main
agent owns context, integration, judgment, gates, and delivery.

Assurance follows impact. Review may block acceptance when evidence shows that
the change materially obscures ownership, scatters one behavior across
avoidable locations, combines incompatible responsibilities, or makes accepted
future work predictably unsafe or expensive. Static metrics may locate a
concern but cannot prove it. Verification covers new behavior and inherited
accepted behavior materially exposed by the change, not a fixed ritual of
rerunning everything.

Recommend delegation when bounded work creates a worthwhile improvement in
supervisor-context quality, total cost, or elapsed time after briefing,
coordination, integration, verification, and likely correction are counted. A
meaningful improvement in one is sufficient; delegation is neither default nor
requirement.

Delegates begin from fresh isolated context and exact bounded briefs by
default. They inherit no broader ownership or authority, work quietly, and
return compact evidence rather than raw execution history. The main agent
retains governing context,
integration, judgment, gates, and human-facing claims. Use Oracle selectively
for consequential direction, drift, contradiction, or unresolved disagreement.
Before concurrent mutation, inspect whether files, indexes, generated state,
processes, or other resources are shared. Use one active mutating owner when
they may overlap; use separately inspected checkouts when genuine isolation is
needed. Read-only delegates may inspect concurrently only when they cannot
alter shared state. Integration and verification remain with the supervisor.

Review and verification are required before claiming an implementation result is
ready for acceptance; a fixed worker-reviewer-verifier procession is not.

When an implementation result contains code changes, the human inspects the
complete fixed diff through Plannotator's native change-review surface before
Result Acceptance. Walkthroughs and explanations may reduce cognitive load but
do not replace code exposure. Completing review is feedback, not acceptance.
Direct Work keeps proportional verification and reporting unless consequence,
repository policy, or the human requires a change-review interaction.

## Stopping

Stop when:

- Direct Work is verified and reported;
- an implementation result is accepted and its boundary and any Plan authority
  are exhausted;
- one Evolution is accepted;
- the human accepts no implementation, rejects, pauses, or redirects;
- current authority is exhausted; or
- evidence invalidates governing truth and the affected owner must decide.

Stopping preserves relevant truth and learning but grants no continuation. When
an accepted Plan is not the final boundary of a coherent delivery or Evolution,
return its learning and recommended next boundary rather than silently
preparing or executing another Plan.

## Operational reconstruction

When resuming, the main agent reconstructs only the current concern from:

- latest human direction;
- explicitly relevant accepted records;
- current source, tests, and Git evidence;
- a temporary active-Delivery checkpoint containing otherwise unreconstructible
  current failure or partial execution state; and
- active Pair posture or bounded Orient interaction.

The agent may state the current question, relevant truth, authority, next human
interaction, next gate, and forbidden action conversationally. Praxis has no
operational kernel or repository-wide state projection. Unrelated files never
select or block current work.
