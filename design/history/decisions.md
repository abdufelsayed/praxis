# Praxis Chronological Decision Ledger

> **Status: accepted reconstruction surface for the current Praxis scope.**
> D001–D052 record the completed chronological reconstruction. Further task
> JSONL research is required only when concrete contradictory evidence appears.

This ledger is cold provenance, not a current operating manual. Core, skill
packages, and shared references own current behavior. Read a
decision only to resolve a concrete contradiction or trace why a current rule
exists; an older entry may preserve terminology or behavior that a later entry
refined or superseded.

Praxis was developed through a long conversation containing proposals,
approvals, corrections, rejected hypotheses, compaction recovery, and later
refinements. No single original diagram, attachment, assistant summary, or
current record captures that history by itself.

The scenario-based interview decisions C01–C31 were consolidated into
D001–D031 after the user accepted their resolved meanings on 2026-07-26. This
ledger preserves that baseline and the later refinements in one place.

## Reconstruction rule

The accepted model is derived chronologically:

1. Read the actual user and assistant turns surrounding a decision.
2. Distinguish a proposal from the user's explicit approval, rejection, or
   refinement.
3. Treat a later explicit decision on the same behavior as superseding the
   earlier one.
4. Preserve compatible refinements rather than reverting wholesale to an older
   model.
5. Mark unresolved implications as open instead of completing them through
   inference.
6. Update the current owning source only after the ledger records the classification
   and evidence.

Compaction summaries, original plans, diagrams, attachments, existing Praxis
records or artifacts, and assistant restatements are navigation aids. They are not
accepted behavior without conversational evidence.

## Classification

Each reconstructed decision receives one status:

- **Accepted:** explicitly approved and not later superseded.
- **Refined:** still accepted, with a later decision narrowing or extending it.
- **Superseded:** replaced by a later explicit decision.
- **Rejected:** explicitly declined or later identified as wrong.
- **Open:** discussed without a settled decision.
- **Implementation-only:** a proposed representation or mechanism that does not
  settle conceptual behavior.

## Entry format

```markdown
## DNNN — <Decision topic>

- Status:
- Recorded rule:
- Earlier formulation:
- Later refinement:
- Evidence:
  - <timestamp> — <short contextual description of the user decision>
- Supersedes:
- Affected records or artifacts:
- Audit notes:
```

Evidence should identify the relevant task timestamp and summarize the
decision. Do not copy private filesystem paths or large conversation excerpts
into the repository.

## Confirmed meta-decision

### D000 — No original source is canonical by itself

- **Status:** Accepted.
- **Recorded rule:** Praxis was reconstructed from the complete
  chronology of explicit decisions. Original diagrams and workshop documents
  may realign context, but they do not override later refinements.
- **Consequence:** the chronological reconstruction is complete through the
  current ledger boundary. Consult raw JSONL only when concrete contradictory
  evidence appears.

## Reconstructed decisions

The entries below preserve the rule accepted at that point and enough
chronological evidence to revisit a concrete contradiction. Later entries and
explicit refinement or supersession links determine current meaning.

### D001 — Clear understood work may use one Plan

- **Inventory:** C01.
- **Status:** Accepted, later refined by D074.
- **Recorded rule:** When behavior and the implementation pattern are understood,
  one accepted Ticket may use one Plan when an explicit execution boundary adds
  useful control even if the change is fairly large.
- **Evidence:** 2026-07-25 20:54–20:56 — the XML export scenario was approved.

### D002 — Initiative does not imply Evolve

- **Inventory:** C02.
- **Status:** Accepted.
- **Recorded rule:** Durable Shape may still conclude in no implementation or one
  coherent planned delivery. Initiative preserves context; it does not select
  a delivery shape.
- **Evidence:** 2026-07-25 20:56–20:57 — the resumable-import scenario was
  explicitly approved.

### D003 — Progressive working forms, not tasks, justify Evolve

- **Inventory:** C03.
- **Status:** Refined by D004 and D005.
- **Recorded rule:** Evolve is useful when several working forms can produce
  meaningful behavior and learning. Technical tasks, architectural layers, and
  a manual command do not create Evolutions.
- **Evidence:** 2026-07-25 20:57–20:59 — the offline-collaboration scenario
  exposed and refined the manual-invocation assumption.

### D004 — Evolve requires a human decision, not a magic command

- **Inventory:** C04.
- **Status:** Accepted.
- **Recorded rule:** The agent may recommend Evolve and explain its value. The
  human accepts or rejects it in ordinary language before a Map is created.
- **Evidence:** 2026-07-25 20:59 — the user explicitly approved this correction.
- **Supersedes:** the manual `$evolve` requirement in D003.

### D005 — Evolve remains narrow and always has a Map

- **Inventory:** C05.
- **Status:** Accepted, later refined by D056.
- **Recorded rule:** Evolve requires several meaningful Evolutions and an
  Evolution Map. One coherent delivery instead uses one or more sequential
  Plans.
- **Evidence:**
  - 2026-07-25 20:59–21:00 — the user confirmed that Evolve requires several
    meaningful working forms.
  - 2026-07-27 — the user corrected the earlier assumption that one coherent
    delivery necessarily means one Plan.

### D006 — Plan Approval no longer releases execution

- **Inventory:** C06.
- **Status:** Superseded by D096.
- **Recorded rule:** Plan Approval provisionally accepts the Plan and grants no
  implementation authority. A separate ordinary-language human instruction is
  required before autonomous implementation begins inside that exact boundary.
- **Earlier rule:** Approving a Plan immediately authorized autonomous
  execution without another “go ahead.”
- **Evidence:** 2026-07-25 21:00–21:01 — the user explicitly equated the Plan
  approval action with execution approval.
- **Superseded:** 2026-07-28 — the user explicitly withdrew automatic
  post-approval execution and required collaborative transitions plus a
  separate implementation instruction.

### D007 — Plan-governed delivery requires Result Acceptance

- **Inventory:** C07.
- **Status:** Accepted.
- **Recorded rule:** The delivered result passes a human Result Gate. Acceptance
  ends that delivery and grants no adjacent work or external authority.
- **Evidence:** 2026-07-25 21:01–21:02 — the user agreed and requested broader
  use of Plannotator gates.

### D008 — Consequential Plannotator gate set

- **Inventory:** C08.
- **Status:** Accepted principle; concrete gate set refined by D086 and D096.
- **Recorded rule:** Requirements Alignment, Evolution Map Approval when Evolve
  is used, selected Evolution Definition Approval, Issue Approval,
  Implementation Plan Approval, Implementation Plan Result Acceptance, and
  Evolution Acceptance use Plannotator. Initiative Alignment and durable
  closure use it when that strategic judgment is applicable. Every approval is
  provisional and invokes no next activity. Pair permissions, route choices,
  Evolution Selection, and Implementation Authorization remain conversational.
- **Evidence:** 2026-07-25 21:02 — the gate set was explicitly approved.

### D009 — Tiny Direct Work remains proportional

- **Inventory:** C09.
- **Status:** Accepted.
- **Recorded rule:** A clear bounded request may authorize tiny Direct Work
  without mandatory Plannotator. Consequence, risk, or external mutation causes
  the agent to recommend added review; D043 clarifies that the human chooses the
  route unless governing project or safety policy requires the gate.
- **Evidence:** 2026-07-25 21:02 — the direct typo and configuration scenario
  was approved.

### D010 — Initiative has a durability threshold

- **Inventory:** C10.
- **Status:** Accepted.
- **Recorded rule:** Create an Initiative only when understanding, decisions, or
  uncertainty must survive the conversation or coordinate later work.
- **Evidence:** 2026-07-25 21:02–21:03 — the threshold was approved.

### D011 — Delivery does not automatically close Initiative

- **Inventory:** C11.
- **Status:** Accepted.
- **Recorded rule:** An Initiative closes only when its Target Outcome is
  satisfied, rejected, or superseded. Acceptance of one delivery may leave it
  aligned and open.
- **Evidence:** 2026-07-25 21:03 — the closure rule was approved.

### D012 — Praxis has a minimal durable record vocabulary

- **Inventory:** C12.
- **Status:** Accepted conceptually.
- **Recorded rule:** Initiative, Decision, Specification, Evolution Map, Plan,
  and justified Evidence are the durable records. Routine notes, status, and
  reconstructible implementation detail stay in conversation, source, tests,
  or Git.
- **Evidence:** 2026-07-25 21:03–21:04 — the record vocabulary was approved.
- **Implementation:** exact schemas remain to design; D045 governs the durable
  context and Evidence threshold.

### D013 — Shape has no permanent record of its own

- **Inventory:** C13.
- **Status:** Accepted.
- **Recorded rule:** Shape updates Initiative truth and may promote a Decision or
  Specification. Research, prototypes, and alternatives remain temporary
  unless a named future consumer needs them.
- **Evidence:** 2026-07-25 21:04 — the user approved this boundary.

### D014 — Praxis has no global lifecycle state

- **Inventory:** C14.
- **Status:** Accepted.
- **Recorded rule:** Initiative, delivery, Evolution, authority, gate, assurance,
  and mode state remain independent. Praxis reports Context, State, Authority,
  Next Gate, and Forbidden Next.
- **Evidence:** 2026-07-25 21:04–21:05 — the rejection of one lifecycle state was
  explicitly approved.

### D015 — Delegates are not workflow stages

- **Inventory:** C15.
- **Status:** Refined by D016.
- **Recorded rule:** The main agent owns context, routing, integration, authority,
  and judgment. Praxis does not require a worker-reviewer-verifier procession.
- **Evidence:** 2026-07-25 21:05–21:06 — main-agent ownership and the absence of
  a fixed chain were accepted, while the delegation economics were challenged.

### D016 — Delegation is cost-aware

- **Inventory:** C16.
- **Status:** Refined by D067.
- **Recorded rule:** Delegate bounded work when a cheaper agent can meet the
  required quality and save more main-agent effort than coordination and
  verification consume.
- **Evidence:** 2026-07-25 21:06–21:09 — the refined cost and quality rule was
  explicitly accepted.
- **Supersedes:** the disputed delegation framing in D015.

### D017 — Review and verification precede Result Acceptance

- **Inventory:** C17.
- **Status:** Accepted.
- **Recorded rule:** Every Plan-governed result is reviewed and its important
  claims verified before Result Acceptance. One focused check may cover both;
  separate delegate roles are not mandatory.
- **Evidence:** 2026-07-25 21:09–21:10 — the assurance rule was approved.

### D018 — External mutations are never inferred

- **Inventory:** C18.
- **Status:** Accepted, authority source refined by D096.
- **Recorded rule:** Commit, push, deployment, data mutation, and other external
  actions require separate explicit human authority and current safety
  evidence. Inclusion in an approved Plan or Result Acceptance is insufficient
  by itself.
- **Evidence:** 2026-07-25 21:10 — the external-authority rule was approved.

### D019 — Shape begins automatically when honest action is impossible

- **Inventory:** C19.
- **Status:** Accepted.
- **Recorded rule:** The agent enters Shape without a magic command when intent,
  behavior, or boundaries are too unclear for honest planning, and creates an
  Initiative when the durability threshold is crossed.
- **Evidence:**
  - 2026-07-25 21:11–21:12 — the original scenario received “cool.”
  - 2026-07-26 — the user explicitly approved C19 while accepting the resolved
    inventory and its review notes.

### D020 — Agent recommends the route after Alignment

- **Inventory:** C20.
- **Status:** Accepted, later refined by D056 and D074.
- **Recorded rule:** After Alignment, the agent recommends no implementation,
  Direct Work, one or more Tickets, or Evolve. The human chooses the
  consequential route in ordinary language.
- **Evidence:** 2026-07-25 21:12–21:13 — the rule was explicitly approved.

### D021 — Execution discovery has a materiality boundary

- **Inventory:** C21.
- **Status:** Accepted, later refined by D057.
- **Recorded rule:** Local corrections preserving approved behavior and Plan
  boundaries remain autonomous. Material changes stop execution and revise the
  exact causal binding source, then propagate through affected descendants.
- **Evidence:** 2026-07-25 21:13–21:14 — the boundary was approved.

### D022 — Result feedback routes by what changed

- **Inventory:** C22.
- **Status:** Accepted, later refined by D057.
- **Recorded rule:** Failure against the approved Plan loops into autonomous
  correction inside the same boundary. Changed intent, behavior, or scope
  backtracks through governing truth to the exact causal gate.
- **Evidence:** 2026-07-25 21:14–21:15 — the feedback rule was approved.

### D023 — Durable learning grants no authority

- **Inventory:** C23.
- **Status:** Accepted.
- **Recorded rule:** Delivery learning updates Initiative truth only when it
  changes the durable model, uncertainty, decisions, or future work. Recording
  learning never authorizes another delivery.
- **Evidence:** 2026-07-25 21:15 — the rule was approved.

### D024 — One accepted Evolution stops before another begins

- **Inventory:** C24.
- **Status:** Accepted.
- **Recorded rule:** After one Evolution is accepted, Praxis records material
  learning, may recommend a later Evolution or Map revision, and stops. Further
  work requires explicit human selection and the normal gates.
- **Evidence:** 2026-07-25 21:15–21:16 — the stopping rule was approved.

### D025 — Initiative is one living non-duplicative record

- **Inventory:** C25.
- **Status:** Accepted conceptually.
- **Recorded rule:** One living Initiative holds the bounded Target Outcome,
  relevant model, uncertainty, and disposition. Linked Decisions,
  Specifications, Maps, and Plans keep their own bodies and history.
- **Evidence:** 2026-07-25 21:19–21:20 — the record ownership rule was approved.
- **Open:** exact schema and relationships remain provisional.

### D026 — Four Initiative lifecycle states are superseded

- **Inventory:** C26.
- **Status:** Superseded.
- **Rejected formulation:** one `shaping | aligned | paused | closed` lifecycle
  field.
- **Recorded rule:** Alignment and disposition are independent facts under
  D014, D029, D030, and D031.
- **Evidence:** 2026-07-25 21:20–21:23 — the user flagged compaction drift and
  the lifecycle enum was explicitly discarded after its temporary approval.

### D027 — Shape may revise a provisional Target Outcome

- **Inventory:** C27.
- **Status:** Accepted.
- **Recorded rule:** Shape may rewrite the provisional Target Outcome as evidence
  exposes what the concern actually means. Planning and implementation remain
  blocked until Alignment accepts the complete current outcome and model.
- **Evidence:**
  - 2026-07-25 21:24–21:25 — the abstract proposal remained unapproved pending
    artifact rereading.
  - 2026-07-26 — the concrete offline-inspection scenario was explicitly
    approved.

### D028 — Initiative combines prose with a small machine-readable header

- **Inventory:** C28.
- **Status:** Accepted and refined by D145.
- **Recorded rule:** Human-readable Markdown carries the Target Outcome, model,
  uncertainty, and disposition. A small header carries only identity,
  relationships, and gate facts.
- **Evidence:** 2026-07-25 21:26–21:28 — the representation was approved.
- **Refinement:** D145 generalizes the small YAML envelope across structured
  Praxis records and settles its common semantics. Kind-specific field
  combinations and headings remain in the current record workshop.

### D029 — Alignment and disposition are independent facts

- **Inventory:** C29.
- **Status:** Accepted.
- **Recorded rule:** Whether the current model passed Alignment is independent
  from whether the bounded concern is open, paused, or closed.
- **Evidence:** 2026-07-25 21:29 — the distinction was approved.

### D030 — Material truth changes return Alignment to pending

- **Inventory:** C30.
- **Status:** Accepted conceptually.
- **Recorded rule:** Alignment is pending or accepted. A material change to the
  Target Outcome, boundaries, contracts, or judgeability returns it to pending
  until the revised understanding passes Alignment again.
- **Evidence:** 2026-07-25 21:29 — the re-alignment rule was approved.
- **Open:** exact gate-evidence storage remains provisional.

### D031 — Initiative disposition is open, paused, or closed

- **Inventory:** C31.
- **Status:** Accepted conceptually.
- **Recorded rule:** Disposition is independently open, paused, or closed. Open
  grants no authority; closure records whether the Target Outcome was
  satisfied, rejected, or superseded.
- **Evidence:** 2026-07-25 21:29–21:30 — the disposition rule was approved.

## Later accepted refinements

### D032 — Evolution Maps and discovery methods remain situated

- **Status:** Accepted correction.
- **Recorded rule:** Praxis defines the qualities of an Evolution without
  prescribing prototype, beta, or production types. Humans and agents design
  the Map from the actual Initiative, unknowns, risks, and evidence. Research,
  prototypes, comparisons, and visualizations may recur wherever useful and
  authorized.
- **Evidence:** 2026-07-26 01:07–01:08 — the user rejected hard prototype
  taxonomy and approved situated Map judgment and flexible methods.

### D033 — One Evolution may use several Plans

- **Status:** Accepted, later refined by D074.
- **Recorded rule:** Evolutions divide meaningful working outcomes; Plans divide
  implementation authority. A selected Evolution first expands into at least
  one accepted Ticket, and its Ticket work may use one or more Plans.
- **Evidence:** 2026-07-25 23:29 — the classification rule was explicitly
  approved.
- **Implementation:** minimal derived multi-Plan state remains to design; the
  universal recursive control rule governs failure and recovery.

### D034 — Shape may run one explicitly approved bounded experiment

- **Status:** Accepted.
- **Recorded rule:** When read-only Shape cannot resolve a material unknown, the
  agent may propose a bounded mutating experiment. Explicit conversational
  approval authorizes only its declared question, mutations, stopping signal,
  cleanup, and retained evidence. The experiment returns learning to Shape and
  grants no implementation or later delivery authority.
- **Evidence:** 2026-07-26 — the offline-synchronization simulator scenario was
  explicitly approved.
- **Consequence:** dependencies, durable data, infrastructure, production, and
  other external effects require explicit bounded authority under D018; they do
  not need separate context-engineering taxonomies.

### D035 — Multi-Plan Evolutions are planned just in time

- **Status:** Accepted default, later refined by D074 and D075.
- **Recorded rule:** Selecting one Evolution permits the agent to expand it into
  a Ticket set and outline likely Plan boundaries. After Ticket Set Approval,
  only the next executable Plan is completed. Each Plan requires separate
  approval before execution, and later Plans are prepared only after earlier
  results and learning are reconciled.
- **Evidence:** 2026-07-26 — the bank-transaction import and reconciliation
  scenario was explicitly approved.
- **Implementation:** minimal derived multi-Plan state remains to design.

### D036 — Parallel Plan preparation requires stable independence

- **Status:** Superseded by D046.
- **Earlier rule:** Several independent Plans could be prepared together after
  explicit authorization.
- **Recorded rule:** Praxis does not need a parallel-preparation taxonomy.
  Plans inside one Evolution are prepared just in time so earlier learning can
  improve later boundaries.
- **Evidence:** 2026-07-26 — the importer and reconciliation-interface planning
  scenario was explicitly approved.

### D037 — Multi-Plan execution is sequential by default

- **Status:** Refined by D046.
- **Recorded rule:** Plans inside one Evolution execute sequentially. Praxis
  does not model concurrent Plan execution.
- **Evidence:** 2026-07-26 — the concurrent importer and interface execution
  scenario was explicitly approved.
- **Recovery:** the universal recursive control rule now governs drift,
  failure, and invalidated shared contracts without a multi-Plan-specific
  transition system.

### D038 — Plan Acceptance and Evolution Acceptance are independent

- **Status:** Accepted invariant.
- **Recorded rule:** Every Plan ends at its own Result Gate. That acceptance
  judges only the bounded Plan result. After all required Plans are accepted,
  integrated, and verified together, Evolution Acceptance judges whether the
  promised working Evolution exists. Neither acceptance implies the other.
- **Evidence:** 2026-07-26 — the accepted importer inside an incomplete
  reconciliation Evolution was explicitly approved.

### D039 — One review may carry two explicit acceptance judgments

- **Status:** Accepted default.
- **Recorded rule:** One Plannotator review may satisfy the final Plan Result
  Gate and Evolution Acceptance when the same evidence fully supports both.
  The interaction names both targets and consequences, and records the two
  acceptance facts separately. Different evidence or feedback keeps the gates
  separate.
- **Evidence:** 2026-07-26 — the final Plan completing and demonstrating the
  integrated Evolution was explicitly approved.

### D040 — Praxis is a system of small recursive human-agent loops

- **Status:** Accepted correction, refined by D047, D048, and D057.
- **Recorded rule:** Understanding, Proposal, Execution, and Result/Learning are
  owning loops in an explicit recursive state machine. Learning may arise in any
  loop and backtracks as a message to its exact causal owner. The agent
  continues inside accepted truth and authority; otherwise it returns evidence,
  impact, still-valid truth, and recommended next steps. Gates guard binding
  transitions rather than defining phases.
- **Evidence:** 2026-07-26 — the user explicitly corrected the linear reading
  and stated that Praxis consists of small recursive flows with the human in
  the loop.
- **Consequence:** integration failure, Plan drift, infeasible delivery, and
  similar cases are applications of this invariant rather than separate
  taxonomies. The main agent reconstructs relevant local state from explicit
  evidence; no operational kernel derives it repository-wide.

### D041 — Target Outcome determines Initiative ownership

- **Status:** Accepted.
- **Recorded rule:** Work toward the same coherent Target Outcome is modeled as
  Plans and Evolutions inside one Initiative. Work with an independently
  judgeable Target Outcome becomes a separate linked Initiative. Each
  Initiative owns its judgments and closure, and relationships transfer no
  authority.
- **Evidence:** 2026-07-26 — after correcting the passkey example, the user
  explicitly approved this model.
- **Consequence:** one Initiative has one current Evolution Map; a materially
  different strategy may revise or supersede it, while independently governed
  Maps indicate independently governed Target Outcomes.

### D042 — Scenario decisions are generalized first and recorded in batches

- **Status:** Accepted workshop rule.
- **Recorded rule:** Before interviewing, apply the universal recursive control
  rule and existing invariants. A local case becomes an example unless it
  changes loop ownership, authority, human judgment, persistence, or stopping.
  Collect coherent conversational approvals and persist them as a batch when
  the user requests it or context loss is likely.
- **Evidence:** 2026-07-26 — the user rejected per-scenario recording and
  hyper-local failure variants, then requested batch preservation.

### D043 — Routing is advisory and human-chosen

- **Status:** Accepted refinement, later refined by D056 and D074.
- **Recorded rule:** The agent recommends no implementation, Direct Work, one
  or more Tickets, or Evolve, but Praxis does not force that
  recommendation. The human chooses the useful route, and its accepted
  boundaries and gates govern until the human changes it.
- **Evidence:** 2026-07-26 — the user clarified that Praxis is mostly optional
  and flexible, then explicitly confirmed that the agent recommends while the
  human chooses.
- **Consequence:** size, risk, and uncertainty guide the recommendation rather
  than imposing a route. A human may request a Plan for simple work or choose
  Direct Work after hearing a more structured recommendation.

### D044 — Ordinary language may change route or mode

- **Status:** Accepted.
- **Recorded rule:** The human may change route or mode through ordinary
  language. Accepted truth and completed authorized work survive, while future
  mutation authority is derived again from the latest instruction and any
  still-valid approved record.
- **Evidence:** 2026-07-26 — the user approved the Pair-to-autonomous-finish
  scenario and its generalized rule.
- **Consequence:** no magic command is required to leave Pair or change delivery
  control, and authority from the previous posture is not blindly copied into
  the next one.

### D045 — Durable context serves honest continuation

- **Status:** Accepted synthesis.
- **Recorded rule:** Preserve the smallest durable model a future human-agent
  loop needs: accepted intent, relevant truth, consequential uncertainty,
  supporting Evidence, and the next resolution method. Preserve Evidence as a
  separate record when accepted truth depends on proof that is costly,
  ambiguous, or vulnerable to drift; otherwise reference reconstructible
  source.
- **Evidence:** 2026-07-26 — the user approved the durable-understanding,
  non-blocking-unknown, and durable-Evidence scenarios, then required their
  details to be abstracted into a general rule rather than copied into skills.
- **Consequence:** Praxis records are resumable context, not research archives.
  Exact fields and storage remain implementation design.

### D046 — Multi-Plan work remains sequential

- **Status:** Accepted correction, later refined by D074.
- **Recorded rule:** Accepted Ticket work for one coherent outcome or selected
  Evolution may require several Plans, but Praxis prepares, approves,
  executes, and accepts them sequentially. It does not need
  parallel-preparation or concurrent-execution state, fields, gates, or tools.
- **Evidence:** 2026-07-26 — the user clarified that Praxis may assume one
  current Plan and one current concern, then rejected hyper-hypothetical
  concurrency machinery.
- **Supersedes:** the exception mechanics in D036 and D037.

### D047 — Evolution is a tangible package and learning is cross-cutting

- **Status:** Accepted correction, later refined by D057.
- **Recorded rule:** An Evolution is the complete packaged tangible outcome
  consumed by delivery, including accepted truth, promised working form,
  deliberate limitations, learning target, and required proof. Learning may
  arise in Understanding, Proposal, Execution, review, testing, verification, or
  Result interpretation and backtracks to its exact causal owner.
- **Evidence:** 2026-07-27 — Plannotator Plan feedback and the following
  discussion explicitly established both distinctions.
- **Consequence:** Evolution is not a phase, task, prototype category, or
  boundary around learning.

### D048 — Four owning loops form the canonical state machine

- **Status:** Accepted correction.
- **Recorded rule:** The canonical detailed model uses Understanding, Proposal,
  Execution, and Result/Learning loops. They form an explicit recursive state
  machine through messages and binding transition guards, not a mandatory
  top-to-bottom lifecycle.
- **Evidence:** 2026-07-27 — the user preferred the current four-loop diagram,
  rejected the three-loop categories, and approved the state-machine
  interpretation.
- **Supersedes:** the later three-loop navigation shorthand.

### D049 — Runtime Praxis has no CLI or operational kernel

- **Status:** Accepted.
- **Recorded rule:** Runtime Praxis exposes skills and references rather than a
  CLI, operational kernel, or repository router. The main agent reconstructs the
  current concern from the latest human direction, explicitly relevant
  records, artifacts, and current source. A future mechanical helper may validate one
  explicit target but cannot decide loop, route, authority, gate, or next action.
- **Evidence:** 2026-07-27 — the user approved both the explicit-target tool
  boundary and removal of the advisory kernel.

### D050 — Gate continuity uses native Plannotator evidence

- **Status:** Accepted.
- **Recorded rule:** Persist only the smallest gate message a named future loop
  needs: target, outcome, declared consequence, and native Plannotator reference.
  Prefer the owning record and Plannotator history over hashes, Git-HEAD
  binding, custom receipts, or approval graphs. If the native command returns no
  durable reference, record that fact rather than inventing one.
- **Evidence:** 2026-07-27 — the minimal receipt and durable-message
  recommendation was approved; the repaired Plan gate then returned only a
  native structured decision and no persistent session identifier.

### D051 — Praxis invokes Plannotator directly at record and result gates

- **Status:** Accepted, gate consequence refined by D096.
- **Recorded rule:** Understanding Review uses native annotation without a gate;
  Record Gates use `annotate ... --gate --json`; code review uses
  the native local or remote review surface when code changes exist; Result
  Acceptance is a separate later `--gate --json` interaction over the explained
  bounded result. Learning-driven revisions foreground a reliable diff or the
  complete record fallback and provisionally accept the complete current
  record without invoking its next activity.
- **Evidence:** 2026-07-27 — the direct command mapping and later revision-diff
  clarification were explicitly approved.
- **Refined by:** D065 and D066.

### D052 — Repair the candidate through one Plan

- **Status:** Accepted and authorized.
- **Recorded rule:** The corrected Praxis candidate is one coherent planned
  delivery, not a new Evolution. Preserve independently useful lean skills and
  conceptual material; correct stale sources; remove rejected kernel, schemas,
  wrappers, migration, receipt, concurrency, and dishonest-test machinery.
- **Evidence:** 2026-07-27 — the survivor boundary and one-Plan delivery shape
  were approved, then the revised repair Plan passed its direct Plannotator Plan
  Gate.

### D053 — Project-local Praxis records are ignored

- **Status:** Accepted correction.
- **Recorded rule:** When establishing Praxis storage in a normal repository, the
  agent ensures the root `.gitignore` contains `/.agents/`. Project-local Praxis
  records are ignored working state and never enter the project's commits.
  Repositories that explicitly own tracked source under `.agents/`, including
  this dotfiles source, follow their repository instructions and keep local
  working records excluded from that source.
- **Evidence:** 2026-07-27 — the user rejected tracked project-local `.agents`
  and clarified that setup should add the ignore rule automatically.
- **Supersedes:** the earlier proposal to use project Git as Praxis record
  revision history.

### D054 — Plannotator owns accepted record versions

- **Status:** Accepted correction, gate consequence refined by D096.
- **Recorded rule:** Approval provisionally accepts the exact record version presented in
  Plannotator, not its mutable file path or Git state. Plannotator's native
  version history provides revision diffs when available, but the previously
  accepted baseline must still be identified reliably. Praxis adds no hashes,
  Git-HEAD binding, custom receipt history, or approval graph; an uncertain
  baseline triggers the complete-record fallback.
- **Evidence:** 2026-07-27 — the user explicitly chose Plannotator versioning
  while correcting the tracking model.
- **Refines:** D050 and D051.
- **Refined by:** D066.

### D055 — Authority guards transitions, not in-loop edits

- **Status:** Accepted correction, transition source refined by D096.
- **Recorded rule:** While a loop owns the current question, the agent may revise
  its working records and supporting artifacts normally. Once a separate human choice moves work
  forward from a provisionally accepted record, learning that returns to a
  earlier Proposal loop reopens that
  proposal. The agent incorporates the learning, proposes the revised solution,
  foregrounds the Plannotator version diff, and passes the affected gate again
  before the human chooses whether affected forward work resumes.
- **Evidence:** 2026-07-27 — the user clarified that learning drives in-place
  revision and renewed approval only when work returns across an already
  approved transition.
- **Consequence:** Individual file edits do not become permission events;
  learning still cannot silently expand authority.

### D056 — Plan count does not determine Evolve

- **Status:** Accepted correction, later refined by D074.
- **Recorded rule:** One coherent outcome may use one or more Tickets delivered
  through sequential Plans. Evolve is justified only when the human and agent
  want at least two sequential, independently meaningful working forms whose
  learning can shape later forms. Plans divide implementation authority;
  Evolutions divide meaningful working outcomes.
- **Evidence:** 2026-07-27 — the authentication and search scenarios were
  explicitly approved.
- **Supersedes:** the exclusive one-Plan wording in D005, D020, and D043.

### D057 — Learning backtracks to its exact causal source

- **Status:** Accepted correction, gate consequence refined by D096.
- **Recorded rule:** Start where evidence appears and backtrack through the
  governing tree until reaching the exact accepted assumption, missing truth,
  contract, decision, Map, or authority that introduced the mistake. Do not stop
  at the nearest descendant that can absorb a workaround. Revise and re-gate
  the source, then propagate the correction downward through materially affected
  descendants.
- **Evidence:** 2026-07-27 — the streaming-library and username-uniqueness
  scenarios were explicitly approved.
- **Refines:** every earlier “smallest affected owner” rule. “Smallest” limits
  the correction after finding the source; it does not permit greedy local
  stopping.

### D058 — Sequential Plans close one coherent delivery

- **Status:** Accepted, later refined by D074 and D075.
- **Recorded rule:** Every Plan is approved, executed, reviewed, verified, and
  accepted sequentially. Each Result Acceptance closes only that bounded Plan.
  When an accepted Ticket set uses several Plans, the final Plan includes
  integration and proof of the complete shared outcome; accepting that result
  closes the delivery without inventing another acceptance type.
- **Evidence:** 2026-07-27 — the SSO scenario was explicitly approved.

### D059 — Multi-Plan delivery is planned just in time

- **Status:** Accepted, later refined by D074 and D075.
- **Recorded rule:** After the current Ticket set is accepted, a Proposal may
  outline expected sequential Plan boundaries, but only the next Plan becomes
  complete and approved. Later Plans remain provisional until earlier results
  and learning are incorporated. No Plan authorizes or silently begins another.
- **Evidence:** 2026-07-27 — the data-migration scenario was explicitly
  approved as the correct middle ground.
- **Generalizes:** D035 and D046 beyond Evolutions to every multi-Plan delivery.

### D060 — An unexpected working form may justify changing route

- **Status:** Accepted.
- **Recorded rule:** When a Plan unexpectedly produces an independently
  meaningful working form, do not retroactively relabel it as an Evolution.
  Return the learning to the delivery proposal. The agent may recommend Evolve,
  but it begins only through deliberate human agreement and an approved
  Evolution Map; accepted work remains valid evidence and a working baseline.
- **Evidence:** 2026-07-27 — the reporting API scenario was explicitly
  approved.

### D061 — A meaningless Evolution returns to its source

- **Status:** Accepted.
- **Recorded rule:** If a proposed Evolution no longer provides independent
  meaningful behavior or a useful stopping point, it does not qualify as an
  Evolution. Backtrack to the Map or delivery proposal where that boundary was
  introduced, preserve valid work, revise the sequence or use sequential Plans,
  and re-gate before continuing.
- **Evidence:** 2026-07-27 — the command-line import scenario was explicitly
  approved.

### D062 — One Plan may still deliver an Evolution

- **Status:** Accepted, later refined by D074.
- **Recorded rule:** An Evolution may require one or several sequential Plans.
  It always expands into at least one Ticket first. A single Ticket and Plan do
  not collapse it into ordinary delivery when it remains one meaningful
  working form in an approved Map containing at least two Evolutions. Evolution
  Acceptance still stops before later Evolution work.
- **Evidence:** 2026-07-27 — the exact-search scenario was explicitly approved.

### D063 — Integration learning preserves unaffected results

- **Status:** Accepted.
- **Recorded rule:** Plan Result Acceptance proves its bounded claim at that
  time; it does not guarantee the later integrated outcome. Integration failure
  backtracks to its exact causal source, preserves unaffected accepted results,
  and reopens only descendants whose meaning or proof changed.
- **Evidence:** 2026-07-27 — the backend-pagination and frontend-integration
  scenario was explicitly approved.

### D064 — Proposal uses agent judgment, not exhaustive routing machinery

- **Status:** Accepted synthesis, later refined by D074, D075, and D096.
- **Recorded rule:** Once consequential unknowns are settled enough for honest
  judgment, the agent recommends a delivery path and discusses it with the
  human. They refine route, outcome, and likely sequential boundaries until the
  complete current Map or Ticket set is ready for its Plannotator gate. D096
  later separates every provisional record approval from the human choice to
  begin the next activity or authorize implementation.
  Scenarios guide judgment; they do not become a rigid taxonomy or global
  workflow.
- **Evidence:** 2026-07-27 — the user confirmed that capable agents should form
  the path collaboratively after unknown discovery, then move through proposal
  acceptance into implementation.

### D065 — Code review follows the actual result surface

- **Status:** Accepted correction.
- **Recorded rule:** Every Plan-governed result receives proportionate
  adversarial review, verification, and Result Acceptance. When code changes
  exist, use `plannotator review --git` for a local diff or
  `plannotator review <PR-or-MR-URL>` for a remote change. When no code diff
  exists, review the actual evidence-bearing result without manufacturing a
  Git review.
- **Evidence:** 2026-07-27 — the user approved the outsider-review correction
  after its concrete local, remote, and non-code cases were explained.

### D066 — Native revision diffs require a reliable accepted baseline

- **Status:** Accepted correction.
- **Recorded rule:** Prefer Plannotator's native version diff when annotation
  history is available and the previously accepted revision can be identified
  reliably. History alone does not identify which revision was accepted. When
  history or that identity is unavailable, present the complete revised
  record, explain what changed, and repeat the gate without inventing a
  baseline.
- **Evidence:** 2026-07-27 — the user approved the fallback rule. A local
  Plannotator 0.24.2 test stored two revisions of one record and preserved
  their exact diff; Plannotator also permits history to be disabled and treats
  history-write failure as a no-diff fallback.
- **Refines:** D054's unconditional accepted-baseline wording.

### D067 — Cost-effective delegation is recommended, not automatic

- **Status:** Refined by D114.
- **Recorded rule:** Recommend bounded delegation when a cheaper suitable agent
  can meet the required quality and save more main-agent effort than briefing,
  coordination, integration, and verification consume. Delegation is neither a
  default nor a requirement. The main agent retains conversation context,
  decomposition, authority, integration, gates, and final judgment while
  communicating only the minimum useful result at the current boundary. Use
  Oracle selectively as the supervisor-grade exception for consequential
  direction, drift, contradiction, or unresolved disagreement.
- **Evidence:** 2026-07-27 — the user corrected the framing from default to
  recommended and explicitly restored Oracle to the model.
- **Refines:** D015 and D016.

### D068 — Shape is the implicit owner of consequential unknown discovery

- **Status:** Entry behavior retained; Shape naming and skill packaging
  superseded by D081 and D092.
- **Recorded rule:** Enter Shape automatically when an honest proposal or
  implementation depends on consequential unstated intent, unfamiliar
  territory, uncertain assumptions, tacit preferences, or unproved
  feasibility. Clear work skips it. Shape owns research, blind-spot passes,
  adaptive interviews, brainstorming, references, visuals, prototypes,
  experiments, and explanation as proportional discovery instruments.
- **Evidence:** 2026-07-27 — the user approved the automatic-entry scenario and
  later approved replacing overlapping discovery skills with one Shape owner.
- **Consequence:** Runtime Praxis exposes an implicitly invoked `shape` skill.
  `clarify` and discovery-oriented `design` behavior are absorbed into Shape;
  Initiative remains optional persistence and `using-praxis` remains a thin
  explicit-context router.

### D069 — Shape uses a live unknown model without dumping it

- **Status:** Retained intent; owner naming superseded by D081 and uncertainty
  semantics refined by D100.
- **Recorded rule:** Requirements Discovery establishes the human's starting
  point proportionately, infers what conversation and source already reveal,
  and maintains a lightweight live picture of intended outcome, relevant truth,
  material gaps, dependencies, and the next recommended probe. Probe one
  highest-value area of uncertainty at a time and show a compact visual map
  only when relationships help the human steer.
- **Evidence:** 2026-07-27 — the user approved the starting-point, unknown-map,
  compact-checkpoint, and blind-spot scenarios.
- **Consequence:** Shape does not force intake forms, unknown inventories,
  workflow terminology, or giant research returns.

### D070 — Shape selects adaptive probes and returns small learning units

- **Status:** Accepted.
- **Recorded rule:** Choose the smallest fitting probe for the current unknown:
  source or domain research for facts, adaptive interviews for human-owned
  judgment, brainstorming for an open solution space, rich references when
  language is insufficient, visuals for relationships, prototypes for tacit
  reaction, bounded experiments for feasibility, and explanation when the
  human needs a better model. Every turn returns discovery, impact, necessary
  evidence or reaction artifact, and one recommendation.
- **Evidence:** 2026-07-27 — the user approved each probe-selection scenario and
  the complete offline field-service walkthrough.
- **Consequence:** Interviews ask one concrete question at a time and update the
  live model before choosing another method; they never become questionnaires
  or ask for facts the agent can discover.

### D071 — Reaction artifacts and Plannotator have different jobs

- **Status:** Accepted correction.
- **Recorded rule:** A diagram, comparison, explainer, reference, or HTML
  prototype is the human's reaction surface. Plannotator may optionally provide
  structured annotation around it and separately owns provisional record and
  result gates; it does not create the visual artifact. An approved Shape probe may create isolated
  disposable reaction artifacts without granting product implementation
  authority. Product or external mutation requires bounded experiment
  approval.
- **Evidence:** 2026-07-27 — the user challenged the original Plannotator
  wording, approved the corrected distinction, and approved the disposable
  prototype boundary.
- **Refines:** D034 and D051.

### D072 — Shape converges through honest judgment and preserves only continuity

- **Status:** Accepted.
- **Recorded rule:** Recommend Proposal when the intended outcome and governing
  truth support an honest route without guessing about consequential behavior,
  architecture, authority, or proof. Remaining unknowns are visibly deferred,
  safely owned later, or irrelevant. The human decides whether to advance.
  Conversation carries local Shape state; Initiative preserves only the living
  model when a named future loop needs it.
- **Evidence:** 2026-07-27 — the user strongly approved the convergence rule,
  then approved execution-return, result-explanation, and durable-continuity
  scenarios.
- **Consequence:** Shape may recur from Proposal, Execution, or Result learning.
  Initiative never becomes the discovery process, research diary, or full
  transcript.

### D073 — Public skills follow capability triggers rather than system nouns

- **Status:** Accepted design checkpoint; concrete surface later refined by
  D093–D103.
- **Recorded rule:** Praxis exposes one thin human-facing router, independently
  reusable model-invoked disciplines, binding proposal and delivery
  capabilities, and a small number of justified human-only conveniences.
  Concepts, record or artifact types, ordinary model behavior, and assurance
  depth do not become skills without a distinct trigger, reusable procedure,
  and observable return condition.
- **Approved additions:** Prototype, Research, Interview, Domain Modeling, and
  Codebase Design. The latter two replace the newly proposed generic Design
  surface without restoring a competing discovery owner.
- **Approved retained surface:** Shape, Initiative maintenance, Decision,
  Specification, Plan, Evolve, Execute, Review, Verify, TDD, and Debug.
- **Approved exclusions:** no generic Brainstorm, Blind-Spot, Visualize, Design,
  Audit, Test, Route, Accept, Result, Kernel, or CLI skill.
- **Later refinement:** Prototype became the broader Make Tangible skill;
  Domain Modeling and Codebase Design became local paths inside Design
  Solution; Shape, Decision, Specification, and Execute were replaced by the
  final owning and supporting surface recorded in D092–D103.
- **Implementation consequence:** Each skill is self-sufficient on its common
  path, composes with other skills through bounded messages, and uses
  skill-local references only for conditional branches. Human documentation is
  separate; scripts automate deterministic mechanics but never orchestrate
  Praxis.
- **Evidence:** 2026-07-27 — the user approved the skill-information-
  architecture workshop, requested two independent surface research passes,
  then approved each concrete surface scenario recorded in
  `model/skills.md`.
- **Pending:** The remaining adjuncts, conveniences, names, and invocation
  policies listed in the Skills checkpoint still require the same concrete
  interview.

### D074 — Evolutions, Tickets, and Plans operate at different resolutions

- **Status:** Accepted behavior, terminology refined by D078 and D079.
- **Recorded rule:** Evolutions are high-level independently meaningful working
  forms, Tickets are detailed concrete statements of what must become true, and
  Plans describe how accepted Ticket work will be implemented under bounded
  authority. Evolve requires an Evolution Map containing at least two
  meaningful Evolutions. Every selected Evolution expands into at least one
  Ticket, while a coherent outcome may use Tickets directly when Evolve adds no
  value. Direct Work may skip both.
- **Progressive-planning rule:** Only the selected Evolution is expanded into
  Tickets. Later Evolutions remain high-level until selected so earlier
  learning can change their detailed work.
- **Cardinality:** Plan count does not determine Evolution status. One Ticket
  may require more than one sequential Plan when useful risk or authority
  boundaries divide its implementation.
- **Supersedes:** every earlier allowance for a one-Evolution Map. It refines
  D001, D005, D020, D033, D035, D043, D056, D058, D059, D062, and D064 by
  inserting accepted Ticket work between a coherent outcome or selected
  Evolution and its Plans.
- **Evidence:** 2026-07-27 — the user approved the concrete taxonomy scenarios:
  Evolutions state what meaningful working form should exist, Tickets state the
  detailed required work, Plans state how to implement it; Evolve requires
  multiple Evolutions; and every selected Evolution requires at least one
  Ticket.

### D075 — Ticket Set Approval binds required work without mutation authority

- **Status:** Accepted behavior, terminology superseded by D078 and D079 and
  authority consequence superseded by D096.
- **Recorded rule:** Present the complete Ticket set for one selected Evolution
  or coherent outcome through one Plannotator Record Gate. Approval binds
  every Ticket's outcome, scope, exclusions, proof, dependencies, and order but
  grants no implementation authority. D096 later establishes that Plan
  Approval also grants no authority; a separate human instruction authorizes
  implementation.
- **Revision rule:** Material learning returns to the affected Ticket proposal,
  foregrounds the diff from the last reliably identified accepted version, and
  repeats Ticket Set Approval before dependent planning continues. Unaffected
  Tickets remain accepted.
- **Evidence:** 2026-07-27 — the user explicitly classified Tickets as
  acceptance gates and approved one gate for the complete Ticket set.

### D076 — Ticket-to-Plan mapping has no fixed one-to-one rule

- **Status:** Resolved and renamed by D079.
- **Recorded rule:** Reject a mandatory one-Ticket-to-one-Plan mapping. Every
  Plan must name its exact accepted Ticket coverage, and one Ticket may require
  several sequential Plans.
- **Open question:** The conditions under which one Plan should cover several
  tightly coupled Tickets still require a concrete scenario. Do not infer
  either mandatory separation or broad combined authority before that
  decision.
- **Evidence:** 2026-07-27 — the user challenged the proposed one-to-one model,
  accepted Tickets as gates, and asked to persist the settled information
  before continuing the interview.

### D077 — Praxis adopts Linear's Project, Milestone, and Issue vocabulary

- **Status:** Superseded by D078.
- **Recorded rule:** Rename the optional durable Initiative to Project, Target
  Outcome to Project Outcome, Evolution to Milestone, Evolution Map to Project
  Milestones, Evolve to Milestoned Delivery, Ticket to Issue, Ticket Set to
  Scope, and Plan to Implementation Plan. Corresponding gates and acceptance
  judgments use the same nouns.
- **Semantic boundary:** Praxis borrows familiar hierarchy, not Linear's entire
  workflow. A Praxis Milestone must produce an independently meaningful working
  form, useful stopping point, and learning opportunity. Linear Initiatives
  group multiple Projects and do not replace Praxis's one-outcome Project.
- **Compatibility:** Historical entries may retain their original vocabulary
  for provenance, but all new scenarios, skills, proposals, and runtime
  artifacts use the canonical terms. The maintained conceptual model and plugin
  must be migrated coherently rather than exposing two competing vocabularies.
- **Evidence:** 2026-07-27 — after comparing the accepted Praxis hierarchy with
  Linear's current Project, Milestone, and Issue model, the user judged the
  Linear terms clearer for models and asked that the rename be documented
  before the interview continued.

### D078 — Praxis uses a hybrid Linear and Praxis work hierarchy

- **Status:** Accepted correction; supersedes D077.
- **Recorded rule:** Use Initiative, Project, Evolution, Issue, and
  Implementation Plan. Project and Issue borrow their familiar relative scale
  from Linear. Evolution remains Praxis-specific because it must produce an
  independently meaningful working form whose learning can shape later
  Evolutions; a Linear Milestone may be only an ordinary project checkpoint.
- **Project:** One coherent Project Outcome. It may remain conversational and
  becomes durable only when named future loops need continuity.
- **Initiative:** Optional durable strategic direction only when one objective
  requires multiple independently governed Projects. It preserves shared
  direction and cross-project learning, contains no Issues or Implementation
  Plans, grants no delivery authority, and never starts another Project
  automatically.
- **Elimination:** Scope is not a Praxis record, gate, hierarchy level, or
  special noun. Issue Approval provisionally accepts one or more Issues directly.
- **Evidence:** 2026-07-27 — the user requested an official Linear primitives
  research pass, accepted retaining Evolution instead of Milestone, explicitly
  eliminated Scope, and approved the narrow Initiative-above-Projects model.

### D079 — Issue Approval and Implementation Plans have flexible cardinality

- **Status:** Accepted, gate consequence refined by D096.
- **Recorded rule:** Issue Approval provisionally accepts one or more complete
  current Issues and grants no planning or mutation authority. One
  Implementation Plan may cover several
  approved Issues when they share one coherent implementation, risk, review,
  and verification boundary. One Issue may require several sequential Plans
  when useful authority or risk boundaries divide its implementation. Every
  Plan names exact Issue or Issue-portion coverage.
- **Completion:** Implementation Plan Result Acceptance closes every covered
  Issue whose required proof passed. Issues receive no redundant individual
  result gates.
- **Evidence:** 2026-07-27 — the notification and integrated-result scenarios
  were explicitly approved.
- **Resolves:** the open grouping question in D076.

### D080 — Issues stay flat and have one delivery owner

- **Status:** Accepted.
- **Recorded rule:** Praxis does not model sub-issues. If one Issue contains
  several independently judgeable required outcomes, split them into sibling
  Issues under the same owner; implementation steps belong in the
  Implementation Plan. Every Issue belongs to exactly one selected Evolution or
  to one standalone Project Outcome. Later Evolutions depend on accepted
  results and create a new Issue only when they must change that behavior.
- **Evidence:** 2026-07-27 — the complete authentication Project comparison,
  including direct delivery and progressive Evolution forms, was explicitly
  approved, followed by explicit approval of single Issue ownership.

### D081 — Praxis uses three recursively interacting owning loops

- **Status:** Accepted conceptual correction; ownership details refined by D086.
- **Recorded rule:** Praxis has three owning loops: Requirements Discovery,
  Formalization, and Delivery. They are responsibility domains rather than a
  one-way lifecycle. Clear work may skip any loop whose question is already
  answered.
- **Requirements Discovery:** Owns the problem space, human needs, current
  context, constraints, preferences, references, reactions, and consequential
  uncertainty.
- **Formalization:** Translates accepted Requirements into high-level Evolution
  specifications when progressive delivery is useful and detailed Issue
  specifications for the current outcome. It ends at approved Issues.
- **Delivery:** Owns forming the next Implementation Plan, producing, proving,
  explaining, and closing the accepted result.
- **Projection rule:** Requirements engineering, the SDLC, human-centered
  design, context engineering, Agile, and Linear may each explain one useful
  layer. None dictates the entire Praxis system or creates extra lifecycle
  phases merely because its vocabulary is familiar.
- **Supersedes:** the canonical use of Understanding, Proposal, Execution, and
  Result as four global owners, and the canonical public meaning of Shape as a
  separate top-level owner. Historical entries retain those terms only as
  provenance.
- **Evidence:** 2026-07-27 — the user explicitly approved Requirements
  Discovery, Formalization, and Delivery after comparing Praxis with SDLC and
  human-centered design.

### D082 — Praxis is recursive locally and globally

- **Status:** Accepted central system model.
- **Local recursion:** Every owning loop may repeatedly explore, make
  uncertainty tangible, gather evidence or human reaction, synthesize, and
  judge its current question. Tools such as research, interviews, references,
  prototypes, experiments, review, and testing are recursive methods rather
  than fixed stages.
- **Global recursion:** A later owner may return learning to the exact earlier
  owner that introduced a mistaken need, constraint, behavior, solution choice,
  outcome, or authority boundary. That owner revises locally, passes any
  affected gate, and sends corrected truth forward through only materially
  affected descendants.
- **Authority consequence:** Messages and learning never transfer authority by
  themselves. Forward dependency still forms a tree for one concern; backward
  learning edges do not create a global orchestrator or lifecycle.
- **Stopping:** An accepted result exhausts current authority and stops. Global
  recursion is a correction mechanism, not permission to begin adjacent work.
- **Evidence:** 2026-07-27 — the user identified recursion at both scales as the
  clearer central model and explicitly requested that it be persisted and used
  to correct contradictory records.
- **Gate:** 2026-07-27 — the complete revised
  [`core/system.md`](../core/system.md) passed its native Plannotator Artifact
  Gate. The JSON result reported `approved` but returned no durable session
  reference.

### D083 — Requirements Discovery has one offline Project bundle

- **Status:** Accepted record foundation; Unknowns Map semantics refined by
  D100.
- **Recorded rule:** Praxis is offline-first. A normal repository stores durable
  Project-local Praxis records under ignored `/.agents/` state. Linear
  integration is deferred and must not shape the current model.
- **Creation:** Create a Project bundle only when named future work needs
  continuity, retained discovery material exists, or the human explicitly asks
  for one. `brief.md` is the only required file; every other record or
  directory is created lazily when it has content.
- **Bundle:**

  ```text
  .agents/projects/<project>/
  ├── brief.md
  ├── requirements.md
  ├── unknowns.md
  ├── references.md
  ├── references/
  └── artifacts/
  ```

- **Project Brief:** The compact root and navigation surface. It states the
  Target Outcome, human starting point, current model, boundaries, material
  unknowns, Requirements, relevant references and concrete artifacts, and the
  current recommendation without duplicating linked bodies.
- **Requirements:** `requirements.md` translates discovery into human needs,
  constraints, provenance, evidence, significance, Formalization implications,
  and remaining uncertainty. It is not a Decision ledger or formal
  Specification.
- **Unknowns Map:** `unknowns.md` is optional when substantial uncertainty
  needs a navigable live map. D100 removes per-unknown disposition and promoted
  result tracking because the Map is not a ledger.
- **References:** `references.md` records exact sources, versions,
  interpretation, human reaction, and downstream relevance. `references/`
  retains unstable, inaccessible, or exact input material when needed.
- **Concrete artifacts:** `artifacts/` contains actual outputs created during
  work, such as HTML prototypes, diagrams, visualizations, demonstrations,
  experiment harnesses and results, screenshots, or generated media. These
  files remain evidence or reaction surfaces; persistence does not make them
  governing truth.
- **Evidence:** 2026-07-27 — the user approved the Project-centered layout,
  Project Brief, Requirements, Unknowns Map, interpreted References, retained
  native artifacts, lazy creation, and the deferral of Linear.

### D084 — Requirements Discovery and Formalization own different truth

- **Status:** Boundary retained; record and planning details superseded by
  D086.
- **Retained boundary:** Requirements Discovery may research, interview, compare
  references, prototype, experiment, and synthesize, but it does not formalize
  exact solution behavior, architecture, delivery decomposition, or
  implementation authority.
- **Superseded detail:** This entry previously left open whether Specifications
  and solution Decisions were standalone files or embedded elsewhere. D086
  settles that question and moves Implementation Plans into Delivery.
- **Evidence:** 2026-07-27 — the user approved moving formal Specifications out
  of Requirements Discovery, replacing an unknowns-phase Decision file with
  evidence-linked Requirements, and continuing Formalization ownership through
  concrete scenarios.

### D085 — Requirements Alignment binds meaning without over-classifying it

- **Status:** Accepted Requirements Discovery semantics.
- **Strength:** Each accepted Requirement states whether it is `required`,
  `preferred`, or `optional`. Required truth must be satisfied or returned to
  Requirements Discovery; preferred truth may change only through a visible
  human-accepted tradeoff; optional truth may be omitted without invalidating
  the Project Outcome.
- **Proportional taxonomy:** These strengths are the baseline. An agent may
  recommend MoSCoW priority, functional and non-functional categories, numeric
  priority, or another scheme when it materially helps the Project, but it
  explains the benefit and does not impose extra classification by default.
- **Identity:** Requirements receive stable Project-local IDs at Requirements
  Alignment. A semantic revision keeps its ID; a replacement remains briefly
  marked as superseded until affected descendants reference the replacement.
- **Open unknowns:** Requirements Alignment may pass with visible unknowns only
  when they cannot undermine the Project Outcome or a required Requirement.
  Each carried unknown records why it is safe and which later work must resolve
  it.
- **Revision:** Editorial corrections and provenance-only additions do not
  repeat the gate. Changes to meaning, strength, scope, or downstream
  obligation are semantic revisions; Plannotator foregrounds their diff and
  Requirements Alignment repeats before affected forward work continues.
- **Existing recursion:** A conflict discovered later is not a separate
  taxonomy. It follows the accepted global rule: return evidence to the exact
  causal owner, revise and re-gate there, then propagate only through affected
  descendants.
- **Evidence:** 2026-07-27 — the user approved these rules through the
  Requirements Discovery scenario interview. The complete current
  `model/records.md` then passed its Plannotator Record Gate with decision
  `approved`; the command returned no durable native session reference.

### D086 — Evolutions and Issues carry specifications; Delivery owns Plans

- **Status:** Accepted ownership correction, transition semantics refined by
  D096.
- **Requirements Discovery:** Accepted findings, constraints, preferences, and
  human choices are synthesized into Requirements. Praxis creates no later
  standalone Decision record.
- **Formalization:** An Evolution is the high-level formal specification of one
  independently meaningful working form. An Issue is the detailed formal
  specification of what must become true. Praxis creates no standalone
  Specification record.
- **Routes:** Work that does not benefit from progressive working forms goes
  directly to one or more Issues. Evolve requires an Evolution Map with at
  least two Evolutions; only the human-selected Evolution is expanded into
  Issues.
- **Boundary:** Formalization ends when the current Issues pass Issue Approval.
  Issue Approval binds required meaning but grants no product mutation.
- **Delivery:** Delivery owns collaborative Implementation Plan formation and,
  after separate human authorization of an approved Plan, implementation,
  debugging, delegation, review, audit, testing, verification, result
  interpretation, and acceptance. Planning is Delivery work and is not part of
  Formalization.
- **Cardinality:** One Plan may cover several Issues, and one Issue may require
  several sequential Plans. Only the next Plan is formed and approved.
- **Return ownership:** Changed need, finding, constraint, or human choice
  returns to Requirements Discovery; changed progressive sequence or
  high-level working form returns to its Evolution Map or Evolution; changed
  detailed behavior, boundary, or proof returns to its Issue; changed
  implementation approach or authority returns to its Plan inside Delivery.
  An in-bound code correction that preserves accepted specifications and Plan
  authority stays inside Delivery.
- **Gates:** Standalone Decision Acceptance and Specification Acceptance are
  removed. Requirements Alignment, Evolution Map Approval when Evolve is used,
  selected Evolution Definition Approval, Issue Approval, Implementation Plan
  Approval, Implementation Plan Result Acceptance, and Evolution Acceptance
  carry their respective provisional judgments.
- **Supersedes:** every earlier statement that places a standalone Decision or
  Specification record in Formalization, places an Implementation Plan in
  Formalization, or leaves those ownership questions open.
- **Evidence:** 2026-07-27 — after the Requirements Discovery record
  interview, the user explicitly corrected Evolutions as high-level
  specifications, Issues as detailed specifications, and Implementation Plans
  as Delivery-owned implementation documents.
- **Gate:** 2026-07-27 — Plannotator presented the corrected
  [`core/system.md`](../core/system.md), and the user explicitly approved it.
  The native process returned no structured decision or durable reference and
  was closed after remaining open.

### D087 — Derive skills from accepted behavioral needs

- **Status:** Accepted workshop method and Requirements Discovery needs package.
- **Method:** Do not begin with current skill names and decide which ones to
  preserve, merge, or delete. Walk the actual Praxis system, identify behavior
  it must perform reliably, then group the completed needs into the smallest
  useful skill surface. Names, public exposure, invocation policy, and
  composition come afterward.
- **Requirements Discovery owner:** One owner maintains the live inquiry,
  chooses proportionate probes, integrates their results, returns small learning
  units, and judges convergence. Individual probes never own the broader
  inquiry.
- **Bounded research:** The system answers one discoverable factual question
  from strong evidence and returns findings, conflicts, uncertainty, and
  implications without dumping the process.
- **Adaptive interview:** The system resolves human-owned unknowns through one
  concrete question at a time, includes a recommendation when useful, adapts
  after every answer, and returns clarified truth.
- **Make tangible:** The system can create the smallest useful prototype,
  diagram, comparison, demonstration, bounded experiment, or justified
  combination. The artifact and human reaction are evidence, not governing
  truth. One branched capability is plausible, but packaging remains open.
- **Synthesis:** Requirements Discovery continuously promotes useful results
  into Requirements and choices, provenance, interpreted References, artifact
  reactions, and unresolved uncertainty while discarding reconstructible
  narration.
- **Convergence:** Requirements Discovery recognizes when Formalization can
  proceed honestly, exposes safe deferrals, recommends the proportional route,
  passes Requirements Alignment through Plannotator, and never silently enters
  another owning loop.
- **Next workshop slice:** Identify Formalization needs, then Delivery,
  cross-cutting concerns, and optional postures. Only afterward derive and name
  skills.
- **Evidence:** 2026-07-28 — the user rejected starting from Decision and
  Specification skill names, approved deriving capabilities from flow needs,
  and approved each Requirements Discovery need through concrete scenarios.
- **Gate:** 2026-07-28 — the complete current
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D088 — Formalization needs shape and specify work without planning it

- **Status:** Accepted Formalization needs package.
- **Delivery shape:** Formalization distinguishes independently meaningful
  working forms from detailed pieces of one coherent outcome. It recommends
  direct Issues or an Evolution Map and never treats technical layers, task
  counts, or Plan boundaries as Evolutions.
- **Evolution Map:** When Evolve is chosen, Formalization creates a visual Map
  with at least two meaningful working forms advancing the same Project
  Outcome. Each Evolution states its tangible result, deliberate limitations,
  learning target, and proof. Later Evolutions stay high-level, and Map
  Approval selects nothing.
- **Issues:** Formalization expands only the human-selected Evolution, or one
  standalone Project Outcome, into a complete flat set of detailed Issue
  specifications covering observable behavior, interfaces, edge cases,
  failures, exclusions, dependencies, and proof. Issue Approval grants no
  mutation authority.
- **Solution exploration:** Formalization compares consequential system shapes,
  contracts, and domain models against Requirements and evidence. The accepted
  commitment is recorded in its Evolution or Issue rather than a standalone
  Decision record.
- **Coverage:** Every required Requirement is satisfied or visibly deferred,
  every specification traces to accepted truth, and no Evolution or Issue
  invents conflicting scope.
- **Return ownership:** Changed human truth returns to Requirements Discovery;
  a broken progressive sequence returns to its Map; changed high-level working
  behavior returns to its Evolution; and changed detailed behavior or proof
  returns to its Issue.
- **Boundary:** Formalization ends at approved Issues, hands them to Delivery,
  and never creates an Implementation Plan.
- **Next workshop slice:** Identify Delivery needs, then cross-cutting concerns
  and optional postures. Derive and name skills only after the needs map is
  complete.
- **Evidence:** 2026-07-28 — the user approved each Formalization need through
  concrete authentication and search scenarios.
- **Gate:** 2026-07-28 — the complete current
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D089 — Delivery needs plan, execute, prove, explain, and stop

- **Status:** Accepted Delivery needs package, authority and transition
  semantics refined by D096.
- **Just-in-time Plan:** Delivery consumes approved Issues and forms only the
  next Implementation Plan, including exact coverage, result, approach,
  mutations, exclusions, integration, review, and proof. Plan Approval accepts
  that proposal without authority and does not pre-plan later Plans or change
  the Issues.
- **Bounded autonomy:** After a separate explicit human instruction to
  implement the approved Plan, Delivery owns ordinary inspection,
  implementation, testing, debugging, correction, and integration while
  accepted specifications and that authority remain intact.
- **Discovery handling:** In-bound discoveries are corrected locally. Anything
  changing specifications or authority returns evidence, impact, still-valid
  truth, the exact causal owner, and a recommendation. Delivery backtracks to
  the source rather than patching the nearest descendant.
- **Assurance:** Delivery reviews the integrated result against governing truth
  and authority, runs required tests and verification, applies proportional
  consequential scrutiny, and resolves findings. Evidence does not accept the
  result.
- **Human judgment:** Delivery makes the result understandable through the
  smallest useful demo, walkthrough, visual diff, explainer, or quiz and states
  result, evidence, limitations, learning, uncertainty, and exclusions. The
  human owns Result Acceptance through Plannotator.
- **Closure:** Delivery closes only Issue coverage proved by the accepted
  result, exhausts the Plan's authority, and stops. Remaining work returns with
  learning and a recommended next Plan boundary. Evolution Acceptance also
  stops before later work.
- **External authority:** Commit, push, merge, deployment, migration, data
  mutation, infrastructure, permissions, and remote effects require explicit
  authority and current safety evidence. Implementation and Result Acceptance
  never grant them implicitly.
- **Next workshop slice:** Identify cross-cutting needs, then optional postures
  and repository adjuncts. Derive and name skills only after the needs map is
  complete.
- **Evidence:** 2026-07-28 — the user approved each Delivery need through
  concrete implementation and acceptance scenarios.
- **Gate:** 2026-07-28 — the complete current
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D090 — Cross-cutting needs preserve bounded collaboration

- **Status:** Accepted cross-cutting needs package.
- **Delegation:** Recommend cheaper suitable subagents for bounded,
  independently checkable work when required quality is achievable and saved
  main-agent effort exceeds briefing, coordination, integration, and
  verification. The supervisor retains context, judgment, integration, gates,
  and minimal human-facing output. Oracle is reserved for consequential
  direction, drift, contradiction, or unresolved disagreement.
- **Assurance:** Select the lightest check capable of exposing a meaningful
  error. Review challenges records, artifacts, designs, diffs, and results against
  governing truth; verification tests exact claims with current disconfirming
  evidence. Independence is proportional. Evidence grants neither acceptance
  nor authority.
- **Safety:** Trigger safety by destructive, irreversible, production,
  data-affecting, permission-changing, secret-handling, cross-project, or broad
  consequence. Resolve targets, blast radius, recovery, exclusions, current
  external state, and missing authority without burdening routine reversible
  work.
- **Learning messages:** Reusable capabilities return evidence, impact,
  still-valid truth, unresolved questions, and a recommendation. The exact
  causal owner decides continuation and repeated gates. Messages transfer
  knowledge, never authority.
- **Continuity:** Persist only truth a named future loop needs, navigate through
  the Project Brief, and compile the smallest relevant caller context.
  Conversation and native messages carry transient work; source, tests, Git,
  Plannotator history, and owning records carry reconstructible evidence.
  Durable context never selects work or grants authority.
- **Plannotator:** Every gate declares its interaction type, target, approval
  consequence, and non-authority; presents the complete record or a reliable
  version diff; routes feedback to the owner; and consumes the native decision
  directly. Praxis uses no drifting wrapper and never merges gate consequences.
- **Next workshop slice:** Identify optional human postures and repository
  adjuncts, then derive the final skill surface from the complete needs map.
- **Evidence:** 2026-07-28 — the user approved each cross-cutting need through
  concrete delegation, assurance, safety, learning, continuity, and gate
  scenarios.
- **Gate:** 2026-07-28 — the complete current
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D091 — Optional capabilities remain outside the owning loops

- **Status:** Accepted optional-capability and repository-adjunct needs package.
- **Pair:** Pair is manually invoked only inside Delivery after Plan Approval
  when the human wants shared implementation. Coherent mutations require human
  permission while review, verification, Result Acceptance, and stopping remain
  unchanged.
- **Orient:** Orient is a human-invoked explanation capability that builds the
  smallest useful mental model and grants no ownership or mutation authority.
- **Setup:** Setup establishes ignored local Praxis state or an explicitly
  requested integration, checks relevant native tools, creates nothing empty,
  and is not repeatedly invoked during normal work.
- **Repository adjuncts:** Worktree isolation is recommended only when actual
  collision, rollback, or experiment risk justifies it. Commit and pull-request
  work require explicit authority and operate only on the inspected intentional
  change. Durable documentation requires an explicit consumer or delivered
  behavior that must be explained.
- **Initiative:** Initiative is a separate optional capability for maintaining
  shared strategic direction, outcomes, constraints, and learning across
  multiple independently governed Projects. It owns neither their Requirements
  nor Delivery and grants no authority.
- **Rejected capabilities:** Handoff needs no dedicated capability because
  native messages and Project records already carry transfer. Project needs
  no maintenance capability because learning returns to the owning loop, which
  updates its record, affected descendants, and Brief navigation.
- **Next workshop slice:** Test the remaining reusable Delivery disciplines,
  then group the complete needs map into the smallest public skill surface.
- **Evidence:** 2026-07-28 — the user approved each concrete optional-posture
  and repository-adjunct scenario, rejected dedicated Handoff and
  Project-maintenance capabilities, and explicitly required Initiative to
  remain a separate optional capability.
- **Gate:** 2026-07-28 — the complete current
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D092 — References deepen skills; Requirements Discovery uses four skills

- **Status:** Accepted skill-packaging rule and Requirements Discovery surface
  package.
- **Promotion rule:** A required capability becomes a skill only when
  independent invocation is useful and it has a distinct trigger, reusable
  procedure, and observable completion boundary. Other capabilities remain
  paths, references, shared contracts, or ordinary owning-loop behavior.
- **Reference ownership:** `SKILL.md` owns identity, routing judgment, normal
  procedure, authority, return, and stopping. Skill-local references deepen
  rich conditional paths; plugin-wide references define genuinely shared
  semantics. References never become hidden owners of the main behavior.
- **Requirements Discovery:** One owning skill maintains the inquiry, chooses
  and interprets probes, synthesizes Requirements and uncertainty, passes
  Requirements Alignment, and stops or returns.
- **Supporting skills:** Research answers one bounded factual question.
  Interview resolves one bounded human-owned unknown. One tangible-artifact
  skill chooses among prototype, diagram, comparison, demonstration,
  experiment, or a justified combination; those artifact kinds are conditional
  paths rather than separate skills. Its final public name remains open.
- **Next workshop slice:** Derive the Formalization surface without reopening
  the accepted behavior of its needs.
- **Evidence:** 2026-07-28 — the user approved the capability-promotion and
  reference-ownership rules, then approved Requirements Discovery, Research,
  Interview, and one multi-path tangible-artifact skill through concrete
  scenarios.
- **Gate:** 2026-07-28 — the complete current
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D093 — Agents recommend routes; Formalization uses four skills

- **Status:** Accepted routing refinement and Formalization surface package,
  invocation sequence refined by D096.
- **Routing:** At each human-owned route or revision point, the owning agent
  states its understanding, recommends one proportional next path with reasons
  and consequences, and asks for judgment. Routine work continues while it
  remains inside accepted truth and authority. Size is evidence, but Evolve
  requires meaningful progressive working forms; a clear contained edit may be
  Direct Work without a Project.
- **Formalization:** One owning skill translates accepted Requirements,
  recommends direct Issues or Evolve, composes the selected path and solution
  exploration, checks coverage, and stops at approved Issues or returns to the
  exact causal owner.
- **Evolve:** A separate model-invoked skill begins only after the human chooses
  progressive delivery. It owns the Map and Map Approval, waits for human
  selection, then collaboratively develops and gates the selected Evolution's
  complete high-level specification. A separate human choice begins Issue
  definition; Evolve never begins Delivery.
- **Issues:** A separate model-invoked skill creates and gates the flat detailed
  Issue specifications for one standalone Project Outcome or selected
  Evolution. It never plans implementation or grants mutation authority.
- **Design Solution:** One supporting skill owns domain-model and codebase-
  design paths through rich local references. It returns alternatives,
  evidence, tradeoffs, and a recommendation.
- **Rejected duplication:** Decision-making remains shared owning-skill
  behavior, while Evolve and Issues carry specifications. Praxis exposes no
  standalone Decision or Specification skill or record.
- **Next workshop slice:** Derive the Delivery surface without reopening its
  accepted behavioral needs.
- **Evidence:** 2026-07-28 — the user approved each Formalization grouping
  scenario and clarified that agents proactively recommend proportional paths,
  including Direct Work, Issues, Evolve, or Requirements Discovery.
- **Gate:** 2026-07-28 — the complete current
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D094 — Delivery owns the loop and composes five supporting skills

- **Status:** Accepted Delivery surface package, invocation semantics refined by
  D096.
- **Delivery:** One owning skill collaboratively forms Plans and, after the
  human separately authorizes an approved Plan, implements, interprets
  discoveries, composes supporting disciplines, explains the result, passes
  Result Acceptance, closes proven Issue coverage, and stops or returns.
- **Plan:** A separate skill forms only the next just-in-time Implementation
  Plan, passes Plan Approval, and returns the provisionally accepted Plan
  without authority, implementation, or pre-planning later work.
- **Implementation disciplines:** Debug remains a reusable causal-diagnosis
  skill. TDD remains a reusable red-first implementation skill for settled
  behavior when explicitly requested or materially useful.
- **Assurance:** Review and Verify remain separate reusable skills with shared
  plugin-wide assurance semantics. Review returns findings about a bounded
  target; Verify returns `verified`, `failed`, or `unverified` for one exact
  claim. Neither accepts work or grants authority.
- **Rejected duplication:** Delivery implements only after separate human
  authorization, so Praxis has no Execute skill or implementation controller.
  Delivery owns demos, walkthroughs, visual diffs, explainers, and quizzes as
  conditional result paths rather than separate Result or Explain skills.
- **Direct Work:** Clear bounded implementation remains ordinary agent behavior
  and does not inherit Delivery ceremony.
- **Next workshop slice:** Derive cross-cutting, optional, and repository-
  adjunct skills, then settle final names and invocation policy.
- **Evidence:** 2026-07-28 — the user approved each Delivery grouping scenario:
  Delivery, Plan, Debug, TDD, separate Review and Verify, no Execute, and
  Delivery-owned result explanation.
- **Gate:** 2026-07-28 — the complete current
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D095 — The initial remaining surface used nine skills and shared references

- **Status:** Historical accepted surface package; Security and Setup additions
  and Setup ownership are superseded by D123–D125.
- **Router:** Using Praxis remains one thin model-invoked router for explicit
  Praxis use, genuine ambiguity, or relevant durable context.
- **Cross-cutting skills:** Delegate is the accepted name for cost-aware
  subagent coordination, with agent roles as rich local paths. Safety remains a
  separate consequence-triggered skill.
- **Repository skills:** Commit, Pull Request, and Docs remain separate because
  each has an independently requested outcome and completion boundary.
- **Human-only skills:** Pair remains restricted to shared implementation
  during Delivery after Plan Approval. Orient remains an explanation skill
  usable anywhere or independently.
- **Strategic skill:** Initiative remains an optional model-invoked skill for
  cross-Project coherence without Project ownership or authority.
- **Shared references:** Plannotator gates, bounded messages, artifact lifetime,
  assurance semantics, and worktree isolation are plugin-wide
  references. Their callers retain ownership, interpretation, authority, and
  stopping.
- **Later correction:** Worktree remains caller-owned shared guidance. D125
  promotes Setup because an explicit setup request otherwise had no executable
  owner after Using Praxis exited.
- **Next workshop slice:** Review the complete candidate surface as one system,
  settle names and invocation policy, map references, and define implementation
  order and behavior scenarios.
- **Evidence:** 2026-07-28 — the user approved Delegate, Safety, Commit, Pull
  Request, Docs, Pair, Orient, Initiative, and Using Praxis as skills; corrected
  Worktree and Setup into shared references; and approved all shared system
  semantics as plugin-wide references rather than skills.
- **Gate:** 2026-07-28 — the complete current
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D096 — Gates are provisional; every forward activity is conversational

- **Status:** Accepted control correction, shared-capability rule, and final
  naming package.
- **Gate semantics:** A Plannotator approval provisionally accepts only the
  complete current record or result and its declared judgment. It never
  invokes the next activity or grants mutation authority. Later learning may
  reopen the accepted version through the exact-owner revision rule.
- **Forward control:** After every gate, the agent explains what was accepted,
  recommends one next path with reasons and consequences, and waits for the
  human to accept, reject, or reshape it.
- **Formalization sequence:** Requirements Alignment opens route discussion.
  Evolve, when chosen, collaboratively creates and gates a concise Evolution
  Map. Map Approval stops; the human selects one Evolution. Formalization then
  collaboratively develops and gates that Evolution's complete high-level
  specification. Evolution Definition Approval stops; only a later human choice
  begins collaborative Issue definition. A route without Evolve begins the
  same collaborative Issue-definition procedure directly. Issue Approval stops
  and grants no planning authority.
- **Delivery sequence:** When the human chooses Delivery planning, the agent
  discusses the next boundary and consequential implementation approach before
  forming the Plan. Plan Approval stops and grants no implementation authority.
  A separate ordinary-language instruction to implement that approved Plan
  releases autonomous execution inside its exact boundary. Pair remains the
  human-selected per-mutation alternative.
- **Shared-capability ownership:** Research, Interview, and Make Tangible may
  serve any owning loop for one bounded question. The caller is chosen by the
  earliest governing record whose meaning would change: Requirements return
  to Requirements Discovery, Evolutions or Issues to Formalization, and Plans
  or implementation to Delivery. If a probe reveals misclassification, the
  caller backtracks instead of absorbing upstream truth locally.
- **Final skill names:** `discover-requirements`, `research`, `interview`,
  `make-tangible`, `formalize`, `evolve`, `define-issues`,
  `design-solution`, `deliver`, `plan`, `debug`, `tdd`, `review`, `verify`,
  `using-praxis`, `delegate`, `check-safety`, `commit`, `prepare-pr`,
  `write-docs`, `pair`, `orient`, and `coordinate-initiative`.
- **Supersedes and refines:** Supersedes D006 and every later statement that
  Plan Approval itself releases implementation. Refines D008, D064, D075,
  D086, D089, D092–D095, and the maintained control, route, work, Plannotator,
  system, scenario, and skill models.
- **Evidence:** 2026-07-28 — the user explicitly withdrew automatic execution
  after Plan Approval, required proactive discussion before every negotiable
  record and after every gate, separated the Map from the selected
  Evolution's complete high-level specification, and approved the
  earliest-affected-owner rule for shared capabilities.
- **Gate:** 2026-07-28 — the corrected
  [`core/control.md`](../core/control.md) passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D097 — Recommendations guide local work; invocation follows ownership

- **Status:** Accepted invocation policy for the complete candidate skill
  surface.
- **Recommendation rule:** Recommendations keep the human oriented and able to
  steer; they are not permission requests. Inside an active owner, the agent
  explains and performs proportionate local capabilities. It waits for
  human-owned judgment, a forward activity after a gate, mutation authority, or
  external authority.
- **Model-invoked local work:** Using Praxis, Requirements Discovery, Research,
  Interview, Make Tangible, Design Solution, Delegate, Debug, TDD, Review,
  Verify, and Safety run when their concrete trigger appears. They preserve the
  caller's scope and return bounded evidence. Product-mutating experiments
  remain separately authorized.
- **Human-selected forward work:** Formalize, Evolve, Define Issues, and Deliver
  begin only after the agent recommends a path and the human chooses it in
  ordinary language. Deliver invokes Plan only after the human chooses planning
  and discusses its consequential shape; Plan Approval still starts nothing.
- **Human-only work:** Pair, Orient, Commit, and Prepare PR require explicit
  human invocation. Initiative coordination may be recommended but also waits
  for a human choice before creating or revising strategic structure.
- **Conditional work:** Write Docs runs for an explicit request or within
  implementation authority that already includes required documentation.
  Setup runs only when explicitly requested. A caller may apply the shared
  worktree procedure after explaining a concrete isolation risk without adding
  a separate permission gate.
- **Direct Work:** A clear bounded mutation request authorizes its obvious
  contained edit. Analysis-only requests authorize no mutation; ambiguity,
  consequence, or broader scope returns to discussion.
- **Delegation ownership:** When expected cost and quality justify delegation,
  the supervisor briefly recommends or explains it and may proceed unless the
  human redirects. The supervisor retains context, judgment, gates,
  integration, and human-facing output. Oracle is reserved for consequential
  direction, drift, contradiction, or unresolved disagreement.
- **Evidence:** 2026-07-28 — the user approved each invocation scenario and
  explicitly clarified that local recommendations are guidance rather than
  repeated permission requests.
- **Gate:** 2026-07-28 — the complete invocation policy in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D098 — Make Tangible owns purpose-built human reaction surfaces

- **Status:** Accepted Make Tangible skill-design package.
- **Trigger:** Invoke Make Tangible when prose would force the human to
  simulate behavior, compare alternatives, understand structural
  relationships, manipulate difficult values, or retain too much information
  at once. Use conversation or prose when it is sufficient.
- **Ownership:** The calling skill owns the question, meaning, evidence,
  governing record, and gate. Make Tangible owns selection and construction
  of the reaction surface, its local reaction loop, explicit export, and return.
  Other skills invoke it rather than reading or duplicating its internal
  guidance.
- **Procedure:** Name one judgment, choose the smallest honest medium and
  fidelity, compose only patterns that serve that judgment, distinguish fact
  from inference and simulation, iterate until the reaction is clear, export
  interactive state explicitly, and return evidence, reaction, implications,
  and uncertainty to the caller.
- **Patterns:** The initial six-pattern set was later expanded and
  `Communicate and Prove` was split by D158. Pattern documents explain
  purposes, fidelity, useful structures, interactions, export, examples, and
  failure modes; they are guidance rather than rigid reusable HTML templates.
- **Truth and lifetime:** Approval or reaction closes only the bounded tangible
  question. The caller incorporates learning and passes its own gate when
  required. Preserve an artifact only when a named later activity needs its
  exact behavior, evidence, or reaction.
- **Research basis:** The official Claude article
  [The unreasonable effectiveness of HTML](https://claude.com/blog/using-claude-code-the-unreasonable-effectiveness-of-html),
  its [example gallery](https://thariqs.github.io/html-effectiveness/), and the
  companion [Know your unknowns gallery](https://thariqs.github.io/html-effectiveness/unknowns/)
  informed the judgment-oriented patterns, progressive disclosure,
  traceability, interaction, and explicit-export rules.
- **Evidence:** 2026-07-28 — the user approved the trigger, minimum-fidelity
  rule, reaction loop, ownership boundary, artifact lifetime, pattern
  organization and composition, truth labeling, and the correction from rigid
  templates to explanatory patterns.
- **Gate:** 2026-07-28 — the complete Make Tangible package in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D099 — Interview follows the highest-impact human-owned uncertainty

- **Status:** Accepted Interview skill-design package.
- **Trigger and ownership:** Interview handles intent, preference, priority,
  tolerance, and judgment that evidence cannot determine. Research owns
  discoverable facts, Make Tangible supplies missing experiential context, and
  the calling owner retains the broader inquiry, artifact, route, gate, and
  authority.
- **Procedure:** Ask one concrete scenario at a time, starting with the answer
  most likely to change scope, architecture, behavior, or later questions.
  Include a recommendation, reason, and consequence when evidence supports
  one; offer options without constraining ordinary-language answers; and
  recompute after every response.
- **Recursion:** When the human lacks factual or experiential context, pause
  the question and invoke bounded Research or Make Tangible before resuming.
  Surface contradictions explicitly rather than treating the latest answer as
  automatic supersession.
- **Interaction:** Reflect back only new or materially changed meaning.
  Interview does not gate individual answers; the caller incorporates the
  clarified truth and passes its normal complete-record Plannotator gate.
- **Stopping and packaging:** Stop when the caller can proceed honestly without
  guessing about consequential human-owned truth. Return clarified meaning,
  consequences, safely deferred uncertainty, and one recommendation. Preserve
  no transcript without a named future consumer. Keep the complete procedure
  in `SKILL.md` and add no questionnaire or domain references initially.
- **Evidence:** 2026-07-28 — the user approved every concrete Interview
  scenario, including adaptive ordering, recommendations, flexible options,
  recursive support, contradiction handling, concise synthesis, stopping,
  gate ownership, no initial local references, and concrete language.
- **Gate:** 2026-07-28 — the complete Interview contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D100 — The Unknowns Map is a live uncertainty model, not a ledger

- **Status:** Accepted Requirements Discovery correction.
- **Recorded rule:** Unknowns are not work items, acceptance criteria, or a
  finite queue to resolve. The optional Map makes the current frontier of
  understanding navigable. Unknowns may appear, disappear, merge, split, or
  change shape, and unknown unknowns cannot be enumerated in advance.
- **Practice:** Probe one highest-value area of uncertainty at a time, then
  redraw the Map as learning becomes governing truth elsewhere. Do not retain
  per-unknown status, resolution history, or promoted-result bookkeeping
  without a named future consumer.
- **Convergence:** Requirements Alignment requires enough understanding to
  proceed honestly, not an empty Map. Remaining uncertainty may be carried when
  it cannot undermine the Project Outcome or a required Requirement and its
  later relevance is visible.
- **Supersedes and refines:** Refines D083 and every statement that describes
  the Unknowns Map as a queue of individually resolved entries.
- **Evidence:** 2026-07-28 — the user clarified that unknowns are unspecified
  uncertainty rather than a ledger and approved the live-map and convergence
  formulation.
- **Gate:** 2026-07-28 — the live-uncertainty semantics embedded in the
  Interview contract passed the same native Plannotator Record Gate with
  decision `approved`; the command returned no durable native reference.

### D101 — Research tests one bounded factual claim against the territory

- **Status:** Accepted Research skill-design package.
- **Trigger and ownership:** Research answers factual questions discoverable
  through evidence. Interview owns human judgment, Make Tangible owns
  reaction-based understanding, and the caller retains the broader inquiry,
  meaning, governing record, route, gate, and authority.
- **Evidence method:** Bound the claim and consequence, prefer current source,
  installed versions, runtime behavior, and closest primary evidence, then
  triangulate proportionately. Test claims instead of counting sources and
  distinguish direct evidence, inference, conflict, and uncertainty.
- **Scope and correction:** Stay centered on one question and stopping
  condition. Report adjacent evidence only when it materially changes the
  answer, invalidates the premise, or exposes a consequential blind spot. A
  false premise may be the main finding and returns to its owning assumption.
- **Probes and authority:** Read-only checks and disposable local probes are
  valid evidence methods. Product changes, data mutation, production calls,
  costly external actions, and consequential experiments retain their ordinary
  explicit authority.
- **Return and stopping:** Lead with the bounded answer, decisive traceable
  evidence, source/version scope, conflicts or uncertainty, implications, and
  one recommendation. Stop at consequence-appropriate confidence or honest
  irresolution; preserve a research trail only for a named future consumer.
- **Composition:** Research may execute directly or through Delegate under the
  same contract and may invoke Make Tangible to make dense evidence
  understandable without giving up ownership of the factual claim.
- **Packaging:** Keep the complete method in `SKILL.md`. Use three local
  references for codebase/dependency/history investigation, external
  primary-source/literature research, and runtime/empirical probing. They
  deepen mechanics without taking over scope, synthesis, authority, return, or
  stopping.
- **Evidence:** 2026-07-28 — the user approved every concrete Research
  scenario, including the trigger, evidence hierarchy, bounded scope,
  false-premise handling, claim testing, probes, answer-first return,
  reproducibility, delegation boundary, Make Tangible composition, reference
  structure, and proportional stopping.
- **Gate:** 2026-07-28 — the complete Research contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D102 — Discover Requirements owns the adaptive inquiry and synthesis

- **Status:** Accepted Discover Requirements skill-design package.
- **Trigger and ownership:** Enter when consequential uncertainty prevents an
  honest route, formal specification, or contained edit; clear work skips it.
  Discover Requirements owns the live inquiry, synthesis, convergence,
  Alignment when needed, and return. Research, Interview, and Make Tangible
  remain bounded supports.
- **Starting point and blind spots:** Infer the human's starting point from the
  request, source, and References before asking. Use a proportionate blind-spot
  pass in unfamiliar consequential territory and surface only considerations
  likely to change the inquiry.
- **Adaptive probes:** Choose the cheapest fitting method among Research,
  Interview, Make Tangible, interpreted References, inspection, brainstorming,
  and explanation. They have no fixed order and may compose recursively.
- **Synthesis:** Continuously update Requirements, interpreted References,
  artifact reactions, uncertainty, and current understanding. Promote only
  needs, constraints, accepted human choices and preferences, and relevant
  truth later work must respect, with provenance and Formalization consequence.
- **Boundary:** Candidate solutions may be explored to expose unknowns, but
  Evolution and Issue behavior, interfaces, failure semantics, and
  implementation approach belong to Formalization.
- **Convergence and gate:** Converge when Formalization can propose honestly,
  not when every unknown has been enumerated or resolved. When Requirements
  will govern later work, Requirements Alignment judges the synthesized Brief,
  Requirements, safe uncertainty, and only necessary supporting References or
  artifacts. Approval starts nothing; explain, recommend a route, and wait.
- **Proportional persistence:** Short discovery remains conversational. Create
  or extend a lazy Project bundle only for a named continuity need, retained
  material, substantial inquiry, or explicit human request. Understanding,
  rejection, abandonment, or short clarification may stop without a gate.
- **Packaging:** Keep inquiry ownership, probe selection, synthesis,
  convergence, Alignment, and stopping in `SKILL.md`. Use two local references
  for blind-spot discovery and rich Reference interpretation; shared Unknowns
  Map and artifact-lifetime contracts remain plugin-wide.
- **Evidence:** 2026-07-28 — the user approved every concrete scenario,
  including entry, starting point, blind spots, probe selection, References,
  continuous synthesis, Requirement promotion, Formalization boundary,
  convergence, Alignment contents, lazy persistence, reference structure, and
  optional no-gate conclusions.
- **Gate:** 2026-07-28 — the complete Discover Requirements contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D103 — Design Solution makes consequential solution choices judgeable

- **Status:** Accepted Design Solution skill-design package.
- **Recorded rule:** Design Solution is a model-invoked supporting skill for
  consequential solution choices. It starts from accepted Requirements and
  current system evidence, derives comparison criteria from that truth,
  compares the smallest serious set of materially different shapes, closes
  only uncertainty that can distinguish them, recommends honestly, and brings
  consequential commitments to the human for judgment.
- **Ownership:** The accepted shape returns to the earliest governing record
  whose meaning it changes. Requirements truth returns to Requirements
  Discovery, Evolution or Issue behavior returns to Formalization, and
  specification-preserving implementation choices remain with the Plan and
  Delivery. Design Solution creates no standalone Decision record or gate.
- **Boundary:** It specifies only the architecture, ownership, interfaces,
  invariants, and consequential behavior required to judge the solution.
  File-level mutations, commands, sequencing, checks, and implementation
  authority belong to the later Plan.
- **Return and stopping:** It returns fresh design context—the accepted shape,
  essential rationale, governing consequences, unresolved uncertainty, and
  affected owner—rather than a decision ledger. It stops when honest judgment
  is possible or when no consequential design choice exists; it never
  manufactures alternatives.
- **Packaging:** Keep the complete common path in `SKILL.md`. Domain Modeling
  and Codebase Design are rich local references, not separate skills.
- **Evidence:** 2026-07-28 — the user approved the complete scenario-based
  Design Solution interview, including trigger, ownership, comparison,
  judgment, supporting probes, depth, persistence, return, and stopping.
- **Gate:** 2026-07-28 — the complete Design Solution contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D104 — Projects and Evolutions are collaboratively designed for their context

- **Status:** Accepted Evolve skill-design and work-hierarchy refinement.
- **Current model:** A Project is a substantial body of Requirements the human
  and agent choose to govern as one coherent outcome. An Evolution is a small
  but substantial coherent advancement inside that Project. Both boundaries
  are developed collaboratively from the Requirements, current system,
  complexity, dependencies, uncertainty, and preferred solution.
- **Category-neutrality:** An Evolution may establish, extend, deepen, refine,
  replace, or remove behavior. Features, systems refinements, migrations,
  compatibility states, quality improvements, and technical refinements may
  all be valid in context; none qualifies or fails by category, external
  lifecycle stage, Issue count, Plan count, or engineering size alone.
- **Meaning:** An Evolution must produce a working form that is real and
  integrated enough to exercise, review, prove, and learn from inside the
  Project. Its meaning comes from progressive satisfaction of the Project
  Requirements, not an external lifecycle or audience category, and it need
  not complete the Project.
- **Evolve procedure:** The human chooses Evolve after a recommendation.
  Evolve tests that at least two useful advances exist, compares serious
  sequences, develops a visually judgeable Map collaboratively, gates it
  without selecting work, then collaboratively specifies and gates only the
  human-selected Evolution. Future entries remain concise and material
  strategy revisions return through Map Approval.
- **Exact returns:** A failed progressive premise returns to Formalize for
  direct Issues. A mistaken Project boundary returns with evidence to
  Requirements Discovery. After one accepted Evolution, Evolve incorporates
  learning, recommends a next selection when appropriate, and stops.
- **Evidence:** 2026-07-28 — the user approved the Evolve interview and
  corrected release-oriented interpretations through web-application,
  systems, authentication, migration, Project, and Initiative scenarios.
- **Gate:** 2026-07-28 — the complete corrected Evolve contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D105 — Issues are stable detailed specifications, not implementation tasks

- **Status:** Accepted Define Issues skill-design and Formalization record
  package.
- **Boundary:** An Issue is one coherent detailed specification whose behavior,
  exclusions, dependencies, and proof can be understood and judged together.
  Split only independently specifiable, revisable, or provable outcomes, never
  files, components, technical layers, implementation steps, or Plan count.
- **Contents and readiness:** Each Issue defines observable behavior, relevant
  interfaces, states, edge and failure cases, compatibility, exclusions,
  dependencies, and required proof. It is ready when that meaning is judgeable;
  unresolved implementation mechanics belong to Delivery planning.
- **Collaboration and coverage:** Define Issues proposes and explains the set,
  refines it with the human, uses bounded supporting capabilities when useful,
  returns changed upstream meaning to its exact owner, and checks that the
  complete set specifies its selected Evolution or direct Project Outcome.
- **Plans:** Issues divide specification meaning and Plans divide bounded
  implementation work. Their mapping is many-to-many and sequential: one Issue
  may need several Plans, while one Plan may cover several Issues or portions
  when it states the exact coverage.
- **Persistence:** Formalization stores lowercase, Project-local, stable Issue
  files under `issues/`. Semantic refinement keeps an ID; split, merge, or
  replacement creates new IDs with minimal supersession context. Issue files
  remain specifications, not execution ledgers.
- **Evolution layout:** Evolve stores the complete concise progression at
  `evolutions/map.md` and creates `evolutions/eN-<name>.md` only for a
  human-selected Evolution being specified. A direct-Issue Project creates no
  Evolution directory.
- **Gate:** Issue Approval reviews the complete current set, provisionally
  accepts detailed specification meaning, grants no planning or implementation
  authority, and stops. Material revisions foreground the semantic diff and
  repeat approval without reopening unaffected meaning.
- **Evidence:** 2026-07-28 — the user approved the complete concrete-scenario
  interview covering trigger, collaboration, contents, owner returns, coverage,
  dependencies, count, revisions, gate, stable files and IDs, readiness,
  Issue-to-Plan mapping, and post-Delivery disposition.
- **Gate:** 2026-07-28 — the complete Define Issues contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D106 — Formalize owns the complete current translation of Requirements

- **Status:** Accepted Formalize skill-design package.
- **Entry and route:** Formalize begins only when the human chooses to turn
  accepted Requirements into formal specifications. It recommends direct
  Issues or Evolve from the actual Requirements, system, complexity,
  dependencies, uncertainty, and preferred solution, discusses the
  consequences, and enters only the route the human selects conversationally.
  Route discussion creates no approval record.
- **Outer ownership:** Formalize remains responsible until direct Project
  Issues, or the selected Evolution and its Issues, form a complete current
  specification. Evolve, Define Issues, Design Solution, Research, Interview,
  and Make Tangible retain ownership of their bounded questions and artifacts;
  Formalize composes and interprets their returns without controlling or
  duplicating them.
- **Failed routes and exact returns:** When a selected route fails its premise,
  Formalize explains the evidence and changed understanding, recommends the
  corrected route, and waits for human choice. Changed Requirements or Project
  boundaries return to Requirements Discovery.
- **Records:** Formalize creates no route, decision, orchestration, or
  `formalization.md` record. When continuity needs it, the Project Brief
  records only the chosen route, current owner, links to governing
  Formalization files, remaining uncertainty, and current recommendation.
- **Supporting probes:** Formalize may invoke supporting capabilities
  proportionately without a permission ritual. Meaningful human-facing paths
  remain collaborative, and any changed governing truth passes its exact
  owner's normal gate.
- **Completion:** Formalize checks the current specification's coverage and
  uses the Map, Evolution Definition, and Issue gates owned by its composed
  path. It creates no duplicate Formalization gate. After the complete current
  Issues are accepted, it explains the result, recommends Delivery planning,
  and stops for a separate human choice.
- **Evidence:** 2026-07-28 — the user approved the complete concrete-scenario
  interview covering entry, route recommendation, outer ownership, record
  boundary, failed-route behavior, completion, supporting capabilities, and
  Project Brief navigation.
- **Gate:** 2026-07-28 — the complete Formalize contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D107 — Deliver owns one approved Plan through one accepted result

- **Status:** Accepted Deliver skill-design and Delivery record package;
  consequential-action authority wording refined by D116.
- **Entry and boundary:** Deliver begins when the human chooses to plan approved
  Issue work. It collaboratively proposes the smallest coherent integrated,
  reviewable, and provable boundary, which may cover several Issues or portions,
  and owns exactly one Plan through one accepted result.
- **Authority:** Plan Approval accepts the exact proposal and stops.
  Implementation begins only after separate ordinary-language Authorization.
  Deliver then works autonomously inside accepted behavior and exact Plan
  authority; material changes return through affected gates and authorization.
- **Consequential actions:** Destructive, irreversible, production,
  data-affecting, permission-changing, secret-handling, cross-project, commit,
  push, pull-request, merge, deployment, migration, infrastructure, and remote
  effects must be explicit in the Plan and still receive precise human
  Implementation or external authority plus current Safety evidence. D116
  clarifies that an exact Implementation Authorization may already supply this
  authority, so Check Safety creates no duplicate gate. Testing and ordinary
  reversible work remain inside normal Plan authority.
- **Learning and composition:** Deliver corrects locally while governing truth
  and authority remain valid. Otherwise it returns evidence, impact,
  still-valid truth, questions, and a recommendation to the earliest causal
  owner. Debug, TDD, Review, Verify, Delegate, Make Tangible, and Safety retain
  bounded local ownership and never accept work or expand authority.
- **Working memory and assurance:** Substantial or uncertain implementation may
  use temporary notes for meaningful deviations, decisions, evidence, and
  learning. Durable truth is promoted before the remaining diary is discarded.
  Every result receives proportionate Review and Verify; independence, audits,
  broad suites, and specialized checks depend on consequence and uncertainty.
- **Result judgment:** Deliver presents the actual working result, exact Issue
  coverage, evidence, limitations, learning, and unresolved questions through
  the smallest useful explanation. Result Acceptance closes only proved
  coverage, updates affected Issue disposition, exhausts Plan authority, and
  stops without authorizing another activity.
- **Revisions and failure:** In-authority Result feedback continues the same
  loop and repeats affected assurance. Changed meaning or authority returns to
  the exact owner. An infeasible Plan returns a safe partial state and closes
  nothing unproved; the human chooses preservation, revision, backtracking,
  cleanup, or stopping.
- **Completion:** One Result Acceptance interaction may also judge the complete
  selected Evolution or direct Project Outcome only when it explicitly presents
  and proves both the Plan claim and integrated owner claim. Accepted Evolution
  learning returns to Evolve and never begins future work.
- **Persistence:** Delivery creates one current lowercase
  `plans/pN-<name>.md`, never future placeholders. Plans remain only while they
  govern work or serve a named consumer, and no permanent Plan archive, Result
  directory, or receipt exists by default.
- **Record format:** D145 settles the common YAML envelope for structured
  records while keeping artifacts and native messages outside it. The remaining
  record workshop defines stable kind-specific field combinations and
  headings without turning human-facing documents into ledgers.
- **Evidence:** 2026-07-28 — the user approved the complete concrete-scenario
  interview covering entry, one-Plan ownership, boundary design, authority,
  autonomous implementation, exact learning returns, supporting skills,
  temporary notes, assurance, explanations, acceptance, consequential actions,
  revision, infeasibility, persistence, and composed Evolution or Project
  completion.
- **Gate:** 2026-07-28 — the complete Deliver contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D108 — Changeability is preserved through responsive refactoring and cumulative proof

- **Status:** Accepted cross-system quality contract.
- **Known pressure:** A result remains proportionately changeable under
  evidence-backed direction and uncertainty. Requirements Discovery records
  that pressure; Formalization gives it consequences in solution shape,
  Evolution or Issue meaning, limitations, learning, and proof. Praxis rejects
  both shortsighted structure that obstructs accepted work and abstraction for
  requirements nobody has established.
- **Responsive refactoring:** When current accepted work exposes that inherited
  structure no longer fits expanded Requirements, Delivery refactors the
  concrete pressure point as part of that work instead of layering another
  patch or promising later cleanup. Disposable exploratory patches may expose
  the design, but the accepted result contains the coherent structure.
- **Authority:** Necessary refactoring remains inside Implementation Authority
  only while the Plan's targets, behavior, consequences, risk, exclusions, and
  proof remain intact. A material change returns to Plan discussion and
  Approval; changed governing meaning returns to its earlier causal owner.
- **Proof:** Every result proves its new behavior and inherited accepted
  behavior materially exposed by the change. Cumulative proof follows impact
  and shared invariants rather than a mandatory full rerun.
- **Findings and probes:** Changeability may block acceptance only through a
  concrete harmful mechanism such as obscured ownership, avoidably scattered
  behavior, incompatible responsibilities, or accepted future work made
  predictably unsafe or expensive. Metrics locate concerns but do not prove
  them. A bounded disposable extension, adversarial review, cheaper-agent
  handoff, or similar probe may test one consequential unproved seam without
  becoming speculative product work.
- **Boundary and explanation:** Adjacent debt stays outside Delivery unless the
  approved result genuinely depends on repairing it. Result presentation
  foregrounds consequential structural changes and remaining changeability
  limits alongside behavioral proof, explaining responsibility and consequence
  rather than preserving a refactoring diary.
- **Surface placement:** Changeability is implemented by Requirements
  Discovery, Formalization, Plan, Delivery, Review, Verify, and result
  explanation. It creates no new public skill. Rich probe guidance may be
  factored later only if the final reference-map review finds repeated
  procedure worth an additional reference hop.
- **Evidence:** 2026-07-28 — the user approved the complete concrete-scenario
  interview after reviewing HumanLayer's benchmarking argument,
  SlopCodeBench, and the distinction between responsive refactoring and
  speculative architecture.
- **Gate:** 2026-07-28 — the integrated changeability contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D109 — Plan bounds implementation authority without fake precision

- **Status:** Accepted Plan skill-design package.
- **Precision:** A Plan must be precise enough to bound authority and expose
  consequential implementation choices, but it is not an exhaustive edit
  script. It states exact Issue coverage, affected targets, structural and
  integration approach, necessary ordering, permitted mutations, exclusions,
  consequences, risks, recovery, assurance, and proof. File and command detail
  appears only when it defines authority, safety, coordination, recovery, or
  evidence.
- **Uncertainty:** A Plan may carry implementation uncertainty only when every
  plausible resolution stays inside the same accepted specifications, targets,
  exclusions, dependencies, consequences, risk, recovery, and proof. It names
  that uncertainty and its safe decision envelope. Otherwise the question is
  resolved or returned to its exact owner before Plan Approval.
- **Existing contract retained:** Plan remains collaborative, source-grounded,
  just in time, and limited to one current file. It includes necessary
  pressure-point refactoring and impact-based proof, excludes unrelated cleanup
  and future Plans, passes native Plannotator Approval, grants no implementation
  authority, and stops.
- **Evidence:** 2026-07-28 — the user approved both concrete Plan scenarios and
  asked that the coherent Plan package be persisted before continuing with TDD.
- **Gate:** 2026-07-28 — the complete Plan contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D110 — TDD is an honest vertical red–green–refactor discipline

- **Status:** Accepted TDD skill-design package.
- **Trigger and authority:** TDD implements settled behavior when the human
  requests test-first work or red-first feedback materially helps. Debug may
  hand it a diagnosed regression. It remains inside current Plan or Direct Work
  authority and neither discovers Requirements nor diagnoses an unknown cause.
- **Seam:** Use a Plan seam when specified; otherwise select the narrowest
  stable public seam capable of proving the governing behavior. Broader proof
  appears only when the contract crosses boundaries. Routine choice stays local
  unless it changes design, behavior, authority, or required proof.
- **Cycle:** Work one observable behavior at a time: focused test, expected
  red, minimum green implementation, evidence-backed refactoring while green,
  then the next behavior. The first cycle is a thin vertical tracer bullet;
  speculative horizontal test batches are rejected.
- **Proof quality:** Expected values come from a source independent of
  production logic. Owned modules run together through public seams; doubles
  replace true external or nondeterministic boundaries, preferably with
  realistic local substitutes.
- **Coverage and return:** Tests follow accepted behavior and concrete risk,
  stopping at the Plan's assigned TDD boundary rather than arbitrary coverage.
  Claims without an honest executable seam return to a better reaction or
  verification method. Changed governing truth returns to its exact owner.
- **Evidence:** 2026-07-28 — the user approved the complete concrete-scenario
  interview covering seam selection, vertical cycles, green refactoring,
  independent expectations, boundary doubles, risk-based stopping, and
  declining fake TDD.
- **Gate:** 2026-07-28 — the complete TDD contract in
  `model/skills.md` passed its native Plannotator Artifact
  Gate with decision `approved`; the command returned no durable native
  reference.

### D111 — Review returns evidence-backed judgment without acceptance

- **Status:** Accepted Review skill-design package.
- **Finding quality:** A finding names the violated governing expectation or
  concrete failure mechanism, evidence, consequence, priority, confidence,
  smallest credible correction, and likely causal owner. Preferences without
  material consequence remain non-blocking suggestions.
- **Code lenses:** Every code review examines Specification Fidelity against
  Requirements, Evolutions, Issues, Plan, authority, and exclusions, plus
  Engineering Integrity in the actual implementation context. The lenses may
  run together or independently when consequence and uncertainty justify the
  cost, then return one deduplicated result.
- **Scope and completeness:** Review fixes one exact target, may inspect
  surrounding truth needed to judge it, and limits findings to problems
  introduced, worsened, exposed, or materially relied upon by that target. A
  completed Review covers the entire target under every required lens;
  partitioning is honest, sampling is not.
- **Evidence and audits:** Review may compose Verify for one bounded executable
  claim. Specialized audit postures follow concrete security, privacy,
  integrity, concurrency, performance, accessibility, migration, or similar
  risks rather than generic checklists.
- **Target paths:** Proposal, code, Result, and external-feedback Reviews share
  one evidence-backed procedure but ask target-appropriate questions. External
  comments are validated as confirmed, rejected, or unresolved rather than
  inherited as authority.
- **Return and stopping:** Review remains read-only. Local implementation
  findings return for in-authority correction and affected re-review; changed
  meaning or authority returns to the exact causal owner. Review states its
  coverage and limitations, and “no findings” grants neither verification nor
  acceptance.
- **Evidence:** 2026-07-28 — the user approved the complete concrete-scenario
  interview covering finding quality, the two code lenses, surrounding
  context, incomplete evidence, Verify composition, audits, external feedback,
  full-target coverage, correction ownership, target paths, and stopping.
- **Approval:** 2026-07-28 — the user conversationally authorized persistence
  of the coherent Review package. No native Plannotator gate was run in this
  thread.

### D112 — Verify tests exact claims with current disconfirming evidence

- **Status:** Accepted Verify skill-design package.
- **Claims:** Verify derives exact falsifiable claims from the caller's
  completion statement and governing Requirements, Evolution, Issues, and
  Plan. Composite work is verified claim by claim; vague governing truth
  returns `unverified` to its exact owner rather than becoming an invented
  specification.
- **Evidence:** Use the lightest current evidence capable of disproving each
  claim at its governing boundary. Evidence must exercise the relevant
  condition, assert the material outcome, derive expectations independently,
  and be capable of detecting the excluded defect. Cumulative proof includes
  materially exposed inherited behavior.
- **Freshness and scope:** Evidence corresponds to the exact final target and a
  relevant environment. Corrections invalidate materially affected proof while
  genuinely unchanged proof may remain. Results never generalize beyond
  established target, configuration, data, platform, or environmental
  equivalence, and no permanent receipt is required by default.
- **Outcomes:** `verified` means current disconfirming evidence supports the
  scoped claim; `failed` means valid evidence contradicts it; `unverified`
  means evidence is missing, stale, inconclusive, flaky, unavailable,
  unsuitable, or unable to run. Infrastructure failure and absence of evidence
  are neither product failure nor success.
- **Probes and judgment:** Verify may construct a bounded disposable probe
  inside current authority without changing product behavior or unapproved
  external state. Accepted experiential claims may use a focused tangible
  comparison and human response as their scoped oracle.
- **Return and stopping:** Verify reports exact claims, evidence, expected and
  observed results, status, environment, and limitations without diagnosing,
  repairing, accepting, or granting authority. It returns mixed statuses and
  stops; only the caller chooses debugging, correction, backtracking, new
  authority, or acceptance.
- **Evidence:** 2026-07-28 — the user approved the complete concrete-scenario
  interview covering claim construction, boundary-matched evidence, freshness,
  outcome semantics, failure returns, disposable probes, evidence sensitivity,
  environmental scope, human judgment, and stopping.
- **Approval:** 2026-07-28 — the user authorized persistence of the coherent
  Verify package. No native Plannotator gate was run in this thread.

### D113 — Using Praxis routes once and gets out of the way

- **Status:** Accepted Using Praxis skill-design package.
- **Activation:** The thin router runs for explicit Praxis use, genuine
  ownership ambiguity, or materially relevant durable Praxis truth. The
  existence of `/.agents/` never forces obvious work through Praxis.
- **Routing:** Start from the concrete human intent and current repository
  rather than a global lifecycle stage. Recommend one proportional owner or
  Direct Work path in Project terms, mention only consequential alternatives,
  and return learning to the earliest owner whose truth must change.
- **Context:** Load durable state progressively: enough navigation to locate
  likely ownership, then only the governing record and necessary ancestors
  or evidence. Material ambiguity produces one focused question rather than a
  guess or a complete context dump.
- **Invocation and authority:** Model-owned local capabilities may begin after
  a brief explanation. Formalize, Evolve, Define Issues, and Deliver wait for
  the human's ordinary-language choice. Routing grants no mutation, external,
  gate, selection, or continuation authority.
- **Resumption:** Reconstruct accepted versus draft records, latest proved
  result, learning, stopping point, and still-required choice from durable
  truth and current repository state. Never infer Implementation Authorization
  or forward motion from a file or stale conversation.
- **Exit:** Transfer only relevant intent, truth, evidence, authority, and the
  unresolved question, then stop routing. Using Praxis creates no routing record,
  receipt, persistent session, parent workflow, or global state machine.
- **Evidence:** 2026-07-28 — the user approved the concrete-scenario interview
  covering activation, local versus human-selected routing, progressive context
  loading, concrete recommendation shape, honest resumption, and immediate
  exit after handoff.
- **Approval:** 2026-07-28 — the user authorized persistence of the coherent
  Using Praxis package. No native Plannotator gate was run in this thread.

### D114 — Delegate routes bounded work without transferring supervision

- **Status:** Accepted Delegate skill-design package.
- **Purpose and justification:** Delegate is primarily a context-routing
  capability and may also improve monetary cost or elapsed time. A worthwhile
  improvement in any one of supervisor-context quality, total cost, or elapsed
  time may justify it after briefing, coordination, integration, assurance,
  and likely correction are counted. It is neither a default nor a universal
  parallel pipeline.
- **Supervision:** The main agent retains the human relationship, current
  Praxis owner, governing truth, architecture and interfaces, decomposition,
  authority, integration, gates, and final claims. A delegate owns only its
  bounded function and returns evidence or learning.
- **Context and brief:** Fresh isolated context is the default; a bounded fork
  is reserved for essential conversational meaning that cannot be transferred
  faithfully and economically. The brief pushes outcome, accepted truth,
  consequential boundaries, scope, exclusions, authority, tools, Safety,
  required behavior or claims, proof, starting pointers, escalation
  conditions, and return shape while the delegate pulls ordinary local
  context.
- **Roles and models:** Scout, Researcher, Worker, Reviewer, Verifier, and
  Oracle are rich paths rather than stages. Use the cheapest capable model and
  escalate according to ambiguity, architectural judgment, blast radius, weak
  proof, repeated failure, and likely correction cost. Oracle remains the
  supervisor-grade exception for consequential direction, drift,
  contradiction, or unresolved disagreement.
- **Gray-box implementation:** Delegate internals only when the supervisor
  understands and owns the boundary, behavior, interfaces, invariants, side
  effects, dependencies, compatibility, exclusions, and required proof.
  Missing consequential decisions return with evidence and a recommendation
  instead of being silently settled.
- **Authority and communication:** Give only necessary tools, permissions,
  secrets, repository scope, and mutation authority. Delegation never
  amplifies access or bypasses explicit authority and Safety. Delegates work
  quietly and send intermediate messages only for material blockers,
  governing conflict, safety, necessary judgment, or evidence that should
  redirect work.
- **Parallelism and nesting:** Parallel delegates require genuinely independent
  objectives, evidence paths, or mutation ownership and a worthwhile
  elapsed-time benefit after coordination and integration. Dependent work
  remains sequential. Delegation is one level deep by default; further
  decomposition returns to the supervisor unless an exception is explicitly
  designed.
- **Return, inspection, and correction:** Return intentional compaction:
  result, exact evidence pointers, material findings or changes, verification,
  limitations and confidence, unresolved questions or deviations, and a
  recommendation. The supervisor performs targeted inspection rather than
  blind trust or full replay. Resume for local correction under unchanged
  truth; start fresh, escalate, or return when the brief changes, context is
  polluted, independence is needed, or understanding is unreliable.
- **Persistence and stopping:** Native messages are transient by default.
  Promote useful truth into its owning Praxis record only for a named future
  consumer. Harness transcripts, logs, status, and delegate reports are not
  Project truth merely because they exist. Delegate returns its bounded result
  or blocker and stops; only the supervisor chooses the next action.
- **Evidence:** 2026-07-28–29 — the user approved the complete
  concrete-scenario interview after reviewing a bounded research synthesis
  grounded in Anthropic context and multi-agent guidance, HumanLayer's
  Advanced Context Engineering, Matt Pocock's AI Coding for Real Engineers
  workshop and Sandcastle, Claude Code subagent guidance, and OpenAI model
  routing guidance.
- **Approval:** 2026-07-29 — the user authorized persistence and requested
  refinement of every related Praxis mental model. No native Plannotator gate
  was run because the user explicitly requested that Plannotator not be opened
  while communicating remotely in this thread.
- **Refines:** D015, D016, and D067.

### D115 — Delegate owns one shared reference for six role paths

- **Status:** Accepted Delegate role-path and runtime-profile package.
- **Role distinctions:** Scout is optimized for repository-local source,
  history, ownership, and behavior tracing. Researcher is optimized for
  external, domain, reference, and comparative evidence. Worker implements one
  bounded brief behind a supervisor-understood contract. Reviewer judges a
  fixed target against governing meaning and Engineering Integrity. Verifier
  tests exact falsifiable claims with current evidence. Oracle provides
  independent supervisor-grade judgment for consequential direction, drift,
  contradiction, or unresolved disagreement.
- **Composition:** Roles are preferred lenses rather than stages or rigid
  jurisdictions. One bounded delegate may cross the Scout–Researcher boundary
  when the question remains coherent. One delegate may combine Review and
  Verification for a small explicit target when independence and evidence
  quality remain sound.
- **Authority:** Scout, Researcher, Reviewer, and Oracle are read-only by
  default. Worker mutates only inside bounded implementation authority.
  Verifier may run checks and create disposable proof artifacts inside explicit
  authority but does not repair product behavior. No role accepts a result,
  grants authority, or owns the human relationship.
- **Role returns:** Every role returns the same semantic minimum and adds only
  its useful payload: ownership and flow for Scout, claims and conflicts for
  Researcher, changes and proof for Worker, findings and coverage for Reviewer,
  claim statuses and evidence for Verifier, and judgment, reasoning, and risks
  for Oracle. This is content guidance rather than a settled serialized
  envelope.
- **Code quality:** Reviewer examines both Specification Fidelity and
  Engineering Integrity. A code-quality finding must explain a concrete
  consequence such as confused ownership, scattered behavior, leaky
  interfaces, incompatible responsibilities, avoidable coupling, or unsafe
  and expensive accepted future change; generic cleanliness and style
  preferences are not findings.
- **Packaging:** Delegate keeps short role-selection guidance in `SKILL.md`.
  All six rich paths live in one skill-local roles reference loaded only for
  the selected path. Roles do not become separate skills.
- **Runtime boundary:** Stable role meaning contains no concrete model IDs,
  tool syntax, universal fork count, or harness-specific prompt mechanics.
  Runtime profiles map capability needs to current models and enforce their
  actual tools, sandbox, context inheritance, skill availability, resumption,
  and isolation. Repository and safety instructions must survive the adapter;
  fresh or bounded-fork context remains an intentional Delegate choice; a
  prompt is not a read-only sandbox; and runtime access never implies
  acceptance authority.
- **Evidence:** 2026-07-29 — the user approved the concrete role interview for
  Scout versus Researcher, Worker, Reviewer versus Verifier, Oracle, mutation
  defaults, shared returns, model abstraction, packaging, and harness variance.
  The user then approved one shared Delegate roles reference and clarified the
  separation between stable role meaning and runtime profiles after examining
  the existing Oracle metadata.
- **Approval:** 2026-07-29 — the user asked for the exact pre-compaction task
  JSONL to be recovered and the accepted role package documented. No native
  Plannotator gate was run because the user explicitly requested that it not be
  opened while communicating remotely in this thread.
- **Refines:** D114.

### D116 — Check Safety is a scoped action-time preflight

- **Status:** Accepted Check Safety skill-design package.
- **Trigger and proportionality:** Trigger from a credible destructive,
  irreversible, production, data-affecting, permission-changing,
  secret-handling, cross-project, infrastructure, or external consequence
  rather than a command name. Scale inspection to the concrete worst-case
  effect; ordinary reversible work receives no ceremonial Safety pass.
- **Targets and state:** Resolve variables, globs, environments, accounts,
  destinations, ownership, current state, and exclusions into one exact
  bounded action. Broad roots, unexpected additional targets, or unresolved
  identity return `stop`.
- **Recovery:** Distinguish genuinely recoverable state from permanent loss.
  Git protects only recorded content, and a backup or snapshot counts only
  when its scope and restoration path match the loss. Irreversible material
  loss requires authority that explicitly accepts it.
- **External effects and secrets:** Local preparation grants no publish, send,
  push, deploy, production, permission, or other external authority. Confirm
  the exact account, target, audience, payload, and side effects. Verify
  secrets through the least revealing mechanism and never spread them through
  prompts, reports, logs, artifacts, backups, or unnecessary delegates.
- **Authority:** Check Safety is not an extra automatic gate and creates no
  authority. A consequential action must be named in the approved Plan and
  covered by precise human Implementation or external authority. When those
  already cover the exact action and current evidence reveals no new
  consequence, return `proceed` without asking again. Plan Approval, vague
  implementation authority, and nearby preparation are insufficient.
- **Safer alternatives:** Recommend dry runs, bounded moves, transactions,
  snapshots, staged rollouts, reduced permissions, or smaller targets when
  useful, but evaluate each mitigation as a real action with its own
  consequences and authority.
- **Result and stopping:** Return `proceed`, `revise`, or `stop` for one exact
  action and current state, including evidence, consequence, recovery,
  authority, assumptions, exclusions, and recommendation. A material change
  invalidates the result. Keep it conversational unless named future work
  needs promoted truth in an owning record, then stop without performing
  adjacent work or external effects.
- **Evidence:** 2026-07-29 — the user approved a concrete-scenario interview
  covering duplicate gates, consequence-based triggering, exact targets,
  recovery, external authority, secret minimization, result invalidation, and
  safer alternatives.
- **Approval:** 2026-07-29 — the user authorized persistence of the coherent
  Check Safety package. No native Plannotator gate was run because the user
  explicitly requested that it remain closed while communicating remotely.
- **Refines:** D032, D050, D092, D107, and D109.

### D117 — Commit records one exact intentional snapshot

- **Status:** Accepted Commit skill-design package.
- **Invocation and scope:** Commit is human-invoked and never follows Delivery
  or Result Acceptance automatically. Resolve the requested intention against
  the current branch, HEAD, staged and unstaged diffs, untracked paths,
  ignored-state implications, and repository conventions. A scoped request
  preserves unrelated work; an explicit “commit everything” request includes
  the complete relevant working tree after safety and intent inspection.
- **Index and cohesion:** Existing staged content grants no inclusion
  authority. Preserve out-of-scope staged, unstaged, untracked, and ignored
  state, returning when an exact commit cannot be constructed without
  disturbing it. One commit represents one independently understandable
  intention and may include implementation, tests, documentation, generated
  output, and dependency changes. Recommend splits for independent intentions
  while honoring an explicit human choice to combine the complete scope.
- **Branch policy:** Inspect actual repository policy and warn or return when a
  direct commit would violate it. Do not automatically create or switch
  branches merely because the current branch is `main` or `master`.
- **Verification:** Inspect the exact staged snapshot for scope,
  completeness, accidental content, conflicts, generated noise, binaries,
  secrets, compatibility, and message support. Use current proportionate
  proof, repeating evidence invalidated by later edits, staging, or hook
  mutation. Disclose failures and meaningful gaps before committing rather
  than encoding an unsupported success claim.
- **Message structure:** Repository convention wins. Otherwise use
  Conventional Commits with an optional stable-component scope, an imperative
  present-tense capitalized subject of at most 70 characters without a period,
  and useful body or footer lines under 100 characters. Default types are
  `feat`, `fix`, `refactor`, `perf`, `test`, `docs`, `build`, `ci`, `chore`,
  and `revert`.
- **Privacy and metadata:** Exclude file narration, unsupported claims,
  verification dumps, agent attribution, invented identifiers, customer or
  organization names, emails, ticket contents, secrets, and PII. Use
  `Refs <issue>` for confirmed related work and `Fixes <issue>` only when the
  commit genuinely completes it under repository convention. Use `!` and
  `BREAKING CHANGE:` only for a real compatibility break. Construct messages
  non-interactively without literal `\n` sequences.
- **Hooks and history:** Run normal hooks, reinspecting and reverifying any
  mutated snapshot. Hook bypass requires explicit authority. Create a new
  commit by default; amend, squash, rebase, reset, or another history rewrite
  requires exact human intent, affected-history and sharing-state inspection,
  recoverability, and proportional Check Safety.
- **Result and stopping:** Inspect the created commit and working tree, then
  report identity, subject, included intention, decisive verification or gap,
  material hook behavior, and remaining state. Commit grants no push,
  pull-request, tag, merge, deployment, cleanup, or continuation authority.
- **Evidence:** 2026-07-29 — the user approved a concrete-scenario interview
  covering dirty-tree intent, existing staging, coherent boundaries, exact
  verification, message meaning, hooks, history rewrite, and stopping, then
  refined message structure after reviewing Sentry's public Commit skill.
- **Approval:** 2026-07-29 — the user authorized persistence of the coherent
  Commit package. No native Plannotator gate was run because the user
  explicitly requested that it remain closed while communicating remotely.
- **Refines:** D032, D050, D067, and D092.

### D118 — Prepare PR represents one exact branch change for review

- **Status:** Accepted Prepare PR skill-design package.
- **Invocation and boundary:** Prepare PR is human-invoked and never follows
  Commit, Delivery, or Result Acceptance automatically. Resolve repository
  policy, remote and account, base and head, upstream state, existing pull
  request, commit range, complete base-to-head diff, and working tree. The pull
  request represents everything the target receives, not the latest commit or
  current working-tree diff. Unexpected bases, unrelated commits, required
  uncommitted changes, or conflicting remote state return before publication.
- **Title and cover note:** Describe the dominant intention and changed
  behavior of the complete diff. Repository convention wins; otherwise use
  Commit's Conventional Commit title form. The body uses the smallest structure
  that helps review: one paragraph for small work, or only the root cause,
  unchanged behavior, non-obvious approach, compatibility, migration, risk,
  breadth rationale, or review order that materially aids judgment. There is no
  mandatory Summary, Changes, or Test Plan template.
- **Reviewer aids and verification:** Add compact before-and-after examples,
  interfaces, Mermaid diagrams, existing visual evidence, rollout or risk
  notes, or review-order guidance only when they reduce reconstruction and
  explain what to notice. Omit routine commands, CI logs, and exhaustive
  checklists; include concise evidence only when it proves a non-obvious
  contract, explains meaningful regression coverage, changes risk, or exposes
  a material gap.
- **Refresh and privacy:** Existing pull requests remain one current cover note,
  not a revision diary. Refresh after material scope, behavior, approach,
  compatibility, risk, migration, verification, or review-expectation changes;
  preserve truthful human context and required metadata, remove stale claims,
  and skip cosmetic churn. Exclude customer or organization names, emails,
  ticket contents, secrets, private payloads, and PII. Use only confirmed issue
  references, with `Fixes` reserved for work genuinely closed by merge.
- **Templates, state, and metadata:** Use repository instructions, required
  template fields, and provider-native interfaces without a Praxis wrapper or
  provider-specific durable command. New pull requests are drafts unless the
  human explicitly requests ready state; existing readiness is preserved.
  Reviewers, assignees, labels, milestones, auto-merge, deployment, and other
  social or release metadata change only through explicit request or existing
  repository automation.
- **Push authority:** An explicit request to create a pull request covers the
  one normal non-force push needed to publish its exact reviewed head after
  confirming repository, remote, account, base, and head. It covers no other
  branch, tag, force, history rewrite, changed commit, or base modification.
  Refreshing title or body alone grants no push. A changed head repeats affected
  inspection and proof; consequential variations require exact authority and
  proportional Check Safety.
- **Result and stopping:** Reread the actual remote pull request and report its
  URL, title, base and head, draft or ready state, represented snapshot,
  decisive verification and gaps, and remaining local or unpublished state.
  Stop before requesting review, merging, enabling auto-merge, tagging,
  releasing, deploying, cleaning branches, changing unrelated metadata, or
  continuing Delivery.
- **Evidence:** 2026-07-29 — the user approved a concrete-scenario interview
  covering the branch boundary, adaptive cover note and title, current-truth
  refresh, reviewer aids, verification, privacy, templates, readiness, social
  metadata, push authority, remote verification, and stopping after reviewing
  Sentry's public PR Writer skill.
- **Approval:** 2026-07-29 — the user authorized persistence of the coherent
  Prepare PR package. No native Plannotator gate was run because the user
  explicitly requested that it remain closed while communicating remotely.
- **Refines:** D032, D050, D067, D092, D107, and D117.

### D119 — Write Docs authors current truth for one real reader job

- **Status:** Accepted Write Docs skill-design package.
- **Trigger and ownership:** Write Docs runs for an explicit documentation
  request or when already-authorized implementation includes documentation
  required by delivered behavior. It identifies the real reader, next action
  or question, starting knowledge, and current owning surface. It updates that
  surface and creates a new document only for a distinct durable need with
  discoverable ownership. Internal implementation movement alone creates no
  documentation obligation.
- **Source and authorship:** Conversation, interviews, approvals, Requirements,
  Issues, Plans, notes, and result evidence are inputs for locating claims, not
  prose structures or present-tense authority. Write Docs verifies current
  source, interfaces, schemas, configuration, tests, generators, and behavior,
  then authors fresh reader-centered prose. Intended-versus-actual mismatch
  returns to the exact owner. Consequential rationale survives only as a
  current constraint, mechanism, and consequence required for correct future
  judgment.
- **Reader path and quality:** Lead with the usable path, exact terminology and
  syntax, representative examples, observable results, and relevant failure
  handling. Progressive disclosure shows the smallest complete honest path
  before variants without hiding prerequisites, safety, or limitations.
  Preserve repository voice and remove generic introductions, repeated
  conclusions, unsupported best practices, marketing filler, and
  agent-process narration.
- **Documentation system:** Reconcile stale, duplicate, and conflicting claims
  across the affected reader path, keep one owning explanation, separate
  current guidance from migrations and history, and preserve unrelated useful
  prose. Inspect navigation, frontmatter, generators, link policy, linting,
  rendering, and builds. Generated or synchronized docs change through their
  authoritative source and native mechanism.
- **Examples, visuals, and privacy:** Use realistic sanitized examples that
  preserve required setup, coherent behavior, and consequential errors. Use
  visuals only when they reduce mental simulation, with a truthful or
  reproducible source, explanation, and accessible text equivalent. Exclude
  private paths, credentials, secrets, personal or customer data, private
  payloads, temporary branches, active task state, and agent coordination.
- **Verification:** Verify prerequisites, authority, order, syntax, expected
  results, choices, limitations, failure recovery, navigation, links,
  generation, and rendering from the reader's stated starting point. Run paths
  and examples when practical; otherwise state the exact material gap. Valid
  isolated snippets do not prove an end-to-end reader journey.
- **Delivery authority:** Required documentation joins Delivery only when the
  approved Plan and Implementation Authority cover its owning surface. If a
  delivered change would make consequential guidance false outside that
  boundary, return the surface and recommend a small Plan revision. Never
  silently broaden authority or accept a knowingly stale result.
- **Paths and packaging:** Keep the complete common method in `SKILL.md`. Load
  one conditional skill-local reference for the selected writing form:
  `task-guidance.md`, `contract-reference.md`, `understanding.md`,
  `operations.md`, or `change-communication.md`. README and contributor docs
  compose those forms from the main skill. References deepen form-specific
  mechanics without duplicating the common procedure or inheriting authority.
- **Return and stopping:** Complete when the intended reader can perform or
  understand the named task from coherent current documentation. Report
  changed surfaces, reader purpose, decisive verification, and gaps. Stop
  before commit, push, pull request, site publication, release, deployment, or
  adjacent documentation.
- **Evidence:** 2026-07-29 — the user approved a concrete-scenario interview
  covering transcript rejection, reader and surface ownership, trigger,
  source authority, action-first writing, rationale, reconciliation,
  verification, governing-record translation, form selection, current versus
  historical guidance, whole-document coherence, generation, privacy,
  stopping, Delivery authority, public-document methods, progressive
  disclosure, reference consistency, examples, visuals, native site
  integration, and five conditional paths.
- **Approval:** 2026-07-29 — the user authorized persistence of the complete
  Write Docs package. No native Plannotator gate was run because the user
  explicitly requested that it remain closed while communicating remotely.
- **Refines:** D032, D050, D067, D092, D107, and D109.

### D120 — Pair keeps literal shared programming inside one approved Plan

- **Status:** Accepted Pair skill-design package.
- **Entry and posture:** Pair is human-invoked only during implementation after
  Plan Approval. Invocation selects shared programming and authorizes
  inspection, explanation, and discussion, but no mutation. Pair does not apply
  to Requirements Discovery, Formalization, planning, general orientation, or
  a missing Delivery boundary.
- **Mutation rhythm:** Divide implementation into coherent decision-sized
  boundaries. Before each mutation, state the relevant observation, exact
  change and surface, reason, meaningful tradeoff, and expected check, then
  wait for ordinary-language permission. Permission covers that change plus
  ordinary formatting and focused verification, never the whole Plan, adjacent
  cleanup, changed behavior, or another consequential action. Return material
  result and evidence before proposing the next boundary.
- **Driver and teaching:** Either the human or agent drives one boundary. The
  agent never competes with human-written code; it observes, explains,
  challenges consequential mistakes, and helps verify. Before important
  changes, teach the current behavior, constraint, mechanism, and meaningful
  alternatives at the human's level, then connect the result to that model
  without narrating routine mechanics.
- **Learning and supporting skills:** Pair may collaboratively refine internal
  implementation while Requirements, Issues, compatibility, Plan targets,
  consequences, exclusions, risk, recovery, and proof remain intact. Changed
  meaning or authority returns to its exact owner. Debug, TDD, Review, Verify,
  Safety, Make Tangible, and read-only delegation retain their procedures, but
  every resulting product mutation returns through Pair.
- **Delegation:** Pair does not delegate implementation. Autonomous Worker
  mutation requires an explicit human choice to suspend Pair for the named
  boundary, followed by review before Pair resumes. Delegation never bypasses
  mutation permission.
- **Authority and revocation:** Conversational closeness never authorizes
  destructive, data, production, secret, permission, cross-project, commit,
  push, pull-request, merge, deployment, or external action; ordinary Plan,
  action authority, and Safety rules remain. Permission is temporary and
  revocable. A stop, redirect, conflicting edit, changed assumption, or
  material discovery stops at the earliest safe point and returns exact partial
  state without inferred completion, rollback, or cleanup.
- **Posture changes and acceptance:** Pair persists until the human explicitly
  ends or suspends it. Approval, tests, or praise for one boundary authorizes no
  later mutation and does not restore autonomy. A switch to autonomous
  implementation names its boundary and remains inside the Plan. Integrated
  Review, Verify, result explanation, and Result Acceptance remain required;
  pair permissions never accept the Plan, Evolution, or Project.
- **Persistence and packaging:** Pair creates no transcript, permission ledger,
  or durable session record. Source, tests, Plan, and native conversation
  carry ordinary detail; lasting learning returns through its owner. Keep the
  complete procedure in `SKILL.md` with no skill-local reference, script,
  driver protocol, or permission record initially.
- **Evidence:** 2026-07-29 — the user approved a concrete-scenario interview
  covering manual entry, permission granularity, human and agent drivers,
  teaching, in-Plan refinement, supporting capabilities, delegation, safety,
  revocation, posture persistence, integrated acceptance, transient
  conversation, decision-sized communication, and packaging.
- **Approval:** 2026-07-29 — the user authorized persistence of the coherent
  Pair package. No native Plannotator gate was run because the user explicitly
  requested that it remain closed while communicating remotely.
- **Refines:** D032, D050, D067, D090, D091, D092, and D107.

### D121 — Orient builds a usable mental model without owning work

- **Status:** Accepted Orient skill-design package.
- **Entry and ownership:** Orient is human-invoked to understand a codebase,
  system, domain, artifact, or current change. It begins from the learning goal
  and demonstrated knowledge, may support any owning loop or end independently,
  and creates no Project, governing record, gate, route, mutation, or forward
  transition.
- **Evidence and teaching:** Inspect authoritative source, interfaces,
  configuration, tests, runtime behavior, history, and external evidence far
  enough to explain actual ownership, control flow, data flow, and boundaries.
  Generic domain knowledge explains observed truth rather than replacing it.
  Distinguish fact, inference, and uncertainty and preserve useful source
  anchors.
- **Progressive model:** Establish purpose, major responsibilities, ownership
  boundaries, and primary flow before zooming into one difficult branch and
  returning it to the whole. Use the lowest-fidelity prose, example, diagram,
  annotated source, walkthrough, demonstration, or question that resolves the
  misunderstanding. File inventories and exhaustive tours are not teaching
  structures.
- **Adaptation and scope:** Calibrate vocabulary and depth from the human's
  language, ask for background only when consequential, teach in short coherent
  units, and use predictions, examples, or restatement when useful. Expand
  adjacent context only when it enables or materially changes the requested
  understanding or exposes a consequential blind spot. Quizzes remain optional
  teaching tools rather than gates.
- **Composition and discoveries:** Research owns a bounded blocked factual
  claim and Make Tangible owns a rich reaction surface; Orient integrates only
  what the mental model needs. Material new truth, contradiction, or uncertainty
  returns with evidence and recommendation to its exact governing owner.
  Orient never revises Requirements, Evolutions, Issues, Plans, docs, gates, or
  route state itself.
- **Authority and persistence:** Orient is read-only with respect to product and
  repository state. It may run safe read-only checks and create disposable
  non-product teaching probes, but it never fixes, refactors, configures,
  documents, commits, publishes, or performs external effects by implication.
  It creates no report, transcript, or durable orientation artifact. A named
  future reader uses Write Docs under separate authority.
- **Completion and packaging:** Complete when the human can reason with the
  subject for the stated purpose, remaining uncertainty is visible, and source
  anchors support deeper inspection. Briefly return the model, unresolved
  questions, and one relevant recommendation, then stop. Keep the full method
  in `SKILL.md` with no local reference, playbook, pattern catalog,
  questionnaire, template, or script initially.
- **Evidence:** 2026-07-29 — the user approved a concrete-scenario interview
  covering entry, knowledge calibration, source grounding, progressive zoom,
  teaching surfaces, understanding checks, discovery returns, scope, Research
  and Make Tangible composition, read-only authority, transient explanation,
  completion, and packaging.
- **Approval:** 2026-07-29 — the user authorized persistence of the coherent
  Orient package. No native Plannotator gate was run because the user
  explicitly requested that it remain closed while communicating remotely.
- **Refines:** D050, D090, D091, D092, and D113.

### D122 — Initiative coordination and durable storage follow actual ownership

- **Status:** Accepted Coordinate Initiative and record-layout correction.
- **Strategic boundary:** Coordinate Initiative is a human-selected optional
  capability once at least two credible independently governable Project
  candidates share one consequential objective, constraints, relationships, or
  learning. It develops shared success conditions, uncertainty, and ordering
  rationale without predefining Project Requirements or owning their
  Formalization, Delivery, gates, or authority.
- **Coordination:** Project dependencies, priority, and recommended order are
  strategic truth rather than execution authority. Cross-Project learning
  revises the Initiative through an explicit semantic diff, identifies affected
  Projects, and recommends the exact owner each should reopen. Completing or
  changing one Project never starts another.
- **Revision and closure:** Routine evidence may update locally. Material
  changes to the objective, success conditions, shared constraints, or Project
  relationships repeat Initiative Alignment. Project gates repeat only when
  that Project's accepted meaning changes. Initiative Closure judges whether
  the strategic objective is satisfied, rejected, or superseded rather than
  treating the original Project list as a checklist. Incoherent Initiatives
  should be split, superseded, or closed.
- **Optional hierarchy:** Praxis may begin with no durable record, a standalone
  Plan, a standalone Issue, a Project, or an Initiative. An already-clear
  implementation outcome may use a Plan without an Issue or Project. Detailed
  specification may use an Issue without a Project. Evolutions remain
  Project-owned, and an Initiative requires multiple Projects.
- **Organization:** The ignored `/.agents/` workspace mirrors current
  human-meaningful ownership. Standalone Projects, Issues, and Plans begin in
  top-level collections. Initiative-owned Projects are nested beneath that
  Initiative; Project-owned Evolutions, Issues, and Plans are nested beneath
  the Project. When accepted ownership changes, the agent moves the complete
  record or bundle and updates links. Stable IDs preserve identity; filesystem
  movement alone grants no authority and triggers no gate.
- **Persistence:** One concise Initiative Brief preserves shared strategic
  truth and links its Projects without duplicating their Requirements,
  specifications, status, Plans, or evidence. Empty placeholder structure is
  prohibited, and completed Plans remain disposable when no future consumer
  needs them.
- **Composition and packaging:** Coordinate Initiative may use Interview,
  Research, Make Tangible, and Design Solution for genuinely shared questions,
  returning Project-local findings to their exact owners. Keep the complete
  common procedure in `SKILL.md` with shared Plannotator, learning-message,
  artifact-lifetime, and Make Tangible patterns; add no local reference,
  template, or script initially.
- **Evidence:** 2026-07-29 — the user approved a concrete-scenario interview
  covering entry, strategic ordering, cross-Project learning, proportional
  re-alignment, objective-based closure, stable versus ownership-based storage,
  standalone Issues and Plans, membership changes, Initiative splitting, and
  shared discovery.
- **Approval:** 2026-07-29 — the user authorized persistence and correction of
  all maintained records and artifacts. No native Plannotator gate was run because the user
  explicitly requested that it remain closed while communicating remotely.
- **Refines:** D002, D010, D011, D012, D014, D023, D025, D028, D031, D050,
  D086, D090, D091, D092, D096, D107, D112, and D116.

### D123 — Security is a reusable evidence discipline with effect-based tool authority

- **Status:** Accepted Security foundation, ownership and reference architecture
  refined by D124; Codex Security integration language is superseded by D181.
- **Capability boundary:** Security is a model-invoked reusable supporting
  discipline, not a Praxis phase or generic Audit wrapper. Requirements
  Discovery, Formalization, Delivery, Review, and Verify may invoke it for a
  meaningful attacker surface or credible security hypothesis. The caller
  retains scope, governing meaning, authority, acceptance, and the next action.
- **Investigation:** Start from the smallest relevant accepted project truth,
  assets, actors, trust boundaries, attacker-controlled inputs, privileges,
  sensitive data, existing controls, and exclusions. Compose vulnerability,
  platform, infrastructure, and tool knowledge around the actual target as it
  becomes useful. Research broadly, trace real data and authority paths, and
  report only candidates supported by reachability, attacker control, bypass,
  consequence, and relevant preconditions. No fixed reference taxonomy defines
  the investigation.
- **Evidence semantics:** Deterministic scanner output, agent hypotheses,
  advisory matches, and suspicious patterns are claims to validate rather than
  findings by source prestige. Confidence is `confirmed`, `strongly supported`,
  or `needs verification`; project-specific severity follows only after enough
  evidence establishes a vulnerability. False positives carry counterevidence,
  unresolved candidates remain separate, and hardening remains distinct from
  defects.
- **Tools and setup:** Use project-native security tooling first, otherwise
  direct official version-pinned disposable containers. There is no Praxis CLI
  wrapper, scanner bundle, or rigid pipeline. Setup may verify Docker for a
  concrete human-chosen need, but it installs no scanner bundle and authorizes
  no scan. Codex Security informed this research but is not a Praxis runtime
  integration under D181.
- **Authority:** Passive local deterministic scans may run proportionately
  under the caller's existing read-only or Delivery authority after the agent
  announces tool, target, purpose, and isolation. Bounded active probes may run
  against an isolated disposable local environment with synthetic data inside
  an accepted Delivery boundary. Paid scans, credential or
  network validation, remote or shared targets, real accounts or data,
  privileged containers, Docker-socket access, persistent configuration,
  mutation, and destructive effects require exact human authority. Docker does
  not reduce the authority required by an operation's effects.
- **Delegation:** Existing Scout, Researcher, Reviewer, Verifier, Oracle, and
  Worker paths compose with Security according to their normal authority.
  Multiple isolated agents are proportional stochastic search when risk,
  breadth, uncertainty, or independence justifies their cost. The supervisor
  retains context, synthesis, confidence, backtracking, gates, and
  human-facing output. No canonical Security role is added until evaluations
  show the composition is inadequate.
- **Return and persistence:** In-authority implementation defects may be
  corrected and re-proved by Delivery; unrelated existing vulnerabilities
  return as recommended separate work; broken governing truth returns to the
  exact causal owner. Security grants no remediation authority or acceptance.
  Raw exploit and scanner detail remains private by default. Preserve only a
  compact receipt for a named future consumer, and persist a revisable threat
  model only when later work will use it.
- **Reporting and stopping:** Report scope, governing expectations, paths,
  tools and probes, high-confidence findings, needs-verification candidates,
  hardening, coverage limits, and the recommended return. “No high-confidence
  vulnerabilities were identified in the reviewed scope” is the strongest
  general clean result. Stop when further tools or agents are unlikely to
  materially increase coverage, confidence, or information.
- **Packaging:** Keep the common target, routing, validation, confidence,
  authority, return, reporting, persistence, and stopping procedure in
  `SKILL.md`. Load built-in and external references progressively when they
  improve the current judgment. Built-in references remain a curated,
  evaluated, non-exhaustive library rather than a language, framework,
  infrastructure, vulnerability, or tool coverage matrix. Every advertised
  reference must exist and be usable.
- **Evidence:** 2026-07-29 — the user approved a concrete-scenario interview
  informed by Codex Security's public surfaces and open-source pipeline,
  Sentry's security-review skill, Semgrep, OSV-Scanner, Trivy, Gitleaks,
  TruffleHog, zizmor, ZAP, OpenSSF Scorecard, disposable Docker execution, and
  multi-agent inference-time search.
- **Approval:** 2026-07-29 — the user authorized persistence of the complete
  coherent Security package. No native Plannotator gate was run because the
  user explicitly requested that it remain closed while communicating
  remotely.
- **Refines:** D090, D091, D092, D096, D101, D102, D105, D106, D108, D114,
  and D118.

### D124 — Security supplies domain judgment while existing Praxis owners retain the work

- **Status:** Accepted Security ownership and progressive-reference correction.
- **Supporting boundary:** Security remains one model-invoked supporting skill
  because attacker modeling, attack-path search, vulnerability knowledge,
  exploitability reasoning, confidence, tool selection, and security-specific
  coverage form a reusable discipline. It owns no Praxis loop, review target,
  proof claim, remediation, result, gate, acceptance, or authority.
- **Caller ownership:** Requirements Discovery owns security unknowns;
  Formalization owns security meaning in Evolutions, Issues, and solution
  choices; Review owns fixed targets, reporting scope, research scope,
  attribution, coverage, and the integrated review result; Verify owns exact
  executable factual claims; Delivery owns remediation and revalidation; and
  the current caller interprets hardening. A direct security-review request
  therefore invokes Review with Security composed into Engineering Integrity.
- **Invocation contexts:** The previously accepted discovery, design
  assessment, code review, candidate validation, remediation, and hardening
  paths are caller contexts rather than a Security-owned lifecycle. Security
  may compose the attacker-focused reasoning needed by one caller's question,
  but does not silently progress through those contexts.
- **Invocation meaning:** The caller communicates its security question,
  target, accepted truth, constraints and exclusions, authority, known
  evidence, and needed decision through conversation or native messaging.
  This entry originally deferred exact transient result fields and
  durable-record relationships. D150 and D182 supersede that deferral: the
  semantic message and record relationship is settled, no common serialized
  envelope is required, and only a concrete harness adapter may later choose
  an encoding.
- **Core loop:** Reconstruct the caller's question and governing truth; model
  relevant assets, actors, trust boundaries, attacker capabilities, and
  security properties; generate and trace plausible attack paths; load useful
  context progressively; seek counterevidence; validate reachability, attacker
  control, bypass, preconditions, and consequence; distinguish confidence from
  severity; return bounded evidence and honest coverage; and stop when more
  search no longer materially improves information.
- **Composition:** Security may inspect current source, advisories, and
  documentation ordinarily. Research owns a consequential blocked external
  fact. Security owns exploitability reasoning, while Verify owns a material
  exact executable claim when explicit falsification adds value. Existing
  Delegate roles provide proportional independent search; no canonical
  Security role is introduced.
- **Progressive references:** The runtime skill remains lean and may load rich
  built-in or external references including security guidance, authoritative
  sources, source code, tests, rubrics, tool documentation, and other
  implementations. Concrete and opinionated examples are allowed. References
  guide model judgment but do not establish a finding through syntax alone.
- **Generality correction:** Sentry's vulnerability, language, infrastructure,
  and tool organization is a useful research input, not Praxis's ontology.
  Built-in references are curated and non-exhaustive; missing coverage triggers
  source-grounded and authoritative research. Praxis claims no language,
  framework, infrastructure, vulnerability, or tool coverage it does not
  provide, requires no fixed directory taxonomy, and creates no
  `code-review.md` that duplicates Review.
- **Evaluation:** Candidate references are implemented incrementally and tested
  against paired vulnerable and close safe or mitigated cases, including
  evidence hidden in surrounding source. Compare the same capable model with
  and without the reference using confirmed-finding recall, false positives,
  useful unresolved hypotheses, evidence quality, honest coverage, and context
  cost. Do not create or retain files to complete a taxonomy.
- **Retained decisions:** Effect-based tool authority, direct native tools,
  disposable-container safety, exact authority for paid external actions,
  confidence versus severity, separation of confirmed findings, unresolved
  hypotheses, and hardening, private raw evidence, exact-owner backtracking,
  non-exhaustive coverage, and diminishing-information stopping remain
  accepted. Codex Security integration is superseded by D181.
- **Evidence:** 2026-07-29 — the user approved a correction interview after
  inspecting Sentry's complete core skill and actual reference tree and
  rereading Anthropic's current context-engineering guidance on model judgment,
  progressive disclosure, lightweight skills, and rich references.
- **Approval:** 2026-07-29 — the user authorized persistence of this coherent
  correction package. No native Plannotator gate was run because the user
  explicitly requested that it remain closed while communicating remotely.
- **Refines:** D099, D100, D101, D102, D108, D113, D114, D118, and D123.

### D125 — Whole-surface review closes the remaining ownership contradictions

- **Status:** Accepted whole-surface correction before runtime implementation.
- **Surface verdict:** The accepted discovery, Formalization, Delivery,
  assurance, supporting, repository, and human-only capabilities own distinct
  questions. The review found no justification for broad merging or deletion.
- **Current model only:** Superseded topology and capability hypotheses no
  longer live in `model/skills.md`. Accepted contracts remain in the maintained
  model; historical reasoning and supersession remain in this decision ledger.
- **Plan entry:** Plan remains a public skill with a rich collaborative
  procedure. A direct human request to plan accepted Issue work or an
  already-clear standalone outcome establishes or resumes the planning portion
  of one Deliver loop. Plan Approval returns and stops; Plan never becomes an
  implementation owner or releases authority.
- **Setup ownership:** Setup is a small human-invoked skill because it has an
  independent trigger, repository and integration procedure, observable
  completion, and no other owner. It keeps offline operation complete, ensures
  ordinary project-local `/.agents/` state is ignored, preserves intentional
  tracked agent source, creates no placeholders, configures only named
  integrations, authorizes no later use, verifies idempotently, and stops.
  Worktree remains shared caller-owned guidance rather than a public skill.
- **Debug authority:** Debug now has a complete accepted current contract beside
  the other Delivery skills. It establishes a red-capable signal, preserves the
  full reproduction, tests falsifiable causal hypotheses, proves the cause,
  corrects only inside current authority, retains honest regression evidence,
  returns changed governing truth, cleans instrumentation, and stops.
- **Delegate returns:** Delegate and its role paths retain a shared semantic
  minimum for useful compact returns. Field names and examples are content
  guidance, not a settled serialized envelope. Exact transient message
  mechanics remain deferred to the plugin-wide message and record workshop.
- **Reference consequence:** Setup owns its future conditional integration
  references. Using Praxis routes explicit setup requests to Setup and exits.
  Other shared and skill-local reference placement remains for the dedicated
  reference-map review.
- **Evidence:** 2026-07-29 — a whole-surface adversarial review inspected all
  accepted skill contracts, all 24 existing human-facing guides, shared
  record, artifact, and control semantics, role paths, invocation policy, and promotion
  criteria. It found five concentrated contradictions and no broad skill
  spaghetti.
- **Approval:** 2026-07-29 — the user authorized correction of every finding.
  No native Plannotator gate was run because the user had explicitly requested
  that it remain closed while communicating remotely.
- **Refines:** D094, D095, D107, D109, D113, D114, and D115.

### D126 — Source-alignment review strengthens steering without adding machinery

- **Status:** Accepted source-alignment correction before runtime
  implementation.
- **Review frame:** Independent reviewers compared the maintained Praxis
  model with the HumanLayer lights-on and advanced-context-engineering work,
  Thariq Shihipar's unknown-finding and HTML reaction-surface work, Matt
  Pocock's skills and subagent practice, and Anthropic's current guidance on
  context, skills, and delegation. Software-factory and lights-off sources
  remained contrast material rather than design authority.
- **Compound gate choice:** One human message may approve a complete record
  and explicitly choose the next collaborative activity. The explicit choice,
  not approval, begins that activity. Approval alone still returns control.
  Implementation remains stricter: Plan Approval stops and a later, separate
  Implementation Authorization is required before product mutation.
- **Honest returns:** Interview, Research, owning loops, and delegated work
  recommend a next step only when evidence supports one. Otherwise they state
  the missing evidence or human judgment instead of manufacturing advice to
  satisfy a return schema.
- **Context continuity:** Before a foreseeable context reset or handoff during
  active Delivery, the agent writes a compact temporary checkpoint only when
  the approved Plan, source, tests, Git, and native messages cannot reconstruct
  the live implementation state. It preserves the intended result, approach,
  verified work, current failure or deviation, last safe point, next bounded
  action, and exact pointers; it is execution memory rather than a permanent
  diary.
- **Early steering inside a Plan:** A Plan asks whether one early touchable
  checkpoint could cheaply expose a wrong consequential direction. When
  justified, the checkpoint is part of the approved implementation approach;
  it is neither an Evolution nor a partial Result Gate. Human reaction that
  preserves the Plan resumes under existing authority, while a material change
  returns to its exact causal owner and repeats the affected gate.
- **Program design made tangible:** Plan and Make Tangible may use a call-flow
  tree, proposed file-tree diff, ownership diagram, or key type and interface
  sketch when prose hides a consequential implementation choice. These are
  reaction surfaces inside existing owners, not a Program Design phase,
  durable record type, or gate.
- **Guide and runtime authority:** The current `model/skills.md` remains
  canonical while runtime skills do not yet exist, and the guides preserve
  human-facing purpose, examples, and rationale. During runtime implementation,
  each owning `SKILL.md` receives the executable procedure before mirrored
  operational detail is removed from its guide. Runtime agents do not load
  human-facing guides as a second instruction layer.
- **Deliberate exclusions:** The review did not add speculative retention of
  every tangible artifact, a universal obligation ledger, a mandatory
  changeability probe, ordinary adaptive recursive subagent orchestration, or
  numeric delegation budgets. Those mechanisms lacked enough value to justify
  their workflow and context cost.
- **Evidence:** 2026-07-29 — three independent source-focused reviews and one
  outside Oracle synthesis were reconciled against the maintained model and
  the user's accepted corrections.
- **Approval:** 2026-07-29 — the user approved the complete correction package.
  No native Plannotator gate was run because the user explicitly requested that
  it remain closed while communicating remotely.
- **Refines:** D125 and the maintained control, Plan, Deliver, Interview,
  Research, Make Tangible, record, artifact, and skill-documentation contracts.

### D127 — Refactor owns substantial pressure work and ast-grep remains a shared instrument

- **Status:** Accepted capability and reference package before runtime
  implementation.
- **Promotion:** Refactor is a model-invoked supporting skill because concrete
  structural pressure has a distinct recurring trigger, substantial
  preservation-first procedure, and useful bounded return across Plan,
  Delivery, Review, TDD, Verify, Pair, and Direct Work. Changeability remains a
  quality contract carried by every owning loop; Refactor does not take ordinary
  structural judgment or authority away from them.
- **Owned question:** Refactor asks, “What concrete structural pressure exists,
  and what is the smallest change that relieves it while preserving accepted
  behavior?” It owns pressure identification, behavior reconstruction, seam
  selection, incremental structural transformation, and preservation proof.
  It owns no Requirements, specification, Plan authority, scope expansion,
  Result Acceptance, or general cleanup campaign.
- **Trigger:** Credible pressure includes duplicated ownership, scattered
  changes, dependency cycles, boundary leakage, excessive branching, no stable
  proof seam, repeated modification friction, or structure blocking accepted
  implementation or proof. Metrics, size, style preference, and “could be
  cleaner” are leads rather than sufficient findings.
- **Preservation:** Before mutation, Refactor reconstructs accepted behavior
  from governing records when present, callers, tests, runtime behavior, and
  current source. It establishes characterization evidence at the narrowest
  stable seam that can detect the threatened behavior. It neither freezes a
  known defect nor guesses through ambiguous behavior; Debug or the causal
  owner settles those cases.
- **Boundary and future pressure:** Refactor chooses the smallest responsible
  ownership, interface, dependency, or data seam. Accepted future work may
  justify preparatory repair when it creates concrete pressure now, but only
  the smallest current seam is built; future behavior and generic platforms
  remain outside. Materially different structural shapes compose Design
  Solution. Governed behavior changes return to Formalization.
- **Authority:** Read-only pressure analysis may run for any caller. Mutation
  requires current Direct Work or approved Plan authority and remains inside
  its targets, behavior, consequences, risk, exclusions, and proof. Internal
  interfaces, ownership, and dependency direction may change within that
  envelope. Public, cross-system, or governed contract changes return to their
  exact owner and gate.
- **Transformation and stopping:** Prefer the smallest reversible sequence,
  separate mechanical movement from semantic restructuring when useful, keep
  characterization evidence green between meaningful steps, and avoid
  combining changes when that obscures causality. Stop when the named pressure
  is relieved, preserved behavior and materially exposed inherited behavior
  pass, the new seam is coherent, and temporary scaffolding is removed or
  explained. Adjacent debt is reported rather than absorbed.
- **Artifact lifetime:** Refactor creates no permanent `refactor.md` by
  default. Plans absorb consequential structural approaches; source, tests,
  Git, temporary notes, and caller results carry execution. A diagram,
  experiment, compatibility aid, or migration artifact persists only for a
  named future consumer.
- **Reference policy:** Add a reference only when a recurring conditional
  branch needs substantial knowledge that improves capable-model judgment.
  Every reference has a concrete open-when reason and one dominant job:
  choosing, performing, diagnosing, exemplifying, looking up, or validating.
  Universal ownership, authority, return, and stopping stay in `SKILL.md`;
  references are not created to complete a taxonomy.
- **Refactor-local direction:** Candidate local references may deepen
  characterization in weakly tested systems, ownership and dependency
  correction, and incremental compatibility or data-shape migration. They are
  implemented only when their recurring procedure and context value are
  validated; ordinary cleanup remains in the main skill.
- **ast-grep role:** ast-grep is an optional direct structural-search and
  rewrite instrument, not a Praxis skill, wrapper, semantic oracle, or required
  dependency. Research, Refactor, Review, Security, and Verify share one
  plugin-wide reference. Searches produce scoped syntactic evidence; they do
  not establish type, symbol, runtime, ownership, data-flow, exploitability, or
  behavioral conclusions alone.
- **Rewrite and rule boundary:** A rewrite requires current mutation authority,
  a reviewed preview, and normal compiler, test, Review, and Verify evidence.
  One-off rules remain temporary. A persistent rule needs a named future
  consumer, repository ownership, supported-language limits, and positive and
  negative tests. A zero-match result proves only the exact scoped syntactic
  claim.
- **AI rule development:** For a complex natural-language query, create the
  smallest positive example, make the simplest rule match it, add nearby
  negative examples, inspect parsed syntax when behavior is surprising, and
  widen to a representative repository scope only after the rule works. Full
  documentation context and an experimental MCP server remain conditional
  fallbacks rather than default Praxis context or infrastructure.
- **Setup:** Setup installs or verifies ast-grep only when the human explicitly
  requests that integration. It uses the native tool directly, creates no
  wrapper, project rules, configuration, or scaffolding unless requested,
  grants no later search or rewrite authority, verifies idempotently, reports,
  and stops. The agent skill, persistent prompting, full documentation corpus,
  and MCP server are separate named integrations rather than consequences of
  installing the CLI.
- **Evidence:** 2026-07-29 — the Sentry Code Simplifier skill, Martin Fowler's
  Refactoring reference, the existing HumanLayer and Telos changeability
  evidence, and ast-grep's official repository, rewrite, rule-test, core,
  configuration, custom-language, AI prompting, agent-skill, full-documentation,
  and experimental MCP resources were reviewed against the maintained Praxis
  model.
- **Approval:** 2026-07-29 — the user approved the full Refactor interview,
  its skill promotion and reference direction, ast-grep's bounded role, Setup
  integration, relevant caller mentions, and one plugin-wide shared reference.
  No native Plannotator gate was run because the user had explicitly requested
  that it remain closed while communicating remotely.
- **Refines:** D108, D109, D110, D125, D126, the skill implementation contract,
  and the maintained changeability, Plan, Delivery, Review, Verify, Security,
  Pair, Setup, and shared-reference contracts.

### D128 — Praxis is a human-steered In-Context Reinforcement Learning harness

- **Status:** Accepted whole-system conceptual refinement.
- **Recorded rule:** Local and global recursion implement a fixed-weight,
  feedback-conditioned learning system. Each owning loop uses relevant context
  to choose a bounded exploration, proposal, or action; observes environmental
  evidence or human reaction; retains consequential learning; and conditions a
  later attempt on that improved context.
- **Owner projection:** Requirements Discovery explores needs and territory;
  Formalization proposes and challenges specifications; Delivery plans,
  implements, and proves bounded results. Research, interviews, reaction
  surfaces, candidate solutions, Evolutions, implementation attempts, reviews,
  tests, security probes, verification, and delegated work are possible
  trajectories or evaluators inside those owners rather than a new phase or
  skill.
- **Feedback and credit:** Praxis keeps feedback multidimensional. Human
  preferences, governing constraints, runtime behavior, tests, tools, reviews,
  and artifact reactions may disagree. Exact-owner backtracking supplies causal
  credit assignment by revising the earliest mistaken governing source and
  propagating only through affected descendants.
- **Memory boundary:** Conversation, native messages, owning records, concrete
  artifacts, source, tests, and Git form contextual memory. Preserve only
  accepted truth, decisive evidence, consequential reactions, causal learning,
  unresolved uncertainty, and current authority that a future judgment needs.
  Do not add scalar reward histories, complete trajectory ledgers, reflection
  diaries, transcripts, or a new durable record type by default.
- **Exploration and stopping:** Repetition without informative feedback or
  retained learning is not ICRL. Choose proportionate competing probes when
  they can expose material uncertainty, then stop when more exploration is
  unlikely to change the owning question.
- **Authority boundary:** Learning, positive evaluation, record approval, or
  a successful trajectory may improve the next recommendation but never
  selects a forward activity, grants mutation authority, or replaces human
  acceptance.
- **Evidence:** 2026-07-29 — a dedicated research agent reviewed Algorithm
  Distillation, RL², LLM-specific ICRL, Reflexion, Self-Refine, Agentic Context
  Engineering, GEPA, and evaluator reward-hacking evidence against the accepted
  Praxis model.
- **Approval:** 2026-07-29 — the user identified ICRL as a whole-system Praxis
  objective and requested the conceptual and documentation correction. No
  native Plannotator gate was run because the user had requested that it remain
  closed while communicating remotely.
- **Refines:** D040, D045, D047, D057, D070, D081, D082, D094, D095, D096,
  D098, D111, D112, D114, D118, D123, D124, and D126.

### D129 — Praxis preserves contextual feedback without reducing it to reward

- **Status:** Accepted shared feedback-and-evaluation contract.
- **Contextual preference:** Human feedback applies to the named candidate,
  behavior, decision, and material context actually experienced. Preserve a
  selected, rejected, mixed, tied, uncertain, or none-of-the-above reaction and
  its reason only when that meaning changes later judgment. One preference is
  neither objective correctness nor a global policy.
- **Signal separation:** Human preference, observed evidence, critique,
  verification, approval, and acceptance remain distinct. When they conflict,
  preserve each material signal, explain its consequence, and return the
  conflict to the earliest owner capable of resolving it. An accepted hard
  constraint may invalidate a candidate; no feedback type silently rewrites
  another.
- **Freshness:** Feedback remains evidence about the exact candidate and
  context evaluated. After a meaningful change, preserve still-applicable
  learning and revalidate only judgments that current source, behavior,
  constraints, environment, model, harness, evidence, or presentation could
  invalidate.
- **Process and outcome:** Verify establishes exact outcome claims. Review
  identifies consequential process, structural, design, and specification
  failures. A successful outcome does not cancel a valid process finding, and
  a sound process does not prove the outcome.
- **Exploration and independence:** Alternatives, probes, and agents earn their
  cost through meaningful contrast, disconfirming evidence, or new
  information. Agreement from shared assumptions is one evidence path, not
  several. Praxis neither samples without expected information gain nor uses
  majority voting to erase material disagreement.
- **Comparison quality:** Comparisons make relevant differences inspectable at
  comparable fidelity when practical and expose differences in polish,
  verbosity, ordering, framing, completeness, realism, and simulation when
  those could bias the reaction. Interpret feedback only at the level the
  surface can support.
- **Proxy resistance:** Praxis never collapses feedback into one reward or
  quality score. Relevant dimensions remain visible and accepted authority,
  specification, security, regression, and concrete changeability constraints
  act as vetoes rather than weighted preferences.
- **Promotion:** Feedback updates the narrowest context that explains it.
  Promote it into a durable Requirement, another governing record, repository
  rule, or skill only when a named future consumer needs it and repeated
  evidence, an explicit human statement, or a clear recurring mechanism
  supports that scope.
- **Learning message:** A native feedback return carries only what the
  receiving owner needs: relevant target or attempt, evaluator context when
  material, observation, interpretation, feedback kind when confusion is
  plausible, decisive evidence, affected and still-valid truth, uncertainty or
  disagreement, exact causal owner, and a recommendation when supported. This
  is a semantic prompt, not a rigid serialized schema, transcript, scorecard,
  reflection diary, or receipt ledger.
- **Evaluator overfitting:** Evidence used to steer an attempt proves only the
  behavior it can detect. When repeated iteration could overfit that surface,
  add proportionate disconfirming, held-out, perturbed, independent, or human
  evidence before accepting a broader claim.
- **Reference placement:** The shared conditional
  `docs/references/feedback-and-evaluation.md` carries detailed comparison,
  evaluator, proxy-resistance, message, and stopping patterns. Core invariants
  remain in the model and eventual runtime skills; ordinary work does not load
  the reference merely because feedback exists.
- **Evidence:** 2026-07-29 — two bounded research agents independently examined
  Nathan Lambert's RLHF Book and decisive primary sources on preference data,
  reward modeling, process and outcome supervision, policy optimization,
  exploration, regularization, evaluator bias, over-optimization, and
  evaluation. The accepted rules were then stress-tested through concrete
  authentication, dashboard, review, delegation, plan, and parser scenarios.
- **Approval:** 2026-07-29 — the user approved every scenario and authorized
  persistence of the coherent feedback package. No native Plannotator gate was
  run because the user had requested that it remain closed while communicating
  remotely.
- **Refines:** D022, D023, D040, D045, D047, D050, D057, D070, D082, D096,
  D098, D100, D102, D109, D111, D112, D114, D118, D123, D126, and D128.

### D130 — Interview preserves the context of human judgment

- **Status:** Accepted Interview feedback refinement.
- **Recommendation timing:** For recognition-based preferences, Interview
  elicits the human's initial reaction before offering its recommendation. For
  choices that require technical evidence or consequences, it explains and
  recommends before asking. Human preference and agent advice remain distinct.
- **Qualified reactions:** Mixed, conditional, tied, uncertain, and possibly
  biased reactions remain qualified. Interview asks one discriminating
  follow-up only when resolving the qualification would materially change the
  caller's record.
- **Promotion scope:** The reason for one answer remains local to its scenario
  by default. Interview tests a proposed general preference with one contrasting
  case only when broader promotion would change later work.
- **Conditional intent:** Before treating answers as contradictory, Interview
  tests whether they apply to different actors, situations, or boundaries. It
  preserves coherent conditional intent rather than forcing one universal
  preference.
- **Changed choice sets:** When new evidence changes feasibility, Interview
  retains the still-valid preference, explains the changed condition, and asks
  the smallest revised question. Changed feasibility does not imply changed
  human intent.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence of the coherent Interview refinement package. No
  native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D022, D023, D082, D096, D099, D128, and D129.

### D131 — Make Tangible produces honest, versioned reaction surfaces

- **Status:** Accepted Make Tangible feedback refinement.
- **Comparison fidelity:** Compared alternatives use comparable fidelity along
  consequential dimensions. Unavoidable differences in polish, realism,
  completeness, or interaction are exposed, and the requested judgment is
  narrowed to what the comparison can support.
- **Exploration and convergence:** When uncertainty concerns the shape of the
  solution, Make Tangible first exposes a few genuinely distinct directions.
  After the human chooses, combines, rejects, or reframes them, it converges.
  Local well-understood questions do not receive artificial alternatives.
- **Reaction export:** The surface exports the smallest structured reaction the
  caller needs, including selections, rejected parts, mixed choices,
  annotations, edited values, and unresolved points when material. It never
  reduces a compositional reaction to one winner.
- **Fidelity boundary:** Make Tangible declares which judgments the surface can
  honestly support. Simulated behavior may inform intended experience without
  becoming evidence that the real system satisfies unobserved properties.
- **Version-aware iteration:** Each iteration foregrounds the meaningful diff
  from the version already judged, carries forward unaffected reactions,
  reopens changed or invalidated judgments, and binds new feedback to the exact
  record version shown.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence of the coherent Make Tangible refinement package.
  No native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D023, D045, D047, D050, D057, D082, D096, D098, D128, and D129.

### D132 — Research tests the boundaries of its own answer

- **Status:** Accepted Research feedback refinement.
- **Disconfirming path:** For consequential or favored claims, Research names
  what would make the answer false and tests the cheapest decisive
  disconfirming path. Trivial facts do not receive ceremonial falsification.
- **Negative evidence:** A negative finding states what surface was inspected
  and why the method should have exposed the behavior. `Not found` remains
  unresolved when material blind spots make the search insensitive.
- **Revised questions:** When feedback changes the claim, territory, or
  consequence, Research explicitly rebinds the question, carries forward only
  still-applicable evidence, and investigates the smallest missing surface.
- **Conflicting evidence:** Research investigates the conditions under which
  strong conflicting observations could both be true. It returns a conditional
  answer when that boundary is found and an explicit unresolved conflict when
  a proportionate probe cannot resolve it.
- **Claim breadth:** Evidence diversity matches claim breadth. A broad empirical
  conclusion receives an independent or perturbed case capable of exposing
  overfitting; a narrow claim may rely on one exact reproduction.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence of the coherent Research refinement package. No
  native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D023, D047, D057, D082, D096, D100, D118, D128, and D129.

### D133 — Design Solution compares candidates without manufacturing confidence

- **Status:** Accepted Design Solution feedback refinement.
- **Shared assumptions:** Design Solution identifies consequential premises
  shared by every candidate and tests them separately. Agreement among
  alternatives does not reduce uncertainty when all depend on the same
  unverified assumption.
- **Constraints and tradeoffs:** Hard Requirements and safety boundaries
  invalidate candidates; they are not weighted against convenience, cost, or
  polish. The comparison never collapses into one quality score.
- **Evidence maturity:** Candidates use the same relevant criteria while
  exposing unequal evidence maturity and uncertainty. When familiarity or
  presentation depth could determine the choice, Design Solution runs the
  smallest discriminating probe.
- **Candidate revision:** A hybrid or materially revised candidate foregrounds
  its change and re-evaluates affected criteria, interfaces, invariants, and
  shared assumptions. It preserves unaffected evidence without inheriting its
  parent candidates' conclusions.
- **Human choice:** A valid non-recommended human selection keeps its local
  rationale and concrete consequences. The agent continues from that choice
  unless a misunderstood consequence or newly discovered governing violation
  requires reconsideration; the selection does not become a global preference.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence of the coherent Design Solution refinement
  package. No native Plannotator gate was run because the user requested that
  it remain closed while communicating remotely.
- **Refines:** D023, D047, D057, D082, D096, D103, D118, D128, D129, and D131.

### D134 — Discover Requirements promotes causally interpreted learning

- **Status:** Accepted Discover Requirements feedback refinement.
- **Causal promotion:** Raw selections, rejections, and probe outcomes remain
  evidence until Discover Requirements interprets what produced the
  observation, what the surface could test, and which Requirement actually
  changed.
- **Evidence-class adaptation:** When a probe provides no discriminating
  feedback, Discovery changes evidence class or safely defers the uncertainty.
  It does not repeat equivalent probes and call repetition learning.
- **Freshness:** Before Requirements Alignment, consequential governing
  findings whose source or material conditions may have changed are
  revalidated. Stable human needs and still-applicable evidence remain intact.
- **Signal separation:** Desired experience, factual feasibility, and hard
  constraints remain distinct. When they conflict, Discovery preserves the
  tension and runs the smallest probe or human discussion capable of finding a
  valid Requirement boundary.
- **Promotion scope:** Discovery promotes the underlying need or constraint at
  the narrowest supported scope, using the reaction as provenance. A literal
  preference becomes governing truth only when the preference itself matters
  later.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and agreed to persistence of the coherent Discover Requirements refinement
  package. No native Plannotator gate was run because the user requested that
  it remain closed while communicating remotely.
- **Refines:** D023, D045, D047, D057, D082, D096, D101, D123, D128, D129,
  D130, D131, and D132.

### D135 — Formalize revises proposals through their governing meaning

- **Status:** Accepted Formalize feedback refinement.
- **Feedback ownership:** Formalize interprets proposal feedback before editing.
  Corrections to the current specification stay local; new or changed human
  truth returns to Requirements Discovery. Only affected descendants are
  revised and re-gated.
- **Semantic coverage:** Governing coverage means coherent outcomes, ownership,
  behavior, exclusions, dependencies, and proof. Requirement mentions and
  completed traceability checklists do not establish a consistent
  specification.
- **Freshness at gates:** Before a Formalization gate, only volatile evidence
  that materially supports the proposed Evolution or Issues is revalidated.
  Stable Requirements and unaffected specification remain intact.
- **Revision integrity:** After a material revision, the affected record is
  checked against governing Requirements and still-valid accepted truth, not
  only the latest feedback. The version diff exposes requested changes and
  unintended semantic loss.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence of the coherent Formalize refinement package. No
  native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D022, D023, D040, D045, D047, D057, D082, D096, D104, D123,
  D128, D129, D132, and D134.

### D136 — Evolve uses learning to change real later judgments

- **Status:** Accepted Evolve feedback refinement.
- **Learning target:** An Evolution names a learning target only when its
  working form can genuinely expose a consequential uncertainty and the
  evidence may change a named later Map judgment. Otherwise the target is
  omitted.
- **Tangible outcome:** Learning value never compensates for a missing coherent
  working form. Uncertainty-only work remains a bounded Research, Design
  Solution, or Make Tangible probe inside its owning loop.
- **Causal routing:** Delivered learning is classified before Map revision.
  Only changed future progression updates the Map; changed Requirements,
  solution commitments, or the completed Evolution return to their exact
  owners.
- **Separate evidence:** Proof of the tangible outcome and evidence for the
  learning target remain distinct. A working form may be delivered while
  learning remains unresolved, but unresolved learning cannot justify future
  Map changes and must be carried, reframed, or tested another way.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and agreed to persistence of the coherent Evolve refinement package. No
  native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D022, D023, D040, D045, D057, D082, D096, D105, D123, D128,
  D129, and D135.

### D137 — Define Issues specifies proof without prescribing its implementation

- **Status:** Accepted Define Issues feedback refinement.
- **Proof altitude:** Required proof names the claim and governing boundary that
  evidence must establish, not a test file, framework, command, or
  implementation seam unless that method is part of the accepted contract.
- **Set-wide revision:** Feedback is interpreted across the complete Issue set.
  A local clarification changes one Issue; a shared interface, invariant,
  state, or semantic dependency change revises every affected Issue and
  foregrounds the cross-Issue semantic diff.
- **Examples and rules:** Concrete examples illustrate governing rules unless
  explicitly declared exhaustive. Required proof covers the accepted
  behavioral boundary rather than merely replaying the supplied fixtures.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and agreed to persistence of the coherent Define Issues refinement package.
  No native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D023, D040, D045, D057, D082, D096, D106, D109, D128, D129,
  D135, and D136.

### D138 — Plan bounds feedback-driven implementation choices

- **Status:** Accepted Plan feedback refinement.
- **Steering and completion:** Plan distinguishes development feedback from
  completion evidence. The same check may serve both when it reaches the
  governing claim; a narrower proxy requires proportionate boundary-level or
  independent completion evidence.
- **Material revision:** Feedback that changes the implementation approach is
  interpreted through the full execution contract. Every affected authority,
  exclusion, risk, integration, recovery, and evidence boundary changes
  together and appears in the semantic diff.
- **Conditional choices:** A Plan may authorize an evidence-driven choice only
  when every allowed branch preserves the same specification and authority
  boundary. It names the discriminating evidence and decision rule; a result
  outside the envelope stops Delivery and returns for Plan revision.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and agreed to persistence of the coherent Plan refinement package. No native
  Plannotator gate was run because the user requested that it remain closed
  while communicating remotely.
- **Refines:** D023, D040, D045, D057, D082, D096, D107, D109, D111, D112,
  D123, D128, D129, and D137.

### D139 — Deliver requires implementation feedback to teach

- **Status:** Accepted Deliver feedback refinement.
- **Informative retries:** Every repeated implementation attempt is conditioned
  on new evidence, a changed hypothesis, a more discriminating probe, or a
  materially different correction. When failure stops teaching, Deliver
  invokes Debug, reframes, or returns instead of repeating equivalent guesses.
- **Process and outcome:** Behavioral proof and engineering critique remain
  separate. Passing checks do not cancel a material Review finding, and sound
  structure does not replace behavioral evidence; every material signal is
  resolved or explicitly returned before Acceptance.
- **Cumulative deviations:** Deliver evaluates deviations individually and
  cumulatively. Several locally permitted choices that together change Plan
  ownership, risk, exclusions, proof, or another accepted meaning require Plan
  revision or causal backtracking.
- **Evaluator failure:** Before product mutation follows failed evidence,
  Deliver determines whether the signal falsifies implementation, a Plan
  assumption, or the evaluator. Evaluator failure changes the evidence path
  and grants no correction authority.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and agreed to persistence of the coherent Deliver refinement package. No
  native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D023, D040, D045, D047, D057, D082, D096, D108, D109, D111,
  D112, D123, D128, D129, and D138.

### D140 — Debug requires a sensitive and informative causal loop

- **Status:** Accepted Debug feedback refinement.
- **Signal sensitivity:** A reproduction must be sensitive to the reported
  mechanism rather than merely display the same visible symptom. A control,
  perturbation, trace, or full reproduction connects the probe to the actual
  failure before it governs diagnosis.
- **Hypothesis updates:** Every decisive probe updates the hypothesis set.
  Evidence that falsifies a causal prediction eliminates that hypothesis within
  the tested conditions; the next probe distinguishes a remaining explanation
  instead of varying a disproved one.
- **Stochastic evidence:** Flaky and performance failures establish a baseline,
  sampling conditions, and minimum observable improvement before correction.
  The conclusion reports measured change and remaining uncertainty rather than
  converting one passing run into proof.
- **Evidence and gate:** 2026-07-29 — the user approved the concrete debugging
  scenarios and authorized persistence of the coherent Debug refinement
  package. No native Plannotator gate was run because the user requested that
  it remain closed while communicating remotely.
- **Refines:** D027, D047, D082, D109, D111, D112, D123, D129, and D139.

### D141 — TDD requires feedback that can disagree honestly

- **Status:** Accepted TDD feedback refinement.
- **Contrasting evidence:** When one example could pass through a materially
  wrong shortcut, TDD adds the smallest contrasting case that distinguishes the
  governing rule from that shortcut. It does not expand every example
  ceremonially.
- **Valid red:** A red test governs implementation only when it reaches the
  intended seam and fails for the targeted behavioral reason. Setup failures,
  unrelated exceptions, and failures at another boundary repair or replace the
  evaluator first.
- **Steering versus completion:** For broad behavior spaces, cases used to
  steer implementation are not automatically complete coverage. TDD
  distinguishes them from the broader claim and requests proportionate
  contract-derived, perturbed, or independent completion evidence.
- **Expectation integrity:** Once a red expectation is validated against
  accepted behavior, it cannot be weakened or rewritten merely to obtain
  green. Evaluator repairs preserve the claim; changed behavior returns through
  causal backtracking.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete TDD
  scenario and authorized persistence of the coherent refinement package. No
  native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D028, D047, D082, D109, D111, D112, D123, D129, D138, and D140.

### D142 — Review requires causal resolution and genuine independence

- **Status:** Accepted Review feedback refinement.
- **Causal resolution:** A material finding bounds its smallest relevant causal
  surface. It is resolved only when the correction removes the demonstrated
  cause across that surface and preserves governing behavior; re-review follows
  the mechanism and predicted consequences rather than only the original line
  or example.
- **Purposeful independence:** A discovery pass receives the fixed target,
  governing truth, and assigned lens without earlier conclusions. An
  adjudication or correction pass receives the exact claim it must evaluate.
  Repeated agreement strengthens evidence only when the passes could genuinely
  disagree.
- **Adaptive review:** A clean result after repeated work with the same reviewer
  proves addressed findings but does not automatically provide independent
  target coverage. Consequential work with material residual uncertainty adds
  a fresh unseeded pass; routine contained work does not pay that cost
  ceremonially.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete Review
  scenario and authorized persistence of the coherent refinement package. No
  native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D029, D047, D082, D109, D111, D112, D123, D129, D139, and D141.

### D143 — Verify fixes the claim and evaluation before observing results

- **Status:** Accepted Verify feedback refinement.
- **Precommitted evaluation:** Consequential quantitative and stochastic claims
  define their workload, environment, sample, aggregation, threshold, and
  invalid-run rules before observing results. Verify reports the full valid
  sample; a justified method revision invalidates the earlier result instead of
  selecting favorable conditions afterward.
- **Claim integrity:** Verify does not narrow, split away, or reinterpret a
  governing claim after inconvenient evidence. It returns the original claim
  as `failed` or `unverified` and sends any required clarification or
  specification change to its exact causal owner.
- **Evidence correlation:** Several checks strengthen confidence only when they
  can expose meaningfully distinct defects or boundaries. Checks sharing a
  mock, oracle, fixture, assumption, or bypass are one correlated evidence path
  for that limitation, regardless of their command or test-layer count.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete Verify
  scenario and authorized persistence of the coherent refinement package. No
  native Plannotator gate was run because the user requested that it remain
  closed while communicating remotely.
- **Refines:** D030, D047, D082, D109, D111, D112, D123, D129, D138, D141,
  and D142.

### D144 — Project Closure composes with complete Result Acceptance

- **Status:** Accepted Project Closure coherence correction.
- **Composed closure:** When a final Plan Result Gate explicitly presents and
  proves both the bounded Plan result and complete Project Outcome, one
  interaction accepts the Plan result and closes the Project. No duplicate
  Project Closure gate is required.
- **Distinct closure:** Use a separate Project Closure interaction when the
  Project is rejected or superseded, or when no Result Gate already judged the
  complete Project Outcome.
- **Authority:** Either form closes only its named result and grants no later
  Project, Plan, Issue, commit, deployment, or other work.
- **Evidence and gate:** 2026-07-29 — the user approved the concrete closure
  scenario and authorized persistence of the coherence package. No native
  Plannotator gate was run because the user requested that it remain closed
  while communicating remotely.
- **Refines:** D023, D040, D045, D057, D082, D096, D105, D108, D109, D111,
  D112, D123, and D128.

### D145 — Records use a minimal envelope while artifacts and messages remain native

- **Status:** Accepted common structured-record envelope.
- **Categories:** Requirements, Evolution Maps, Evolutions, Issues, Plans,
  Briefs, and similar governing documents are records. Make Tangible outputs
  are concrete artifacts. References are supporting inputs. Envelopes are
  native messages between agents and owning loops, not persisted workspace
  objects.
- **Persistence:** A named future consumer may justify promoting necessary
  message facts into the record that owns their meaning. Praxis creates no
  message directory, envelope history, or receipt ledger.
- **Syntax and identity:** Structured records use minimal YAML frontmatter.
  `kind` is universal; `id` appears only for independently referenced or
  movable records; `parent` expresses structural ownership. Owned singleton
  records derive identity from `parent + kind`, and inapplicable fields are
  omitted.
- **Independent projections:** Gate judgment, concern disposition, and mutation
  authority never collapse into one status. Disposition is `open`, `paused`,
  `closed`, or `superseded`; a superseded record links its replacement.
- **Gate projection:** The `gates` mapping is keyed by distinct gate kind so one
  record can preserve several different judgments without conflating them.
  Each entry preserves only its current judgment, declared provisional
  consequence, and last reliably identified accepted Plannotator reference when
  one exists. Material revision returns the affected judgment to pending while
  retaining that reference only as a comparison baseline. Missing or unreliable
  native history triggers the complete-record fallback rather than a custom
  receipt.
- **Authority projection:** Only the current Plan may project implementation
  authority as `awaiting`, `active`, or `exhausted`. The Plan body defines its
  boundary, but only a reliable human instruction or authority-bearing native
  handoff grants it. Header metadata cannot manufacture authority; an
  unverifiable source returns the projection to `awaiting`.
- **Evidence and gate:** 2026-07-29 — the user approved the concrete scenarios
  for category boundaries, YAML representation, conditional identity, separate
  gate/disposition/authority facts, native envelope promotion, version-aware
  gate projection, and resumable authority, then authorized persistence. No
  Plannotator gate was run because the user requested that it remain closed
  while communicating remotely.
- **Refines:** D028, D029, D050, D054, D066, D096, D107, D121, and D129.

### D146 — The Project Brief is the Project's compact navigation and judgment root

- **Status:** Accepted Project Brief record contract.
- **Header:** The Brief uses `kind: project`, a stable lowercase
  workspace-unique `id`, optional Initiative `parent`, a `gates` mapping, and
  Project `disposition`. Its title remains the H1, and it carries no
  implementation authority, timestamps, path metadata, or copied governing
  content.
- **Identity:** Titles and paths may change without changing the Project ID.
  IDs remain short and recognizable rather than timestamped or opaque unless a
  real collision requires otherwise.
- **Gate ownership:** The Project Brief alone owns the Requirements Alignment
  projection for the complete Requirements Discovery bundle. Material
  Requirements change returns that entry to pending. A later Project Closure
  is a separate current entry under `gates`; it never overwrites Requirements
  Alignment or creates a gate history.
- **Body:** `Target Outcome`, `Boundaries and Non-goals`, `Current Position`,
  and `Current Recommendation` are required. `Human Starting Point`, `Current
  System and Domain Model`, `Requirements`, `References and Retained Artifacts`,
  and `Current Uncertainty` use stable names and order but appear only when
  meaningful.
- **Navigation:** Current Position names the current owning question, selected
  route, relevant Evolution, Issues, or Plan, material accepted baseline, and
  next judgment through links and concise context. It does not duplicate
  specification, evidence, Plan state, or activity history.
- **Evidence and gate:** 2026-07-29 — the user approved the concrete scenarios
  for bundle-level gate ownership, current-position navigation, optional stable
  headings, path-independent identity, the minimal Project header, and
  distinct Requirements Alignment and Project Closure projections, then
  authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D023, D028, D029, D054, D066, D082, D096, D105, D111, D123,
  D144, and D145.

### D147 — Requirements are a flat governing record rather than a work ledger

- **Status:** Accepted Requirements record contract.
- **Header:** `requirements.md` is a Project-owned singleton with only
  `kind: requirements` and its Project `parent`. It has no independent ID,
  gates, disposition, authority, or duplicated Requirements Alignment.
- **Entries:** Each accepted Requirement uses `## Rn — <short title>`, required
  Strength and Source lines, and required Need or Constraint, Why It Matters,
  and Implication for Formalization sections. Supporting Finding or Evidence
  and Remaining Uncertainty appear only when meaningful.
- **Identity:** Fluid drafts use descriptive headings. The complete candidate
  receives proposed Project-local IDs before Requirements Alignment so the
  human judges the identified set; approval stabilizes them. Semantic
  refinement keeps an ID, while split, merge, or replacement creates new IDs.
- **Relationships:** Requirements remain a flat set. Ordering and optional
  visual grouping create no semantic hierarchy. Material relationships name
  other Requirement IDs directly; unresolved interaction remains in the
  Unknowns Map.
- **Supersession:** A replaced entry shrinks to a minimal pointer to its
  replacements only while current consumers need it. Native Plannotator
  versions preserve revision detail.
- **No progress ledger:** Requirements carry no implementation percentage,
  progress, or satisfaction status. Evolutions and Issues cite the governing
  Requirements, results update their own owners and Project position, and
  Project Closure judges the complete Outcome. Reverse links remain
  proportional rather than exhaustive.
- **Evidence and gate:** 2026-07-29 — the user approved the concrete scenarios
  for the singleton header, pre-gate proposed IDs, stable required and optional
  entry fields, flat relationships, temporary supersession pointers, and the
  absence of implementation tracking, then authorized persistence. No
  Plannotator gate was run because the user requested that it remain closed
  while communicating remotely.
- **Refines:** D023, D054, D066, D083, D084, D086, D096, D098, D102, D105,
  D123, D130, D134, D145, and D146.

### D148 — The Unknowns Map shows the current inquiry edge rather than a backlog

- **Status:** Accepted Unknowns Map record contract.
- **Header and lifetime:** `unknowns.md` is an optional Project-owned singleton
  with only `kind: unknowns` and its Project `parent`. It has no independent
  ID, gates, disposition, completion percentage, or authority.
- **Body:** Current Understanding, Material Gaps, Tensions, and Blind Areas, and
  Why They May Matter are required. Evidence and Hypotheses and Dependencies
  Between Uncertainties are optional. At least one of Highest-value Next Probe
  or Uncertainty Safe to Carry and Why appears.
- **No ledger:** Unknowns remain descriptive clusters without IDs or statuses.
  They may appear, merge, split, or disappear. Accepted truth moves to its
  owning record, and the Map is redrawn around the remaining edge without a
  resolution history.
- **Inquiry value:** The next probe is the smallest inquiry most capable of
  changing the next consequential judgment, not the easiest question or the
  path that reduces the largest count. Deferred uncertainty names why it is
  safe, its later owner, and the condition that makes it relevant.
- **Evidence links:** The Map links exact Artifacts or References and states
  their contribution, material limitation, and affected uncertainty without
  copying their contents or full reactions.
- **Deletion:** Remove the Map once the Project Brief can navigate the remaining
  uncertainty and durable findings have moved to their owners. Keep no empty
  map, resolved archive, or completion marker; recreate it if substantial
  uncertainty returns.
- **Evidence and gate:** 2026-07-29 — the user approved the concrete scenarios
  for the singleton header, required and conditional headings, non-ledger
  uncertainty, decision-sensitive probes, bounded Artifact and Reference use,
  and deletion, then authorized persistence. No Plannotator gate was run
  because the user requested that it remain closed while communicating
  remotely.
- **Refines:** D023, D054, D066, D083, D084, D086, D096, D098, D102, D123,
  D129, D132, D134, D145, D146, and D147.

### D149 — References are an interpreted current index around native sources

- **Status:** Accepted References index contract.
- **Ownership:** `references.md` is an optional singleton owned by the smallest
  durable Initiative, Project, standalone Issue, or standalone Plan that needs
  it. It uses only `kind: references` and `parent`, with no independent ID,
  gates, disposition, or authority.
- **Entries:** Each descriptively named entry records Source, Version when
  consequential, Why It Matters, What to Inspect, Adopt, Avoid, or Compare, and
  which governing record it Informs. Evidence and Human Reaction and
  Limitations and Uncertainty appear only when useful. Bare bookmark lists and
  manufactured Reference IDs are rejected.
- **Native retention:** Stable material remains at its source with an exact
  version when available. Copy only temporary, unstable, or byte-sensitive
  material into `references/`, preserve provenance, and retain the smallest
  necessary source. Praxis-created outputs remain Artifacts.
- **Sharing:** Store a reused Reference at the smallest durable common owner.
  Descendants state only their local consequence, and ownership broadens only
  after real reuse rather than speculative centralization.
- **Current truth:** Update an interpretation when evidence changes and return
  affected governing truth to its exact owner. Keep older sources only for a
  current purpose; maintain no active/deprecated lifecycle or research history.
  Revalidate consequential volatile sources before dependent judgment.
- **Reaction scope:** Human reaction remains bound to the exact source version
  and behavior judged. Material source changes reopen affected judgment;
  accepted governing preferences move into Requirements.
- **Evidence and gate:** 2026-07-29 — the user approved the concrete scenarios
  for smallest-owner persistence, interpreted entry structure, selective local
  copying, non-duplicative sharing, current interpretation, and version-bound
  human reaction, then authorized persistence. No Plannotator gate was run
  because the user requested that it remain closed while communicating
  remotely.
- **Refines:** D023, D054, D066, D083, D084, D086, D096, D098, D101, D102,
  D123, D130, D131, D132, D134, D145, D146, D147, and D148.

### D150 — Records, artifacts, references, and envelopes are different kinds of context

- **Status:** Accepted terminology and gate correction.
- **Records:** Requirements, Initiative and Project Briefs, Evolution Maps,
  Evolutions, Issues, Implementation Plans, Unknowns Maps, References indexes,
  and similar governing documents are structured records. They preserve
  accepted meaning, current uncertainty, specifications, navigation, or bounded
  authority for later loops.
- **Artifacts:** Artifact is reserved for concrete outputs produced through
  Make Tangible or another bounded probe: prototypes, HTML surfaces, diagrams,
  images, comparisons, demonstrations, experiment harnesses and results, and
  similar things a human or agent can inspect, run, or react to. An artifact is
  evidence and never becomes governing truth merely because it is retained.
- **References and envelopes:** References are supporting inputs interpreted
  for the current work. Envelopes are native messages carrying relevant truth,
  evidence, intent, authority, results, or learning between agents and owning
  loops; they are not another workspace file type by default.
- **Gate language:** A **Record Gate** provisionally judges one complete
  governing record or reliable revision diff. Reaction Review may gather
  contextual feedback on an artifact without converting it into a record or
  authorizing later work. Result Gate remains separate.
- **Canonical model:** The maintained persistence contract is
  `model/records.md`. The former `model/artifacts.md` name and the phrase
  “Artifact Gate” are superseded because both collapsed governing documents
  into the concrete-output category.
- **Evidence and gate:** 2026-07-29 — the user explicitly separated records,
  artifacts, references, and envelopes, approved deferring the detailed Make
  Tangible artifact taxonomy, and approved the terminology correction. No
  Plannotator gate was run because the user requested that it remain closed
  while communicating remotely.
- **Refines:** D000, D028, D050, D051, D054, D071, D083, D084, D086, D096,
  D102, D124, D126, D128, D129, D145, D146, D147, D148, and D149.

### D151 — The Initiative Brief is a strategic coordination record

- **Status:** Accepted Initiative Brief record contract.
- **Envelope:** The Brief uses `kind: initiative`, one stable workspace-wide
  `id`, `gates` for Initiative Alignment and Initiative Closure when each
  judgment exists, and `disposition`. It has no `parent` or implementation
  `authority`.
- **Required body:** Strategic Objective, Success Conditions, Projects and
  Their Relationships, and Current Recommendation are required. Shared
  Constraints and Truth, Priority or Ordering Rationale, Visible Strategic
  Uncertainty, and Material Cross-Project Learning appear only when meaningful.
- **Project entries:** Each entry links its Project Brief and states only its
  contribution and consequential relationships or dependencies. Requirements,
  specifications, Plans, delivery state, and evidence remain with the Project.
- **Shared truth:** The Initiative owns only truth and constraints that
  genuinely govern multiple Projects. Each affected Project translates their
  consequence into its own Requirements.
- **Ordering:** Priority and ordering explain strategic sequencing and
  dependencies without becoming an executable queue. Completing one Project
  starts nothing.
- **Learning and uncertainty:** Promote learning or uncertainty only when it
  can change the strategic objective, success conditions, shared truth,
  Project boundaries, relationships, dependencies, or ordering. Project-local
  meaning stays with its Project. Initiative revision reopens only affected
  Projects.
- **Closure and retention:** Initiative Closure judges the Strategic Objective
  and Success Conditions as satisfied, rejected, or superseded rather than
  counting completed Projects. Keep the closed Brief as concise strategic
  context, link a replacement when superseded, and preserve neither activity
  history nor copied Project records.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  covering the envelope, required and conditional headings, Project entries,
  shared truth, ordering, learning, uncertainty, closure, and retention, then
  authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D023, D028, D045, D047, D054, D066, D083, D084, D088, D092,
  D096, D098, D113, D121, D123, D129, D134, D145, D146, D149, and D150.

### D152 — The Evolution Map specifies current progression without pre-specifying future work

- **Status:** Accepted Evolution Map record contract.
- **Envelope:** `evolutions/map.md` uses `kind: evolution-map`, its Project as
  `parent`, and an Evolution Map Approval projection under `gates`. As a
  Project-owned singleton it has no independent ID, disposition, or
  implementation authority.
- **Body:** Governing Context, Progressive Strategy, Evolution Sequence, and
  Current Recommendation are required. Cross-Evolution Dependencies and
  Uncertainty appears only when meaningful. The Map remains a current strategy
  rather than a sequence-history ledger.
- **Entry boundary:** The Map contains at least two concise Evolutions. Every
  entry states a tangible advancement, deliberate limitations, and why its
  position is useful. Detailed behavior, interfaces, proof, exclusions,
  Issues, and Plans belong only to the selected Evolution and later records.
- **Learning target:** Learning Target is optional and appears only when the
  Evolution is deliberately expected to resolve uncertainty or change a later
  judgment. Tangible advancement remains mandatory.
- **Identity and position:** Every Evolution has one stable descriptive ID
  after Map Approval. `E1`, `E2`, and later labels express current sequence
  position and may change, along with a position-prefixed filename, without
  changing identity. Draft identities and positions remain freely revisable.
- **Learning revision:** Keep accepted Evolutions in the Map as actual Project
  progression while their own records retain specification, proof, and
  acceptance. Delivered learning revises and re-gates only the affected future
  strategy with a semantic diff.
- **Retirement:** When multiple meaningful Evolutions no longer govern
  remaining work, promote the reason and current route into the Project Brief,
  preserve lasting learning with its causal owner, and delete the Map after
  references move. Create no disposition lifecycle or historical archive.
- **Evidence and gate:** 2026-07-29 — the user approved concrete scenarios for
  the singleton envelope, concise future boundary, exact sections, stable
  identity versus position, optional learning target, learning-driven revision,
  and retirement, then authorized persistence. No Plannotator gate was run
  because the user requested that it remain closed while communicating
  remotely.
- **Refines:** D023, D028, D045, D047, D054, D066, D086, D092, D096, D098,
  D107, D123, D129, D136, D145, D146, D147, D150, and D151.

### D153 — The selected Evolution is a high-level advancement and acceptance record

- **Status:** Accepted Evolution record contract.
- **Envelope:** The record uses `kind: evolution`, one stable descriptive `id`,
  its Project as `parent`, `gates` for Evolution Definition Approval and later
  Evolution Acceptance, and `disposition`. It has no implementation authority,
  and its sequence position remains in the Map rather than frontmatter.
- **Required body:** Governing Context and Accepted Truth, Tangible Advancement,
  Included High-Level Behavior, Integration with Existing Project Work,
  Deliberate Limitations, Required Proof, and Current Recommendation are
  required. Learning Target is optional. Accepted Result appears only when the
  integrated working form is presented for acceptance.
- **Specification boundary:** The Evolution defines the complete behavior
  needed to judge one coherent advancement at high level. Detailed flows,
  interfaces, edge cases, failure behavior, acceptance boundaries, and
  dependencies belong to at least one Issue; files, commands, execution order,
  and concrete checks belong to Plans.
- **Honest limitations:** A limitation may defer behavior only when the
  remaining working form is still coherent under the Project Requirements.
  Required behavior cannot be hidden as future work.
- **Governing context:** Link Requirements, current system facts, accepted
  solution choices, evidence, and the Map entry, then state only their
  consequence. New human needs or constraints return to Requirements
  Discovery; high-level solution commitments that define this advancement
  remain in the Evolution.
- **Proof:** Required Proof states integrated observable claims for Evolution
  Acceptance. Issues refine detailed proof, and Plans choose checks and
  commands; the Evolution is not a test script.
- **Accepted result:** At acceptance, record only the actual integrated working
  form, decisive evidence pointers, remaining limitations, and links to
  learning promoted into causal records. Preserve no implementation diary.
- **Identity change:** Revise and re-gate while the tangible advancement keeps
  its identity. A split, merge, or identity change supersedes the old record,
  creates new stable IDs, revises the Map, and repeats only affected gates.
- **Evidence and gate:** 2026-07-29 — the user approved concrete scenarios for
  the envelope, high-level body, honest limitations, governing context,
  integrated proof, accepted-result update, and revision versus supersession,
  then authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D023, D028, D045, D047, D054, D066, D086, D092, D096, D098,
  D107, D123, D129, D136, D144, D145, D146, D147, D150, D151, and D152.

### D154 — Durable records are reader-ready and share one Markdown grammar

- **Status:** Accepted record-wide body contract.
- **Reader:** Every durable record is understandable to a competent future
  reader who did not participate in its originating conversation. Reader-ready
  is an offline authorship standard, not a publication, portability, or remote
  synchronization model.
- **Context:** Bodies use ordinary product, domain, and engineering language.
  They link broader governing truth and state its local consequence without
  copying whole upstream records or requiring Praxis workflow vocabulary.
- **Grammar:** One H1 names the record. Ordered H2 headings carry its semantic
  sections. Repeated entries and useful local subdivisions use H3 headings,
  compact scalar facts use bold labels, and explanation uses prose or lists.
  Kind-specific contracts retain different sections because they serve
  different reader jobs.
- **Optionality:** Omit optional sections with no meaningful content. Do not
  manufacture placeholders, body YAML, unrelated heading schemes, or tables
  merely for superficial uniformity.
- **Normalization:** Existing Initiative, Project, Requirements, Unknowns,
  References, Evolution Map, and Evolution meanings remain accepted. This
  decision normalizes how their approved bodies are expressed rather than
  reopening their semantic contracts.
- **Evidence and gate:** 2026-07-29 — after comparing Brief, Requirements, Map,
  Evolution, and Issue examples, the user approved the common body grammar and
  chose “reader-ready” for the local authorship standard. Remote integration
  remains fully deferred. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D045, D083, D086, D098, D102, D105, D128, D129, D145, D146,
  D147, D148, D149, D151, D152, and D153.

### D155 — An Issue is a reader-ready current engineering specification

- **Status:** Accepted Issue record contract.
- **Envelope:** Every Issue uses `kind: issue`, one stable lowercase
  workspace-unique `id`, an Issue Approval projection under `gates`, and a
  `disposition`; it never projects implementation authority. Its nearest
  governing Evolution or direct Project is `parent`, while a standalone Issue
  omits `parent` and carries enough Context to stand alone.
- **Set judgment:** One Issue Approval interaction judges the complete current
  set and updates the projection on every Issue it judged. Praxis creates no
  Issue Set record to hold that shared judgment.
- **Required body:** The H1 title is followed by a concise observable outcome.
  Context, Requirements, and Acceptance Criteria are required. Out of Scope
  appears when adjacent behavior could reasonably be mistaken as included,
  Dependencies appears for consequential semantic dependencies, and Result
  appears only after accepted Delivery affects the Issue.
- **Context:** Link governing records, source, References, and concrete
  artifacts and explain their local consequence. Preserve enough information
  for independent judgment without copying whole upstream records.
- **Specification detail:** Requirements expands the outcome into governing
  behavior. Interfaces, states and transitions, edge and failure behavior,
  compatibility, and other concerns become descriptive H3 subdivisions only
  when they clarify the current Issue rather than mandatory template fields.
- **Acceptance Criteria:** State observable claims and the boundaries they
  must hold across. Do not prescribe files, commands, frameworks,
  implementation seams, execution order, or task checkboxes unless a mechanism
  is contractual. Examples are illustrative unless explicitly exhaustive.
- **Current result:** Result is one replaceable current summary of proved
  coverage, decisive evidence, and remaining unmet criteria or limitations.
  It never becomes an append-only Plan or verification history, and partial
  accepted coverage does not close the Issue.
- **Revision:** Semantic refinement keeps the ID and repeats affected approval.
  Split, merge, or replacement creates new IDs with only minimal supersession
  context. The Issue remains a specification; Implementation Plans own files,
  commands, execution choices, and mutation authority.
- **Evidence and gate:** 2026-07-29 — the user approved concrete scenarios for
  the reader-ready body, contextual upstream links, flexible specification
  subdivisions, behavioral Acceptance Criteria, conditional exclusions,
  current Result projection, and per-Issue envelope under set-wide approval,
  then authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D023, D045, D054, D066, D079, D080, D086, D096, D105, D107,
  D109, D129, D137, D145, D147, D150, D153, and D154.

### D156 — An Implementation Plan is a reader-ready authority proposal

- **Status:** Accepted Implementation Plan record contract.
- **Envelope:** Every Plan uses `kind: plan`, one stable lowercase
  workspace-unique `id`, Plan Approval and later Result Acceptance when it
  exists under `gates`, an authority projection, and a disposition. A
  Project-owned Plan uses its Project as `parent`; a Plan with no Project omits
  `parent` even when it covers standalone Issues.
- **Coverage:** Context and Coverage links governing records, identifies exact
  Issue portions or the standalone outcome, states the accepted baseline and
  bounded result, and explains local consequences without copying upstream
  specifications. Anything not explicitly covered remains outside proposed
  authority.
- **Required body:** The H1 and opening bounded result are followed by Context
  and Coverage, Proposed Approach, Changes and Sequence, Authority and
  Exclusions, Risks and Recovery, and Verification. Open Implementation Choices
  and a Human Steering Checkpoint appear only when their accepted conditions
  exist. A Plan has no Result section.
- **Approach and steps:** Proposed Approach owns consequential implementation
  design. Changes and Sequence may use numbered coherent implementation,
  integration, and evidence steps, but those steps are neither Tasks nor
  progress records, gates, or separate authority boundaries. Exact files,
  commands, and resources appear only when they materially define authority,
  safety, coordination, recovery, or proof.
- **Authority:** Name affected repositories, components, data, configuration,
  documentation, external systems, permitted mutation kinds, and meaningful
  exclusions. Plan Approval leaves authority `awaiting`; only a separate
  reliable human instruction may make it `active`. Metadata cannot manufacture
  a grant, and unreliable continuity returns the projection to `awaiting`.
- **Risk and choice:** Risks and Recovery describes material failure
  mechanisms, consequences, detection or prevention, safe stopping, and
  recovery without a generic matrix. An open implementation choice names
  allowed options, their common safe boundary, discriminating evidence, and
  decision rule; any branch that changes governing meaning or authority must
  be resolved or returned before Approval.
- **Steering:** A Human Steering Checkpoint identifies the exact human
  question, smallest touchable behavior or artifact, sequence position, and
  implementation choice it may change. It exists only when reaction can still
  improve consequential direction cheaply and creates no additional gate or
  authority boundary.
- **Verification:** Map completion claims and covered Issue Acceptance Criteria
  to proportionate evidence, distinguish steering checks from completion
  evidence, include materially exposed inherited behavior, and state required
  Review or independent assurance without demanding exhaustive test detail
  prematurely.
- **Result and lifetime:** Result Acceptance updates covered Issues and causal
  owners or returns a native standalone result, exhausts authority, and adds no
  Plan Result body or execution history. Retain the Plan only while it governs
  work or a named consumer needs its authority, limitations, or learning.
- **Evidence and gate:** 2026-07-29 — the user approved concrete scenarios for
  the body, coverage, approach and ordered steps, authority boundary,
  verification, safe choices, steering checkpoints, risks and recovery, result
  separation, and envelope, then authorized persistence. No Plannotator gate
  was run because the user requested that it remain closed while communicating
  remotely.
- **Refines:** D006, D023, D033, D035, D037, D045, D046, D050, D054, D058,
  D059, D066, D079, D086, D096, D107, D108, D109, D116, D129, D138, D145,
  D150, D154, and D155.

### D157 — Native artifacts share one judgment and lifetime contract

- **Status:** Accepted common artifact contract.
- **Brief and frame:** Make Tangible receives a semantic caller brief naming
  the owning question, reader, judgment, evidence, fidelity, reaction, and
  relevant authority or retention constraint. Every retained artifact carries
  a visible judgment frame stating its question, reader, truth status,
  material fidelity limits, and sought or preserved reaction.
- **Provenance and fidelity:** Mark sourced fact, inference, proposal,
  simulation, and placeholder content where the distinction changes
  interpretation. Link consequential facts to evidence and state what
  simulations cannot prove. Use the lowest honest fidelity and keep compared
  alternatives consequentially comparable.
- **Verification:** Inspect the artifact through its intended medium and test
  the readability, behavior, provenance, source links, states, and reaction
  export required for its declared judgment. File generation and polish alone
  prove nothing.
- **Versions:** Revise freely before consequential reaction. Freeze the exact
  judged version and create a new visible file or directory version for
  material change. Retain older versions only for named reaction, evidence, or
  comparison consumers; create no manifest or version archive by default.
- **Reaction and return:** Export interactive reaction only when conversation
  cannot preserve it reliably, using a suitable native format rather than a
  universal schema. Return the exact artifact version, supported judgment,
  human reaction, evidence, fidelity limits, implications, and unresolved
  points through one native message for interpretation by the caller.
- **Lifetime and storage:** Artifacts begin disposable. Promote only exact form
  a named future consumer needs, keep the smallest useful judged version, and
  remove it when its meaning has moved to the governing record and its form has
  no consumer. Bundle-level artifacts use their Initiative or Project
  `artifacts/`; Evolution-, Issue-, or Plan-owned artifacts use lazy sidecar
  `artifacts/` directories beside those records.
- **Native boundary:** Artifacts receive no structured-record envelope, stable
  record ID, gate, authority, disposition, or universal metadata manifest.
  Their exact path and visible version identify the output; their owning record
  preserves accepted consequence and relevance.
- **Evidence and gate:** 2026-07-29 — the user approved concrete scenarios for
  the judgment frame, judged versions, reaction export, lifetime, local
  provenance, caller brief, native return, intended-medium verification,
  absence of record metadata, and owner-local storage, then authorized
  persistence. No Plannotator gate was run because the user requested that it
  remain closed while communicating remotely.
- **Refines:** D023, D045, D050, D066, D071, D083, D096, D098, D123, D128,
  D129, D131, D145, D150, D154, D155, and D156.

### D158 — Make Tangible patterns form an open composable judgment set

- **Status:** Accepted Make Tangible pattern refinement.
- **Pattern rule:** Patterns are organized by primary human judgment rather
  than Praxis phase, caller, medium, or recurring use-case label. Add one only
  when it requires meaningfully different fidelity, interaction, reaction
  export, verification, or failure-mode guidance. Otherwise preserve the use
  case as a composition recipe.
- **Current open set:** Explore and Discover, Compare and Choose, Understand
  and Navigate, Experience or Simulate, Elicit and Articulate, Manipulate and
  Export, Inspect and Annotate, Observe and Assess, Teach and Check
  Understanding, Communicate and Align, and Demonstrate and Prove.
- **Composition:** Every artifact names one primary judgment. Supporting
  patterns may be composed when they materially improve that judgment or
  preserve its reaction; the primary pattern governs fidelity, structure, and
  verification. Reference ports, tweakable plans, interactive interviews, and
  change explainers are composition recipes rather than additional patterns.
- **Medium and interaction:** Use the smallest artifact that makes the
  judgment possible. Add interaction only when the human must explore state,
  experience behavior, express a reaction, or export a composed result. Choose
  prose, table, diagram, image, self-contained HTML, or repository-native
  prototype from the required judgment and fidelity. Prefer self-contained
  output when faithful and repository-native work when real dependencies or
  integration boundaries affect the conclusion.
- **Research basis:** The
  [HTML Effectiveness repository](https://github.com/ThariqS/html-effectiveness)
  and its
  [Know your unknowns examples](https://github.com/ThariqS/html-effectiveness/tree/main/unknowns)
  are a worked composition corpus rather than a pattern taxonomy. Their
  sources show exploration, comparison, simulation, elicitation, export,
  teaching, observation, communication, and proof combined according to the
  judgment each surface supports.
- **Evidence and gate:** 2026-07-29 — the user approved concrete scenarios for
  each new or split pattern, the composition rule, primary-pattern ownership,
  minimal interaction, medium selection, and self-contained versus
  repository-native artifacts, then authorized persistence. No Plannotator
  gate was run because the user requested that it remain closed while
  communicating remotely.
- **Refines:** D098, D131, D145, D150, D157.

### D159 — Explore and Discover exposes useful possibility without forced convergence

- **Status:** Accepted focused Make Tangible pattern.
- **Success:** The pattern succeeds when the human gains useful vocabulary,
  criteria, preferences, blind spots, promising directions, rejected
  assumptions, or better questions. It requires neither exhaustive coverage
  nor a ranked winner.
- **Possibility space:** Present a small set of coherent directions that differ
  along consequential dimensions tied to the owning question. Cosmetic
  variants, arbitrary idea counts, and exhaustive dumps do not constitute
  exploration.
- **Reality boundary:** Implementation may be simulated, but representative
  scale, content shape, states, accepted constraints, and other load-bearing
  conditions must remain faithful enough for the requested reaction.
- **Reaction:** Support whole-direction and element-level keep, reject,
  combine, surprise, new-criterion, reframing, and unresolved reactions, with
  free-form response available. Bind exported reaction to the exact directions
  shown without pretending it is a final specification.
- **Verification:** Check meaningful distinctness, representative constraints,
  visible truth status, consequentially comparable fidelity, absence of hidden
  ranking through polish or defaults, intended-medium behavior, and accurate
  export.
- **Reference structure:** The compact selector and essential rules remain in
  Make Tangible. Each pattern receives one focused skill-local reference,
  loaded only after selection; shared artifact and feedback contracts remain
  plugin-wide.
- **Evidence and gate:** 2026-07-29 — the user approved concrete scenarios for
  success, possibility-space quality, fidelity, reaction, bias resistance, and
  focused-reference structure, then authorized persistence. No Plannotator
  gate was run because the user requested that it remain closed while
  communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158.

### D160 — Compare and Choose evaluates credible alternatives without manufacturing agreement

- **Status:** Accepted focused Make Tangible pattern.
- **Entry and result:** Begin when the decision and its consequential criteria
  are understood well enough to evaluate alternatives. A valid result may
  select, combine, reject, defer, or reframe. Missing criteria or false framing
  returns to the owning loop rather than forcing a winner.
- **Candidates:** Compare the smallest credible set of materially distinct
  alternatives, including the incumbent or no-change path when genuinely
  viable. Explain inclusion and disclose consequential exclusions; never use
  strawmen to strengthen a recommendation.
- **Evaluation:** Derive criteria from accepted truth and human preference,
  separate hard constraints from tradeoffs, expose evidence maturity and
  uncertainty, and use scores only when their scale and weighting have
  defensible meaning.
- **Recommendation:** After fair presentation, recommend the best-supported
  option with its rationale, sacrifice, remaining uncertainty, and condition
  that would change the recommendation. When evidence is insufficient,
  recommend the smallest discriminating probe.
- **Reaction and authority:** Preserve selection, combination, rejection,
  deferral, reframing, thresholds, conditions, fallbacks, tradeoffs, and
  unresolved evidence against the exact compared versions. The caller owns
  promotion and its gate; the comparison grants no authority.
- **Verification:** Check candidate credibility, consequential exclusions,
  constraint treatment, comparable conditions and fidelity, visible evidence
  maturity, traceable recommendation reasoning, and accurate qualified
  reaction export.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159.

### D161 — Understand and Navigate builds a question-bounded traceable mental model

- **Status:** Accepted focused Make Tangible pattern.
- **Success:** Build the smallest model that lets the reader answer the owning
  question and move from orientation to decisive evidence. Stop when the
  relevant actors, ownership, relationships, and paths can be located,
  explained, and reasoned about; do not document the whole system.
- **Structure:** Begin with an orienting view, then provide progressive paths
  into ownership, interfaces, states, causal or temporal flow, exceptions,
  terminology, and exact evidence. Stable labels and cross-links preserve
  context between overview and detail.
- **Truth:** Consequential nodes and relationships link to source or carry
  local inference, proposal, simulation, or unknown labels. Current and
  proposed systems remain visibly distinct.
- **Interaction:** Add search, filtering, layers, synchronized views, or other
  navigation only when they reduce memory or search burden. Preserve a legible
  overview and never hide consequential evidence behind undiscoverable
  interaction.
- **Reaction:** Seek correction of ownership, actors, relationships,
  terminology, missing paths, and unsupported inference. Return the confirmed
  model and remaining gaps; compose Teach and Check Understanding only when
  comprehension itself must be tested.
- **Verification:** Check overview-detail consistency, end-to-end paths,
  stable labels and ownership, resolved supporting links, visible truth
  status, important exceptions, and context-preserving intended-medium
  navigation.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159, D160.

### D162 — Experience or Simulate exercises the dimension being judged

- **Status:** Accepted focused Make Tangible pattern.
- **Purpose:** Make consequential behavior, timing, flow, interaction, or
  feasibility perceptible at the lowest honest fidelity. The artifact is not
  production implementation and proves nothing outside its exercised boundary.
- **Reality boundary:** The judged dimension must have sufficient reality.
  Simulate irrelevant surrounding mechanics and label them; when the question
  is feasibility, run a bounded experiment against the actual uncertain
  boundary instead of representing success visually.
- **Coverage:** Include every state and transition that materially affects the
  judgment, including relevant intermediate, failure, rollback, recovery,
  interruption, and boundary behavior. Omit unrelated completeness rather than
  consequential branches.
- **Interaction and reaction:** Expose only controls and causal parameters
  needed to experience the judgment. Preserve exact scenario values with the
  reaction, and keep contextual human feedback distinct from observed
  experimental evidence.
- **Verification:** Exercise every declared state and transition through the
  intended medium; test reset and recovery; expose timing, randomness, and
  simulation; make important scenarios reproducible or record their
  parameters; and keep conclusions within what was actually exercised.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159, D160, D161.

### D163 — Elicit and Articulate preserves contextual human meaning without hidden steering

- **Status:** Accepted focused Make Tangible pattern.
- **Boundary:** Interview owns conversational question selection and
  interpretation. Elicit and Articulate supplies concrete contextual reaction
  when prose is insufficient; it neither replaces the caller nor promotes its
  response into governing truth.
- **Questions:** Ask only questions whose answers materially affect the owning
  judgment, place them beside the relevant behavior or evidence, explain their
  consequence, recommend when supported, and allow mixed, custom, uncertain,
  corrective, deferred, or rejecting responses.
- **Fairness:** Keep recommendations explicit rather than encoding them through
  defaults, polish, wording, or selective costs. Present credible responses
  fairly and distinguish agent recommendation from human expression.
- **Context:** Preserve every material response with its exact artifact
  version, visible state, question, conditions, qualifications, corrections,
  and uncertainty. Do not generalize contextual preference without supporting
  evidence.
- **Dependency and verification:** Reopen dependent questions when their basis
  changes. Verify current-state alignment, supported consequences, fair
  presentation, custom and qualified response paths, recommendation-response
  separation, accurate unresolved state, and context-preserving export.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D099, D131, D145, D150, D157, D158, D159, D160, D161,
  D162.

### D164 — Manipulate and Export produces an explicit bounded proposal rather than applying state

- **Status:** Accepted focused Make Tangible pattern.
- **Purpose and scope:** Use a purpose-built interface when structured editing
  through conversation would be materially harder or less reliable. Expose
  only the source context, fields, operations, and constraints needed for the
  bounded judgment; do not recreate the underlying product or operational
  system.
- **Constraints:** Validate consequential invariants during editing. Block
  genuinely invalid results, explain warnings and dependencies, and never
  repair, expand, reorder, or default a consequential change silently.
- **Export:** Preserve source identity or version, proposed diff, stable
  identities and ordering, qualifications, warnings, unresolved values, and
  the producing artifact version. Include complete resulting state only when
  its consumer needs it. Every export remains proposed and non-mutating.
- **Staleness:** Detect a changed source baseline before final export. Rebase
  without guessing, foreground the semantic diff, and reopen only affected
  reactions rather than overwriting newer state.
- **Verification:** Exercise load, edit, validation, consequential reset,
  stale-baseline handling, and every export path. Round-trip output when
  practical and confirm that identities, ordering, qualifications, warnings,
  unchanged values, and proposed-state labeling survive.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159, D160, D161, D162,
  D163.

### D165 — Inspect and Annotate binds reaction to exact evidence without replacing review

- **Status:** Accepted focused Make Tangible pattern.
- **Boundary:** Organize exact evidence and preserve evidence-bound reaction.
  Review, Research, Debug, a human gate, or another caller still owns findings,
  severity, acceptance, and governing consequence.
- **Anchoring:** Bind every consequential annotation to an exact evidence
  version, stable location or state, relevant target, and enough context to
  interpret it. Changed evidence marks the annotation stale rather than
  silently retargeting it.
- **Status:** Distinguish observed fact, inferred concern, question, correction,
  suggestion, human reaction, caller-supplied finding, dispute, and unresolved
  point. Organization cannot upgrade an annotation beyond its evidence or
  caller-owned judgment.
- **Scope and export:** Keep included, excluded, filtered, stale, and
  unavailable evidence visible. Export material annotations with their exact
  anchors, wording, type, qualification, response, and status. Unannotated
  evidence is not implicitly reviewed, correct, or accepted.
- **Verification:** Check evidence identity and freshness, anchor and excerpt
  accuracy, source links, visible filters and hidden counts,
  context-preserving navigation, explicit stale and unresolved status, and
  round-tripping export.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159, D160, D161, D162,
  D163, D164.

### D166 — Observe and Assess exposes measured state without converting patterns into causes

- **Status:** Accepted focused Make Tangible pattern.
- **Boundary:** Make measured state, change, trends, clusters, and anomalies
  judgeable. Debug, Verify, Review, Research, or another caller owns causal
  diagnosis, correctness, findings, and acceptance.
- **Context:** Show source, collection time, freshness, environment, population
  and denominator, baseline, filters, sampling, aggregation, missing data, and
  limitations wherever they affect interpretation. Never combine contexts
  invisibly.
- **Summary:** Organize around the owning question, preserve absolute values,
  denominators, baselines, uncertainty, and access to underlying evidence, and
  avoid visual emphasis that exaggerates small or weak signals.
- **Interpretation:** Keep observation, derived aggregation, anomaly, causal
  hypothesis, recommended probe, and caller-owned finding distinct. Hypotheses
  show supporting and conflicting evidence rather than inheriting truth from a
  compelling visualization.
- **Verification:** Reconcile summaries with underlying cases; test filters,
  groupings, and drill-down; verify timestamps, populations, baselines, and
  calculations; expose hidden, missing, and stale data; and preserve exact
  query context in export.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159, D160, D161, D162,
  D163, D164, D165.

### D167 — Teach and Check Understanding tests a bounded mental model rather than acceptance

- **Status:** Accepted focused Make Tangible pattern.
- **Scope:** Start from the reader's actual knowledge and one caller-owned
  learning objective. Teach the smallest coherent mental model needed for the
  relevant judgment rather than a complete curriculum.
- **Teaching:** Build from intuitive model to concrete mechanism,
  representative behavior, consequential boundaries and failures, and deeper
  source evidence. The reader should predict and explain behavior rather than
  memorize terms.
- **Check:** Test applied prediction, mechanism, boundaries, and consequences
  from the learning objective. Avoid trivia and tricks; wrong answers explain
  the misconception, return to relevant evidence, and support meaningful
  retry.
- **Meaning:** Passing establishes only demonstrated understanding within the
  tested scope. It proves neither implementation correctness nor acceptance
  and grants no authority. Errors in the teaching model require correction and
  rechecking affected understanding.
- **Verification:** Check every teaching claim against current evidence,
  internal consistency of terminology and examples, question and answer-key
  alignment, useful feedback and retry, absence of answer leakage, and exact
  scope of the resulting comprehension claim.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159, D160, D161, D162,
  D163, D164, D165, D166.

### D168 — Communicate and Align enables informed response without manufacturing consensus

- **Status:** Accepted focused Make Tangible pattern.
- **Purpose:** Help a specific audience form an informed response to a named
  decision, proposal, result, status, or request. Lead with what they need to
  understand and decide while preserving evidence, tradeoffs, uncertainty,
  limitations, disagreement, and the requested response.
- **Audience:** Adapt vocabulary, ordering, examples, depth, navigation, and
  requested response to the reader's starting point and responsibility.
  Governing claims, evidence, limitations, and material tradeoffs remain
  semantically consistent across audience versions.
- **Structure:** Follow the audience's decision path: requested response,
  recommendation or result, direct demonstration or evidence, consequential
  rationale and tradeoffs, limitations and disagreement, then deeper context.
  This is an ordering principle rather than a fixed template.
- **Alignment:** Shared context sufficient for an informed position does not
  require consensus. Preserve support, rejection, conditions, objections,
  ownership, uninformed participants, and unresolved disagreement. Viewing,
  attendance, or silence never implies approval.
- **Verification:** Check current claims and demonstrations, semantic
  consistency across audience versions, accurate response ownership,
  discoverable limitations and disagreement, intended-medium behavior, and
  reaction capture that preserves qualification rather than collapsing it into
  approval.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159, D160, D161, D162,
  D163, D164, D165, D166, D167.

### D169 — Demonstrate and Prove derives bounded proof status from current evidence

- **Status:** Accepted focused Make Tangible pattern.
- **Boundary:** Make a claim-to-evidence case inspectable. Verify, Review,
  Delivery, or another caller owns claim definition, evidence generation,
  correctness judgment, and acceptance. Presentation creates no assurance.
- **Claims:** Decompose broad results into explicit observable claims. For each,
  show scope, governing source, evidence, provenance, limitations, missing or
  stale support, contradiction, and proof status. One demonstration proves no
  adjacent behavior it did not exercise.
- **Evidence:** Identify evidence type, environment, version, freshness, inputs,
  and reproducibility, and state the exact part of the claim it supports.
  Tests, measurements, experiments, inspection, runtime observation,
  demonstrations, and inference retain different strength.
- **Negative proof:** Keep missing, stale, failed, and contradictory evidence
  beside the affected claim. A required unsupported claim remains blocking
  regardless of unrelated successes; aggregate summaries cannot average it
  away.
- **Verification:** Resolve evidence links; verify versions, environments,
  freshness, and reproducibility; derive every proof status from displayed
  evidence; exercise claim-to-evidence navigation; and prevent filters,
  summaries, or manual state from hiding negative proof.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete scenario
  and authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159, D160, D161, D162,
  D163, D164, D165, D166, D167, D168.

### D170 — Make Tangible patterns classify judgment rather than artifact type

- **Status:** Accepted Make Tangible abstraction refinement.
- **Native forms:** Make Tangible may produce one artifact or an artifact set
  that is visual, runnable, audible, measurable, interactive, or inspectable:
  HTML, diagrams, generated media, multi-file prototypes, repository-native
  components, CLIs or TUIs, simulations, experiment harnesses, benchmarks,
  datasets, reports, or another form suited to the judgment.
- **Pattern independence:** Patterns classify the primary human judgment, not
  medium, file shape, technology, or artifact type. Any pattern may use any
  native form, and the same form may serve different patterns depending on why
  it exists. Choose the judgment first, then the fidelity and form.
- **Prototype boundary:** Retain the exact runnable form only while a named
  consumer needs its behavior, evidence, or reaction. Promote learned meaning
  into the owning record. Prototype code becomes product implementation only
  when an accepted Plan or Direct Work boundary adopts it through ordinary
  Delivery authority.
- **Research interpretation:** Thariq Shihipar's HTML work demonstrates one
  powerful carrier for artifact-mediated judgment. Praxis generalizes the
  deeper mechanism rather than treating HTML, visibility, or a single-file
  surface as the system boundary.
- **Evidence and gate:** 2026-07-29 — the user approved the native multi-form
  artifact rule and clarified that paths never imply a specific artifact type,
  then authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D098, D131, D145, D150, D157, D158, D159, D160, D161, D162,
  D163, D164, D165, D166, D167, D168, D169.

### D171 — Security uses an open coverage map and evaluates Authorization first

- **Status:** Accepted Security reference-map and first-candidate design.
- **Coverage map:** Security keeps an open map of distinct reasoning domains:
  Authorization and Access Control; Authentication and Session Security;
  Injection; Deserialization and Object Reconstruction; Protocol and
  Request-Boundary Security; XSS and Unsafe Rendering; CSRF and Cross-Origin
  Request Security; File Handling, Uploads, and Path Security; Cryptography,
  Secrets, and Tokens; Sensitive-Data Protection and Privacy; Memory Safety
  and Unsafe Boundaries; Race Conditions and State Integrity; Resource
  Exhaustion and Denial of Service; External Requests and SSRF; Network and
  Transport Security; Isolation, Sandboxing, and Capability Boundaries; AI,
  Agent, and Tool Security; Business-Logic Abuse and Workflow Invariants;
  Error Handling and Information Disclosure; Logging, Auditability, and
  Security Monitoring; Runtime Configuration and Deployment Hardening; and
  Dependencies, Builds, and Software Supply Chain.
- **Map boundary:** Group domains by shared governing property and proof method,
  not merely language, framework, deployment location, or vulnerability name.
  A domain is a candidate, not a checklist item, promised built-in file, or
  coverage claim. Add another domain only when it requires materially different
  reasoning.
- **Reference admission:** A candidate becomes a built-in reference only when
  mechanism-diverse paired vulnerable and close safe or mitigated cases show
  that it improves the same capable model's discovery, false-positive
  rejection, causal tracing, validation, explanation, or honest coverage
  enough to justify its context cost. Do not create placeholders.
- **Authorization scope:** Authorization asks whether a known actor may perform
  a specific action on a specific resource under current tenant, role,
  ownership, delegation, state, and policy context. Authentication remains
  separate except where identity provenance changes that decision.
- **Authorization method:** Reconstruct the authoritative policy and its
  inputs, then trace actor, action, resource identity, decision, enforcement,
  and consequential effects through alternate transports, bulk operations,
  jobs, caches, internal services, and delegated calls. Prove enforcement at
  the responsible boundary before effects; a nearby condition or missing check
  is only a hypothesis.
- **Time and evidence:** Trace captured, cached, transferred, delegated, and
  revoked authority. Judge required freshness from accepted policy and
  consequence rather than imposing universal revalidation. Confirm a reachable
  path, attacker control, governing property, ineffective or bypassable
  enforcement, and unauthorized consequence through the narrowest safe proof.
- **Candidate evaluation:** Exercise object ownership, function permission,
  tenant isolation, field or data-subset access, role and capability,
  delegation and confused-deputy behavior, lifecycle and revocation, alternate
  paths, and stale decisions across several mechanisms and architectures. No
  fixed case count substitutes for this diversity.
- **Evidence and gate:** 2026-07-29 — the user approved the complete open
  coverage map, the candidate-versus-runtime distinction, and each concrete
  Authorization rule, then authorized this package. No Plannotator gate was run
  because the user requested that it remain closed while communicating
  remotely.
- **Refines:** D123, D124.

### D172 — Authorization reference admission uses a transferable comparative corpus

- **Status:** Accepted Authorization candidate evaluation contract.
- **Corpus:** Combine minimal paired fixtures that isolate one load-bearing
  authorization fact with realistic multi-file cases that require policy
  reconstruction and full enforcement tracing. Seed the corpus with
  tenant-scoped resolution, ownership and indirect object access, role versus
  capability actions, field or data-subset exposure, delegation and confused
  deputy behavior, revocation freshness, alternate and asynchronous paths,
  enforcement ordering, and safe centralized enforcement.
- **Transfer and fairness:** Develop reference examples separately from the
  corpus. Keep model, prompt, tools, context, and repository access identical
  across baseline and reference conditions; hide expected outcomes; and use
  held-out frameworks, naming, control flow, and architectures.
- **Repeated evidence:** Run multiple independent fixed-condition trials and
  choose their eventual count from pilot variance. Preserve individual
  failures and regressions rather than inferring superiority from one run or an
  average alone.
- **Scoring:** Judge ground-truth classification, close-safe rejection, policy
  reconstruction, causal tracing, validation, remediation-boundary accuracy,
  and honest coverage separately. Verbosity, finding count, and unsupported
  confidence earn nothing. Set material-improvement thresholds from pilot
  variance before the held-out run.
- **Admission:** Require repeatable improvement on realistic cases, no material
  regression in classification, false-positive rejection, or policy fidelity,
  and benefit that justifies context cost. Do not collapse these dimensions
  into one score.
- **Tools and environment:** Compare the reference first with identical
  ordinary source-navigation and project-test tools. Evaluate ast-grep
  separately for structural path discovery, then Semgrep only where limited
  flow or pattern analysis could plausibly help. Admit a tool recommendation
  only when it improves discovery or falsification without material noise or
  false confidence. Use fixture-native pinned environments with synthetic data
  for executable cases; create no universal Authorization image.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete corpus,
  scoring, repetition, transfer, admission, tool, and environment scenario,
  then authorized this package. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D123, D124, D171.

### D173 — Runtime implementation begins with one reviewed vertical slice

- **Status:** Implementation order and concrete scenarios remain accepted.
  The executable evaluation strategy was rejected on 2026-07-31 and must not
  be implemented or ported into Praxis.
- **Slice:** Implement `using-praxis`, `discover-requirements`, `interview`,
  `research`, and `make-tangible`; then `formalize`, `design-solution`, and
  `define-issues`; then `deliver`, `plan`, `review`, and `verify`. Each skill
  must be complete for the behavior exercised rather than a placeholder for
  future breadth.
- **Routing contrast:** Discuss one clearly direct bounded request that creates
  no unnecessary Praxis structure and one unfamiliar consequential feature
  that needs Requirements Discovery, Formalization, an approved Plan, separate
  Implementation Authorization, and a Delivery result.
- **Interactive review:** Use concrete multi-turn scenarios. Partition the
  scenario truth by who can know it: user intent and
  preference, repository facts, external facts, experiment-dependent facts,
  and genuinely unsettled choices. Ask the human only for what that human could
  know; use discussion to judge cognitive load, timing, clarity, and
  seamlessness.
- **Method selection:** Give the consequential case one unknown-known best made
  judgeable through a small reaction artifact. Review whether the agent
  recommends Make Tangible proportionately, preserves contextual reaction,
  promotes learned meaning, and keeps prototype code outside product authority.
- **Recursive correction:** Reveal one controlled late Delivery fact that
  invalidates earlier meaning. Require return to the exact causal Requirement
  or Issue, revision and re-gating of only affected meaning and authority, and
  forward propagation without greedy continuation or wholesale restart.
- **Gates:** Use concrete examples to reason about discussion, version diffs,
  approval interpretation, stopping, recommendation, and separate
  Implementation Authorization. Real work uses Plannotator through its native
  interface. Add no wrapper and treat no discussed example as proof of a
  native interaction.
- **Review:** Judge proportional routing, unknown-finding method,
  conversational load, record fidelity, ownership transfer, backtracking,
  authority, implementation and assurance quality, result teaching,
  limitations, context, and cost. An authority breach, silent specification
  change, fabricated approval, or false completion claim is unacceptable.
- **Delegation:** Use suitable bounded discovery and review work through
  Delegate when it improves context or cost without changing accepted meaning
  or authority.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete
  implementation-order, routing, interaction, truth-partition, backtracking,
  Make Tangible, gate, acceptance, and delegation scenario, then authorized
  this package. No Plannotator gate was run because the user requested that it
  remain closed while communicating remotely.
- **Refines:** D091, D098, D099, D100, D102, D104, D105, D106, D107, D108,
  D109, D118, D120, D122, D124, D125.

### D174 — The first runtime slice has six conditional method references

- **Status:** Accepted first-slice reference-design package.
- **Requirements Discovery:** Keep Blind-Spot Discovery and Interpreting
  References as separate conditional references beneath Discover Requirements.
  Blind-Spot Discovery reconstructs the starting point, inspects the territory,
  surfaces only a few consequential omissions, identifies their evidence and
  cheapest resolver, and stops without manufacturing a complete unknowns
  backlog. Interpreting References inspects the highest-fidelity source,
  separates transferable intent from incidental implementation, identifies
  claim-specific authority, preserves source conditions and human
  interpretation separately, and promotes nothing by itself.
- **Research:** Keep one Research skill with three combinable conditional
  references. Investigating Codebases begins from the unresolved fact and
  follows the narrowest evidence trail through entry points, runtime wiring,
  ownership, dependencies, tests, conventions, and relevant history.
  Researching External Evidence begins from the exact claim, prefers current
  primary sources, preserves version and scope, resolves conflict through
  conditions, and qualifies negative searches. Running Empirical Probes states
  competing expectations before execution, builds the smallest discriminating
  disposable experiment, preserves reproducibility, and limits conclusions to
  the tested conditions.
- **Design Solution:** Add Codebase Design as the only Design Solution
  reference required by the first slice. It explains source-backed ownership,
  interfaces, invariants, dependency direction, stable seams, change locality,
  and proof boundaries needed to judge the solution, then stops before
  file-level execution planning. Domain Modeling remains an optional later
  candidate rather than a blocker.
- **Progressive disclosure:** Core ownership, invocation, common procedure,
  synthesis, return, authority, and stopping behavior remain in each owning
  `SKILL.md`. References load only after their method is selected and never
  become workflow owners or mandatory hops.
- **Packaging:** Shared record grammar and native Plannotator gates and
  versioning are already conceptually settled. Package those contracts directly
  during runtime implementation instead of adding redundant reference designs.
- **Evidence and gate:** 2026-07-29 — the user approved each concrete
  Blind-Spot Discovery, Reference interpretation, codebase investigation,
  external evidence, empirical probe, and Codebase Design scenario, then
  authorized this package. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D092, D093, D099, D100, D101, D102, D104, D105, D107, D109,
  D120, D122, D173.

### D175 — Shared foundations use focused references without hiding skill ownership

- **Status:** Accepted first package of the phase-by-phase, skill-by-skill
  capability and reference realignment.
- **Reference admission:** A plugin-wide reference contains one substantial,
  stable semantic or procedure reused by several skills and useful
  independently. Core ownership, authority, invocation, return, and stopping
  remain directly in every relevant `SKILL.md`. Skills compose other skills by
  invocation rather than through a shared reference that re-explains them.
  Load one exact reference for the current question; do not create a monolithic
  Praxis foundation document.
- **Using Praxis:** Keep it as a thin router with no local reference. It loads
  only the shared semantics needed for one routing question, transfers minimum
  context, and exits without becoming a kernel or parent workflow.
- **Plannotator:** Package one shared reference containing interaction
  selection, native commands, declared consequences, structured outcomes,
  accepted-version identification, revision diffs, and minimal durable gate
  messages. Every owner still states its gate, what approval means there, what
  it excludes, and where the skill stops. Praxis adds no wrapper.
- **Learning and Return:** Package one shared semantic reference for native
  envelopes, evidence and provenance, exact causal ownership, minimal return
  content, authority non-transfer, affected-descendant propagation, and
  stopping. It does not impose one serialized host schema or create a message
  store.
- **Records:** Package one navigable shared reference defining records,
  concrete artifacts, interpreted References, and envelopes; common metadata
  and Markdown grammar; storage and movement; and kind-specific bodies. Each
  owning skill retains why and when its record is created or revised and loads
  only the relevant record section.
- **Worktrees:** Package one shared reference for concrete isolation triggers,
  current-checkout inspection, exact base and ownership, user-state
  preservation, safe creation, handoff, integration, cleanup, and
  verification. It is optional, grants no authority, and is loaded only for a
  real collision, rollback, parallel-editor, or experiment risk.
- **Existing shared references:** Artifact Contract and Lifetime, Feedback and
  Evaluation, and Structural Search and Rewrite already satisfy the shared
  reference rule and remain accepted.
- **No Assurance reference:** Review owns engineering and Specification
  judgment, Verify owns falsifiable completion claims, and Delivery owns
  composition and conflict resolution before Result Acceptance. Keep their
  universal interaction rules directly in those skills. Use Feedback and
  Evaluation only when evaluator behavior becomes non-trivial.
- **Evidence and gate:** 2026-07-29 — the user approved the shared-reference
  admission rule and each concrete Using Praxis, Plannotator, Learning and
  Return, Records, Worktree, and Assurance scenario. No Plannotator gate was
  run because the user requested that it remain closed while communicating
  remotely.
- **Next audit boundary:** Continue through Requirements Discovery,
  Formalization, Delivery, then supporting capabilities. For each skill settle
  its exact job, direct core, composed capabilities, conditional references,
  return, stopping, and evaluation before runtime implementation planning.
- **Refines:** D019, D023, D030, D078, D092, D093, D097, D105, D108, D109,
  D110, D126, D127, D128, D134, D149, D150, D173, D174.

### D176 — The Requirements Discovery skill package is complete

- **Status:** Accepted Requirements Discovery package of the phase-by-phase,
  skill-by-skill capability and reference realignment.
- **Discover Requirements:** Keep the complete adaptive inquiry in
  `SKILL.md`: starting-point reconstruction, proportional probe selection,
  live uncertainty, continuous synthesis, convergence, Requirements
  Alignment, authority, return, and stopping. Its only skill-local references
  are Blind-Spot Discovery and Interpreting References. Research, Interview,
  and Make Tangible remain invoked supporting skills and never inherit inquiry
  ownership.
- **Research:** Keep bounded-question framing, evidence synthesis, authority,
  reproducibility, return, and stopping in `SKILL.md`. Conditionally load the
  Codebase Investigation, External Evidence, and Empirical Probe references
  after selecting those evidence methods. Delegate and Make Tangible may
  support the investigation, but the caller retains governing truth and route
  choice.
- **Interview:** Keep its whole adaptive procedure in `SKILL.md`: ask one
  consequential concrete question, recommend when evidence supports a
  direction, avoid anchoring recognition-based reactions, revise the inquiry
  after every answer, and stop when the caller can proceed honestly. Add no
  questionnaire or domain-playbook reference initially. Research supplies
  discoverable facts and Make Tangible supplies concrete reaction surfaces.
- **Make Tangible:** Keep the judgment-first selection method, fidelity and
  medium choice, reaction loop, version-bound export, verification, authority,
  return, and stopping in `SKILL.md`. Its eleven conditional pattern
  references remain accepted because they serve materially different primary
  human judgments. They are open-ended reasoning patterns rather than HTML
  templates, artifact types, Praxis phases, or fixed output categories.
- **Completion boundary:** No additional public capability, local reference,
  mandatory artifact, or phase ceremony is justified for this package. Clear
  work still skips Requirements Discovery, and every supporting result returns
  to its caller for interpretation.
- **Evidence and gate:** 2026-07-29 — the user approved the individual
  `discover-requirements`, `research`, `interview`, and `make-tangible` audits,
  then approved persisting the complete package. No Plannotator gate was run
  because the user requested that it remain closed while communicating
  remotely.
- **Next audit boundary:** Continue with Formalization: `formalize`, `evolve`,
  `define-issues`, and `design-solution`.
- **Refines:** D084, D092, D093, D099, D100, D101, D102, D104, D105, D109,
  D122, D134, D174, D175.

### D177 — The Formalization skill package is complete

- **Status:** Accepted Formalization package of the phase-by-phase,
  skill-by-skill capability and reference realignment.
- **Formalize:** Keep route recommendation, complete translation, coverage,
  return, explanation, and stopping in `SKILL.md`. It composes Evolve, Define
  Issues, and Design Solution without taking over their local questions. Add
  no local reference.
- **Evolve:** Keep the Map and selected Evolution high-level specification,
  their separate collaborative discussions and gates, return, and stopping in
  `SKILL.md`. Its examples teach contextual progression without imposing an
  Evolution taxonomy. Add no local reference.
- **Define Issues:** Keep detailed reader-ready specification, coverage,
  Issue Approval, explanation, return, and stopping in `SKILL.md`. An Issue is
  neither an Implementation Plan nor a task ledger; Issue-to-Plan coverage may
  be many-to-many. Add no local reference.
- **Design Solution core:** Keep ownership, criteria derivation, serious
  alternative generation, consistent comparison, bounded probes,
  recommendation, human judgment, path selection, return, and the
  pre-Implementation-Plan stopping boundary in `SKILL.md`. It creates no
  standalone Decision record or gate.
- **Composable Design Solution paths:** Conditionally load Domain Modeling for
  concepts and invariants; Interaction and Workflow Design for actors,
  sequence, feedback, handoffs, interruption, and recovery; System and
  Codebase Design for responsibility, topology, dependencies, failure
  isolation, locality, and seams; Contract and Integration Design for APIs,
  events, protocols, schemas, compatibility, ordering, idempotency, and error
  semantics; and Transition and Operational Design for coexistence, rollout,
  cutover, reversibility, recovery, validation, visibility, and containment.
  These are composable lenses, not exclusive routes, mandatory steps, public
  skills, or new owners.
- **Path admission:** Add another Design Solution path only when concrete
  scenarios reveal a distinct reusable reasoning procedure and evaluation
  criteria that the five accepted paths cannot express cleanly.
- **Completion boundary:** No additional public capability or local reference
  is justified for Formalization. Clear work still skips unnecessary
  structure, and accepted Issues still return to the human with a Delivery
  recommendation rather than beginning planning automatically.
- **Evidence and gate:** 2026-07-29 — the user approved the individual
  `formalize`, `evolve`, and `define-issues` audits, then approved each
  Design Solution path and their composability. No Plannotator gate was run
  because the user requested that it remain closed while communicating
  remotely.
- **Next audit boundary:** Continue with Delivery.
- **Refines:** D083, D084, D095, D096, D097, D098, D103, D104, D105, D108,
  D109, D133, D174, D175, D176.

### D178 — Delivery is audited through its implementation disciplines

- **Status:** Accepted coherent Delivery subpackage; Review and Verify remain
  the next audit boundary.
- **Deliver:** Keep its complete one-Plan-to-one-result control loop in
  `SKILL.md`. It composes Plan and triggered supporting skills and shared
  references without a Deliver-local reference.
- **Plan:** Its source-grounded collaborative approach, authority precision,
  safe uncertainty, record, gate, return, and stopping remain self-contained.
  No recurring Plan-local path currently justifies another reference.
- **Debug:** Its red-capable reproduction, falsifiable hypothesis loop, causal
  proof, bounded correction, regression evidence, learning return, cleanup,
  and stopping remain self-contained. Feedback and Evaluation loads only for
  genuinely stochastic, evaluator-sensitive, or conflicting evidence.
- **Refactor:** Keep the pressure, preservation, seam, authority,
  transformation, proof, and stopping loop in `SKILL.md`. Conditionally load
  Characterizing Weakly Tested Systems, Ownership and Dependency
  Restructuring, or Compatibility-Preserving Migration. These three paths may
  compose and inherit no caller authority.
- **TDD:** Keep proof-seam selection and the vertical red–green–refactor loop
  in `SKILL.md`. Conditionally load Behavior Examples and Oracles when claims
  or cases require substantial test-design judgment, and Boundary Substitutes
  and Test Doubles when a true system boundary cannot participate faithfully.
  These paths may compose in one cycle.
- **Structural search boundary:** Structural Search and Rewrite remains one
  plugin-wide reference linked only from Setup, Research, Refactor, Review,
  Security, and Verify. It is not generally available to every skill by
  implication, and Using Praxis no longer lists it as router context.
- **Evidence and gate:** 2026-07-29 — the user approved Deliver's no-local-
  reference rule, accepted Plan and Debug without new paths, approved each of
  Refactor's three paths, approved both TDD reference definitions, and
  corrected ast-grep's caller boundary. No Plannotator gate was run because
  the user requested that it remain closed while communicating remotely.
- **Next audit boundary:** Continue with Review, then Verify, before declaring
  the Delivery package complete.
- **Refines:** D108, D110, D111, D112, D127, D133, D175, D177.

### D179 — Review uses four conditional target procedures

- **Status:** Accepted Review capability and reference package; Verify remains
  the next Delivery audit boundary.
- **Core procedure:** Keep target fixation, governing-truth reconstruction,
  evidence-backed finding quality, Specification Fidelity, Engineering
  Integrity, complete and honest coverage, independence, bounded composition,
  correction ownership, return, and stopping in `SKILL.md`.
- **Proposal and record path:** Conditionally load Reviewing Proposals and
  Records for a Project brief, Evolution Map, Evolution, Issue, Plan, or
  another proposed governing record. Judge semantic coverage, coherence,
  assumptions, authority, risk, and credible stage-appropriate proof without
  demanding evidence that cannot yet exist or rewriting the proposal.
- **Code path:** Conditionally load Reviewing Code Changes for an
  implementation, diff, commit, branch, or pull request. Apply Specification
  Fidelity and Engineering Integrity against governing truth and connected
  source; passing tests cannot excuse duplicated ownership, hidden coupling,
  incompatible structure, or another demonstrated harmful mechanism.
- **Result path:** Conditionally load Reviewing Delivered Results for a Result
  claiming bounded Delivery work is complete. Reconcile working form,
  evidence, limitations, learning, unresolved questions, and coverage against
  accepted Issues and Plan authority, distinguishing failed behavior from
  missing proof and incomplete disclosure.
- **External-feedback path:** Conditionally load Triaging External Feedback
  for human comments, agent findings, automated warnings, or other supplied
  feedback. Treat each as an untrusted claim, classify it as confirmed,
  rejected, or unresolved with evidence, and return confirmed learning to its
  exact causal owner without inheriting mutation authority.
- **Composition boundary:** Load only the reference matching the fixed target;
  compose several only for deliberately distinct fixed targets. Add no generic
  consequential-audit reference: Security owns attacker-focused investigation,
  Verify owns executable factual claims, Refactor may reconstruct substantial
  changeability pressure, and other lenses come from the governing domain.
- **Evidence and gate:** 2026-07-30 — the user approved the four-reference
  candidate set, then approved each reference through a concrete scenario,
  recommendation, and rule. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Next audit boundary:** Continue with Verify, then close the Delivery
  package.
- **Refines:** D110, D127, D133, D175, D178.

### D180 — Verify uses three conditional evidence procedures

- **Status:** Accepted Verify capability and reference package; the Delivery
  audit is complete.
- **Core procedure:** Keep governing-claim construction, boundary-matched
  evidence, sensitivity, freshness, exact `verified`, `failed`, and
  `unverified` outcomes, disposable probes, environmental scope, human
  judgment, failure return, and stopping in `SKILL.md`.
- **Quantitative and stochastic path:** Conditionally load Quantitative and
  Stochastic Verification when claims depend on measurement, sampling,
  variability, aggregation, benchmarking, or probabilistic behavior. Fix the
  workload, environment, baseline, sampling, aggregation, threshold,
  uncertainty treatment, and invalid-run rules before observation; report the
  complete valid sample without selecting favorable conditions afterward.
- **Cross-environment path:** Conditionally load Cross-Environment and
  Compatibility Verification when claims span browsers, platforms, runtime or
  dependency versions, configurations, protocols, or compatibility states.
  Derive the smallest meaningful matrix from the governing contract, establish
  material equivalence before sharing evidence, and leave uncovered
  combinations `unverified`.
- **Migration path:** Conditionally load Migration and Data-Integrity
  Verification for schema or data transitions. Derive independent
  before-and-after invariants, exercise representative starting states and
  promised transition behavior, and compose Check Safety before destructive or
  data-affecting proof.
- **Composition boundary:** The three paths may compose when one claim
  genuinely crosses their evidence mechanics. Ordinary test-layer selection
  remains core; human claims compose Make Tangible and Feedback and Evaluation,
  structural claims use Structural Search and Rewrite, and security questions
  compose Security. Add no speculative language- or framework-specific
  references.
- **Reference correction:** Verify composes Check Safety directly for
  consequential probes. Praxis has no shared Assurance or Safety reference.
- **Evidence and gate:** 2026-07-30 — the user approved the complete
  three-reference candidate set, then approved each reference through a
  concrete scenario, recommendation, and rule. No Plannotator gate was run
  because the user requested that it remain closed while communicating
  remotely.
- **Next audit boundary:** Continue with the supporting, optional, and
  repository skills.
- **Refines:** D111, D133, D175, D178, D179.

### D181 — Setup requires Plannotator and keeps every other tool lazy

- **Status:** Accepted complete Setup capability and reference audit.
- **Required minimum:** Base Setup preserves repository state, adds only the
  narrow `/.agents/` ignore rule appropriate to ordinary project-local Praxis
  state, and ensures the native Plannotator command and gate-capable interface
  are operational. It installs or repairs Plannotator through its current
  official method when missing without opening a gate or creating a record.
- **Lazy tools:** Docker, ast-grep, security scanners, project toolchains,
  browsers, databases, and other integrations are configured only for a
  concrete need after the human chooses that recommendation. Their absence
  does not make base Setup incomplete, and configuration never authorizes use.
- **Security tooling:** Setup installs no security scanner bundle. Security
  selects one or more project-native or version-pinned disposable tools
  proportionately at runtime and validates their output as evidence.
- **Codex Security:** Codex Security remains historical research input only. It
  is not a Praxis integration, Setup option, runtime dependency, or recommended
  provider. This supersedes the runtime integration language in D123 and D124.
- **Packaging:** Keep the entire required Setup path, optional-tool selection,
  authority separation, idempotent verification, return, and stopping in
  `SKILL.md`. Setup needs no local reference or script. Plannotator's later
  gate, decision, version, and revision semantics live in the accepted shared
  Plannotator reference.
- **Evidence and gate:** 2026-07-30 — the user approved the
  required-versus-lazy dependency classification, the concrete Setup scenario,
  no-local-reference result, and persistence of the correction. No
  Plannotator gate was run because the user requested that it remain closed
  while communicating remotely.
- **Next audit boundary:** Security's accepted core, open coverage map,
  Authorization candidate, evaluation contract, and tool policy remain
  settled. Continue with the remaining supporting reference audits without
  reopening Security.
- **Refines:** D051, D092, D118, D123, D124, D134, D175.

### D182 — Whole-surface review separates strong contracts from reference gaps

- **Status:** Accepted consistency review and cleanup boundary.
- **Solid contracts:** The core contracts for all twenty-six accepted skills
  are coherent enough to preserve. Requirements Discovery, Formalization,
  Delivery, Setup, Check Safety, Commit, Prepare PR, Pair, Orient, Coordinate
  Initiative, and Using Praxis need no conceptual reconstruction before
  runtime implementation.
- **Objective cleanup:** Delegate and Security retain their accepted semantics,
  but stale claims about a future message workshop are removed. Native messages
  already have a settled semantic contract; only a concrete harness adapter may
  later choose a serialized encoding. Delegate also stops referring to rejected
  shared Assurance and Safety references.
- **Incomplete reference packages:** Write Docs has five accepted conditional
  paths whose individual procedures are not yet authored. Worktree isolation
  has an accepted boundary but lacks the same concrete, scenario-tested shared
  procedure. These are the next scenario-based design questions.
- **Already complete shared semantics:** Plannotator, Learning and Return, and
  Records are fully represented by their canonical model sources. Focused
  runtime references may later compile those semantics; that packaging must not
  be described as missing Praxis design.
- **Security boundary:** Security's core and open coverage map remain settled.
  Authorization and Access Control remains a candidate pending its already
  accepted comparative evaluation rather than another conceptual interview.
- **Evidence and authority:** 2026-07-30 — the user approved the full
  consistency review, then separately authorized the surgical cleanup. No
  Plannotator gate was run because the user requested that it remain closed
  while communicating remotely.
- **Refines:** D119, D123, D124, D150, D175, D181.

### D183 — Worktree isolation preserves checkout state without claiming a sandbox

- **Status:** Accepted complete shared Worktree procedure.
- **Selection:** Inspect the actual checkout, existing worktrees, intended
  mutation surfaces, active editors and processes, rollback needs, and
  experiment risk. Cleanliness alone never decides; isolate only a named
  collision, preservation, rollback, parallel-editor, or experiment risk worth
  the lifecycle cost.
- **Creation and authority:** After explaining the benefit, the caller may
  create a worktree under existing work authority when the exact base, path,
  ownership, destination relationship, and preservation of user state are
  established. Creation grants no product, history, integration, publication,
  or cleanup authority.
- **Identity:** Retain the exact base commit, intended destination, path, branch
  or detached state, active mutating owner, purpose, and lifetime. Follow
  repository conventions; use detached state for a disposable probe when
  appropriate and a descriptive task-scoped branch for durable handoff when
  needed. Never reuse a checked-out branch or silently alter another checkout.
- **Environment and containment:** Reconstruct only the required environment
  through repository-native setup. Worktrees do not reproduce ignored state or
  isolate databases, containers, ports, caches, credentials, services, or
  remote effects. Genuine containment uses separate disposable resources plus
  ordinary authority and Check Safety.
- **Ownership and handoff:** Keep one active mutating owner per worktree.
  Read-only observation may coexist without disturbing checkout or runtime
  state. Handoff carries exact Git and environment state, proof, limitations,
  drift, and the next boundary; it transfers no authority and creates no
  registry or ledger.
- **Drift and integration:** Preserve the starting commit and inspect current
  destination drift before an integration-ready claim. Revalidate material
  overlap and never silently rebase, merge, reset, or rewrite. The completed
  result remains in its worktree until separately authorized commit, copy,
  patch, cherry-pick, merge, push, or other integration.
- **Cleanup:** Routine removal is allowed only for an agent-created worktree
  declared disposable at creation and proven to contain no modified, untracked,
  ignored, unintegrated, unique, or actively used state. Never force removal.
  Every other cleanup requires explicit human direction and proportional Check
  Safety; branch and external-resource cleanup remain separate actions.
- **Evidence and authority:** 2026-07-30 — the user approved each concrete
  scenario covering creation, handoff, cleanup, drift, ownership, selection,
  branch identity, environment parity, and external-state limits, then
  separately authorized persistence. No Plannotator gate was run because the
  user requested that it remain closed while communicating remotely.
- **Refines:** D051, D092, D175, D182.

### D184 — Task Guidance owns one executable reader journey

- **Status:** Accepted complete Task Guidance reference.
- **Forms:** Keep tutorials, setup guides, and how-to guides in one conditional
  reference because all own an executable reader journey. Select among them by
  reader intent and starting knowledge: tutorials teach through one coherent
  outcome, setup guides establish a verified ready state, and how-to guides
  complete one already-understood goal directly.
- **Primary path:** Lead with the smallest complete representative path.
  Introduce a choice only where it changes action or state, keep each branch
  coherent, and reunite branches only at materially equivalent states. Split
  substantially different environments or workflows into linked guides.
- **Evidence and recovery:** Verify the whole journey from its declared
  starting state and expose small observable checkpoints after consequential
  transitions. Keep common local recovery inline; route rare, destructive, or
  operationally complex failures to a linked Operations surface.
- **Re-entry:** Inspect consequential prior state. Prefer repeatable steps, or
  state whether a step creates, merges, replaces, migrates, resets, or destroys
  state together with its safe resume or recovery point.
- **Reference boundary:** Task Guidance owns sequence and representative
  choices. Contract Reference owns exhaustive syntax, defaults, variants,
  compatibility, and constraints. Every value used in the journey remains
  verified against that authoritative contract.
- **Evidence and authority:** 2026-07-30 — the user approved each concrete
  scenario covering form selection, branching, journey verification,
  proportional recovery, re-entry, and reference ownership, then separately
  authorized persistence. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D119, D182, D183.

### D185 — Contract Reference preserves one authoritative versioned interface

- **Status:** Accepted complete Contract Reference procedure.
- **Boundary:** Define one supported interface boundary for one intended
  reader, source of truth, and version or capability range. Within it, cover
  the supported syntax or shape, inputs, outputs, defaults, constraints,
  invariants, side effects, lifecycle, failures, and compatibility needed for
  reliable use; omit internal and unsupported behavior.
- **Source ownership:** Generate machine-derivable signatures, fields,
  defaults, enums, and similar facts from their authoritative source. Author
  only consequential semantics that source cannot express, and never maintain
  conflicting generated and hand-written copies.
- **Navigation:** Organize by the public domain, resource, command,
  configuration namespace, schema, or event family that readers recognize.
  Preserve stable public names, anchors, ordering, and entry shapes, and link
  one owning definition instead of duplicating it.
- **Version truth:** Bind varying behavior to an explicit version, protocol, or
  capability range and state introduction, deprecation, replacement, and
  removal precisely. Change Communication owns migration narrative; Contract
  Reference owns the exact interface available in each documented version.
- **Failures:** Treat contractually meaningful errors as observable behavior,
  including representation, possible partial effects, retry or recovery
  meaning, supported caller response, and conditional variation. Do not
  stabilize incidental internal exceptions.
- **Interface-specific shape:** Apply one semantic standard through
  surface-specific entries for APIs and CLIs, configuration, schemas, and
  events. Omit irrelevant fields rather than forcing an empty universal
  template. Keep examples small and subordinate to the normative contract;
  Task Guidance owns complete executable journeys.
- **Evidence and authority:** 2026-07-30 — the user approved each concrete
  scenario covering boundary completeness, source ownership, navigation,
  version truth, error semantics, and interface-specific shapes, then
  separately authorized persistence. No Plannotator gate was run because the
  user requested that it remain closed while communicating remotely.
- **Refines:** D119, D182, D184.

### D186 — Understanding builds one truthful and testable mental model

- **Status:** Accepted complete Understanding procedure.
- **Learning boundary:** Start from one intended reader, their actual starting
  knowledge, one learning question, and the judgment or prediction the
  explanation must enable. Begin with concrete observable behavior and build
  through the intuitive model, actual mechanism and ownership, representative
  behavior, consequential exceptions, and deeper evidence.
- **Truthful simplification:** Simplify presentation without changing
  governing behavior. Distinguish invariants, the common path, conditional
  variation, and consequential failures before omission would make the reader
  predict the system incorrectly.
- **Form:** Choose prose, diagrams, examples, traces, comparisons, or
  interactive explainers according to the relationship that must become
  understandable. Make Tangible may produce a supporting reaction surface,
  while Write Docs retains the learning goal and durable explanation.
- **Truth status:** Ground consequential claims in current source, observed
  behavior, or accepted contracts. Keep current behavior, intended design,
  history, hypothesis, simulation, and illustrative simplification visibly
  distinct.
- **Stopping:** Include only the prerequisites, mechanism, consequences, and
  exceptions needed to answer the learning question. Stop when the reader can
  explain ownership, trace the mechanism, predict relevant behavior, and find
  adjacent owning documentation.
- **Comprehension:** When misunderstanding would affect a consequential
  decision, implementation, operation, review, or approval, use a small
  prediction, scenario, comparison, or teach-back check. A wrong answer
  identifies which part of the explanation needs revision; routine
  low-consequence documentation requires no forced quiz.
- **Evidence and authority:** 2026-07-30 — the user approved each concrete
  scenario covering the mental-model boundary, truthful simplification,
  medium selection, source and truth labeling, stopping, and proportional
  comprehension checks, then separately authorized persistence. No
  Plannotator gate was run because the user requested that it remain closed
  while communicating remotely.
- **Refines:** D119, D121, D161, D167, D182, D184, D185.

### D187 — Operations guides evidence-bounded action through real system state

- **Status:** Accepted complete Operations procedure.
- **Entry and forms:** Begin from a recognizable condition, current impact,
  supported environment, required access, and defined healthy or recovered
  state. Keep maintenance, deployment, troubleshooting, recovery, and incident
  response as conditional forms inside one reference because they share state
  reconstruction, bounded action, checkpoints, recovery, and stopping
  mechanics.
- **Evidence-led branching:** Reconstruct current state before mutation and
  preserve evidence that an action may erase. Every diagnostic step names what
  to inspect, how to interpret it, and which branch it selects. Unrecognized
  evidence stops and escalates instead of triggering improvised mutation.
- **Action safety:** Make each consequential action's target, environment,
  effect, authority, prerequisites, blast radius, repeatability, recovery
  point, and stopping conditions explicit. Prefer inspection, preview,
  dry-run, containment, and reversible action where useful, and compose Check
  Safety for effects inside its accepted boundary. Documentation grants no
  execution authority.
- **Checkpoints and re-entry:** Confirm meaningful system state after every
  consequential transition. Treat interruption and partial completion as state
  reconstruction: state whether an action is safe to repeat and how to resume,
  roll back, contain, or escalate. Handoffs carry current state and evidence,
  not merely the last attempted step.
- **Verification:** Exercise the complete procedure in the safest
  representative environment, including prerequisites, branch evidence,
  mutations, partial completion, rollback or recovery, and healthy completion.
  Bind varying instructions to the supported system or version and state every
  untested branch or environmental gap; a review date alone is not evidence.
- **Evidence and authority:** 2026-07-30 — the user approved each concrete
  scenario covering operational entry, effect and authority, evidence-led
  branching, verification, re-entry and handoff, and conditional operational
  forms. In this workshop, after objecting to a redundant authorization-word
  exchange, the user directed that approval given to the explicit persistence
  proposal authorize the write. No Plannotator gate was run because the user
  requested that it remain closed while communicating remotely.
- **Refines:** D119, D182, D183, D184, D186.

### D188 — Change Communication explains one verified version transition

- **Status:** Accepted complete Change Communication procedure and complete
  Write Docs conditional-reference set.
- **Reader-visible delta:** Begin with the affected reader, previous supported
  behavior, delivered change, effective version or event, required action, and
  consequence. Include implementation detail only when it changes
  compatibility, risk, migration, operation, or another durable reader
  judgment.
- **Version truth:** Bind each material claim to an explicit baseline and
  destination, including any compatibility window and removal point. Keep
  shipped, rolling out, scheduled, experimental, and proposed changes visibly
  distinct.
- **Actionable transition:** Deprecations identify the exact surface,
  replacement, detection method, lifecycle, deadline, and removal behavior.
  Migrations add supported starting states, transition steps, constraints,
  checkpoints, destination verification, and genuine fallback, rollback, or
  recovery.
- **Inclusion:** Select changes by observable behavior, compatibility,
  security, operations, configuration, performance, data, or required reader
  action rather than implementation effort or diff size. Omit internal churn,
  agent activity, commit chronology, and implementation trivia without durable
  reader consequence.
- **Forms:** Keep changelog entries, release notes, deprecation notices, and
  migration guides as conditional forms inside one reference because they
  share before-and-after truth and audience-impact analysis. Create only the
  forms affected readers need and link them instead of duplicating the change.
- **Verification:** Check baseline, destination, audience impact, lifecycle,
  and transition claims against delivered source, contracts, tests, and
  observable behavior. Exercise migration from each declared starting state
  and state every untested compatibility or rollback gap honestly.
- **Evidence and authority:** 2026-07-30 — the user approved each concrete
  scenario covering reader-visible delta, version truth, actionable
  deprecation and migration, impact-based inclusion, conditional forms, and
  delivered-transition verification, then approved the explicit persistence
  proposal under the workshop's clarified authorization convention. No
  Plannotator gate was run because the user requested that it remain closed
  while communicating remotely.
- **Refines:** D119, D182, D184, D185, D186, D187.

### D189 — Pre-runtime review closes authority, routing, and human-control gaps

- **Status:** Accepted cross-model correction before runtime planning.
- **Human code review:** Every Plan-governed code result exposes its complete
  fixed diff through Plannotator's native human change-review surface before
  Result Acceptance. Explanations and partitioning may aid that judgment but
  never replace the code. Direct Work keeps its proportional path unless
  consequence, repository policy, or the human requires review.
- **Handoff and delegation:** Handoffs, messages, metadata, and delegation
  briefs carry state, evidence, and authority-source pointers but never become
  authority. A receiving main agent independently establishes the still-current
  human instruction and exact governing state. A supervisor may project only a
  bounded subset of its active Plan authority to a Worker while retaining
  ownership; this is supervised delegation rather than transfer.
- **Exact causal owner:** Shared Initiative objectives, success conditions,
  cross-Project constraints, relationships, and ordering return to Coordinate
  Initiative. A Project Outcome or boundary returns to that Project's
  Requirements Discovery. Problem-space human choices remain Requirements;
  solution choices return to their owning Map, Evolution, Issue, or Plan.
- **Authority lifecycle:** Plan authority is active only while the exact
  approved Plan version, accepted ancestors, route, and latest human direction
  remain valid. Material revision makes affected authority non-active and the
  revised Plan returns to `awaiting` after re-gating. Pause, redirect,
  ambiguous source, or dismissed Result Gate also returns it to `awaiting`;
  revocation, replacement, route abandonment, infeasible return, and Result
  Acceptance exhaust it.
- **Two authorization classes:** Ordinary-language authorization of the exact
  Plan releases ordinary reversible in-bound mutation. Destructive, data,
  production, permission, secret, migration, infrastructure, remote, and
  similar consequences require the human instruction to name the exact action,
  target, and effect even when the Plan already describes them.
- **Direct Work boundary:** Direct Work is limited to clear contained ordinary
  reversible local mutation. A Check-Safety-triggering mutation routes through
  a standalone Plan; read-only risk inspection may remain direct.
- **Issue Approval batching:** The complete current Issue set may pass through
  one or more bounded coherent interactions. Every batch names exact Issue IDs
  and presents their complete files; dependencies remain visible, each Issue
  keeps its own projection, and no Issue Set record appears. Planning depends
  only on accepted Issues, and revisions repeat every affected batch.
- **Runtime obligations preserved:** The first Implementation Plan must include
  a per-skill compilation map, native Plannotator lifecycle characterization,
  concrete review scenarios, active-Delivery checkpoint convention,
  causal-learning continuity, a clear Check Safety boundary, and a concrete
  Delegate adapter. It must recognize an Evolve-
  appropriate route and stop honestly while full Evolve implementation remains
  the next expansion.
- **Evidence and authority:** 2026-07-30 — five fresh independent reviewers
  examined one frozen Praxis snapshot through foundational alignment,
  system coherence, human experience, skill/context architecture, and runtime
  implementability. An independent Oracle adjudicated the combined findings;
  the main agent verified the accepted failure mechanisms against current
  source, and the user authorized correction. No Plannotator command or UI was
  run because the user requested that it remain closed while communicating
  remotely; native batching and lifecycle binding remain runtime
  characterization work.
- **Refines:** D065, D091, D092, D099, D104, D105, D107, D124, D173, D182.

### D190 — Plannotator is one explicit shared interaction skill

- **Status:** Accepted after a concrete Plannotator use-case and command-surface
  interview.
- **Skill ownership:** Plannotator is a shared model-invoked skill rather than
  a passive plugin-wide reference. It owns the native interaction, returned
  judgment, and focused interaction references; the caller retains its
  question, record, artifact, diff, result, transition, authority, and stopping.
- **Core uses:** The skill supports Reaction Review, provisional Record and
  Result Gates, native human code review, optional bundled interview surfaces,
  and Review Learning. `plannotator last` remains conversational reaction and
  never gates a governing record or result.
- **Artifact boundary:** Make Tangible owns artifact judgment, form, fidelity,
  construction, and intended-medium verification. Plannotator presents the
  artifact only when its supported surface is faithful. Mutable URLs remain
  Reaction Review targets; governing gates require stable records or captured
  snapshots.
- **Exact judgment:** Approval binds the complete record, named coherent folder
  collection, fixed code diff, or durable result explanation shown. Approval
  notes are interpreted by meaning: non-blocking guidance may travel forward,
  while governing changes require revision and another gate. Any implementation
  change after human review repeats code review; evidence-only updates do not
  when the diff is unchanged.
- **Messages and persistence:** Feedback is an incoming message to the owning
  loop, not a separate record. Native Plannotator history preserves revisions;
  Praxis stores only a current gate projection and reliable native reference
  when a future loop needs them. It creates no feedback ledger, hashes, receipt
  graph, or duplicate decision JSON.
- **Bundled UI primitives:** `setup-goal interview` may present a small bundle
  of independent, well-grounded questions, while dependent consequential
  questions stay in adaptive one-at-a-time Interview. `setup-goal facts` may
  support Reaction Review of observable behavior or acceptance criteria but
  creates no new record and replaces no complete-record gate. Their JSON
  transport is temporary.
- **Review Learning:** The optional history-analysis path is human-invoked or
  agent-recommended when repeated feedback justifies it. It scopes history
  explicitly, preserves provenance, studies revision trajectories rather than
  denial counts alone, classifies proposed learning by justified scope, and
  adopts changes only through a reviewed diff to the owning instruction.
  Bounded extraction delegation is recommended only when it materially saves
  context or cost.
- **Native CLI:** Praxis has characterized Plannotator `0.25.0` as its minimum
  known-compatible surface. Gates use `--gate --json` without
  `--require-approval`; denial is a normal loop result. Structured stdout is
  normal, and `--result-file` is transient fallback transport. Active browser
  sessions are left open until the human submits, dismisses, or asks to stop;
  quiet output never justifies opening a duplicate.
- **No automation layer:** Praxis invokes the CLI directly and does not use
  wrappers, harness plugins, Stop hooks, `--hook`, or
  `plannotator improve-context`. A failed required gate or Plan-governed code
  review remains unpassed; exploratory work alone may use another faithful
  reaction surface.
- **Resources and cleanup:** The runtime skill begins without copied scripts or
  rigid HTML assets. Upstream reports, visual references, tests, and
  harness-specific parsers are implementation source material, and Praxis
  adapts one only when it owns a stable deterministic operation that justifies
  it. After the Praxis skill is implemented and validated, remove the
  standalone upstream Plannotator skills and Codex, Claude Code, OpenCode, and
  Pi integrations from this dotfiles repository while retaining the CLI.
- **Evidence and authority:** 2026-07-30 — the user approved each concrete rule;
  the installed `plannotator 0.25.0` help confirmed the command and option
  surface without opening a review UI. The upstream standalone skills, parser,
  report example, visual references, and tests were inspected only as source
  evidence.
- **Refines:** D065, D067, D091, D092, D107, D119, D173, D181, D182, D189.

### D191 — Accepted references exist before runtime planning

- **Status:** Accepted packaging correction.
- **Plannotator:** The skill's accepted focused surface is materialized as
  `gates.md`, `present-artifacts.md`, `code-review.md`,
  `review-learning.md`, and `setup.md`. The temporary combined interaction
  contract is removed after its guidance is distributed. The human-facing
  Plannotator guide keeps the core purpose and routes directly to those
  references.
- **Global references:** Learning and Return and Records are materialized as
  plugin-wide runtime-facing references rather than remaining implicit promises
  to compile canonical model prose later. Their canonical System, Control, and
  Records sources still own accepted meaning.
- **Progressive disclosure:** Every focused file owns one reason to load it.
  Core ownership, authority, invocation, interpretation, and stopping stay in
  the eventual `SKILL.md`; detailed gate, artifact-presentation, code-review,
  history-learning, setup, message-return, and record grammar load only when
  relevant.
- **No invented content:** Materialization compiles already accepted behavior.
  It creates no wrapper, script, HTML template, record type, lifecycle, or new
  authority.
- **Evidence and authority:** 2026-07-30 — the user rejected the inconsistent
  state in which references were declared but absent and explicitly instructed
  correction before implementation planning.
- **Refines:** D173, D182, D190.

### D192 — Core context is separated from cold and conditional material

- **Status:** Accepted packaging cleanup.
- **Default reading:** The eight maintained model files are the core design
  reading order. The chronological decision ledger, scenario corpus, and
  research landscape are cold provenance, evaluation source, and rationale;
  load only the relevant part for a concrete need.
- **Records:** The shared Records entry point is a small router. Every caller
  loads Core plus only the Requirements Discovery, Formalization, or Delivery
  path that owns the record being handled.
- **Historical labels:** Decision entries describe the rule recorded at that
  point, not necessarily the current rule. Historical wording remains for
  provenance and later entries own refinements and supersession.
- **Security candidate:** Authorization and Access Control remains an accepted
  candidate design under `research/` until its comparative evaluation earns
  runtime admission. It does not live in the active Security reference tree.
- **No conceptual change:** This cleanup changes context routing and file
  ownership only. The canonical model and accepted skill contracts retain
  their meaning.
- **Evidence and authority:** 2026-07-30 — after the user requested a final
  organization audit, the user explicitly authorized correction of all four
  confirmed problems.
- **Refines:** D000, D175, D182, D191.

### D193 — Components carry local specifications; final plugin documentation requires design

- **Status:** Accepted boundary with a required later design decision.
- **Local specifications:** Every implemented runtime skill carries a
  co-located `SPEC.md` beside `SKILL.md`. It preserves the complete design
  contract, source basis, reference architecture, and behavioral cases needed
  to implement, review, and evolve that skill. A shared subsystem earns its own
  local specification only when it owns comparable stable behavioral
  invariants; this is not a universal file requirement for every component.
- **Runtime boundary:** `SPEC.md` is durable plugin source documentation, not a
  routine invocation hop. `SKILL.md` remains self-sufficient for the normal
  runtime path and opens only selected conditional references.
- **Broader documentation:** The completed plugin must include an explanatory
  surface for the system as a whole, but its audience, information
  architecture, document set, location, and relationship to existing guides
  are not settled. Discuss and approve those questions after the runtime
  surface is stable; do not treat an illustrative `docs/` tree as an accepted
  design.
- **Implementation order:** Write co-located specifications with their
  components. Near the end, discuss and approve the broader documentation
  design, then implement and reconcile that final package before release.
- **Evidence and gate:** 2026-07-30 — the user clarified the intended role of
  `SPEC.md` and required broader plugin documentation to be designed
  collaboratively and implemented near the end. The previously illustrated
  folder structure was not accepted as the final documentation architecture.
- **Refines:** D000, D175, D192.

### D194 — Praxis is a clean source tree, not a second model layer

- **Status:** Accepted documentation handoff structure.
- **Current truth:** The five documents under `core/` own the system model.
  Every eventual skill owns one self-contained package under `skills/`, with
  its procedure in `README.md` and conditional knowledge in local
  `references/`. Shared record, artifact, feedback, learning, structural-search,
  and worktree contracts live under `references/`.
- **Context routing:** Normal readers move from Core to the skill index, one
  selected skill, and only the local or shared references named by that path.
  Evidence and chronological history are cold material for rationale,
  contradiction recovery, or deeper review.
- **Removed duplication:** The former `model/`, `docs/`, and `research/` layers
  no longer govern current meaning. Their unique accepted content was folded
  into Core, skill packages, shared references, or `evidence/`; historical
  source paths remain visible only as provenance in earlier entries.
- **Implementation order:** D173's batch-oriented “runtime slice” order is
  superseded. A later session recommends one base or skill change, discusses it
  with the human, implements directly from accepted design after conversational
  authorization, reviews and validates its exact diff, commits meaningful
  increments only when asked, stops, and then recommends what could follow. It
  creates no implementation Plan or executable eval system.
- **Local specification boundary:** Each runtime skill will eventually carry
  its co-located behavioral specification. The broader plugin documentation
  architecture remains a later collaborative decision and must not be inferred
  from this temporary source layout.
- **Evidence and authority:** 2026-07-31 — the user requested a clean,
  low-hop Praxis handoff, skill-owned packaging, removal of duplicated
  layers, and a separate future implementation session.
- **Refines:** D173, D174, D175, D176, D177, D178, D179, D190, D191, D192,
  D193.

### D195 — JSONL realignment compiles current interaction and implementation rules

- **Status:** Accepted correction after independent timeline, decision, and
  implementation-readiness audits of the original thread JSONL.
- **System projections:** Understanding, Proposal, Execution, and
  Result/Learning remain the canonical functional loops. Requirements
  Discovery, Formalization, and Delivery are the ownership projection:
  Requirements Discovery owns Understanding, Formalization owns Proposal, and
  Delivery owns Execution plus Result/Learning.
- **Skill composition:** Skills invoke other skills explicitly for bounded
  questions. The caller retains governing meaning, synthesis, gates, authority,
  transitions, and stopping; the invoked skill owns its procedure and returns
  only its evidence, reaction, or judgment support. A shared reference never
  substitutes for invoking the skill that owns the capability.
- **Plannotator:** Plannotator is one shared model-invoked interaction skill.
  Its caller map covers Initiative, Requirements, Research reaction surfaces,
  adaptive or bundled Interview, Make Tangible, Evolution and Issue
  specification, Design Solution, Plan, Plan-governed code review, Review,
  Result Acceptance, Verify, reviewer-facing PR and documentation explainers,
  Setup, Using Praxis, and scoped Review Learning.
  Adaptive dependent questions remain
  one-at-a-time; a small independent grounded set may use the bundled
  interview surface. The facts surface remains feedback and creates no record.
  `plannotator last` remains conversational-only.
- **Visual ownership:** Make Tangible owns construction and explanatory
  patterns for visual explainers, reports, diagrams, PR explanations, and
  Review Learning dashboards. Plannotator owns faithful presentation and
  reaction. Upstream templates, themes, scripts, and examples remain source
  material to distill rather than wholesale-copy or silently discard.
- **Implementation handoff:** Runtime work proceeds directly from accepted
  design one meaningful change at a time:
  recommend, discuss, authorize, implement, review, validate, commit when asked,
  stop, and recommend. No implementation Plan, plan file, batch roadmap,
  executable eval machinery, or automatic next skill exists.
- **Source boundary:** `praxis-design` remains untracked and absent from
  repository history. Runtime commits stage only named paths and verify
  `git ls-files .agents/praxis-design` remains empty. Partial runtime candidates
  are inspected rather than recreated or treated as complete.
- **Local documentation:** Every runtime skill receives a co-located
  `SPEC.md`. The broader plugin documentation architecture remains mandatory
  but deferred for collaborative design near the end.
- **Evidence and authority:** 2026-07-31 — the user requested JSONL-based
  realignment, approved correction of every confirmed mismatch, and required
  Plannotator and cross-skill composition to be made explicit before runtime
  implementation.
- **Refines:** D048, D099, D173, D190, D193, D194.

### D196 — Plannotator cleanup preserves capabilities before removing sources

- **Status:** Accepted correction to the earlier resource-narrowing rule.
- **Inventory first:** Before removing the standalone Plannotator skills or
  harness integrations, inspect every material interaction, visualization,
  theme, SVG, PR-explainer, rendering, Review Learning report, extraction,
  fallback, test, and example capability they contain.
- **Ownership:** Plannotator owns native presentation and interaction
  compatibility. Make Tangible owns artifact construction, explanatory
  patterns, medium, and fidelity. Review Learning owns longitudinal analysis
  and adoption semantics while Make Tangible constructs any report and
  Plannotator presents it when faithful.
- **Selective absorption:** Preserve each useful capability in its owning
  `SKILL.md`, focused reference, reusable asset, deterministic script, or a
  simpler faithful replacement. Omit one only with a concrete reason. Do not
  wholesale-copy upstream packages, but do not reject a resource merely
  because it is a script, template, theme, or HTML.
- **No invented asset contract:** The previously suggested universal
  workbench and fixed JSON template were never accepted. Capability
  preservation and correct ownership are settled; exact assets remain an
  implementation judgment discussed when the owning skill is built.
- **Cleanup gate:** Remove redundant standalone skills and harness plugins only
  after every material capability has a disposition, retained behavior is
  reachable and reviewed, and native Plannotator behavior is characterized.
  Keep the CLI.
- **Evidence and authority:** 2026-07-31 — after the first implementation
  omitted the visual-explainer and compound-learning resources, the user
  required those sources to remain available and their useful capabilities to
  be absorbed before cleanup.
- **Refines:** D190, D195.

### D197 — Direct dependency and interaction routing are explicit

- **Status:** Accepted routing and packaging contract.
- **Direct dependencies:** Every skill declares all and only the skills it
  invokes itself and the shared references whose knowledge it uses directly.
  Dependencies internal to a callee remain encapsulated. The same direct call
  appears at its actual decision point with its trigger, returned result, and
  retained ownership.
- **Uniform structure:** Every skill design and runtime package uses one
  `Direct dependencies` section divided into `Skills` and `Shared references`.
  Skill-local conditional references remain internal paths rather than
  external dependencies.
- **Artifact and interaction direction:** A caller invokes Make Tangible when
  something must be constructed, transformed, simulated, explained, or made
  perceptible. Make Tangible owns fidelity and may select Plannotator as the
  presentation medium. A skill invokes Plannotator directly only when the
  target already exists and that skill owns the native presentation,
  annotation, bundled interaction, code review, Review Learning, or declared
  gate. Plannotator never calls Make Tangible.
- **Direct Plannotator callers:** Coordinate Initiative, Discover
  Requirements, Interview, Evolve, Define Issues, Plan, Deliver, Make Tangible,
  and Using Praxis for explicit native utilities are the direct callers.
  Research, Design Solution, Verify, Prepare PR, Write Docs, and Orient route
  reaction-surface construction through Make Tangible. Formalize delegates
  gates to Evolve and Define Issues; Review and Pair return results to Deliver;
  Setup installs and verifies the CLI without opening an interaction.
- **Shared-reference ownership:** Make Tangible is the sole normal consumer of
  Artifact Contract and Lifetime. Feedback and Evaluation is used directly
  only by Make Tangible, Research, TDD, Review, Verify, Security, Delegate, and
  Plannotator Review Learning. Learning and Return is used directly only by
  Coordinate Initiative, Discover Requirements, Formalize, Deliver, and Using
  Praxis. Records schemas are loaded only by the skills that create, relocate,
  structurally validate, revise, or resume those records. Structural Search
  and Rewrite remains direct to Setup, Research, Refactor, Review, Security,
  and Verify. Worktree Isolation is direct only to Deliver, Delegate, Research,
  Make Tangible, or Refactor when that skill itself manages a named isolation
  risk.
- **Evidence and authority:** 2026-07-31 — the user approved the direct caller
  map, shared-reference consumer maps, and the uniform dependency declaration
  after identifying transitive leakage and contradictory Plannotator routing
  in the design packages.
- **Refines:** D195, D196.

## Provenance boundary

The conceptual reconstruction is current through D197. The recursive system
model and ownership of Requirements, Evolutions, Issues, and Implementation
Plans are accepted. Requirements Discovery, Formalization, and Delivery needs
and the cross-cutting, optional-capability, and repository-adjunct needs and
needs-first skill derivation method are also accepted. Requirements Discovery,
Formalization, Delivery, and supporting concerns now have derived candidate
skill packages, explicit provisional-gate semantics, an accepted invocation
policy, complete Make Tangible and Interview design packages, and a
non-ledger uncertainty model. Research now also has a complete accepted design
package, Discover Requirements has a complete accepted owning-skill design,
Design Solution has a complete accepted supporting-skill design, Evolve has
a complete accepted progressive-strategy design with corrected Project and
Evolution semantics, Define Issues has a complete accepted detailed-
specification design and concrete Formalization file layout, Formalize has a
complete accepted outer-owner and route-composition design, and Deliver has a
complete accepted one-Plan authority-to-result design and concrete Plan
lifecycle. Changeability is an accepted cross-system quality contract: known
pressure informs Requirements and Formalization, necessary refactoring stays
bounded by the Plan, assurance follows concrete impact, and result explanation
surfaces structural consequence. Refactor is its dedicated supporting skill
when concrete pressure needs substantial behavior reconstruction, seam
selection, structural transformation, and preservation proof; every owner
retains its ordinary structural judgment.

Praxis is now explicitly understood as a human-steered In-Context Reinforcement
Learning harness: its existing recursive owners generate bounded attempts,
evaluate them through multidimensional human and environmental feedback, retain
only consequential learning, assign that learning to its exact causal owner,
and condition later attempts without changing model weights or transferring
authority.

The shared feedback contract now distinguishes contextual human preference,
observed evidence, critique, verification, approval, and acceptance; binds
judgment to its evaluated context; separates process from outcome evaluation;
requires meaningful contrast and honest evaluator independence; resists proxy
over-optimization; promotes learning at its supported scope; and returns the
smallest sufficient causal message. One conditional shared reference carries
the deeper patterns without creating a skill, score, ledger, or mandatory
instruction hop.

Interview now applies that shared contract locally: it orders recommendation
and reaction according to who owns the judgment, preserves qualified and
context-dependent answers, tests broader preference claims before promotion,
and revises questions when evidence changes the available choices without
rewriting human intent.

Make Tangible now applies the shared contract through fair consequential
fidelity, meaningful contrast before convergence, compositional reaction
export, explicit simulation limits, and version-aware iteration that reopens
only affected judgments. Its open judgment-oriented pattern set now separates
discovery, elicitation, observation, teaching, communication, and proof;
selects one primary pattern per artifact; composes supporting patterns
proportionately; and chooses interaction and medium from the actual judgment
rather than defaulting to HTML.

Research now applies the shared contract by seeking disconfirming evidence,
qualifying negative searches by their sensitivity, rebinding revised
questions, resolving conflicts through their conditions, and matching evidence
diversity to claim breadth.

Design Solution now applies the shared contract by testing shared assumptions,
preserving hard constraints outside tradeoff scoring, exposing evidence
maturity, re-evaluating changed candidates, and respecting valid local human
choices without globalizing them.

Discover Requirements now applies the shared contract by causally interpreting
probe outcomes before promotion, changing evidence class when feedback stalls,
refreshing consequential governing findings before Alignment, separating
conflicting signal types, and promoting needs at their narrowest supported
scope.

Formalize now applies the shared contract by interpreting proposal feedback
through its governing owner, checking semantic rather than checklist coverage,
refreshing only volatile support at gates, and protecting still-valid truth
across material revisions.

Evolve now applies the shared contract by tying learning targets to real later
judgments, keeping tangible advancement mandatory, routing delivered learning
to its causal owner, and separating working-form proof from learning evidence.

Define Issues now applies the shared contract by specifying proof claims at the
governing boundary, propagating shared semantic revisions across the Issue set,
and keeping illustrative examples from becoming accidental exhaustive
evaluators.

Plan now applies the shared contract by distinguishing steering feedback from
completion evidence, propagating material approach revisions across the full
execution contract, and admitting feedback-driven choices only inside explicit
safe decision envelopes.

Deliver now applies the shared contract by requiring retries to add
information, preserving process and outcome evidence separately, evaluating
deviations cumulatively, and refusing to treat evaluator failure as product
feedback.

Plan now has a complete accepted skill-design contract covering source-grounded
collaboration, authority precision, safe implementation uncertainty, artifact
lifetime, gate, direct planning entry into one Deliver loop, and stopping
behavior. Debug now has a complete accepted skill-design contract covering a
red-capable signal, full reproduction, falsifiable hypotheses, causal proof,
bounded correction, regression evidence, exact-owner learning, cleanup, and
stopping. Its feedback refinement now also requires mechanism-sensitive probes,
decisive hypothesis elimination, and measured stochastic conclusions. Refactor
now has a complete accepted skill-design contract covering
concrete pressure, accepted-behavior reconstruction, smallest responsible seam,
present evidence about future work, authority, incremental transformation,
structural-tool evidence, preservation proof, artifact lifetime, and stopping.
ast-grep has one accepted plugin-wide structural-search and rewrite reference
shared by Setup, Research, Refactor, Review, Security, and Verify without
becoming a wrapper, semantic oracle, or required dependency. TDD now has a
complete accepted skill-design contract covering honest seam selection, vertical
red–green–refactor cycles, independent expectations, boundary doubles,
risk-based stopping, and return behavior. Its feedback refinement also requires
valid red signals, minimal contrasting evidence, separation of steering from
completion evidence, and stable accepted expectations. Review now has a
complete accepted skill-design contract covering finding quality,
Specification Fidelity,
Engineering Integrity, honest coverage, bounded evidence composition,
risk-triggered audits, target-specific paths, correction ownership, and
stopping. Its feedback refinement now also requires causal-surface resolution,
question-specific reviewer independence, and fresh coverage when heavily
adaptive review leaves material uncertainty. Verify now has a complete
accepted skill-design contract covering
falsifiable claim construction, evidence sensitivity and freshness,
boundary-matched and impact-based proof, precise outcomes, disposable probes,
environmental scope, human judgment, failure returns, and stopping. Its
feedback refinement now also fixes quantitative evaluation conditions before
observation, preserves governing claims after adverse evidence, and reports
correlated checks honestly. Using
Praxis now has a complete accepted skill-design contract covering activation,
proportional ownership, progressive context, recommendation shape, invocation
and authority preservation, honest resumption, transfer, and immediate exit.
Setup now has a complete accepted human-invoked contract covering repository
preservation, required native Plannotator availability, tracked agent-source
exceptions, lazy optional tools, configuration-versus-use authority,
idempotent verification, and stopping. It has no local reference, scanner
bundle, or Codex Security runtime integration.
Delegate now has a complete accepted skill-design contract covering its three
benefit budgets, supervisor ownership, fresh-context briefs, proportional role
and model routing, gray-box implementation, authority, semantically compact
returns,
targeted inspection, correction, parallelism, one-level nesting, persistence,
and stopping. Its six role paths, mutation defaults, return payloads,
model-abstraction boundary, one-reference packaging, and harness-adapter
contract are also accepted. Semantic feedback and return messages are settled;
no common serialized host shape is required, while a concrete adapter may
encode the accepted meanings when integration needs it. Check Safety now has a
complete accepted
skill-design contract covering consequence-based activation, proportionate
inspection, exact targets, honest recovery, external and secret boundaries,
authority reconciliation without duplicate gates, safer alternatives, scoped
results, invalidation, persistence, and stopping.
Commit now has a complete accepted skill-design contract covering explicit
scope, dirty-tree and index preservation, coherent snapshot boundaries, branch
policy, current verification, Conventional Commit messages, privacy, issue
footers, hooks, history rewriting, result inspection, and stopping.
Prepare PR now has a complete accepted skill-design contract covering exact
base-to-head boundaries, adaptive reviewer cover notes and titles, conditional
reviewer aids, proportionate verification, current-truth refresh, privacy,
repository templates, draft state, metadata preservation, exact push authority,
remote result inspection, and stopping.
Write Docs now has a complete accepted skill-design contract covering
reader-centered authorship, current source authority, fresh product prose,
surface ownership, five public-document paths, progressive disclosure,
reconciliation, native documentation systems, examples, visuals, privacy,
reader-journey verification, Delivery authority, and stopping.
Pair now has a complete accepted skill-design contract covering manual
implementation-only entry, decision-sized and revocable mutation permissions,
explicit drivers, teaching, in-Plan refinement, supporting capabilities,
read-only delegation, posture changes, integrated assurance and acceptance,
transient conversation, and stopping.
Orient now has a complete accepted skill-design contract covering human-invoked
learning, source-grounded progressive explanation, knowledge calibration,
teaching surfaces, conversational checks, bounded scope, Research and Make
Tangible composition, exact discovery returns, read-only authority, transient
artifacts, completion, and stopping.
Coordinate Initiative now has a complete accepted skill-design contract
covering its strategic threshold, shared truth, non-executable ordering,
cross-Project learning, proportional re-alignment, objective-based closure,
membership and splitting, ownership-based organization, supporting
capabilities, and stopping. Durable storage now follows current
human-meaningful ownership while allowing standalone Issues and standalone
Plans without invented parents.
Security now has a complete accepted skill-design contract covering caller
question and threat reconstruction, attacker-evidence search, validated
confidence, project-specific severity, deterministic and agentic evidence,
effect-based tool authority, disposable container execution, proportional
multi-agent search, exact ownership returns, private receipts, honest coverage,
and stopping. It is a reusable supporting domain discipline rather than a phase,
generic Audit skill, automatic review owner, remediation owner, or acceptance
gate. Requirements Discovery, Formalization, Review, Verify, and Delivery
retain their existing work. Its runtime skill stays lean, progressively loads
rich non-exhaustive references, claims no universal stack coverage, and admits
candidate references only when paired evaluations justify their context cost.
Its open twenty-two-domain coverage map is accepted, and Authorization and
Access Control is the first accepted candidate design pending comparative
evaluation rather than an admitted runtime reference. Its mixed corpus,
held-out comparison, repeated-trial, dimension-level scoring, admission,
tool-isolation, and fixture-environment contract is accepted; the corpus has
not yet been built or run.
The former D173/D174 runtime-slice strategy is historical. D194 supersedes its
batch implementation order and rejects an executable eval system. Its useful
behavioral contrasts remain ordinary design cases, and its accepted
conditional-reference facts remain current: Discover Requirements has
Blind-Spot Discovery and Interpreting References paths; Research has codebase,
external-evidence, and empirical-probe paths; and Design Solution has five
composable reasoning paths. Their core procedures remain in the owning skill
packages.
A frozen pre-runtime multi-review has now corrected the model's human code-
review requirement, non-transferable handoff authority, Initiative and Project
return routes, Plan-authority invalidation, ordinary versus consequential
authorization, Direct Work safety boundary, and bounded Issue Approval
batches. Plannotator `0.25.0` was subsequently characterized in D190. A later
implementation session consumes these accepted contracts one skill at a time
and reviews that complete package before continuing.
The shared-foundation realignment is current through D197. Using Praxis remains
a thin router with no local reference. Plannotator is an accepted shared
interaction skill with focused local references rather than a plugin-wide
reference. Learning and Return and Records now have runtime-facing global
references; Records routes to Core and one owning-phase path. Worktree
Isolation and Preservation is a complete
shared reference. Artifact Lifetime, Feedback and Evaluation, and Structural
Search remain the other existing shared references; Assurance remains with
Review, Verify, and Delivery skill composition rather than another reference.
The Requirements Discovery package has now passed its full capability and
reference audit. Discover Requirements, Research, Interview, and Make Tangible
retain their accepted ownership and stopping boundaries, and their conditional
local references are complete. The Formalization package has also passed its
full audit. Formalize, Evolve, Define Issues, and Design Solution retain their
accepted ownership and stopping boundaries; Design Solution conditionally
composes its five accepted reasoning paths. Delivery has now passed its full
audit: Deliver, Plan, Debug, Refactor, TDD, Review, and Verify retain their
accepted ownership and stopping boundaries and their conditional references
are complete. The supporting, optional, and repository skill contracts have
also passed consistency review. All five Write Docs conditional references —
Task Guidance, Contract Reference, Understanding, Operations, and Change
Communication — are complete. Authorization and Access Control remains evidence
for a possible future Security reference; it is not a prerequisite for
implementing any current skill and no admission exercise is scheduled here.
Consult the task JSONL again only when a concrete
contradiction appears between this ledger and an explicit remembered decision;
do not use provenance research to manufacture another general interview.
