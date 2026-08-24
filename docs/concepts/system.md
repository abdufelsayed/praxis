# Praxis system

Praxis is recursive locally and globally. One active **Inquiry** is the unit of
work; skills are capabilities used inside it, not a process the requester must
operate.

## Central model

**Local recursion** is the Inquiry learning cycle. The agent receives relevant
context, chooses a bounded exploration, proposal, or authorized action,
evaluates evidence or reaction, retains learning that changes later judgment,
and adapts the next attempt. The model's weights remain fixed; its context
improves.

**Global recursion** is selective learning return. A delivery finding may
invalidate part of a specification; a design comparison may reveal a missing
requirement. The affected meaning returns to its earliest causal record, and
only dependent descendants whose meaning or authority changed become stale.
Independent evidence and decisions remain valid.

An Inquiry moves non-linearly among five positions:

- `understand` — discover the problem, territory, and consequential unknowns;
- `accept_meaning` — judge synthesized product or shared meaning;
- `shape` — form a specification or implementation proposal;
- `deliver` — produce and prove an authorized result; and
- `learn_return` — apply evidence that changes earlier meaning.

The agent maintains the Inquiry, recommends meaningful transitions, and runs
bounded supporting capabilities without making the requester name skills or
operate hidden workflow machinery. The requester remains in the loop whenever
the Inquiry changes position, accepted meaning, gate consequence, or effect
authority.

```text
local learning loop:
  relevant context -> explore / propose / act -> evidence or reaction
          ^                                             |
          +-- retained learning <- evaluate / judge <---+

Inquiry positions:
  understand <-> accept meaning <-> shape <-> deliver
       ^                 ^             ^          |
       +----------- selective learning return ----+
```

Requirements Discovery, Formalization, and Delivery are durable working forms
that help an Inquiry in different positions. They are not three peer routers
and do not form a mandatory lifecycle. Clear work may skip any unnecessary
form. No position, capability, message, record, artifact, test, Git fact, or
learning silently inherits or transfers authority.

## Bounded composition

Skills compose through direct bounded calls. A caller names another capability
only when it invokes that capability itself and names a shared reference only
when it directly uses that reference's knowledge. It does not repeat
dependencies hidden inside a callee.

The caller retains its governing question, synthesis, gate meaning and
consequence, route, authority, and stopping rule. The callee returns only the
evidence, reaction, or bounded result it owns.

Make Tangible owns constructing, transforming, simulating, explaining, and
verifying something that must become perceptible. Plannotator owns native
presentation, annotation, bundled interaction, code review, Review Learning,
and native gate interaction for targets that already exist. The owning loop
retains the gate's target, meaning, declared consequence, projection,
authority, transition, and stopping rule.

A capability needing a new reaction surface invokes Make Tangible; Make
Tangible may then select Plannotator as the faithful medium. A capability calls
Plannotator directly only when it owns a Plannotator-native judgment.
Supporting capabilities return results to the owning loop rather than opening
its gate.

The lifecycle working forms supply different trajectories to the same learning mechanism.
Requirements Discovery explores the problem and territory; Formalization
proposes and challenges specifications; Delivery plans, implements, and proves
bounded working results. Research, interviews, reaction surfaces, candidate
solutions, Evolutions, implementation attempts, reviews, tests, and delegated
work are useful when their outcomes can improve the context of a later
judgment. Repetition without informative feedback or retained learning is not
learning.

Durable learning is preserved in reader-ready records: documents written for a
competent future reader who did not participate in the originating conversation.
Their ordinary domain language and concise causal context let later loops
consume accepted judgment without replaying the whole trajectory or learning
Praxis workflow jargon. The [records references](../../references/records/foundations.md)
define the shared persistence boundary and body rules.

Feedback quality is part of the system. Human preference, observed evidence,
critique, verification, approval, and acceptance carry different meanings and
never silently rewrite one another. Feedback applies to the candidate and
material context actually evaluated, and later work revalidates only what a
meaningful change could invalidate. The shared
[evaluation reference](../../references/evaluation.md) supplies comparison,
evaluator, proxy-resistance, and stopping patterns when a loop needs
non-trivial feedback design.

## Lifecycle working forms

### Requirements Discovery

Requirements Discovery owns the problem space: what the requester needs, their
starting point, current system and domain truth, constraints, preferences,
findings, accepted choices, references, reactions, and consequential
uncertainty.

It may inspect source, research, interview, compare references, brainstorm,
visualize, explain, prototype, or run an approved bounded experiment. These are
methods selected proportionately, not mandatory stages.

Its durable result, when Project continuity is useful, is an offline Project
bundle: a Project Brief, Requirements, optional Unknowns Map and interpreted
References, retained source material, and concrete reaction artifacts. Short
discovery may remain conversational and feed a standalone Issue or Plan
without manufacturing a Project. Requirements Discovery does not itself
create Evolutions, Issues, Implementation Plans, or product mutation authority.

### Formalization

Formalization translates accepted Requirements and relevant references or
reaction artifacts into the formal product specifications required before
honest Delivery. It closes specification gaps collaboratively and forms only
the precision the current route needs:

- one or more standalone Issues for an explicit outcome that needs no durable
  Project;
- detailed Issues for one coherent Project Outcome; or
- an Evolution Map containing at least two concise working-form definitions,
  followed by the complete high-level specification and detailed Issues for
  only the Evolution selected by the requester.

An Evolution specifies one Project-specific coherent advancement at high
level. Project and Evolution boundaries are developed collaboratively from
accepted Requirements, actual system, complexity, uncertainty, and preferred
solution. They are not inferred from whether something is a feature, technical
layer, migration stage, release, or deployment.

An Issue specifies in detail what must become true, including observable
behavior, boundaries, exclusions, dependencies, and required proof. Requirements
own accepted findings and product choices. Evolutions and Issues own formal
specification. Another record type requires a distinct purpose, consumer,
lifecycle, and authority boundary.

Formalization is divergent and convergent. It may call Research, Interview,
Make Tangible, or Design Solution for a bounded question that belongs to its
specifications. Each capability returns to Formalization, which retains
specification ownership. If the answer would change a need, constraint,
preference, finding, or other Requirements truth, it returns learning to
Requirements Discovery instead of absorbing it locally.

Formalization ends when current Issues pass Issue Approval, explains the
result, recommends Delivery planning, and waits. It grants no planning or
product mutation authority and does not create an Implementation Plan.

### Delivery

Delivery owns planning, producing, and proving the accepted result. It consumes
an ordinary reversible local edit that qualifies for Direct Work, an
already-clear standalone outcome selected for planning, or one or more approved
Issues with whatever governing Requirements and Formalization records exist.

For Issue-governed work, Delivery first determines whether the next
implementation boundary is already settled. When result, governing truth,
targets, exclusions, dependencies, risk, recovery, and proof are clear and
directly authorized, Delivery may implement without inventing a Plan. When the
proposal needs judgment, Delivery creates the next bounded Implementation
Plan. The Plan states how its exact Issue coverage would be implemented,
including proposed mutations, exclusions,
review, verification, proof, and any external action requiring separate
authorization. Implementation Plan Approval accepts the Plan provisionally and
stops.

For a standalone Plan, the same loop starts from an already-clear outcome and
accepted truth rather than Issue coverage. It gains no invented Project or
Issue, and Result Acceptance judges that bounded outcome directly.

On a Plan path, only after the requester separately says to implement that
approved Plan does Delivery receive its exact mutation authority. Direct work receives
authority from the exact settled request. Inside either boundary Delivery
may recursively inspect, implement, observe, test, debug, correct, delegate
when useful, review, verify, and explain. Local correction remains autonomous
only while accepted meaning and authority remain intact.

Delegation does not create another Praxis owner. The main agent retains the
governing context, integration, judgment, gates, and human-facing result while
a bounded subagent performs one isolated function and returns evidence.

Delivery preserves changeability as part of producing the accepted result. If
current work exposes a structural mismatch with accepted Requirements or known
change pressure, it repairs the pressure point inside the authorized
implementation boundary instead of layering another patch onto it. It calls Refactor when
identifying the pressure, reconstructing preserved behavior, selecting the
responsible seam, or proving the transformation is substantial. If necessary
refactoring materially changes targets, consequences, risk, proof, or accepted
behavior, it returns to the Plan or earlier causal owner before mutating
outside authority. Adjacent debt that does not prevent a coherent result
remains outside current work.

Delivery returns a result message:

```text
Result {
  working_form,
  evidence,
  limitations,
  learning,
  unresolved_questions
}
```

Human inspection and acceptance are part of closing Delivery, not a fourth
global owning loop. A result may be accepted, corrected inside authority, or
send learning to the exact Requirements Discovery, Formalization, or Delivery
owner that introduced a mistaken premise.

Correct locally when accepted meaning and authority remain intact; return to
the causal owner when governing meaning or authority changes; and, when the
approved result cannot be reached, make current state safe, return the partial
result and evidence, and wait for the requester's disposition. They may
explicitly accept that partial state; Result Acceptance then closes only the
current implementation result and proved coverage, not unproved Issue,
Evolution, or Project claims.

At a return that blocks work, invalidates authority, or requires a judgment,
the owner explicitly tells the requester the current state, consequence, and
decision needed.

## Changeability across owners

Changeability is a quality contract carried by existing loops rather than
another phase. Refactor is a supporting capability for substantial local
pressure work; it does not take changeability ownership away from the loops:

- Requirements Discovery records known volatility, accepted future direction,
  and uncertainty when they constrain an honest solution.
- Formalization shapes Evolutions, Issues, ownership, interfaces, limitations,
  and required proof around that evidence without inventing speculative
  futures.
- Delivery Plans predictable structural work and impact-based cumulative proof.
  During implementation it repairs mismatch responsively and calls Refactor
  when substantial pressure work needs a dedicated procedure.
- Review identifies a concrete change mechanism that has become unsafe,
  obscure, scattered, or needlessly expensive. Metrics may locate a concern
  but do not establish the finding alone.
- Verify proves new behavior and inherited accepted behavior materially
  exposed by the change rather than requiring a ritual rerun of everything.
- Result presentation foregrounds consequential structural change and remaining
  changeability limits alongside behavioral proof.

When a consequential accepted future depends on an unproved seam, the owning
loop may use a bounded disposable implementation, adversarial review, or other
probe of that one pressure. The probe returns evidence; it does not authorize
speculative product implementation or become mandatory ceremony.

## Messages and recursive return

Every loop receives only relevant intent, truth, uncertainty, evidence, and
authority. When it cannot continue honestly, it returns:

```text
Message {
  target_or_attempt,
  evaluator_context?,
  observation,
  interpretation,
  kind?,
  decisive_evidence?,
  affected_truth?,
  still_valid_truth?,
  uncertainty_or_disagreement?,
  causal_owner?,
  recommendation?
}
```

This is a semantic prompt, not a required wire shape. Omit fields that do not
change the receiving owner's next action. A recommendation appears only when
evidence supports one; otherwise return the missing evidence or human
judgment needed to proceed honestly. The receiver retains only the context
change a future judgment needs; it does not preserve a complete trajectory
merely because one occurred. `kind` distinguishes human preference, observed
evidence, critique, verification, approval, or acceptance only when confusing
them would change the receiver's judgment.

Return to the exact causal owner:

- changed shared Initiative objective, success condition, cross-Project
  constraint, Project relationship, or ordering rationale returns to
  Coordinate Initiative and repeats Initiative Alignment when material;
- changed Project Outcome or Project boundary returns to that Project's
  Requirements Discovery;
- changed need, constraint, finding, human preference, problem-space choice,
  or problem understanding captured in Requirements returns to Requirements
  Discovery;
- changed progressive strategy or high-level working form returns to the
  Evolution Map or affected Evolution;
- changed detailed behavior, boundary, exclusion, dependency, or required proof
  returns to the affected Issue;
- changed implementation approach, mutation boundary, or authority returns to
  the Implementation Plan inside Delivery;
- an implementation correction that preserves accepted specifications and Plan
  authority remains inside Delivery;
- Plannotator readiness or selected optional Docker readiness, installation,
  configuration, or capability limitation returns to Setup; if it exposes a
  flaw in a Praxis capability or concept, return that design learning to its
  owner as well; and
- a ready bounded result returns to human inspection and acceptance.

Choose that owner by asking which earliest governing record would change if the
new answer were accepted. A shared capability answers the bounded question for
that owner; it never decides ownership itself. If its result reveals that the
question was misclassified, return learning to the earlier owner before
continuing.

Skills compose through direct bounded calls rather than passive reference
loading. The caller passes only relevant truth, evidence, intent, and authority
constraints or source pointers, and retains ownership of synthesis, governing
records, gates, transitions, and stopping. The invoked capability owns its
procedure and returns evidence, reaction, judgment support, or a recommendation
without inheriting the caller's authority. A reference may deepen a procedure
but never stands in for invoking the capability that owns it.

Each caller's package names the capabilities it may invoke, when they are
useful, what they return, and what the caller still owns. The invoked
capability does not duplicate caller-specific meaning merely to make
composition visible.

Initiative is an optional strategic owner above Projects, not a fourth global
owning loop. Project is a routing anchor whose Outcome and boundary return to
its Requirements Discovery. Solution choices return to the Map, Evolution,
Issue, or Plan that actually owns them rather than being flattened into a
generic Requirements choice.

Do not stop at the nearest editable descendant merely because it can absorb a
workaround. Find the source of the false premise first, revise it narrowly, and
then propagate the correction downward through only affected descendants.

Learning is an event carried by messages, not a phase and not authority. It may
appear during research, interviewing, prototyping, formalization, planning,
implementation, debugging, review, testing, verification, or result
inspection. If material learning invalidates an active Plan, the owner makes
affected authority non-active and signals in-flight mutating work to stop at
the earliest safe point and make current state safe before returning partial
state and evidence. Truly independent read-only investigation may continue
only when it does not depend on the invalidated premise; no affected result is
integrated or subjected to discretionary cleanup by implication.

## Forward dependency and backward learning

For one current concern, governing truth and authority form a dependency tree:

```text
accepted conversational outcome
  -> optional standalone Issue(s)

Project Requirements
  -> direct Issues
  OR
  -> Evolution Map
     -> selected Evolution
        -> complete high-level Evolution specification
        -> Issues

accepted behavior
  -> clear direct Delivery request
  OR
  -> Implementation Plan -> Plan Approval -> Implementation Authorization
  -> authorized implementation boundary
  -> Delivery result
```

Nodes may be absent. Work generally descends through provisionally accepted
meaning and separate explicit human choices. No approval invokes its child.
Learning follows actual dependencies upward to its causal owner, then corrected
meaning flows downward again only after affected gates and conversational
choices repeat. Local and global recursion coexist without a single global
state machine.

## Project and Initiative

A **Project** is a substantial body of Requirements that the requester and
agent choose to govern as one coherent Project Outcome. That boundary is
collaborative and may be revised when later inquiry shows that it combines,
omits, or misstates substantial outcomes. A Project may remain conversational.
Create its offline bundle only when a named future human-agent loop needs
continuity, retained requirements work, formalization, or delivery state.

A Project may end with understanding, use Direct Work for an ordinary
reversible local edit, deliver one coherent outcome through Issues and
sequential Plans, or use Evolve when several coherent advances make
progressive specification and learning useful. Projects, Issues, and Plans may
also exist without optional parents.

An **Initiative** is optional strategic direction for one objective requiring
multiple independently governed Projects. It structurally groups those
Projects while preserving only shared direction, success conditions,
constraints, relationships, ordering rationale, uncertainty, and cross-Project
learning. It contains no Issues or Implementation Plans of its own, grants no
delivery authority, and never starts another Project automatically.

The agent may recommend Initiative coordination once at least two credible
Project candidates appear, but the requester chooses it conversationally. Shared
learning revises the Initiative through an explicit diff, identifies affected
Projects, and returns any local consequence to the exact Project owner. Only
changed shared meaning repeats Initiative Alignment, and only Projects whose
accepted truth changed repeat their own gates.

## Routes

Once current meaning is judgeable, the agent recommends a proportional working
form:

- no implementation;
- Direct Work;
- a standalone Plan when the implementation outcome is already clear but its
  approach or authority boundary deserves review;
- one or more standalone Issues when detailed behavior needs formal judgment
  but no Project adds useful continuity;
- one or more Project-owned Issues; or
- Evolve.

The requester chooses or revises the working form in ordinary language; no
skill or workflow name is required. Evolve is used
only for at least two independently meaningful working forms and always has an
Evolution Map. After Map Approval, the requester selects one Evolution and
collaboratively develops its complete high-level specification before
collaboratively defining its Issues. Issues describe required outcomes;
Implementation Plans propose exact delivery boundaries when the proposal needs
judgment. The requester separately chooses every meaningful Inquiry transition
and authorizes either the clear direct delivery boundary or each approved
Plan's implementation. Bounded supporting capabilities remain autonomous
while the Inquiry's meaning, posture, persistence policy, and authority remain
valid.

## Human gates

Every loop may revise its working material while it owns the current question.
A human judgment is required when synthesized meaning or a delivered result
becomes the provisionally accepted basis for later judgment. Every named
Record, Result, and Code Review gate uses Plannotator. Conversation may explain,
question, refine, or react to the target but does not pass a required gate.

When a native gate is selected, Plannotator presents the complete current record
or a reliable revision diff. The owning loop retains the judgment's meaning,
consequence, projection, authority, transition, and stopping rule. Approval
accepts the exact version and declared consequence but invokes no next activity
and grants no authority. If later learning crosses that accepted transition,
the causal owner revises its proposal and repeats only the affected gate before
the requester decides how to continue.

## Pair

**Pair** is a human-initiated collaboration posture used only during Delivery
implementation. The agent never recommends entering it. The requester sets the
working arrangement — who drives, boundary size, check-in rhythm — and may
change it conversationally at any time. A wider arrangement names a
boundary-covered surface or sequence and a termination or check-in condition;
per-mutation permission is the default when nothing is declared. Pair
preserves Delivery's responsibilities, gates, authority, and stopping rule.

## Orient

**Orient** is a supporting capability selected by the requester that any owner
may recommend for one bounded comprehension need and that the requester may
also request directly. It begins only after they agree and never replaces
the owner's responsibilities, gates, authority, or stopping rule.

## Operational boundary

Praxis defines a host-neutral Inquiry and Proposed Action protocol. The
protocol is stateless and fail-closed: an effect is allowed only when current
record, gate, authority, direction, and Inquiry-policy projections all permit
it. It creates no hidden repository state and does not require an orchestration
CLI. The current package does not claim an installed host hook or universal
effect interceptor; hosts and effect capabilities must apply the protocol at
their actual boundaries. Plannotator remains the required
external dependency for the native interactions that select it, but it does
not own every conversational Result Acceptance or orchestrate Inquiry
positions. Native conversation and host compaction carry the active Inquiry.
Durable records preserve accepted meaning and required research learning;
temporary checkpoints exist only for otherwise unreconstructible operational
state. Source, tests, Git, and retained artifacts carry everything else.
