# Scenarios

These cases pressure-test the accepted model without prescribing one global
workflow. For a genuinely unresolved behavior, discuss one case at a time:

1. Give one concrete scenario and identify the question it exposes.
2. Recommend the smallest rule that resolves it.
3. State the proposed general rule plainly.
4. Wait for human approval, rejection, or refinement.
5. Record a coherent batch in [Decisions](decisions.md), then update the exact
   Core, skill, or shared-reference owner if the approved rule changes it.

Do not create a new taxonomy for a local variation already decided by the
continue-or-return rule. A useful new scenario changes authority, human
judgment, persistence, acceptance, or stopping in a way the current sources
cannot answer.

## Project-local setup

The user asks an agent to establish Praxis records in an ordinary application
repository. Before writing any record, the agent ensures the root `.gitignore`
contains `/.agents/`. The records remain local working state and never enter the
project's commits.

This dotfiles repository is different: it explicitly tracks `.agents/` because
that directory contains the Praxis plugin and agent-configuration source. Its
repository instructions decide which local working subdirectories remain
ignored.

## Direct Work

The user asks for a small text correction in a known file. The request is clear,
the implementation pattern is local, and a durable Implementation Plan would
add no useful control.

The agent edits, checks the rendered or parsed result, reports it, and stops.
There is no Project, Evolution Map, Issue, Implementation Plan, or formal Result
Gate unless the consequence or the user makes one useful.

## Standalone Plan without an Issue or Project

The user wants to replace a caching library without changing observable
behavior. The intended outcome is already clear, but the affected ownership,
migration sequence, rollback boundary, and regression proof deserve review.

Delivery discusses one standalone Plan under `/.agents/plans/`, passes Plan
Approval, and stops. A separate implementation instruction later authorizes
only that Plan. Praxis creates no Issue or Project merely to give the Plan a
parent.

## Standalone Issue becomes Project-owned

A contained password-recovery change needs a detailed behavioral specification
but no broader Project, so Formalization creates one standalone Issue under
`/.agents/issues/`. Later discovery shows that recovery belongs to a substantial
authentication Project with shared Requirements and several related outcomes.

After the human accepts the revised Project boundary, the agent moves the Issue
into that Project's `issues/` directory and updates links while preserving its
stable ID. The ownership change repeats any gate whose meaning changed; moving
the file itself grants no authority and triggers no gate.

## Records, artifacts, references, and envelopes remain distinct

Requirements Discovery creates an authentication Requirement, compares two
HTML login prototypes, studies an external implementation, and sends its result
to Formalization.

The Requirement is a structured record. The prototypes remain native concrete
artifacts produced through Make Tangible. The external implementation is a
Reference. The handoff is a native envelope, not a fourth file. Only the
prototype reaction, reference interpretation, and other meaning needed later
are promoted into the owning record.

## Gate, disposition, and authority remain independent

An approved Issue remains open because its required outcome is unproved. Its
current Plan passes Plan Approval but remains `awaiting` implementation
authority. The human later authorizes it, and its authority projection becomes
`active`.

If another agent resumes without independently establishing the still-current
human instruction and exact approved Plan, the mutable header and handoff
cannot grant permission and the projection returns to `awaiting`. Result
Acceptance closes the Plan and exhausts its authority; none of those changes
rewrite the Issue's gate fact.

## The Project Brief navigates without becoming a dashboard

An authentication Project has accepted Requirements, an approved Evolution
Map, one selected Evolution, three approved Issues, and one current Plan.

The Project Brief keeps the Target Outcome and boundaries readable, then uses
Current Position to link the current owner and next judgment. It does not copy
the Map, Issue specifications, Plan state, evidence, or activity history.
Requirements Alignment remains one current entry under `gates`; a later
Project Closure receives its own entry rather than overwriting the accepted
Requirements basis.

## Requirements remain governing truth rather than delivery tracking

An authentication Project aligns `R3` as one combined recovery constraint.
Formalization later proves that self-service and administrator recovery are
different needs, so the next aligned candidate replaces `R3` with `R8` and
`R9`.

The old entry becomes a minimal supersession pointer while current Issues still
refer to it, then disappears after those references move. The new Requirements
state their governing meaning and Formalization implications; they do not gain
progress percentages, implementing-Plan lists, or satisfaction checkboxes as
Delivery proceeds.

## The Unknowns Map redraws the inquiry edge

An authentication Project begins with a vague cross-device credential blind
area. Research and a prototype split it into browser support, recovery
semantics, and user understanding.

The Map redraws those current clusters instead of preserving one numbered
unknown and its resolution history. It links the exact evidence with its
limitations, recommends the smallest probe most likely to change the next
judgment, and names what is safe to carry. Once the remaining edge fits in the
Project Brief, the useful findings move to their owning records and
`unknowns.md` is deleted.

## A Reference preserves interpretation rather than a bookmark history

Two authentication Issues depend on one library's recovery semantics, so their
Project owns one Reference entry pinned to the inspected commit. Each Issue
states only its local consequence.

A later installed version contradicts the original documentation. The index
updates its interpretation and returns affected Requirements to their owner
instead of retaining an active/deprecated chronology. Human reaction to the old
behavior remains attached only to that version; Praxis-created comparisons and
probes stay under `artifacts/`.

## Local and global recursion

Requirements Discovery is refining an authentication Project. Locally, it
researches recovery behavior, produces an HTML prototype, gets the human's
reaction, updates one Requirement, and asks the next highest-value question.

Formalization later discovers that the chosen identity provider cannot preserve
that Requirement. It returns evidence to Requirements Discovery rather than
weakening an Evolution or Issue to hide the conflict. Requirements Discovery
revises the Requirement, passes Requirements Alignment again, and sends the
corrected truth forward. Formalization revises only affected Evolutions and
Issues before Delivery resumes.

The same explore, make, react, synthesize, and judge rhythm operates inside each
owner. Messages between owners make the whole system recursive without creating
one global lifecycle or silently transferring authority.

## Requirements Discovery that ends with understanding

The user does not understand why an import is slow. The agent inspects the
source and traces the path, then explains that the bottleneck is remote
pagination rather than parsing.

Requirements Discovery answered its question. The user may accept the
explanation and stop; understanding does not automatically create
Formalization or an Implementation Plan.

## Requirements Discovery that becomes durable

A feature spans several sessions and the team must preserve its Project Outcome,
Requirements, unresolved security question, interpreted references, and
retained reaction artifacts.

The agent and human preserve a Project bundle because named future loops need
that context. Requirements Alignment provisionally accepts the Project Brief,
Requirements, and visible uncertainty but grants no Formalization or Delivery
authority.

## Initiative above several Projects

The strategic objective is to make a product usable by field teams. Offline job
capture, inventory synchronization, and supervisor conflict resolution are
independently governed Project Outcomes.

After the human chooses Initiative coordination, one Initiative preserves their
shared objective, success conditions, constraints, relationships, ordering
rationale, uncertainty, and cross-project learning. Its folder structurally
contains the Project bundles, while each Project retains its own Requirements,
Issues, Implementation Plans, gates, acceptance, and stopping. Completing
offline job capture does not start inventory synchronization.

When offline capture proves that the shared storage model cannot support an
assumed conflict rule, Coordinate Initiative shows the strategic diff,
identifies the affected Projects, and recommends where each should reopen. It
does not rewrite their governing truth. Initiative Alignment repeats only when
shared meaning changes; each Project repeats its gates only when its own
accepted meaning changes.

## The Initiative Brief coordinates without becoming a Project dashboard

An enterprise-onboarding Initiative links authentication and organization
management. Each entry states how the Project advances onboarding and records
the identity dependency between them.

The Brief does not copy their Requirements, Issues, Plans, delivery state, or
evidence. A shared rule that every user belongs to one organization lives in
the Initiative and is translated into each affected Project's Requirements.
An OAuth callback unknown stays only in authentication because it cannot
change the shared strategic structure.

## Initiative ordering is not execution

Offline capture must establish a local-data contract before inventory
synchronization can depend on it. The Initiative records that dependency and
recommends the Project order.

Accepting offline capture updates strategic evidence but selects and starts
nothing. The agent explains the current Initiative and recommends the next
Project discussion; the human still chooses whether that Project begins.

## Initiative membership reorganizes without inventing gates

An accepted standalone authentication Project later becomes part of an
enterprise-readiness Initiative. The human accepts that strategic relationship,
so the agent moves the complete Project bundle from `/.agents/projects/` into
the Initiative's `projects/` directory and updates links.

Initiative Alignment repeats because membership changed. Requirements Alignment
inside authentication repeats only if the Initiative introduces a constraint
or outcome that changes its accepted Requirements. The file move itself changes
neither meaning nor authority.

## Initiative closure judges the objective

Two field-work Projects satisfy the shared strategic objective and make a third
candidate unnecessary. Conversely, all originally proposed Projects could
finish while the product still fails the accepted field-work success
conditions.

Initiative Closure judges whether the strategic objective is satisfied,
rejected, or superseded. It does not count completed Projects. If the remaining
Projects no longer share consequential direction, the agent recommends
splitting or closing the Initiative rather than preserving a miscellaneous
portfolio.

The closed Initiative Brief remains as concise strategic context with its
closure judgment and final Project relationships. It does not retain an
activity history or frozen copies of the Project records.

## Seamless Requirements Discovery

The user asks for offline support in an unfamiliar field-service application.
The agent does not ask the user to invoke Praxis or recite an unknown taxonomy.
It performs a bounded read-only blind-spot pass, then returns the one discovery
that changes the inquiry: job fields, photos, and inventory have different
synchronization risks.

It recommends one concrete human-owned choice, then updates its live model from
the answer. When synchronization behavior is difficult to describe, it proposes
isolated HTML directions for reaction rather than changing the application.
The human approves that probe, reacts to the artifact, and the agent foregrounds
the revision.

Once the outcome and governing behavior are clear enough, the agent explains
the settled truth, visible deferrals, and recommended route. It does not silently
formalize or deliver the Project.

## Adaptive interview

An initial answer eliminates two possible product directions and makes the
agent's prepared follow-up questions irrelevant. The agent discards the
questionnaire, updates the live uncertainty model, and chooses whether the next
useful probe is another human-owned question, source research, a reference,
Make Tangible artifact, or convergence.

The interview never asks the human for facts the agent can reasonably discover.

## Recognition preferences precede agent advice

The human is comparing three dashboard directions and can recognize what feels
right but cannot describe it in advance. Explaining the agent's preferred
direction first would anchor that reaction.

Interview asks for the human's initial response before recommending. For a
later database-consistency choice whose consequences are not visible, it
explains the evidence and recommendation before asking. Human preference and
agent advice remain separate signals.

## Conditional preferences are not contradictions

The human prefers automatic recovery for individual accounts but explicit
administrator approval for enterprise accounts. Treating the second answer as
reversing the first would erase the actor boundary.

Interview tests the condition, preserves both preferences with their contexts,
and asks one further question only if the distinction changes the caller's
artifact. Neither answer becomes a universal rule.

## Changed feasibility preserves still-valid intent

The human prefers passkey-only login, then Research proves that a required
browser cannot support it. The evidence changes the available choices but does
not prove that the human stopped valuing passwordless access.

Interview retains the preference, explains the changed feasibility boundary,
and asks the smallest revised question about acceptable fallback behavior.

## A tangible comparison earns only supported judgment

Two editor prototypes are compared, but one has realistic data and polished
motion while the other uses placeholders and static transitions.

Make Tangible either equalizes the consequential fidelity or exposes the
difference and narrows the question to what both surfaces can show. The
human's mixed choice—layout from one, interaction from the other—is returned as
that composition rather than reduced to a winner.

## Tangible feedback stays bound to its version

The human approves a prototype's navigation but rejects its density. The next
version changes density and also replaces navigation.

Make Tangible foregrounds both semantic changes, carries forward only reactions
whose subject remained unchanged, and reopens navigation judgment. It never
uses approval of the earlier version as approval of the new behavior.

## A negative research result needs a sensitive search

Research cannot find any path that refreshes a session token. It inspected only
the application service, while framework middleware and generated adapters can
perform the same behavior.

The result stays unresolved until the materially plausible surfaces are
inspected or the method is shown capable of exposing the behavior. “Not found”
does not become evidence of absence merely because the first search was clean.

## Conflicting research evidence becomes a conditional answer

Official documentation says a database operation is atomic, while a local
reproduction shows partial writes. Investigation reveals that atomic behavior
applies only with transactions enabled, which the repository disables.

Research returns the configuration boundary that makes both observations true.
If a proportionate probe could not find that boundary, it would preserve an
explicit conflict instead of selecting the favored source.

## A blind-spot pass returns probes rather than a risk inventory

The human asks for a recovery flow in an unfamiliar authentication subsystem.
Repository inspection reveals that recovery can invalidate sessions, cross
tenant boundaries, and depend on an external identity provider.

Discover Requirements surfaces those few consequential omissions, explains
the evidence and consequence of each, and recommends the fitting resolver:
repository inspection for session invalidation, human judgment for the desired
recovery experience, and external research for provider behavior. It does not
turn generic authentication risks into an exhaustive unknowns backlog.

## A rich Reference preserves intent rather than copying structure

The human points to a Rust retry library as the behavior they want in a
TypeScript client. The source shows precise backoff, cancellation, and retry
exhaustion semantics, while its crate layout and type machinery are specific to
Rust.

Interpreting References preserves the transferable behavior, relevant source
revision, mechanism, and human judgment separately. The implementation
structure remains exemplary rather than governing truth.

## Codebase investigation follows one behavior end to end

Revoked sessions still work through the public API. Research traces the request
through middleware registration, session validation, cache behavior, tests, and
the relevant history until it finds that one route bypasses the owning
validation boundary.

The return explains that causal path and its evidence. It does not provide a
tour of every authentication file merely because the repository is unfamiliar.

## An empirical probe distinguishes claims without becoming implementation

Documentation is unclear about whether an interrupted upload resumes without
duplicating committed chunks. Research states the competing observations,
runs the smallest disposable probe under a pinned environment, and records its
inputs and output.

The result supports only the tested configuration. Research recommends broader
evidence if the caller needs a claim across versions or storage providers
rather than presenting one negative result as universal proof.

## Codebase Design stops before file-level planning

Session revocation requires a choice between enforcement in each route and one
authoritative session boundary. Codebase Design reconstructs current ownership,
compares dependency direction, interface pressure, bypass risk, change
locality, and proof boundaries, then recommends the coherent owner.

It returns the accepted architecture and consequences to Design Solution.
Files, commands, migration order, and implementation tasks remain for the
later Delivery Plan.

## A solution comparison tests its shared premise

Three session designs all assume the identity provider emits revocation events.
Comparing their elegance cannot reduce uncertainty about that common premise.

Design Solution tests the shared assumption separately. If the provider lacks
the event, every dependent candidate is revised or invalidated regardless of
their relative polish.

## Hard constraints do not enter a weighted score

One storage design is cheaper and simpler but violates a required regional-data
boundary. Another satisfies the boundary with higher operating cost.

Design Solution eliminates the invalid candidate rather than averaging
compliance against convenience. If the human selects a valid
non-recommended option, the local rationale and consequences remain attached
to that choice without becoming a global preference.

## Probe outcomes require causal interpretation

The human chooses the denser of two dashboard prototypes. The reaction could
reflect information density, realistic data, or the polished typography that
only one prototype received.

Discover Requirements keeps the selection as evidence until it identifies what
produced the reaction and which need or constraint actually changed. It
promotes the narrow supported Requirement, not the literal prototype choice.

## A non-discriminating probe changes evidence class

Two visually different recovery prototypes receive the same uncertain
reaction because the unresolved question is whether users understand the
security consequence, which neither prototype explains.

Requirements Discovery does not generate another equivalent layout. It changes
evidence class—perhaps an explainer followed by Interview—or safely carries the
uncertainty when it cannot affect the next judgment.

## Requirements Discovery continuity

A discovery loop must continue in a later session. The Project preserves the
Project Brief, Requirements, a navigable picture of material uncertainty,
interpreted References, retained concrete artifacts, and recommended next
inquiry.

It does not preserve the research diary or full interview transcript. The next
agent can resume honest inquiry without receiving a giant context dump.

## One coherent outcome with one Issue and one Implementation Plan

The desired behavior is coherent, but it changes an API and several callers.
The agent proposes one Issue describing the observable API outcome, affected
behavior, exclusions, and proof because no useful progressive working form
exists.

The Issue passes Issue Approval through Plannotator, which provisionally
accepts the work but grants no planning or mutation. The agent recommends a
planning discussion and waits. After the human chooses it, Delivery discusses and prepares the covering
Implementation Plan. Plan Approval accepts the Plan but grants no mutation.
Only a separate human “go ahead” authorizes implementation; the agent then
executes, reviews, verifies, presents the result for acceptance, and stops.

## One coherent outcome with several Issues and Implementation Plans

A complete SSO feature requires provider integration, application sessions, and
rollout proof. These become concrete Issues approved together because each
describes required work, but none is a coherent Project advancement alone.

Issue Approval accepts the required outcomes provisionally and grants no
planning or mutation. One
Implementation Plan may cover several Issues when they share one implementation,
risk, review, and verification boundary. One Issue may require several
Implementation Plans when authority boundaries divide its implementation. Only
after the human chooses planning is the next Implementation Plan made complete
and approved. Each approved Plan still waits for separate Implementation
Authorization; Plans are executed and accepted sequentially.

## Evolve

A new search experience can first deliver reliable exact matching, then useful
ranking, then personalization. In this Project, feature-like working forms are
the useful collaborative decomposition because each creates a coherent advance
and learning that may change later choices. Nothing about the Map implies that
each form must be released or deployed independently.

The human and agent create an Evolution Map containing all three Evolutions.
Map Approval accepts the strategy and selects nothing. The human selects exact
matching, then collaboratively develops and approves its complete high-level
specification. After a separate human choice, only that Evolution is expanded
collaboratively into one or more Issues. Its current Issues are approved before
the human chooses a Delivery planning discussion. Plan Approval still stops;
implementation starts only after separate Implementation Authorization.

The ranking and personalization Evolutions remain concise Map entries. They
receive no detailed Issues before exact matching is delivered and accepted
because its learning may change their required work.

## Evolution identity survives a revised sequence

An approved Map gives social login the stable ID
`evolution-social-login` at position E2. Password authentication later proves
that account linking must become the new E2, moving social login to E3.

The Map keeps the accepted password Evolution as actual progression, revises
only the affected future sequence, and repeats Map Approval with the semantic
diff. Social login retains its stable ID even if its position-prefixed filename
changes. Its detailed behavior and proof remain absent until the human selects
it for collaborative specification.

## A selected Evolution stays above Issue detail

The human selects password authentication. Its Evolution record promises one
integrated working form covering registration, sign-in, verification, recovery,
password changes, and session behavior because omitting recovery would make
“complete password authentication” misleading in this Project.

The Evolution states those behaviors at high level and requires proof of the
integrated user journey. Separate Issues later define exact flows, interfaces,
edge cases, failure behavior, and detailed proof. Plans choose files, commands,
ordering, and concrete checks.

## Evolution learning must be able to change the Map

An exact-search Evolution can prove its working behavior without teaching
anything that would change the already-settled ranking Evolution. Calling
ordinary implementation observations a learning target would give them false
strategic weight.

Evolve names a learning target only when the accepted working form can answer a
question that may change a later Evolution or its ordering. Required proof of
the tangible outcome remains separate, and unresolved learning cannot justify a
Map revision without evidence and a new Map judgment.

## A whole web application as one Project

The human and agent choose to treat a complete bookkeeping application as one
Project. After exploring its Requirements and current starting point, they
agree on Evolutions for accounts and transactions, invoicing and payments,
reporting and tax behavior, and recurring automation.

Those Evolutions are feature-shaped because that structure fits this Project,
not because Praxis requires feature-shaped slices. The Project is not complete
until its accepted Requirements are satisfied. Each selected Evolution still
receives its own high-level specification, Issues, sequential Plans, evidence,
learning, and acceptance.

## A systems Project that progressively refines one capability

The human and agent treat a frame-accurate video renderer as one Project. They
agree that a working single-track renderer, compositing and effects, and
parallel resumable rendering are coherent Evolutions.

The Evolutions establish and refine one system rather than adding independent
product features. Decoder, timeline, audio synchronization, and encoder work
inside the first Evolution become Issues or Plans unless the actual Project
discussion shows that one is itself a coherent advancement. Engineering
difficulty and subsystem labels do not decide the boundary.

## An operational migration whose stages may or may not be Evolutions

One repository can replace a storage format through a contained Issue and Plan
because the path is understood. Another repository may benefit from Evolutions
for mixed-format compatibility, writing the new format, migrating existing
objects, and removing legacy support because each forms a coherent,
integrated, provable advancement and its learning shapes the next.

The agent does not classify migration stages automatically. It inspects the
Requirements and system, proposes a structure with consequences, and the human
and agent settle the Project and Evolution boundaries together.

## One Evolution with one Issue and several Implementation Plans

An Evolution promises one working offline sync experience. Its storage change
and conflict-resolution UI are separate risk and execution boundaries, but
neither is a coherent advancement in that Project alone.

One Issue states the complete detailed offline-sync outcome. That Issue needs
two sequential Implementation Plans because storage and conflict resolution
require separate authority boundaries. Each Plan names the portion it covers,
is approved, executed, and accepted, then returns its result before the next
Plan is settled. Evolution Acceptance occurs only after the complete Issue is
integrated and proved.

## One Evolution with one Issue and one Implementation Plan

An Evolution Map delivers exact search before ranked search. Exact search is a
meaningful working form in that Project, even though implementing it fits in
one Issue and one Implementation Plan.

It remains an Evolution because its meaning comes from the approved progressive
sequence of two Evolutions, not from Issue or Plan count. After its Plan result
and integrated Evolution are accepted, Praxis stops before preparing Issues or
planning ranked-search work.

## A one-Evolution Map is rejected

A user wants one complete export feature and no meaningful earlier working
form. Writing the same outcome as a one-entry Evolution Map would add names and
gates without creating progressive delivery.

The agent recommends one or more Issues instead. Evolve requires at least two
meaningful Evolutions because its purpose is to create a useful progressive
strategy whose learning can shape later working forms.

If an approved Map loses that premise before any Evolution is selected, the
Project Brief records the reason and current direct-Issue route, lasting
learning moves to its causal record, and the unreferenced Map is deleted. Praxis
does not keep a retired Map lifecycle or historical archive.

## An Implementation Plan reveals a possible Evolution

A reporting feature was expected to need an API Implementation Plan followed by
a user-interface Implementation Plan. After the API result is accepted, the
human and agent discover that it forms a coherent integrated advancement whose
evidence should shape the interface.

The completed Implementation Plan is not retroactively relabeled. The learning
returns to the delivery proposal, where the agent may recommend Evolve. Only
deliberate human agreement and an approved Map begin that route; accepted work
remains the working baseline.

## A proposed Evolution loses meaning

An Evolution Map describes a command-line import tool followed by a graphical
interface. Formalization reveals that the intended users cannot meaningfully
use the command-line form.

The agent does not preserve the label. It backtracks to the Map or delivery
proposal where that boundary was introduced, then merges the work into a later
meaningful Evolution or recommends Issues for one coherent outcome. The
revised proposal passes its gate before delivery continues.

## Evolution Acceptance preserves the result without an implementation diary

Password authentication is delivered and accepted. Its Evolution record adds
the actual integrated working form, decisive evidence pointers, remaining
limitations, and a link to account-linking learning promoted into the Map. It
does not copy the implementation chronology.

If the approved Evolution had instead split into password authentication and
passkeys before delivery, Formalization would supersede the old ID, create two
new stable IDs, revise the Map, and repeat only the affected gates.

## Authentication Project without sub-issues

A Project promises production-ready email and password authentication. Its
Issues cover registration and verification, sign-in behavior and abuse
protection, session lifecycle, recovery, and required security proof.

“Session lifecycle” includes creation, validation, renewal, revocation, and
expiry. When those behaviors form one required outcome, they remain acceptance
details in that Issue. When one becomes independently judgeable, split it into
a sibling Issue under the Project. Praxis does not add a parent Issue merely to
group implementation steps.

## One Issue owner

Session revocation is delivered by the first Evolution of an authentication
Project and remains important to a later MFA Evolution. The original Issue
belongs only to the first Evolution. The later Evolution depends on its accepted
result and creates a new Issue only if revocation behavior must change.

## Pair

The user wants to learn a parser while building it. They manually enter Pair.
The agent explains and inspects freely, but before each coherent mutation it
states the exact change and waits for permission.

Pair changes mutation control only. Existing Implementation Plan, safety,
review, verification, and acceptance gates still apply.

## Formalization reconciles feedback with governing Requirements

Feedback on one Issue proposes moving session ownership into a different
component. That choice also changes a shared invariant used by two sibling
Issues.

Formalize checks the proposal against the governing Requirements and revises
every affected Issue, rather than optimizing the commented-on file in
isolation. It judges coherence by the resulting meaning and boundaries, not by
how many comments or Requirements each document mentions.

## Learning during Formalization

While expanding a selected Evolution into Issues, source inspection reveals
that the Evolution promises an error the dependency cannot distinguish.

The agent returns the evidence to the exact source of the promise. If the
Requirement itself is wrong, Requirements Discovery revises and re-aligns it.
If the high-level working form is wrong, Formalization revises the Evolution
Map and repeats Map Approval. It then revises the affected Issues and repeats
Issue Approval. No Implementation Plan exists yet, so no product mutation
authority was granted.

## Learning during Delivery

An approved Implementation Plan assumes a database operation is atomic, but a
failing integration test proves it is not. The agent stops the affected mutation
and returns the evidence, impact, still-valid truth, unresolved question, and
recommendation.

If the approved outcome can be restored inside the Implementation Plan without
changing behavior or authority, Delivery corrects it locally. If the result
needs a changed contract or authority, the agent backtracks through the
governing tree until it finds the exact accepted source of the mistake, revises
and re-gates that source, then propagates the correction through affected
descendants.

## Learning during Delivery result review

Implementation satisfies the Implementation Plan, but review finds that the
accepted working form exposes sensitive diagnostics. The result is not accepted
merely because the Plan completed.

The agent traces the finding to the exact Requirement, Evolution Map,
Evolution, Issue, or Implementation Plan that introduced it rather than
patching the nearest descendant. After correction and any affected gate,
review and verification run again before Result Acceptance.

## Accepted Implementation Plans fail integration

A backend Implementation Plan is accepted against its bounded pagination
contract. The later frontend Implementation Plan proves that the contract
cannot support the promised user experience.

The backend acceptance was honest evidence for its bounded claim, but it did
not accept the integrated feature. The agent backtracks to the exact source of
the incompatible contract, preserves unaffected accepted work, and reopens only
the descendants whose meaning or proof changed. The final Implementation Plan
still must prove the complete coherent outcome.

## Revising accepted Formalization

A later experiment changes one compatibility rule in an accepted Issue after
its Implementation Plan has already been approved. The learning returns to the
Issue's Formalization loop. The agent may revise the working Issue normally
there, but the affected Delivery authority immediately becomes non-active. It
cannot resume until the revised Issue passes Issue Approval, the affected
Implementation Plan is revised and approved again, and the human provides
fresh Implementation Authorization.

The next Plannotator gate foregrounds the diff from the exact version previously
accepted so the human can judge the changed solution. Approval accepts the
complete version provisionally in Plannotator, not the file path or Git state.

If the accepted baseline cannot be identified reliably, the agent presents the
full proposal rather than inventing a diff.

## Native Plannotator gates

Understanding review uses `plannotator annotate <target>` or
`plannotator last` without a gate. The latter is conversational Reaction Review
only. A record proposal uses
`plannotator annotate <artifact> --gate --json`. Code review uses
`plannotator review --git` for a local diff or
`plannotator review <PR-or-MR-URL>` for a remote change. A result without a code
diff is reviewed through its actual evidence rather than a manufactured code
review. Every Plan-governed code result exposes its complete fixed diff through
that native human review before Result Acceptance; Direct Work uses it only
when consequence, repository policy, or the human requires it. None of that
feedback is Result Acceptance.

After review and verification, the agent explains the exact result and uses
the owning Result section or another durable result document as the gate target.
Only a named future consumer justifies preserving the target, outcome, declared
consequence, and native reference. If Plannotator returns no durable reference,
the record says so.

Normal gates omit `--require-approval`; a denial is useful feedback rather than
a failed command. The agent leaves the active browser session open until the
human submits, dismisses, or asks to stop, and never opens a duplicate because
the command appears idle.

## An approved gate contains a material note

An Implementation Plan gate returns `approved` with the note, “Rename
`sessionOwner` before implementation.” The agent does not treat the label as
permission to carry a known mismatch forward. It explains that the note changes
governing Plan content, revises the Plan, foregrounds the diff, and repeats Plan
Approval. A note such as “Show the migration diagram first next time” may travel
forward as non-blocking presentation guidance without changing the accepted
Plan.

## A reviewed diff changes before Result Acceptance

The human approves a Plan-governed code diff. A formatter then changes one
reviewed source file. Verification may still pass, but the exact human-reviewed
diff no longer exists, so Delivery repeats native code review before Result
Acceptance. If only new test output is collected and the code diff remains
identical, code-review approval remains valid.

## Plannotator cannot faithfully carry the artifact

Make Tangible produces an interactive local application whose important
judgment depends on keyboard focus and real latency. Plannotator would flatten
or proxy away those behaviors, so the human reacts through the running
application. Make Tangible returns the exact version, reaction, and fidelity
limits to its caller. The caller later writes governing meaning into its owning
record and uses Plannotator for the stable record gate.

## Review Learning finds a recurring preference

The human has repeatedly rejected migration Plans that omit rollback behavior,
but only inside one repository. Review Learning scopes the archive to that
repository, traces the denied candidates through their accepted revisions, and
proposes a Project convention with evidence and exceptions. It does not promote
the pattern into a universal personal preference. The convention changes only
after the human reviews its diff against the owning instruction.

## Plannotator is unavailable at a required boundary

The agent can still show a prototype through its native medium, but
`plannotator annotate plan.md --gate --json` fails before Plan Approval. The
agent reports the exact failure and recommends Setup. It may continue
read-only exploration, but it does not claim approval or begin implementation.

## Stop after one Evolution

An Evolution is accepted and its learning suggests a valuable next form. The
agent updates only material Project, Initiative, or Map learning, recommends
the possible continuation, and stops.

The learning and approved Map do not select, plan, or implement the next
Evolution.

## Issue boundaries follow specification meaning

An authentication Project needs registration and login across an API and a
user interface. Dividing the work into frontend and backend Issues would make
each specification incomplete because neither technical layer represents a
separately judgeable required outcome.

Define Issues keeps registration and login together when their behavior and
proof form one coherent contract. Delivery may later use separate sequential
Plans for the API and interface because Plans divide implementation authority,
not specification meaning.

## Issue proof names the claim rather than the test file

An Issue requires revoked sessions to fail through the public API. Naming a
test file or framework would prematurely design the implementation and could
still miss the governing boundary.

The Issue names the observable failure, the boundary at which it must hold, and
the evidence needed to judge it. Examples remain illustrative. If later
feedback changes the shared session interface, Formalize revises every Issue
whose specification depends on that interface.

## Issue files survive different Plan boundaries

One Issue specifies the complete password-recovery behavior, including expiry,
retry limits, failures, compatibility, and proof. Its internal token service
and user workflow require separate implementation and review boundaries.

The Issue remains `issues/i3-password-recovery.md` while two sequential Plans
name the portions they implement. Neither Plan becomes a new Issue, and the
Issue closes only when the integrated result proves the complete specification.

## Splitting an accepted Issue preserves identity honestly

An accepted account-recovery Issue later proves to contain two independently
judgeable outcomes: self-service email recovery and administrator-assisted
recovery. Reusing the original ID for one outcome would silently change what
earlier references mean.

Formalization creates two new lowercase Issue IDs, records the original as
superseded by them, foregrounds the semantic change, and repeats Issue Approval
for every affected batch. Unaffected Issues retain their accepted meaning.

## Direct Issues need no Evolution directory

A contained export Project has one coherent outcome and no useful progressive
sequence. The human chooses direct Issues after Formalize recommends that
route.

The Project creates `issues/i1-export-behavior.md` and no `evolutions/`
directory. If another Project uses Evolve, it stores the accepted progression
at `evolutions/map.md` and creates an `eN-<name>.md` file only for the selected
Evolution being specified.

## Formalize recommends the specification route

Requirements Discovery produces an accepted authentication Project. One
plausible route specifies the whole outcome through direct Issues; another uses
password authentication, social login, and MFA as a progressive sequence.

Formalize compares those consequences against the actual Requirements,
complexity, uncertainty, and preferred solution, recommends one, and discusses
it with the human. It enters neither route until the human selects it in
ordinary language, and it creates no route-approval record.

## Formalize remains the outer owner

The human chooses Evolve for a complex synchronization Project. Evolve owns the
Map and selected Evolution specification, while Define Issues owns that
Evolution's detailed specification files.

Formalize receives their results and checks that the complete current
specification still translates the accepted Requirements. It does not copy
their contents into a `formalization.md` file or direct their local loops.

## A failed route returns for discussion

The human selects Evolve, but every proposed Map decomposes one coherent export
outcome into artificial technical stages. Evolve returns that evidence to
Formalize.

Formalize explains why the progressive premise failed and recommends direct
Issues. It waits for the human to choose the corrected route rather than
switching automatically or preserving a meaningless Map.

## Formalize completes without another gate

The selected Evolution and its complete Issue set have passed Evolution
Definition Approval and Issue Approval. A separate Formalization Approval would
judge the same governing truth again.

Formalize checks coverage, updates only the Project Brief's navigation and
current recommendation when continuity needs it, explains the accepted
specification, recommends Delivery planning, and stops.

## Delivery owns one Plan result

One password-recovery Issue needs a token service and a user workflow through
two sequential Plans. The human chooses to plan the token service.

Deliver discusses and gates only `plans/p1-token-service.md`, waits for
separate Implementation Authorization, implements and assures it, passes Result
Acceptance, updates the Issue's proven coverage, recommends the user-workflow
boundary, and stops. It does not create or begin `p2` automatically.

## A Plan bounds authority without scripting every edit

A password-recovery Plan affects the token service, mail adapter, API handler,
and user workflow. Listing every helper and test command would make the proposal
brittle, while “implement password recovery” would leave its authority
unbounded.

Plan names the exact Issue coverage, affected components and data, token and
recovery flow, necessary sequencing, permitted mutations, exclusions, risks,
and proof. It names a file or command only where that precision defines scope,
safety, coordination, recovery, or evidence. Delivery remains free to adapt
routine internal edits inside the approved boundary.

## Plan steering evidence differs from completion evidence

A Plan uses a narrow API probe after the first implementation slice because its
result can still change the chosen approach. That probe is a steering
checkpoint, not proof that the Issue is complete.

The Plan separately names the boundary-level evidence needed at Result
Acceptance. A proxy may guide implementation, but it cannot replace independent
or broader proof when the governing claim crosses the proxy's boundary.

## A material Plan revision stays coherent

Implementation research invalidates the Plan's selected storage mechanism. The
replacement changes touched authority, operating risk, integration, recovery,
and the evidence needed to prove the result.

Delivery returns one coherent revision covering those consequences. It does not
swap the approach paragraph while leaving stale exclusions, recovery steps, or
proof obligations behind.

## A Plan may carry only bounded uncertainty

Current source cannot reveal whether a dependency needs an existing hook or a
small adapter until implementation reaches that seam. Either choice touches
the same component and preserves the same behavior, exclusions, consequences,
risk, and proof.

The Plan names the uncertainty and allows either choice inside that safe
decision envelope. If one plausible answer required another repository, changed
behavior, a migration, or broader proof, Plan would resolve the question or
return it to its owner before Approval instead of hiding unbounded authority
behind “decide during implementation.”

## Implementation adapts inside approved authority

An approved Plan permits changes to the session service. The initial helper
design fails an integration test, but a different internal design preserves the
Issue behavior, mutation targets, exclusions, and required proof.

Deliver revises the helper, debugs, reviews, and verifies without another
permission request. If the correction required different observable behavior
or broader mutations, it would return to the exact governing owner instead.

## Repetition must buy new information

The same integration test fails three times after cosmetic variations to one
patch. None of the attempts tests a new causal hypothesis or changes the
available evidence.

Deliver stops repeating the action and invokes Debug, reframes the approach, or
returns the blocked state to the human. Another attempt is justified only when
it is expected to produce new information.

## Individually local deviations can become a collective boundary change

Several implementation choices each look like harmless internal adaptations,
but together they replace the approved transaction boundary and recovery
strategy.

Deliver evaluates their cumulative effect. Once the combination changes Plan
authority, risk, integration, recovery, or required proof, it returns a Plan
revision instead of treating every deviation independently.

## A broken evaluator is repaired before the product

A failing acceptance script reports that revoked sessions still succeed, but a
known-bad fixture produces the same output because the script never sends the
revoked credential.

Delivery repairs or replaces the evaluator before changing product code. A
failed instrument is evidence about the instrument until a sensitive check
shows that it can distinguish the governing behavior.

## A destructive local action needs both controls

An approved Plan creates and tests a destructive database migration. Applying
it to a local development database could still destroy valuable state.

The Plan must name that exact target, effect, recovery approach, and required
evidence. The human's Implementation Authorization must explicitly cover
applying it, and current Safety evidence must still support the exact database
and command. Check Safety asks for no duplicate permission when that authority
is already precise and no new consequence appears. “Local” does not convert a
consequential mutation into ordinary testing.

## Result feedback stays local when authority remains valid

Result review finds a missing error state already required by the Issue and
covered by the approved Plan.

Deliver corrects it under the existing Implementation Authorization, repeats
affected Review and Verify work, and presents Result Acceptance again. It
creates no new Plan because governing meaning and authority did not change.

## An infeasible Plan returns the actual state

Implementation proves that a chosen dependency cannot support the approved
behavior after useful partial repository changes have been made.

Deliver makes the current state safe, closes no unproved Issue coverage, and
returns the partial result, evidence, limitations, learning, and recommendation.
The human decides whether to preserve it, revise the Plan, backtrack, authorize
cleanup, or stop; Deliver neither improvises outside authority nor erases it.

## Final Result Acceptance may judge the Evolution

The last Plan for an authentication Evolution closes all remaining Issues, and
its integrated Review and Verify evidence proves both the Plan result and the
complete Evolution working form.

One Plannotator interaction may explicitly present and judge both claims. If
the evidence proves only the Plan slice, Result Acceptance closes only that
coverage and Deliver recommends the missing integration or proof instead of
claiming Evolution Acceptance.

## Final Result Acceptance may close the Project

A Project using direct Issues reaches its final Plan. The integrated result
proves the bounded Plan claim, every remaining Issue, and the complete Project
Outcome.

One Plannotator Result Gate explicitly presents and judges both the Plan result
and Project Outcome. Its approval closes the Plan, proven Issues, delivery, and
Project without a duplicate Project Closure interaction. If the Project were
rejected or superseded, or no Result Gate had judged the complete outcome, a
distinct Project Closure interaction would remain necessary.

## Completed Plans are not a permanent archive

After `p1-token-service.md` is accepted, the owning Issue records its proven
coverage, evidence, remaining limitations, and unresolved work. Source, tests,
and Git preserve the implementation evidence.

The Plan may be removed once no named future loop needs its authority,
limitations, or learning. Praxis creates neither future Plan placeholders nor a
permanent Result directory merely to preserve execution history.

## Known pressure changes the solution without predicting everything

An authentication Project starts with password login, and the accepted
Evolution Map already includes social login. Requirements Discovery preserves
that known direction because it affects ownership of identity and sessions.

Formalization does not specify the future social providers or build a generic
plugin framework. Design Solution instead checks whether password-specific
session ownership would make the accepted next Evolution predictably scattered.
The current Evolution and Issues express the ownership and proof consequences
that matter now, leaving unsupported future details open.

## Current work exposes a necessary refactor

While adding social login, Delivery finds that session creation, revocation,
and audit behavior are duplicated inside password-only handlers. Adding more
provider conditionals would pass the new tests but make one accepted behavior
live in several avoidable places.

The approved Plan already covers the session service and integration proof, so
Delivery invokes Refactor, characterizes the accepted session behavior,
consolidates session ownership at that pressure point, and implements social
login against the coherent seam. It does not defer the necessary repair or
redesign unrelated authentication modules.

## A broader refactor returns to Plan

The same social-login work reveals that the coherent repair would also replace
the persistence model, migrate existing sessions, and change recovery
consequences. Those targets, risks, and proof exceed the approved Plan even
though the Issue behavior remains valid.

Delivery returns the evidence and proposed boundary to Plan discussion. The
human judges a revised Plan through Plan Approval before implementation
continues; the agent does not treat “refactoring” as unlimited authority.

## Accepted future pressure can justify present refactoring

An accepted authentication Evolution Map shows that a later Evolution will add
another provider. The current password Evolution already duplicates session
creation between registration and login, so the known next provider would
predictably add a third owner.

Plan invokes Refactor while developing the current proposal. It recommends the
smallest shared session seam and the inherited proof required now, without
implementing the future provider or inventing a generic provider platform. The
human judges that structural work as part of normal Plan Approval.

## Refactor does not preserve a known defect

A legacy pricing function must be split before an accepted tax change, but one
current rounding behavior contradicts a documented rule and a reported bug.

Refactor characterizes the accepted pricing behavior around the narrowest
stable seam but does not encode the known defect as a preservation
requirement. Debug establishes its cause, and the Issue owner settles the
correct behavior before structural work continues.

## An internal seam may change without rewriting the specification

An approved Plan permits changes inside the notification service while
preserving its public API and delivery semantics. Refactor replaces duplicated
internal provider conditionals with one owned dispatch interface, and the
affected public behavior remains green.

That internal interface change stays inside Plan authority. If the credible
repair instead required a new public event schema or observable retry
semantics, Refactor would return to the relevant Issue and Plan rather than
silently changing governed behavior.

## ast-grep assists a structural migration without proving it

A Plan authorizes replacing one deprecated handler registration shape across a
bounded package. Delivery uses ast-grep to inventory the concrete syntax,
reviews the complete proposed rewrite, applies it inside authority, and reruns
the search to check whether that old form remains.

The zero-match result proves only the scoped syntactic claim. The compiler,
behavioral tests, Review, and Verify still establish whether registration
semantics were preserved. The one-off rule is discarded because no future
consumer needs it.

## Setup adds ast-grep only when asked

Praxis is already working offline when the human asks, “Set up ast-grep for
this repository.” Setup inspects the current environment, installs or verifies
the native tool, reports its version and availability, and stops.

It creates no Praxis wrapper, project rule, or `sgconfig.yml`, and it runs no
search or rewrite. A later caller uses the shared structural-search semantics
under its own authority.

## Cumulative proof follows impact

A circuit evaluator adds vector values. The change touches the shared value
representation and operator dispatch used by scalar circuits.

Verification proves the new vector behavior and reruns the inherited scalar,
serialization, and error behavior exposed by those shared invariants. It does
not rerun unrelated command-line formatting checks merely to satisfy a ritual,
and it does not omit scalar proof because the new Issue only names vectors.

## A changeability finding needs a concrete mechanism

A complexity report flags a large authentication module. Review inspects the
actual change and finds that the size comes from cohesive provider declarations
whose ownership and extension point remain clear.

The metric alone does not block acceptance. Review would block if it could show
that adding one accepted provider requires editing scattered conditionals,
duplicating session rules, or changing unrelated responsibilities, because
that is a concrete harmful change mechanism.

## Probe one consequential seam

The next accepted Evolution depends on a provider interface that has only been
used once. Before accepting the current result, Delivery creates a disposable
second provider or asks an adversarial reviewer to trace that extension.

The probe tests only whether the seam carries the accepted pressure. Its
evidence may trigger a local correction or Plan revision; its disposable code
does not become product behavior merely because it was useful.

## Adjacent debt stays outside the result

Social-login implementation exposes confusing notification code nearby, but
the approved result neither depends on it nor makes it less coherent.

Delivery records the concrete concern and recommends separate work. It does not
silently broaden the Plan under the name of maintainability.

## TDD proves the public contract at the narrowest stable seam

An Issue requires revoked sessions to fail through the public API. A unit test
around the token helper is fast but cannot prove that the API rejects a revoked
session.

TDD begins at the narrowest public integration seam that exercises revocation
through the API. It may retain a narrower domain test for detailed behavior,
but it does not substitute that test for proof of the governing contract or
default unrelated cases to full end-to-end tests.

## TDD follows one vertical slice

A password-reset Issue covers token creation, email delivery, token
consumption, and expiry. Writing all four test suites before implementation
would freeze assumptions before the first real path teaches anything.

TDD first proves one reset request through the smallest meaningful path, makes
that path green, and lets its evidence shape the next behavior. It does not
build a horizontal inventory of red tests whose implementation and seams remain
speculative.

## TDD refactors only from green

The first social-login behavior passes, but the working slice exposes duplicate
session creation in two provider handlers. The accepted Plan already covers
the session-service pressure point.

TDD refactors the shared ownership while the suite is green, reruns the
materially affected provider and session tests, and then writes the next
failing behavior. It neither restructures a system whose behavior is still red
nor postpones a necessary coherent repair until final Review.

## A TDD expectation must be independent

A pricing function applies a published rounding rule. The first proposed test
computes its expected value by calling the same rounding helper used by
production code.

TDD rejects that tautology and derives explicit expected examples from the
published rule. The test can now disagree with the implementation, so green is
meaningful evidence rather than agreement with itself.

## TDD replaces a real boundary, not owned collaborators

Registration sends email through a third-party provider. The domain service,
token store, and mail adapter are all owned code; the remote provider is not
available in tests.

TDD exercises the owned modules together and substitutes a realistic local mail
sink at the provider boundary. It does not mock every internal call merely to
make the service test isolated, because that would prove choreography instead
of registration behavior.

## TDD returns a claim it cannot prove honestly

A visual editor Issue says dragging a handle should feel direct and calm. A
brittle pixel-timing assertion would be deterministic but would not prove the
human experience.

TDD returns that limitation and recommends a tangible interaction plus human
reaction, while retaining executable tests for stable geometry and state
contracts. It does not invent a surrogate assertion merely to preserve
red–green ceremony.

## The smallest contrasting case defeats a shortcut

A parser passes the first example by returning the only expected token for
every input. Adding a broad suite would hide which case actually constrains the
next behavior.

TDD adds the smallest contrasting example that the shortcut cannot satisfy,
then implements only enough general behavior to make both cases green.

## Red must fail for the governing reason

A new revocation test is red because its database fixture never starts. Making
product changes against that failure would teach nothing about revocation.

TDD repairs the harness and confirms that the test fails specifically because
revoked access is accepted. It does not weaken an independently validated
expectation merely to obtain green.

## TDD steering tests do not replace completion evidence

A narrow domain test is the fastest useful red–green loop for token expiry, but
the Issue requires expiry to hold through the public API.

TDD uses the domain test to steer implementation, then adds the lightest public
integration evidence capable of proving the governing contract. Fast feedback
and completion proof may live at different seams.

## A Review finding must earn its consequence

An authentication diff duplicates session policy across an API handler and a
background worker. Review shows how later MFA behavior can update one path and
leave the other inconsistent. It also notices two names the reviewer personally
dislikes.

The duplicated ownership becomes a prioritized finding with evidence,
consequence, and a bounded correction. The names remain optional suggestions
because no material failure mechanism makes them blocking.

## Code Review asks two different questions

Password recovery is cleanly structured and well tested, but returns a
different response for unknown accounts despite the Issue's enumeration
defense. Another diff matches its Issue but introduces a race in token
consumption.

Specification Fidelity catches the first problem; Engineering Integrity catches
the second. Review applies both lenses and merges their findings rather than
treating passing tests or clean structure as proof of the other question.

## Review inspects outside the diff without importing adjacent debt

A new session endpoint calls an older validator that accepts expired tokens.
The validator is outside the diff, but the new result materially relies on it.
The same file contains an unrelated logging defect the result neither uses nor
worsens.

Review follows the dependency and reports the expiry problem against the
reviewed result. It may mention the logging defect as an observation, but does
not expand the correction boundary or block this result because of unrelated
pre-existing work.

## Review resolves the causal surface rather than the patched line

A one-line retry change appears correct in isolation, but every caller shares a
mutable request body that the retry path consumes.

Review follows the data and ownership needed to explain the consequence. Its
finding names the causal surface and bounded correction, rather than attaching
confidence to the visually small patch.

## Missing governing truth makes Review incomplete

Review can inspect an authentication diff but cannot locate the governing
Issue. It proves a race condition from source, yet cannot judge whether the
public behavior matches the accepted specification.

Review returns the race finding and names Specification Fidelity as incomplete,
including the missing Issue. It does not return “approved” or imply that no
other findings exist.

## Review composes one bounded verification probe

Source suggests username normalization occurs after uniqueness checking.
Whether the actual storage boundary permits duplicates is unclear from static
inspection.

Review asks Verify to test that exact public behavior and interprets the
returned evidence. It does not rerun the complete verification suite or treat a
green probe as a substitute for the remaining Review lenses.

## A consequential target triggers a focused audit

Password recovery introduces signed tokens, rate limits, and
account-enumeration defenses. The consequences justify tracing token lifetime,
replay, expiry, disclosure, and abuse paths.

Review enters a security posture driven by those threats and merges its
findings into the normal result. A copy-only interface change would not receive
the same audit merely because a security checklist exists.

## External review comments are claims

One pull-request comment says recovery tokens never expire, but middleware
proves that they do. Another correctly identifies that a successful token
remains reusable.

Review rejects the first comment with counterevidence and confirms the second
with its consequence and correction. Neither comment grants mutation authority
or becomes true because a reviewer supplied it.

## Sampling cannot produce a complete clean Review

A generated change touches one hundred files. The reviewer inspects the central
service and several tests but cannot reliably cover the complete target in one
pass.

Review either partitions the fixed diff into bounded subreviews and integrates
their coverage, or returns an incomplete result. The sample may yield findings,
but it cannot justify “no findings” for the whole change.

## Independent discovery is not seeded with another review

Two reviewers are asked to discover defects in the same consequential diff.
Giving the second reviewer the first finding would anchor its search and turn
independence into adjudication.

The second discovery pass receives the same target and governing truth but not
the first conclusions. When a reviewer is instead validating or correcting a
specific finding, it receives that claim explicitly. After repeated
review–correction cycles, a fresh unseeded pass is used only when the remaining
risk justifies renewed independent coverage.

## Review findings follow their causal owners

Review finds a required error state missing inside current Plan authority, a
schema correction that needs an unapproved migration, and a harmless naming
suggestion.

Delivery fixes the error state locally and repeats affected Review coverage.
The migration finding returns to Plan because targets, risk, and authority
change. The naming suggestion needs no correction, and the modified diff does
not inherit clean coverage from its earlier version.

## Review questions follow the target

An Implementation Plan is under review before implementation exists. Review
challenges its Issue coverage, assumptions, authority, consequences, risk, and
proposed proof; it does not complain that planned tests have not passed.

A later Result Review challenges the actual working behavior, evidence,
limitations, learning, and acceptance claim. Both use the same finding
discipline, but neither judges artifacts that cannot yet exist.

## Review stops after complete bounded judgment

The full diff received both code-review lenses, findings were validated and
deduplicated, and a bounded race probe returned. No required audit or material
unknown remains.

Review returns its findings, coverage, and limitations and stops. It neither
fixes the diff nor searches indefinitely for another concern without a concrete
unresolved risk.

## Verify decomposes a broad completion claim

Delivery says password recovery works. The governing Issue also requires
indistinguishable account responses, token expiry, single use, and explicit
failure behavior.

Verify turns those requirements into separate observable claims and reports
status for each. It cannot mark the broad completion claim `verified` because
only the happy path passed, and it does not invent behavior absent from the
governing Issue.

## Quantitative verification conditions are fixed before the result

A performance claim says the new query is acceptably fast, but no workload,
baseline, sample count, or threshold has been chosen.

Verify agrees on the representative conditions and judgment rule before running
the benchmark. It does not select a favorable percentile or shorten the sample
after seeing inconvenient results.

## Verification cannot narrow the governing claim after failure

An Issue requires imports to preserve all supported timestamps. The check fails
for timezone offsets, so the result is redescribed as “UTC imports work.”

Verify reports the original claim as disproved or incomplete. A narrower claim
can govern future work only after the owning Issue is deliberately revised; it
cannot be invented inside verification to make the result pass.

## Verification evidence reaches the governing boundary

The claim says a revoked session is rejected through the public API. A unit
test proves that one helper recognizes a revoked token but never exercises
middleware, routing, or error translation.

Verify uses a focused public integration probe because that is the lightest
evidence capable of disproving the actual claim. It does not substitute the
helper test or run unrelated end-to-end behavior.

## A correction invalidates only affected proof

The full suite passes, then Delivery corrects one error-mapping branch after
Review. Happy-path behavior and untouched storage invariants are unchanged, but
the public failure response materially changed.

Verify reruns the affected failure-path and integration evidence against the
final target. It may retain unaffected proof whose target, dependencies,
configuration, and claim remain materially unchanged.

## Evidence failure is not product failure

Focused unit tests pass, but the required integration probe cannot start
because its database fixture is broken.

Verify reports the integration claim as `unverified`, preserves the unit claim
as `verified`, and names the unavailable evidence. If the integration probe
runs and observes the wrong public behavior, that claim becomes `failed`.

## Verify returns a mismatch without guessing

A revocation probe expects `401` but receives `500`. The response proves the
claim false but does not identify whether parsing, middleware ordering, or
error translation caused it.

Verify reports the expected and observed result as `failed` and returns.
Delivery may invoke Debug for the unknown cause. After correction, the
materially affected verification runs again.

## Verify may create a disposable probe

No existing test proves that a recovery token cannot be reused. A test API can
issue one token and submit it twice without changing product behavior or
external state.

Verify runs that bounded disposable probe. It leaves durable regression-test
implementation to Delivery or TDD; if proof required a product-only endpoint
or production data, the claim would remain `unverified` until the necessary
authority existed.

## A passing test must be sensitive to the claim

An existing recovery test receives `200` and passes, but never asserts that
known and unknown accounts return indistinguishable response bodies.

Verify rejects it as evidence for enumeration resistance because it cannot
detect the excluded defect. A focused assertion with independently defined
expected behavior is needed before that claim can become `verified`.

## Correlated checks count as one evidence path

A unit test, integration test, and verification script all use the same fake
identity provider whose revocation behavior differs from production.

Verify treats them as correlated evidence for the fake boundary, not three
independent confirmations. It seeks one proportionate path through the real
boundary or reports the remaining limitation.

## Verification does not generalize across environments

Passkey registration succeeds in local Chrome while the Issue requires Chrome
and Safari. No evidence establishes that the two browser paths are materially
equivalent.

Verify marks the Chrome claim `verified` and Safari `unverified`. It states the
platform limitation instead of presenting one passing browser run as proof of
the complete requirement.

## Human judgment can be a scoped verification oracle

An editor interaction must feel as direct as the approved prototype. Geometry
tests establish mechanics but cannot decide the experiential match.

Verify presents the smallest useful comparison and asks the exact reaction
question. Until the human responds, the claim is `unverified`; a positive
response verifies that experiential claim without accepting the complete
Result or authorizing more work.

## Verify returns mixed status and stops

Three required claims receive current evidence: two are verified and one
reliably fails.

Verification is complete even though Delivery is not. Verify returns all three
statuses and stops rather than rerunning the failing probe for a convenient
pass. The overall completion claim cannot become `verified` until every
required claim is verified.

## Praxis presence does not route an obvious edit

A repository contains a substantial authentication Project under `/.agents/`.
The human asks to fix one typo in an unrelated error message.

Using Praxis recognizes ordinary Direct Work and exits without loading the
Project or teaching the framework. The existence of durable Praxis state does
not make that state relevant to every repository mutation.

## Routing may begin local discovery but not forward work

The human asks to use Praxis for social login. Provider behavior and recovery
implications remain consequential unknowns, so Using Praxis explains why
Requirements Discovery owns the question and invokes it proportionately.

In another Project the Requirements are already accepted. Using Praxis
recommends Formalization and waits for the human to choose it because a
human-selected forward activity does not begin through routing alone.

## The router loads only relevant durable context

One `/.agents/` directory contains three Projects with prototypes, references,
Evolutions, Issues, and old Plans. The request concerns an authentication error
path.

Using Praxis reads enough navigation to identify the authentication Project,
then loads its governing Issue and necessary ancestors. It does not ingest
every Project; if two owners remain materially plausible, it asks one concrete
question.

## The router recommends rather than presenting a taxonomy

An authentication request could theoretically use Direct Work, Issues, or
Evolve. Current source shows a contained behavior change with one coherent
outcome and no useful progressive sequence.

Using Praxis recommends the contained route, explains the immediate consequence
in authentication terms, and omits an abstract menu of every Praxis
capability. It mentions Evolve only if a genuinely plausible progressive
strategy would materially change the work.

## Resumption does not invent implementation authority

An approved password-recovery Plan exists, but no evidence shows that
Implementation Authorization occurred. The human later asks to pick up the
authentication Project.

Using Praxis reconstructs the Plan, latest result, unresolved state, and exact
stopping point. It recommends implementation but does not begin mutation until
the human clearly authorizes that Plan.

## The router exits after one handoff

Using Praxis routes an authentication inquiry to Requirements Discovery and
passes the relevant intent, references, and unknown question.

Requirements Discovery then owns Research, Interview, Make Tangible, and its
eventual recommendation directly. Those messages do not return through Using
Praxis; a later genuine ownership ambiguity may invoke it again as a new
routing question.

## Delegation may preserve context without reducing total tokens

The supervisor is carrying a consequential authentication Project and needs a
map of session invalidation. A fresh Researcher reads forty files and returns a
one-page synthesis with exact source pointers. The combined run uses more
tokens than direct research would have used, but the supervisor keeps its live
context focused on Requirements, architecture, and judgment.

Delegate names supervisor-context quality as the benefit and proceeds because
briefing and synthesis remain small. It does not claim a total-cost saving that
did not occur.

## A bounded brief pushes truth and lets the delegate pull local context

A Worker is asked to implement an accepted `SessionRevoker` boundary. The
brief includes its observable behavior, security invariants, allowed mutation
scope, exclusions, and proof, plus the authoritative interface. It does not
copy the entire Project or enumerate every repository convention.

The Worker reads the relevant local implementation patterns itself. When it
discovers that correct behavior would require changing a shared token contract
outside the Plan, it returns the evidence, impact, and recommended next step
instead of expanding its authority.

## A delegated return is intentional compaction

A Researcher tested three theories before finding the actual recovery path.
Its final message leads with the answer, names exact files and evidence,
explains one remaining uncertainty, and recommends the next probe.

Discarded searches and successful command logs stay in the isolated context.
The supervisor follows the decisive pointers and judges the synthesis without
replaying the entire investigation.

## Fresh review is proportional rather than automatic

A cheaper Worker makes a mechanical handler change under precise tests and a
tiny obvious diff. The supervisor can judge it directly, so no stronger
Reviewer is added merely because delegation occurred.

Another Worker changes security-sensitive revocation behavior under incomplete
integration evidence. The supervisor invokes a fresh stronger Reviewer with
the accepted contract, diff, and relevant standards. The Reviewer returns
material gaps rather than style preferences and grants no acceptance.

## Parallel delegation requires real independence

Requirements Discovery needs one bounded repository investigation and one
independent external-reference comparison. Their evidence paths do not overlap,
so the supervisor may run them concurrently and synthesize both compact
returns.

Two implementation tasks would mutate the same authentication boundary and
depend on the same unsettled interface. Delegate keeps them sequential rather
than creating competing assumptions and merge work.

## Delegation does not amplify authority or nesting

A Worker needs local source access and the test runner. The supervisor also has
production credentials and deployment tools, but the Worker receives neither
because its brief does not require them.

When the Worker believes three more agents would help, it returns the proposed
decomposition and expected benefit. It does not silently fan out. The
supervisor either creates the bounded delegates explicitly or keeps the work
sequential.

## Resume local correction and restart polluted understanding

A Worker fails one focused test because an edge case already inside the brief
was handled incorrectly. The supervisor resumes the same delegate because the
objective and governing truth remain valid.

After repeated attempts reveal that the Worker misunderstood the accepted
contract, the supervisor stops resuming it. A fresh context receives a
corrected brief, or the supervisor takes the work back when direct correction
is now cheaper and safer.

## Scout and Researcher are lenses rather than jurisdictions

The supervisor needs to know where session invalidation is currently owned and
how requests reach it. Scout traces the repository's actual source, history,
ownership, and execution path.

The next question asks what WebAuthn standards and browser implementations
require. Researcher synthesizes the external evidence. A small coherent
question that needs one local check and one external reference may stay with
one delegate when splitting it would add more coordination than clarity.

## Review and Verification answer different questions

An authentication diff passes every test but places session revocation in a
component that does not own identity state. Verifier can prove the tested
behavior, while Reviewer identifies the consequential ownership and
changeability problem.

For a small fixed target, one delegate may run both procedures if it reports
the Review judgment and Verification evidence distinctly and the combination
does not weaken independence. Neither procedure grants acceptance.

## Oracle resolves a consequential dispute without becoming a stage

The supervisor and Reviewer disagree about whether session revocation belongs
in the identity service or API gateway, and either choice would reshape several
Issues. Oracle receives the bounded dispute, governing records, and decisive
source evidence, then returns independent reasoning, risks, missing evidence,
and a recommendation.

Oracle does not implement either option or overrule the human. Delegate uses
fresh context unless recent conversational nuance is itself necessary to
understand the disagreement, in which case it chooses the smallest useful
bounded fork.

## Safety follows consequence rather than command names

Removing a verified disposable build directory has a scary-looking command but
no meaningful loss. Check Safety confirms its exact bounded target and returns
`proceed` after a proportionate inspection.

A routine migration command can destroy production data. Check Safety follows
the actual environment, ownership, recovery, and credible blast radius rather
than treating familiar syntax as safe.

## An unresolved cleanup target stops

A cleanup command refers to `$OUTPUT_DIR`, which is unexpectedly empty and
would cause the command to target the repository root.

Check Safety resolves the actual command and returns `stop`. The caller's safe
intent does not make an ambiguous or broad target executable.

## Git is not recovery for unrecorded state

An agent plans to replace a directory and claims Git can restore it. Inspection
finds ignored local configuration and untracked state alongside the tracked
files.

Check Safety distinguishes the recorded content from the material that would
be lost, then returns `revise` until a credible preservation or explicitly
accepted loss boundary exists.

## Local preparation grants no publishing authority

The human authorizes preparing and verifying a release package. The package is
ready, but no authority names `npm publish`, its account, or its destination.

Check Safety returns `stop` for publishing while leaving the completed local
preparation intact. The obvious next command is still a separate external
effect.

## Secret verification reveals no secret

A deployment needs confirmation that a credential exists and has the intended
scope. Printing the environment would place the credential in agent context
and logs.

Check Safety uses presence metadata or a bounded authenticated probe instead.
It returns only the scoped result and never copies the secret into its report.

## A Safety result expires with its action

Check Safety returns `proceed` for moving one exact generated directory to
trash. Before execution, the resolved path changes to a shared directory.

The earlier result covers neither the changed target nor its consequences. The
caller repeats a proportionate preflight rather than treating “move to trash”
as generally approved.

## A safer alternative has its own consequences

Permanent deletion could be replaced with a snapshot and removal. Inspection
shows that the proposed snapshot location would copy sensitive configuration
into a broadly readable directory.

Check Safety does not call the snapshot inherently safe. It returns `revise`
with a bounded protected alternative, which the caller may use only when its
existing authority covers the revised action.

## A scoped commit preserves unrelated work

Delivery changes three authentication files while the human has unrelated
editor configuration edits and an untracked note. The human asks to commit the
authentication fix.

Commit stages and records only the coherent authentication change. The editor
configuration and note remain untouched. If the human instead says “commit all
current changes,” Commit inspects and includes the complete relevant working
tree rather than silently selecting a subset.

## Existing staging grants no inclusion authority

An unrelated configuration change was staged before the human asked to commit
the authentication fix.

Commit inspects staged and unstaged state separately and preserves the
out-of-scope staged change. If the exact authentication commit cannot be formed
without disturbing the index, it explains the conflict instead of silently
unstaging or committing the configuration.

## One intention may span several artifact types

A session-revocation correction changes implementation, tests, documentation,
and a lockfile required by the same dependency update.

Commit treats them as one coherent intention because each part makes the
accepted change complete. An unrelated formatting-tool configuration receives
a proposed separate commit rather than being split or combined according to
file type alone.

## A stale test result cannot support the commit message

Relevant tests pass, then one staged behavior file changes. The proposed
message claims the revocation defect is fixed.

Commit repeats materially affected proof before recording that claim. If proof
cannot run or fails, it reports the gap before committing and recommends
correction or an explicitly concern-bearing commit.

## Main does not automatically create a branch

The repository intentionally allows direct commits to `main`, and the human
asks for one. A generic policy that always creates a feature branch would
change the workflow without cause.

Commit inspects repository rules and follows the explicit request. In another
repository where instructions require feature branches, it returns before a
direct commit. The branch name alone decides neither case.

## A hook mutation changes the proposed snapshot

A pre-commit formatter rewrites a staged file. The earlier staged-diff review
and affected verification no longer describe the exact commit candidate.

Commit reinspects the staged snapshot and repeats affected proof before
retrying. A failing hook is returned to the owning work; it is never bypassed
merely to make Git succeed.

## Conventional Commit metadata remains honest

One of three commits contributes to Issue `AUTH-42` without completing it. Its
message uses `Refs AUTH-42`, while `Fixes AUTH-42` remains unavailable until one
committed intention genuinely completes the Issue under repository convention.

The subject is concise Conventional Commit syntax. Its body preserves useful
technical behavior without customer names, emails, ticket contents, secrets,
PII, file narration, or invented identifiers.

## Commit stops before remote work

Git creates the intended commit while unrelated staged and unstaged changes
remain.

Commit inspects the created object and reports its identity, subject, included
intention, verification, and remaining working-tree state. It does not push,
open a pull request, tag, merge, deploy, or clean unrelated work.

## A pull request is the complete base-to-head change

Three commits implement session revocation, while the latest commit only adds
the integration test. The human asks to create a pull request.

Prepare PR reads the complete target-branch diff and writes the title and cover
note for the whole behavior. It does not describe the pull request as a test
change merely because the latest commit added the test.

## An unrelated branch commit blocks publication

The authentication branch also contains an earlier editor-configuration commit
that the target branch does not have.

Prepare PR shows that the configuration would enter the target with the
authentication change and returns before publishing. It recommends correcting
the branch boundary rather than hiding the commit from the pull-request body.

## A small change needs no ceremonial template

A two-line correction preserves all interfaces and has one focused regression
test. The repository requires no pull-request template.

Prepare PR uses one clear paragraph explaining the defect and corrected
behavior. It does not add empty Summary, Changes, and Test Plan headings or
paste routine command output.

## A broad change explains where review should begin

A generated client update touches hundreds of files because one accepted API
contract changed.

Prepare PR explains the governing contract, why the breadth is necessary, the
compatibility consequence, and the small source files where review should
begin. It does not narrate every generated file or disguise the breadth.

## A material revision refreshes current truth

An existing pull request originally changed only token parsing. Later commits
move revocation enforcement into the public API boundary and alter its risk and
review order.

Prepare PR rewrites the title and body as one current cover note while
preserving valid human guidance and issue links. It removes stale claims instead
of appending a revision diary.

## A title-only refresh cannot publish local commits

The human asks to improve an existing pull request's title and body while the
local head contains an unpublished commit.

Prepare PR updates only the remote title and body for the snapshot already
represented. It reports the unpublished local commit and does not push it,
because refreshing prose granted no publication authority.

## Creating a pull request may publish its exact reviewed head

The human asks to create a pull request for a local feature branch with no
upstream. Prepare PR confirms the repository, account, remote, base, head,
complete diff, and current proof.

The request covers one normal non-force push of that exact head because it is
necessary to create the pull request. If the head changes after inspection,
Prepare PR repeats affected review and proof rather than publishing the new
commit under stale authority.

## New and existing readiness states behave differently

The human asks to create a pull request but says nothing about reviewer
readiness. Prepare PR creates a draft and reports what evidence remains before
it can recommend ready state.

When refreshing an existing ready pull request, it preserves that state unless
the human asks to change it. Updating the cover note never silently toggles
readiness.

## Reviewer aids must be evidence

A flow change is hard to reconstruct from the diff, and an existing verified
diagram makes the new ownership boundary clear.

Prepare PR includes the diagram with a sentence explaining what to inspect. It
does not manufacture a screenshot or decorative architecture diagram merely to
make the pull request look complete.

## Pull-request preparation stops before social and release actions

Prepare PR creates the draft, rereads the remote object, and reports its URL,
title, base, head, represented snapshot, proof, and remaining local state.

It does not request reviewers, assign people, add discretionary labels, enable
auto-merge, merge, tag, release, deploy, or clean the branch without a separate
explicit request.

## Conversation is evidence rather than documentation structure

After a long authentication design discussion, the agent has a transcript of
rejected alternatives, approvals, and implementation discoveries. The public
guide needs to explain the final recovery behavior.

Write Docs verifies the delivered behavior and authors a fresh explanation for
the user. It preserves only rationale needed to use the system safely, as a
current constraint and consequence, and omits the meeting chronology.

## A task-shaped file does not become a durable document

The configuration guide already owns session settings, but the current task is
named “add idle timeout.”

Write Docs updates the configuration guide instead of creating
`IDLE_TIMEOUT_IMPLEMENTATION.md`. A new page would require a distinct reader
need and a discoverable place in the documentation structure.

## Internal movement creates no automatic documentation

Delivery moves session validation between two modules without changing public
behavior, operations, integration, troubleshooting, or contributor workflow.

Write Docs creates no README architecture update merely because code moved.
Implementation activity alone is not a durable reader need.

## Intended behavior cannot masquerade as current behavior

The approved Issue calls a setting `session_timeout`, but implementation and
tests expose `session_idle_timeout` with environment-specific defaults.

Write Docs documents neither name from memory. It verifies the current
interface and returns the mismatch to the owning work rather than describing
the intended future as shipped.

## One page cannot serve every reader job

An authentication page tries to teach a first request, list every endpoint
field, explain distributed revocation, and provide incident recovery.

Write Docs separates linked task guidance, contract reference, understanding,
and operations surfaces. Each page follows one primary reader job instead of
becoming a compressed manual.

## Progressive disclosure preserves correctness

A getting-started guide includes every deployment topology and rare failure
before the first successful request.

Write Docs leads with one complete representative path, moves advanced variants
to later sections or owning references, and keeps required prerequisites and
safety conditions visible where they affect correctness.

## API examples do not replace the contract

An endpoint page contains a working request but omits authentication, defaults,
field constraints, errors, side effects, pagination, and compatibility.

The contract-reference path checks the whole exposed interface in a consistent
kind-specific order. The example illustrates that contract without standing in
for it.

## Conceptual explanation fixes the mental model

Users call the session API correctly but design unsafe recovery because they do
not understand that revocation propagates asynchronously across regions.

The understanding path explains the mechanism, invariant, boundary, and
consequence through the smallest useful model, then links to the API and task
guides. It does not add more endpoint examples or preserve implementation
history.

## Runbooks distinguish observation from authority

An operator sees a spike in revocation failures at night. The runbook provides
diagnostics, containment, recovery, verification, and escalation, including a
command that mutates production.

The operations path makes triggers, expected signals, stop conditions, and
safety visible. The documented command still requires its ordinary external
authority; appearing in a runbook does not authorize execution.

## Current guidance does not carry release history

A renamed configuration key needs a migration for existing users. Leaving both
names in the main guide would make the supported path ambiguous.

Write Docs keeps the current guide clean, places the required transition in
migration guidance, and records shipped impact in release notes when the
repository maintains them.

## Documentation is reconciled rather than append-corrected

The README says sessions expire after 30 minutes, the configuration guide says
60, and current source defaults to 45.

Write Docs resolves current truth, repairs or removes every materially affected
claim, and leaves one owning explanation linked from lighter surfaces. It does
not add a fourth corrective note.

## Generated reference is repaired at its source

An API page generated from an OpenAPI schema contains the wrong endpoint
description.

Write Docs corrects the authoritative schema or generator and regenerates the
page through the native build. It never hand-patches output that the next build
will erase.

## A valid command does not prove the reader journey

Every command in a setup guide is syntactically correct, but the guide omits
the credentials required before its first step.

Write Docs verifies from the declared reader starting state, catches the
missing prerequisite, and checks observable success and likely recovery. It
does not claim the guide works because isolated snippets passed.

## Required documentation obeys Plan authority

An approved Plan renames a public setting but does not cover the configuration
guide. Delivery discovers that the guide will become false.

Write Docs returns the exact affected surface and recommends a small Plan
revision. Delivery neither edits outside authority nor offers a result for
acceptance with consequential stale guidance.

## Documentation stops before repository and publication work

The intended reader can now complete the setup from coherent verified guidance.

Write Docs reports the surfaces, reader purpose, decisive verification, and
gaps. It does not commit, push, open a pull request, publish the site, release,
deploy, or expand into nearby docs without separate authority.

## Invoking Pair authorizes no first mutation

The Plan is approved and the human says, “Let’s pair on this.” The agent has
enough context to implement the first three files.

Pair begins inspection and proposes one exact coding move with its reason and
expected check. It waits before editing because selecting the posture is not
mutation authority.

## Pair boundaries are neither keystrokes nor the whole Plan

One agent asks permission before every file edit, formatter run, and focused
test. Another asks once to “implement authentication” and disappears into a
large batch.

Pair instead proposes one understandable move, such as adding a type and its
focused tests. Permission covers that change, ordinary formatting, and focused
verification. The agent returns the result before proposing the next boundary.

## The human may drive

The human says, “I’ll write this handler; watch and help me reason through it.”

Pair does not edit competing code. It observes the resulting source, answers
questions, explains consequences, challenges material mistakes, and helps
verify when the boundary is ready.

## Pair teaches the consequential model

The agent knows a correct concurrency fix and could apply it quickly, but the
human does not understand the race or why one synchronization point owns it.

Before asking for mutation permission, Pair explains the behavior, invariant,
mechanism, and meaningful tradeoff at the human's level. Afterward it connects
the source and evidence back to that model while keeping mechanical narration
brief.

## Better internal implementation stays local

Pair discovers a simpler helper design that preserves the approved Issue
behavior, Plan targets, consequences, risk, exclusions, and proof.

The agent explains the changed approach and receives permission for that
boundary without reopening the Plan. If the alternative changed the public
contract or mutation boundary, Pair would return to the exact owner instead.

## Debugging does not become autonomous mutation

An approved Pair change makes a focused test fail unexpectedly.

Debug may investigate and return the diagnosis. Pair then explains the
corrective mutation and waits for permission instead of trying several silent
fixes.

## Pair does not delegate implementation

The supervisor could send the next parser change to a cheaper Worker while the
human waits.

Pair may delegate a bounded read-only investigation or review, but not product
mutation. If the human explicitly chooses autonomous Worker implementation for
one boundary, Pair visibly suspends and the returned change is reviewed before
Pair resumes.

## Code permission does not authorize a migration

The human approves editing a migration. The agent wants to run it against a
local database as verification.

The edit permission does not cover data mutation. Execution still needs exact
Plan coverage, human authority for that action, and proportional Check Safety.

## Pair permission is revocable

The human approves a refactor, notices the direction is wrong halfway through,
and says, “Stop—leave it here.”

Pair stops at the earliest safe point, reports the actual partial state and
evidence, and waits. It does not finish, revert, or clean the workspace because
earlier permission existed.

## Praise does not exit Pair

One boundary passes its tests and the human says, “That looks good.”

Pair treats the reaction as local feedback. It proposes the next boundary and
waits; autonomous Delivery resumes only after an explicit posture change for a
named boundary.

## Pair permissions do not accept the result

Every mutation in the Plan was individually discussed and approved, and the
last focused test passes.

Delivery still performs proportionate integrated Review and Verify, explains
the complete result and learning, and presents Result Acceptance. Mutation
permission is not acceptance.

## Pair leaves no conversational ledger

A long Pair session contains useful discussion, local choices, and many
permissions.

Pair creates no transcript or permission file. Source and tests carry
implementation truth, native conversation carries transient exchange, and only
lasting changed truth returns through its owning Praxis record.

## Orientation does not create a Project

The human says, “Orient me to this authentication subsystem before I decide
what I want.”

Orient clarifies the learning goal, inspects the current source, and teaches the
smallest useful model. It does not create a Project, start Requirements
Discovery, or turn the explanation into proposed work.

## Orient teaches the missing layer

The human understands distributed systems but is new to the repository.

Orient reuses the human's existing concepts and explains this codebase's
ownership, flow, and unusual constraints. It does not restart from generic
sessions and tokens.

## Generic knowledge cannot replace source

The human asks how a request becomes an authenticated session in the current
repository.

Orient traces the real source, configuration, tests, and boundaries, then uses
domain knowledge to explain that evidence. It does not substitute a polished
generic OAuth architecture.

## File order is not a mental model

The authentication path crosses forty files.

Orient first maps the few responsibilities, ownership boundaries, and primary
flow, anchors them to decisive source, and zooms into one difficult branch. It
does not narrate the repository tree.

## A temporal flow may need a diagram

Requests, refresh tokens, revocation events, and caches interact over time and
are difficult to retain in prose.

Orient uses the smallest useful sequence diagram and explains what to notice.
If a richer interactive model is needed, Make Tangible owns that bounded
surface and returns the reaction to Orient.

## Understanding checks are conversational

The human follows a long explanation but cannot predict which component handles
the next revocation event.

Orient asks one concrete prediction question, sees the missing ownership
relationship, and revisits that link with a better example. The question is a
teaching tool, not a gate or exam.

## Orientation stays bounded

The human asks how authentication state reaches the API. Authorization,
billing, deployment, and several identity standards are adjacent.

Orient includes only adjacent context required to make the requested flow
correct or expose a consequential blind spot, explains why it matters, and
returns to the main path.

## Research supplies a blocked fact

Accurate orientation depends on whether one browser guarantees a WebAuthn
behavior.

Research answers that bounded factual question from authoritative evidence.
Orient translates the result into the human's system model instead of becoming
an open-ended standards survey.

## Discovery during orientation returns to its owner

The code and architecture guide disagree about which component owns session
revocation, and the difference affects an active Formalization.

Orient explains the contradiction, supplies evidence, and identifies the
affected owner. It does not silently revise the Evolution or Issues.

## Orientation never fixes by implication

While teaching the flow, Orient finds a misleading function name and stale
documentation.

It explains both findings and recommends the proportional mutation paths.
Orient does not refactor the function, edit documentation, commit, or publish.

## Orientation creates no future-agent report

The human can now reason with the architecture, and nobody else needs the
explanation.

Orient leaves the model in conversation and creates no
`architecture-orientation.md`. If a named future reader needs durable guidance,
Write Docs authors it from current verified truth under separate authority.

## Orient stops when the model is usable

The human can trace the request, explain ownership, and predict where revocation
behavior belongs.

Orient briefly restates the model, remaining uncertainty, source anchors, and
one relevant recommendation, then stops. It does not enter Formalization or
Delivery automatically.

## Review composes Security around one real target

An approved Issue adds an authenticated Python endpoint that accepts a
user-controlled resource identifier and changes account state.

Review owns the fixed diff, reported scope, surrounding research, coverage, and
integrated findings. It invokes Security to combine relevant authentication,
authorization, injection, business-logic, framework, and source evidence.
Security neither runs every available reference nor takes over the Review.

## A clean scanner result is bounded evidence

Semgrep and dependency scans return no warnings for a new recovery flow, but
the scanners do not understand which account the recovery token may authorize.

Security returns their covered evidence and still traces the business-logic and
authorization path. Review may eventually report that no high-confidence
vulnerabilities were identified in its reviewed scope; it never reports that
the system is secure merely because the tools were green.

## A scanner warning must survive validation

A static rule flags a raw SQL fragment, but source tracing shows that every
value is bound through the framework driver and the fragment contains only a
fixed column name.

Security dismisses the candidate with counterevidence. It does not inflate the
warning's severity, change the code defensively, or keep it as a confirmed
finding because a respected tool produced it.

## Passive local scanning needs an announcement, not a new gate

Delivery changes a container manifest and dependency lockfile. The agent
selects pinned disposable Trivy and OSV-Scanner containers, mounts the source
read-only, denies unnecessary privileges, and keeps output private.

The agent tells the human which tools it will run, against what target, for
what purpose, and with what isolation, then runs them inside existing Delivery
authority. It does not ask for another permission merely because the tools
were not installed on the host.

## A paid external security service remains separately authorized

A broad authentication change would benefit from a paid external security
service selected for one concrete evidence gap.

Security recommends the scan and explains the target, expected value, and
cost. It waits for explicit approval before invoking the service; Plan Approval
and ordinary implementation authority do not pay for or authorize that scan.

## Disposable local attack traffic differs from staging

Security wants to fuzz a parser against an isolated local container containing
synthetic data, then considers sending the same active probes to a shared
staging deployment.

The bounded local probe may run after announcement inside Delivery authority.
The staging scan waits for target-specific human authority because Docker or a
test environment name does not remove its network, shared-system, account, and
operational effects.

## Missing security policy returns to its owner

An Issue says administrators may export customer records but never settles
whether support agents share that privilege. Source and existing documentation
conflict.

Security stops treating the ambiguity as a code defect and returns the missing
authorization requirement to its exact Requirements or Formalization owner.
The corrected governing truth is re-gated before affected Delivery continues.

## An in-bound security defect can stay inside Delivery

Validation proves that one newly added endpoint omitted the same authorization
check required by its approved Issue. Adding the check and its regression proof
preserves the Issue behavior, Plan targets, risk, and mutation boundary.

Delivery may correct and re-prove the defect under current authority, then
repeat affected Review and Security coverage. Security itself does not perform
the fix or accept the result.

## An unrelated vulnerability does not silently expand the Plan

While tracing the new endpoint, Security proves that an old unrelated upload
route allows path traversal.

Security returns the vulnerability, evidence, consequence, and recommended
separate work to its caller. Delivery returns the interpreted result to the
human. The current Plan neither absorbs the fix nor treats the pre-existing
defect as a reason to hide or dismiss the finding.

## Independent agents deepen one investigation without creating a role

A consequential session redesign has several plausible attack paths and weak
existing proof.

The supervisor may ask a Reviewer to search adversarially, a Scout to trace
session propagation, a Researcher to check protocol guarantees, a Verifier to
reproduce one candidate, and Oracle to challenge a disputed threat model. The
supervisor integrates their compact evidence and retains confidence,
backtracking, gates, and human communication; Praxis does not invent a
mandatory Security agent.

## Raw security output stays private

A scanner emits source excerpts, exploit payloads, dependency paths, and
thousands of discarded candidates. A later remediation session needs to know
what was examined and whether the confirmed finding was fixed.

Praxis keeps the raw report outside the repository and preserves only a compact
receipt naming target, tool and version, coverage, finding identifiers, triage,
remediation proof, and a private evidence reference. Tool exhaust does not
become Project truth.

## A threat model needs a future consumer

A one-file validation change needs only a transient statement of attacker
control and expected protection. A multi-Evolution authentication Project will
reuse the same trust boundaries and threats across several Issue and Review
passes.

The caller keeps the narrow model conversational in the first case. In the
second, it may persist a revisable threat model and reference it from the
Project, Evolution, or Issues because named later work will consume it. The
model informs investigation but grants no authority and creates no gate.

## Security search stops at diminishing information gain

Two independent reviews, a focused runtime proof, static analysis, and
dependency scanning cover the material attack surfaces. Another generic agent
pass would likely repeat the same hypotheses while one environmental condition
remains impossible to verify locally.

Security returns the established findings, explicit unverified condition,
coverage, and recommendation. It does not spend indefinitely to manufacture
certainty or convert an evidence limitation into a clean claim.

## A direct security-review request still belongs to Review

The human asks, “Security-review this authentication diff.”

Using Praxis routes the fixed-target judgment to Review and composes Security
for attacker modeling, attack-path search, exploitability, and security
confidence. Security does not create a second target, coverage model, result,
or acceptance gate.

## Security contexts do not become its lifecycle

Requirements Discovery asks Security which trust assumptions remain unknown.
Later Formalization asks it to challenge a recovery contract, and Delivery asks
it to revalidate one corrected attack path.

Each caller owns its question, artifact, authority, result, and stopping.
Security supplies domain reasoning and returns. The earlier discovery, design,
review, validation, remediation, and hardening contexts never become an
automatic sequence.

## Research proves an external fact and Security interprets reachability

A dependency scanner identifies a CVE, but the affected version range and
feature preconditions are unclear.

Security may inspect current authoritative material ordinarily. If the external
fact remains consequentially uncertain, Research establishes the advisory
semantics and provenance. Security then combines that fact with the project's
actual dependency version, configuration, reachability, attacker control, and
consequence.

## Verify proves a fact without taking over exploitability reasoning

Source tracing suggests that an HTTP client may follow a redirect beyond an
allowlisted host, and the answer materially decides an SSRF finding.

Security or its caller gives Verify that exact executable claim. Verify returns
the factual status from current evidence; Security interprets its effect on the
attack path and confidence. Routine source inspection and scanner use do not
become repeated Verify invocations.

## Rich references guide judgment without defining coverage

An OCaml service exposes a protocol boundary for which Praxis has no built-in
language guide. A useful authorization reference contains Python examples, and
the current protocol specification and source carry the decisive semantics.

Security may load the authorization reference, adapt its model across
languages, and combine it with current source and authoritative protocol
material. Missing an OCaml-specific file neither skips the investigation nor
permits Praxis to claim universal stack coverage.

## A candidate reference must beat the capable model without it

A proposed authorization reference helps find an obvious missing check but
also flags a correctly tenant-scoped query.

Evaluate the same capable model with and without the reference against paired
vulnerable and close safe or mitigated cases, including evidence outside the
target file. Retain the reference only when improved discovery,
false-positive rejection, validation, explanation, or coverage justifies its
context cost.

## A direct planning request still belongs to one Deliver loop

Approved Issues exist and the human says, “Plan the first implementation
boundary.”

Plan begins directly, reconstructs the accepted work, discusses one
source-grounded proposal, passes Plan Approval, explains the accepted boundary,
and stops. The direct request established the planning portion of Deliver; it
did not create an independent planning owner or authorize implementation.

## Setup establishes the required minimum

The human asks to set up Praxis in an ordinary application repository that has
no `/.agents/` ignore rule and no Plannotator installation.

Setup inspects the repository, adds only the narrow ignore entry, verifies it
without creating a Project, template, directory tree, service account, or CLI
wrapper, installs or repairs Plannotator through its current official method,
confirms its native gate-capable interface without opening a gate, reports the
result, and stops.

The same request in the dotfiles repository finds intentional tracked
`.agents/` plugin source. Setup preserves that source and explains the
repository-specific exception instead of hiding or deleting it.

## Configuring an optional tool authorizes no use

Security recommends disposable scanners for a concrete investigation, but
Docker is unavailable. The human chooses to configure Docker through Setup.

Setup performs and verifies only the requested configuration, reports whether
it is ready, and stops. It does not run a container or scanner; later use keeps
the authority required by that operation's actual effects.

## Debug has one current causal contract

A Direct Work request reports an intermittent cache failure whose cause is
unknown.

Debug establishes a measured reproduction, preserves the original full case,
tests falsifiable hypotheses, proves the causal mechanism, and corrects it only
inside the request's authority. It reruns the regression and original
reproduction, removes instrumentation, returns any changed governing truth,
and stops without relying on a superseded capability hypothesis.

## A reproduction must be sensitive to the suspected mechanism

Two unrelated failures both produce HTTP 500. A proposed reproduction checks
only the status code, so it can pass while exercising a different failure path.

Debug adds the condition that distinguishes the suspected mechanism and proves
that the reproduction responds when that mechanism is removed or restored. A
matching symptom alone is not a causal reproduction.

## A decisive negative probe eliminates a hypothesis

Debug suspects that token expiry uses the wrong clock. A controlled probe fixes
the clock source while preserving every other condition, yet the failure
remains unchanged.

The clock hypothesis is retired rather than kept beside a growing list of
guesses. Debug updates the current causal contract and chooses the next probe
from the remaining evidence.

## Flaky and performance claims need a baseline

A race disappears once and a query benchmark improves in one warm run. Neither
observation establishes that the defect is fixed.

Debug compares a predeclared baseline with enough repeated or sampled evidence
to distinguish normal variation from the claimed mechanism. It reports the
remaining confidence boundary instead of turning one favorable run into
closure.

## Delegate return fields are guidance rather than a wire format

A Researcher returns a concise answer, exact sources, one unresolved conflict,
and a recommendation through the harness's native message.

The supervisor can act honestly even though the harness did not serialize a
named `Delegated Result` object. The semantic content contract governs what
must survive compaction. The envelope remains a native message; only facts a
named future consumer needs are promoted into their owning structured records.

## Approval and the next collaborative activity can share one message

An Evolution Map is complete in Plannotator. The human responds, “Approved;
let's define E1.”

Approval provisionally accepts the Map. The explicit choice to define E1 starts
that collaborative activity; approval did not silently advance the workflow.
If the human had said only “Approved,” the agent would explain what was
accepted, recommend a useful next activity when it had one, and return control.

This compound choice never joins Plan Approval to implementation. Even if the
human approves a Plan and discusses what comes next in the same interaction,
product mutation waits for a later explicit Implementation Authorization.

## No honest recommendation is a valid return

An interview establishes the desired recovery behavior, but neither the source
nor available evidence shows whether the identity provider supports the needed
revocation contract.

The agent returns the clarified behavior, the unresolved external fact, and
why it changes the solution. It asks for the missing evidence or human judgment
instead of inventing a preferred architecture merely to fill a recommendation
field.

## Active Delivery survives a context reset without a permanent diary

Implementation of an approved and authorized Plan has reached a failure whose
live diagnostic state cannot be reconstructed from the Plan, source, tests,
Git, or native messages. A context reset is foreseeable.

Before the reset, the agent writes a compact temporary checkpoint containing
the intended result, current approach, verified completed work, active failure
or deviation, last safe point, next bounded action, and exact evidence
pointers. The new context resumes from the approved Plan and this checkpoint.
Changed governing truth is still promoted to its real owner, and the temporary
checkpoint is removed once it has no consumer.

## A Plan uses a touchable checkpoint only when it can change direction

One coherent implementation requires a consequential interaction flow that is
cheap to expose after a narrow vertical slice but expensive to reverse after
the complete Plan.

The Plan includes one early touchable human steering checkpoint because the
reaction can still change the approach. The checkpoint is neither an Evolution
nor a partial Result Acceptance gate. If the reaction preserves the approved
Plan, Delivery resumes under existing authority. If it changes accepted
behavior, ownership, risk, or mutation scope, learning returns to the exact
causal owner and only affected gates repeat.

For a mechanical migration whose direction cannot usefully change midway, the
Plan contains no such checkpoint.

## Program design becomes tangible inside Plan without becoming a phase

A proposed implementation depends on a call path, component ownership
boundary, and public interface that are difficult to judge from prose.

Plan invokes Make Tangible for the smallest useful reaction surface: perhaps a
call-flow tree, proposed file-tree diff, ownership diagram, or key type sketch.
The human and agent refine the consequential choice, then incorporate the
accepted meaning into the Plan. Praxis creates no Program Design phase,
standalone record, or additional gate.

## A guide explains while the runtime skill instructs

Before runtime implementation, `model/skills.md` is the canonical accepted
procedure and a skill guide preserves the purpose, examples, rationale, and
research that make the capability understandable.

When that runtime skill is implemented, its `SKILL.md` receives the executable
procedure first. The guide keeps the human-facing explanation and unique
examples but loses mirrored operational steps. Runtime agents load the skill
and relevant references, not the guide as a second competing instruction
layer.

## A reader-ready record survives its originating conversation

Requirements Discovery and Formalization used a long conversation to settle
session-revocation behavior. A later Delivery agent was not present.

The accepted Issue uses ordinary engineering language to state its outcome,
Context, Requirements, and Acceptance Criteria. It links the governing
Requirements and Evolution and explains their local consequence without
copying them. The later agent can judge and plan the Issue without replaying
the conversation or learning Praxis workflow vocabulary.

## Issue detail follows the behavior rather than a template

One session Issue needs separate interface, state-transition, compatibility,
and failure sections. Another Issue has three simple behavioral rules.

Both use the same reader-ready Issue skeleton. The first adds useful H3
subdivisions beneath Requirements; the second does not manufacture empty
sections. Shared grammar makes the records predictable without pretending
their detail is identical.

## Acceptance Criteria specify claims rather than implementation tasks

A proposed Issue lists “update the session service” and “add a unit test for
the revocation helper” as checkboxes.

Define Issues replaces those tasks with observable claims: revoked credentials
fail through the public API, revocation takes effect before success is
reported, and unaffected behavior remains valid. Delivery later chooses the
files, seams, commands, and tests that can prove those claims.

## Partial Delivery updates one current Issue result

One Issue needs two sequential Plans. Result Acceptance proves part of its
behavior after the first Plan.

The Issue remains open. Its Result section states the currently proved
coverage, decisive evidence, and remaining unmet criteria. A later accepted
Plan replaces that summary rather than appending an implementation history.

## One bounded Issue Approval needs no collection record

Three Issues collectively specify one selected Evolution and are judged
together in one bounded Plannotator interaction.

Each Issue records the shared approval projection in its own envelope. Praxis
creates no Issue Set file, and approval grants neither planning nor
implementation authority.

## Plan steps are execution structure rather than another work hierarchy

A Plan needs to introduce a token-family version, route refresh validation
through it, integrate revocation with the API, and prove the accepted behavior.

Changes and Sequence expresses those mutations as a numbered ordered list.
They help Delivery and review understand causality, but they are not Tasks,
Issues, progress statuses, individual gates, or separate authority boundaries.
Routine mechanics may adapt inside the approved Plan.

## Plan coverage states the exact local consequence of governing Issues

One Plan implements only the API portion of an Issue that also specifies an
administrative interface.

Context and Coverage links the complete Issue, states the exact API behavior
and accepted starting baseline covered now, and leaves the administrative
portion visibly outside proposed authority. It neither copies the full Issue
nor relies on a bare link to define scope.

## A safe open choice carries its own decision rule

Current evidence cannot yet distinguish streaming from buffered parsing. Both
approaches preserve the same behavior, targets, exclusions, risk, recovery, and
proof.

Open Implementation Choices names both options, the benchmark property that
will discriminate between them, and the rule Delivery will apply. If evidence
instead requires another target or proof boundary, Delivery stops and returns
for Plan revision.

## A completed Plan does not become a result diary

Delivery completes and proves an Issue-governed Plan.

Result Acceptance updates the covered Issue's one current Result summary,
returns causal learning, and exhausts the Plan's authority. The Plan gains no
Result section, command log, review transcript, or test history and is removed
when no named future consumer needs it.

## A Plan parent does not pretend Issue coverage is one-to-one

One Plan covers portions of two Issues in the same Project because they form
one coherent implementation and verification boundary.

The Project is the Plan's structural parent, while Context and Coverage names
both Issue portions. A Plan without a Project omits `parent`, even when it
links standalone Issues. The envelope never invents a single Issue owner for
many-to-many coverage.

## A retained artifact explains the judgment it supports

A later Formalization agent opens a polished login-flow prototype without the
conversation that produced it.

The artifact's visible judgment frame states that the human evaluated flow and
layout, names mocked data and simulated transitions, links sourced behavior,
and says that backend feasibility and latency were not tested. The agent can
use the accepted reaction without mistaking polish for product truth.

## A judged artifact version is never overwritten

The human reacts to `auth-flow-v1.html`, combining one navigation choice with a
different interaction and rejecting a third detail.

Make Tangible freezes that exact version. The materially revised surface becomes
`auth-flow-v2.html`, while the owning record links the judged version and
preserves the accepted consequence. Version one remains only while its reaction
or comparison has a consumer.

## Compositional artifact reaction leaves browser state

An interactive comparison contains selections, rejected parts, edited values,
annotations, and unresolved questions that cannot be summarized safely as one
winner.

The surface exports an inspectable reaction bound to its exact version. Make
Tangible returns that evidence through a native message, and the calling loop
interprets what belongs in the governing record. Praxis creates no universal
reaction schema or report file.

## Artifact retention follows exact-form need

Requirements Discovery creates four login-flow mockups and the human chooses
one direction. Only the selected interaction remains useful to later
Formalization.

The chosen judged version moves into the Project's `artifacts/` directory; the
other disposable outputs are removed. Once later records contain the accepted
meaning and no consumer needs the prototype's exact behavior, it is removed
too. No artifact archive or status ledger remains.

## File-owned artifacts use lazy sidecar storage

One Issue owns a retained revocation-flow demonstration while another diagram
belongs to the whole Project.

The Project diagram lives in the Project's `artifacts/`. The Issue
demonstration lives under `issues/revoke-sessions/artifacts/` beside
`issues/revoke-sessions.md`. Neither location creates an artifact identity or
record envelope, and the sidecar does not exist until retained bytes need it.

## Artifact generation is not verification

An HTML comparison exists on disk, but one option clips at the intended screen
size and its export omits annotations.

Make Tangible exercises the surface through its intended medium, finds both
failures, and corrects them before presentation. A successfully generated file
and attractive screenshot would not have proved the artifact fit for its
declared reaction.

## One artifact may compose several patterns under one judgment

The human cannot yet describe what a useful review queue should feel like.
Make Tangible presents several genuinely different directions, lets the human
mark details to keep or reject, and exports a mixed reaction.

Explore and Discover is primary because the judgment is discovering criteria
and preference. Compare and Choose, Elicit and Articulate, and Manipulate and
Export support that judgment without becoming equal competing purposes. The
human may return with newly named criteria and no selected winner; that is a
successful exploration rather than an incomplete comparison.

The directions preserve representative queue scale, content length, and
failure states even though their implementation is simulated. Cosmetic
variants or tidy placeholder data would not have supported the same discovery.

## Guided reaction can articulate latent requirements

The human recognizes a suitable annotation toolbar but cannot specify its
placement and behavior in prose.

Make Tangible presents a bounded working mock with contextual questions and
exports the resulting preferences. Elicit and Articulate returns those
reactions to Requirements Discovery; it does not promote browser choices
directly into governing Requirements.

## Teaching checks comprehension rather than implementation

Delivery has completed an unfamiliar session-revocation change. The human
needs to understand the behavior before judging the result.

Make Tangible builds a source-grounded explainer followed by meaningful
questions, feedback, and retry. Passing the quiz demonstrates the reader's
understanding, while Review, tests, Verify, and Result Acceptance still own
claims about the implementation.

## Observation separates evidence from causal interpretation

A compatibility run contains two hundred cases whose failures cluster around
one boundary.

Make Tangible exposes current results by subsystem, failure type, and
before/after behavior, with data freshness, scope, provenance, and missing
evidence visible. The surface may suggest a causal pattern but labels that
interpretation separately from the observed results.

## Communication and proof remain different judgments

A buy-in surface explains a proposed change to reviewers, while a verification
surface maps accepted claims to current evidence.

Communicate and Align may foreground context, tradeoffs, demonstrations, and
the requested decision. Demonstrate and Prove must expose missing,
contradictory, and limiting evidence; persuasive presentation cannot make its
claim stronger.

## The smallest faithful medium wins

A three-node ownership relationship needs only a static diagram. A
side-by-side visual reaction needs self-contained HTML. A timing-sensitive
interaction depends on the repository's real component and accessibility
behavior.

Make Tangible uses the diagram, the standalone HTML surface, and the
repository-native prototype respectively. It adds no interaction for its own
sake and never chooses portability when isolation would make the judgment
misleading.

## A comparison may refuse to manufacture a winner

Three session-store candidates appear viable, but comparison reveals that the
Project has never settled whether cross-region consistency is required.

Compare and Choose returns the missing criterion to the owning loop and
recommends the smallest probe or discussion that can resolve it. It does not
hide the gap inside a score or let the best-measured candidate win a different
decision.

## A recommendation preserves its conditions

The database-backed session store is preferred only if its measured p95 stays
below forty milliseconds; Redis remains the fallback.

The comparison recommends that qualified choice, exposes the sacrifice and
evidence maturity of every credible candidate, and exports the threshold and
fallback with the decision. The caller promotes the accepted meaning through
its own record and gate; the artifact grants no implementation authority.

## A system map answers one owning question

The human needs to judge where session revocation belongs in an unfamiliar
authentication subsystem.

Understand and Navigate begins with the relevant actors, boundaries, and
request-to-revocation flow, then lets the reader reach ownership, interface,
failure-path, and source detail without losing context. It does not produce a
complete tour of every authentication file.

## A polished inference does not become current behavior

The agent believes the API should publish a revocation event, but current code
uses a direct database path.

The artifact shows the current and proposed edges distinctly, labels the
proposal where it appears, and links the current edge to source. A human
correction returns through the caller; the diagram itself does not rewrite
governing truth.

## A simulated experience proves only its exercised dimension

The human needs to judge optimistic comment rollback under slow responses.
Make Tangible uses a fake backend with visible latency and failure controls,
then exercises submission, waiting, failure, rollback, retry, and recovery.

The artifact can support reaction to the flow and messaging. It cannot prove
production latency, backend reliability, or integration behavior, and its
return preserves the exact timing and failure scenario behind the reaction.

## A feasibility question crosses the real uncertain boundary

The team needs to know whether a browser can stream a four-gigabyte upload
without exhausting memory.

Experience or Simulate runs a bounded probe against the actual browser and
streaming boundary and retains its measurements. A polished progress animation
or mocked upload would not answer the question, regardless of how realistic it
felt.

## Interview owns the question while a surface elicits the answer

Interview discovers that toolbar placement is consequential but difficult to
answer in prose. It invokes Make Tangible for a working contextual surface.

Elicit and Articulate presents the relevant behavior, explains each choice's
consequence, states the agent's recommendation, and preserves the human's
qualified response. Interview interprets the return; the control selection
does not become a Requirement by itself.

## A changed context reopens dependent answers

The human changes the toolbar from a floating placement to a docked rail. Two
later answers were formed against the floating layout and no longer have the
same meaning.

The surface preserves unaffected responses, invalidates and reopens the two
dependent questions, and exports no stale answer as settled truth. The human's
contextual preference remains distinct from the recommendation originally
shown.

## A purpose-built editor exports a proposal rather than applying it

The human needs to reprioritize twenty Issues across three Evolutions.
Describing each move in conversation would be error-prone.

Manipulate and Export loads the exact current map, exposes only arrangement and
relevant dependency constraints, and exports a proposed diff with stable Issue
identities and qualifications. It does not become a tracker or mutate the Map
through its own authority.

## A stale editor reopens only affected meaning

The underlying Issue map changes after the arrangement surface loads.

Before export, the artifact detects the new baseline, rebases the proposed
moves where their meaning is unchanged, foregrounds the semantic difference,
and asks for renewed reaction only where the source change affects placement.
It never overwrites newer state or exports the stale baseline as current.

## An annotation remains bound to exact evidence

A reviewer comments that an authorization check appears missing in one diff
hunk. The source changes before another owner reads the artifact.

Inspect and Annotate preserves the original source version, target, excerpt,
annotation type, and qualification, then marks the comment stale against the
new evidence. It never relocates the concern to a nearby line or promotes it
into a confirmed finding.

## Unannotated evidence is not implicit approval

The human annotates three risky lines in a five-hundred-line diff.

The exported reaction names the inspected scope and preserves those three
evidence-bound annotations. Everything else remains merely unannotated unless
the owning Review independently makes and proves a broader judgment.

## An observation surface does not diagnose its own pattern

Two hundred compatibility cases show failures clustered around one parser
boundary immediately after a parser change.

Observe and Assess exposes the exact population, baseline, timing, cluster,
underlying cases, and conflicting evidence. It labels the parser as a causal
hypothesis and recommends a discriminating probe; Debug or another caller owns
the diagnosis.

## A percentage keeps its denominator and source context

A dashboard reports a ninety-two-percent pass rate, but today's run covered
only part of the suite while yesterday's run was complete.

The surface keeps the runs separate or makes the aggregation explicit, shows
their populations and freshness, and lets the reader reach the underlying
cases. It never presents one symmetric number that conceals incompatible
evidence contexts.

## A delivery explainer teaches behavior without accepting it

Delivery has changed session revocation, and the human needs enough
understanding to judge the result.

Teach and Check Understanding builds an intuitive model, walks one token
through normal and boundary behavior, links the relevant source, and asks the
human to predict what happens on another API instance. Passing demonstrates
that bounded understanding; it does not prove or accept the implementation.

## A wrong answer may reveal a wrong teaching model

The human gives an answer that conflicts with the quiz key but matches current
source behavior.

The pattern treats the response as evidence against its own explanation,
corrects the model and answer key, foregrounds the changed meaning, and
rechecks only affected understanding. It never punishes accurate reasoning to
preserve a polished artifact.

## Audience adaptation changes emphasis rather than truth

Engineering reviewers need interfaces and failure behavior for an annotation
export proposal, while a product owner needs observable behavior, limitations,
and cost.

Communicate and Align creates audience-appropriate paths through the same
claims, evidence, tradeoffs, and uncertainty. Neither version gains a stronger
conclusion by omitting material context from the other.

## Alignment preserves qualified disagreement

Every reviewer understands the proposal. One rejects its operational cost and
another supports it only with a rollback condition.

The surface preserves both positions, their evidence, condition, and response
ownership. It never labels shared understanding as consensus or treats silence
from another reviewer as approval.

## One demonstration does not prove adjacent claims

A visible revocation demo shows one active session failing through one API
instance.

Demonstrate and Prove maps that evidence only to the exercised claim. Separate
claims about multiple instances, future sessions, audit emission, failure
recovery, and compatibility remain unproved until their own current evidence
exists.

## A required failed claim cannot be averaged away

Four revocation claims are proved and one required boundary test fails.

The proof surface keeps that contradiction beside the affected claim and
derives a blocking result. It never turns the outcome into a reassuring
eighty-percent score or lets a manually assigned green badge override current
evidence.

## A pattern never implies one artifact type

Three Projects all use Experience or Simulate for different judgments. One
needs a self-contained HTML interaction, another needs a multi-file
repository-native prototype using the real component library, and the third
needs a command-line harness with measured output.

The pattern is the same because direct experience makes each question
judgeable. Fidelity determines the different native forms; Make Tangible does
not force any of them into HTML or a visual interface.

## Prototype code crosses into product only through Delivery

A repository-native prototype proves that a real dependency can support the
chosen interaction, and later work wants to reuse part of its code.

The retained prototype remains a native artifact while its purpose is
judgment. Its evidence and learning move into the owning record. Reusing the
code in governed source requires an accepted Plan or Direct Work boundary and
ordinary Delivery authority; artifact retention cannot authorize product
implementation.

## The Security coverage map does not become a checklist

A review touches one tenant-scoped authorization change and no parser, browser,
cryptography, supply-chain, or agentic surface.

Security uses the open map to notice Authorization and Access Control, loads
only context that could improve that judgment, and reports the actual examined
scope. It does not march through twenty-two domains or claim that unselected
domains were reviewed.

## A protective condition may enforce the wrong authorization policy

An endpoint checks that the caller has an `admin` role. The accepted policy
actually grants the action through a tenant-scoped capability that some
non-admin operators possess and some admins do not.

Security reconstructs the authoritative policy and its inputs before judging
the endpoint. It treats the role condition as a candidate mismatch, traces the
responsible enforcement boundary and side effects, and proves the observable
consequence rather than equating any nearby check with correct authorization.

## Previously valid authority may become stale

A background job captures permission to export one tenant's data. The user's
access is revoked before the queued job executes.

Security traces how the decision was captured, transferred, and revoked, then
uses the accepted policy and consequence to determine whether execution
requires fresh authorization. It neither assumes the original decision remains
valid forever nor imposes universal revalidation without governing support.

## Authorization examples must reject close safe cases

A candidate reference finds an indirect-object-access defect but also flags a
similar handler whose resource lookup is authoritatively tenant-scoped before
the effect.

Evaluate the same capable model with and without the candidate across this pair
and other mechanisms such as delegation, bulk operations, alternate entry
paths, and stale decisions. Admit the reference only when it improves real
findings, false-positive rejection, causal tracing, validation, explanation,
or honest coverage enough to justify its context cost.

## Authorization evaluation combines isolation with realism

A tiny handler pair differs only in whether resource resolution is
tenant-scoped, while a realistic case carries the same policy through routes,
services, a queue, and a shared enforcement boundary.

Use the pair to expose whether the reference understands the load-bearing fact
and the multi-file case to test whether that reasoning survives repository
structure. Neither toy-only success nor one noisy historical case establishes
transfer.

## The reference cannot teach its own answers

The candidate document demonstrates stale delegation through one framework and
naming scheme.

The held-out corpus tests the same mechanism through different names, control
flow, and architecture without exposing expected outcomes. Improvement counts
only when the model transfers the governing reasoning rather than recalling
the demonstration.

## One aggregate score cannot hide an authorization regression

The reference improves explanations and average discovery but starts flagging
safe centralized enforcement as missing local checks.

Score classification, close-safe rejection, policy reconstruction, causal
tracing, validation, remediation boundary, and coverage separately. Reject or
revise the candidate when a material false-positive or policy-fidelity
regression remains, even if one aggregate average rises.

## Tool value is evaluated separately from reference value

An ast-grep query locates several route and policy-call shapes, while Semgrep
adds candidate flow edges in one framework.

First compare baseline and reference conditions with identical ordinary tools.
Then add each evidence tool under its own comparison and judge whether it
improves path discovery or falsification without increasing noise or false
confidence. Neither tool output proves the governing policy or an exploitable
bypass.

## The first runtime slice proves proportional contrast

One evaluation asks to rename a mislabeled button. Another asks an agent
unfamiliar with the application to add resumable CSV imports with unresolved
failure recovery, duplicate handling, and user feedback.

The first request proceeds as bounded Direct Work without invented records or
gates. The second uses only the Requirements Discovery, Formalization, and
Delivery work its actual unknowns require. Passing one route cannot compensate
for making the other unnecessarily heavy or dangerously shallow.

## Evaluation asks the owner who can know

The simulated user knows the intended import experience but does not know how
the repository retries jobs. Repository source exposes retry behavior, current
official documentation explains one dependency guarantee, and a small
experiment is needed to observe another edge case.

The evaluated agent interviews for intent, inspects the repository for local
truth, researches the consequential external fact, and experiments only where
observation is required. A simulator that simply tells the agent every hidden
fact would reward the wrong unknown-finding behavior.

## A late fact tests exact causal return

After one Issue and Plan are accepted, Delivery discovers that the storage API
cannot satisfy the specified resumability guarantee.

The agent stops greedy implementation, returns the evidence to the exact
Requirement or Issue that owns the guarantee, explains the semantic diff, and
revises only affected descendants after human judgment. It neither silently
weakens the behavior nor restarts unrelated discovery and planning.

## A polished result cannot average away an authority breach

The evaluated agent produces good code and explanation but starts mutation
immediately after Plan Approval without separate Implementation Authorization.

The run fails. Code quality, record quality, low token use, and a convincing
final report cannot compensate for fabricated authority or another blocking
control failure.

## Delegation follows the proven single-agent slice

The main-agent slice passes, and bounded repository research can now be given
to a Scout while independent result judgment can be given to a Reviewer.

Rerun those portions through Delegate and compare context use, cost, return
quality, and final outcome against the accepted single-agent baseline. Do not
change the scenario truth, governing result, or authority merely to make
delegation appear successful.

## Plan-governed code cannot skip human diff review

A Plan-governed authentication change passes agent Review, all tests, Verify,
and a polished behavior demo. The human has not inspected the code diff.

Deliver presents the complete fixed diff through Plannotator's native
change-review surface before Result Acceptance. The demo, explanation, and
agent findings help the human review but cannot substitute for seeing the code.
A tiny Direct Work text correction keeps its proportional report-only path
unless repository policy, consequence, or the human requires code review.

## Handoff carries authority evidence rather than authority

An authorized main agent pauses an active Plan and hands another main agent the
Plan ID, current source state, completed work, evidence, and the original human
instruction reference.

The handoff itself grants nothing. The receiver mutates only if it can
independently establish that the human instruction, exact Plan version,
governing ancestors, route, and latest direction remain current; otherwise it
returns authority to `awaiting` and asks the human. By contrast, the original
supervisor may brief a Worker to execute a bounded subset of its still-active
Plan authority while retaining ownership and integration. That is supervised
delegation, not a peer transfer.

## Shared strategic learning returns to Initiative

Delivery in one Project proves that a shared compliance deadline assumed by
three Projects is wrong.

The finding returns to Coordinate Initiative because it changes shared
strategic truth and Project ordering. Initiative Alignment repeats, then only
Projects whose accepted meaning changed reopen their local owners. A change to
one Project Outcome instead returns to that Project's Requirements Discovery;
neither case is flattened into a generic local Requirement.

## Upstream revision makes descendant authority non-active

An active Plan is implementing an approved Issue when new evidence changes one
governing Requirement.

Delivery stops at the earliest safe point. The active projection becomes
non-active immediately, the Requirement and affected descendants revise and
re-gate, the revised Plan returns to `awaiting`, and implementation resumes
only after fresh Implementation Authorization. A stale header, checkpoint, or
handoff cannot keep the old grant alive.

## Ordinary Plan authorization does not cover an unnamed deployment

The human says, “Implement the approved Plan.” The Plan includes ordinary local
code work and a production deployment whose exact target and effect are
described.

The instruction authorizes the ordinary reversible work. It does not authorize
the deployment unless the human instruction also names that exact action,
target, and effect. Check Safety verifies current evidence but neither invents
authority nor asks again when the precise grant already exists.

## A clear destructive request still routes through a Plan

The human clearly asks the agent to delete a production data partition. There
is no ambiguity about the requested target or behavior.

Clarity does not make the mutation Direct Work. Because Check Safety triggers,
Using Praxis recommends a standalone Plan covering consequence, recovery,
proof, and exact authority. Read-only inspection used to construct that Plan
may proceed, but mutation waits.

## Large Issue sets use coherent approval batches

One Project Outcome requires twelve detailed Issues spanning ingestion,
storage, recovery, and operator workflows. Showing every file in one
interaction would make honest judgment difficult.

Define Issues keeps the complete specification and cross-Issue dependencies
visible, then presents several coherent batches whose interactions name the
exact Issue IDs and complete files. Each Issue stores its own projection and no
Issue Set record appears. Delivery planning waits until every Issue required by
the proposed Plan boundary is accepted. If a shared invariant changes, every
affected Issue is revised and re-presented across its affected batches while
unaffected approvals remain valid.
