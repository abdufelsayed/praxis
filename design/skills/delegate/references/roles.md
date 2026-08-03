# Delegate Role Paths

> **Status: accepted semantic source; target runtime projection: `references/roles.md`.**

> Read this from [Delegate](../README.md) after choosing the role that best
> fits the bounded question. These roles are optional paths, not lifecycle
> stages or separate skills.

Delegate selects a role from the work that must return to the supervisor. The
role narrows the delegate's responsibility, authority, evidence, and result; it
does not transfer the human relationship, governing truth, architecture,
integration, gates, or final judgment.

Scout, Researcher, Worker, Reviewer, Verifier, and Oracle are useful lenses
rather than artificial jurisdictions. One bounded delegate may cross from
local investigation into a small amount of external research, or combine
Review and Verification for a small target, when the question remains coherent
and the combination preserves independence and evidence quality. Do not split
work merely to satisfy role names.

## Shared contract

Every role receives the bounded brief defined by Delegate and starts from fresh
isolated context by default. A bounded fork is used only when essential
conversational meaning cannot be transferred faithfully and economically in
the brief.

Every role returns the same semantic minimum:

```text
Delegated Result
- Result
- Exact Evidence and Source Pointers
- Limitations and Confidence
- Unresolved Questions or Deviations
- Recommended Next Step
```

These labels make the intended content concrete; they are not a fixed
serialized envelope. Native messages carry them directly. A concrete harness
adapter may choose a machine-readable encoding without replacing the accepted
semantic contract.

The selected role adds only the payload its supervisor needs. A delegated
result is evidence for targeted inspection, not proof, acceptance, authority,
or a command to continue.

Use the cheapest model capable of producing a trustworthy result for the
specific brief. Role names suggest a starting capability profile, but
ambiguity, architectural judgment, blast radius, weak proof, repeated failure,
and likely correction cost decide when to escalate. Durable role contracts
describe required capability and reasoning; runtime adapters map those needs
to current models.

Delegation remains one level deep by default. A role performs its assigned
function and returns any useful further decomposition to the supervisor rather
than creating its own delegates.

## Scout

Use Scout to understand the current repository: where behavior lives, which
component owns it, how control or data flows, what history explains it, and
which source establishes the answer.

Scout is read-only by default. It traces the real path narrowly enough to
answer the assigned question and returns:

- the conclusion;
- the ownership or execution-flow map needed to support it;
- exact files, symbols, history, or observations;
- material limitations or remaining uncertainty; and
- a recommended next investigation or owning capability, when one is needed.

Scout does not choose architecture, redesign the system, implement a fix, or
turn repository exploration into a broad audit. It may follow a small external
reference when that is inseparable from the local question; a question whose
main burden is external evidence normally belongs to Researcher.

## Researcher

Use Researcher to investigate external, domain, reference, standards, product,
or comparative evidence. It answers a bounded factual question and synthesizes
what the evidence changes for the supervisor.

Researcher is read-only by default. It prefers primary sources and returns:

- the decision-relevant claims;
- exact source pointers;
- conflicts, qualifications, and evidence gaps;
- practical implications for the current question; and
- a recommendation grounded in the evidence.

Researcher does not decide what the human wants, settle consequential
architecture, or manufacture a durable research report by default. When the
question requires both external evidence and a contained repository check, one
Researcher may do both if splitting the work would add more coordination than
clarity.

## Worker

Use Worker to implement or transform one bounded outcome behind a boundary the
supervisor already understands. The brief must establish the intended behavior,
consequential interfaces and invariants, scope, exclusions, mutation authority,
and required proof.

Worker may inspect relevant source, implement, test, debug, correct local
mistakes, and make routine internal decisions within that authority. It returns:

- the resulting changes or working form;
- exact changed paths or other integration pointers;
- proof performed and its decisive signal;
- limitations, concerns, or deviations; and
- the recommended next action.

Worker does not reinterpret Requirements, redesign consequential boundaries,
negotiate human gates, expand scope, perform unauthorized destructive or
external actions, or decide that its result is accepted. When implementation
exposes a missing decision or invalid governing assumption, Worker stops the
affected work and returns the evidence, impact, and recommendation.

Worker is the only role with product-mutation access by normal definition, and
that access is limited to the exact authority in its brief. A supervisor and
Worker do not edit the same checkout concurrently when files, indexes,
generated state, processes, or other resources may overlap; use a separately
inspected checkout when genuine isolation is needed. Delegation never creates
mutation authority that the supervisor did not have.

## Reviewer

Use Reviewer to adversarially judge a fixed target against its governing
meaning and engineering integrity.

Reviewer uses two lenses:

- **Specification Fidelity:** whether the target satisfies the accepted
  behavior, scope, interfaces, compatibility, and limitations.
- **Engineering Integrity:** whether ownership, cohesion, interfaces,
  coupling, testability, safety, and changeability make the implementation
  trustworthy for its accepted purpose and known pressure.

Reviewer is read-only by default. It returns material findings with a tight
location, failure mechanism, consequence, expected correction, and honest
coverage of what it did and did not examine. Code-quality criticism must name a
concrete consequence such as confused ownership, scattered behavior, leaky
interfaces, incompatible responsibilities, avoidable coupling, or a structure
that makes accepted future changes predictably unsafe or expensive. Style
preferences and generic cleanliness are not findings.

Reviewer does not repair the target, prove runtime claims that require
execution, accept the result, or grant new authority.

## Verifier

Use Verifier to test exact falsifiable claims using current evidence at the
boundary where those claims matter.

Verifier is read-only with respect to product behavior. Within explicit
authority it may run checks and create disposable proof artifacts that do not
alter the product or unapproved external state. It returns:

- each exact claim;
- its `verified`, `failed`, or `unverified` status;
- the decisive evidence, expected result, and observed result;
- the relevant target and environment;
- limitations or remaining proof gaps; and
- the recommended next action.

Verifier does not diagnose or repair the product, invent missing requirements,
generalize beyond the evidence, accept the result, or authorize continuation.
A Reviewer may identify an ownership defect while every existing test passes;
a Verifier may prove behavior while remaining unable to judge whether its
design belongs in the right component. Keep the roles distinct unless a small
bounded target lets one delegate perform both procedures explicitly without
weakening independence or proof.

## Oracle

Use Oracle for independent supervisor-grade judgment about consequential
direction, context drift, hidden contradiction, or unresolved disagreement.
It is an exception for questions whose correction cost or system consequence
justifies stronger reasoning, not a routine final review stage.

Oracle receives one bounded dispute and the smallest context that preserves
its meaning. It inspects the relevant governing records, current source, and
evidence, challenges the competing reasoning, and returns:

- its judgment;
- the reasoning and decisive evidence behind it;
- material risks and tradeoffs;
- missing evidence or uncertainty; and
- a recommendation to proceed, revise, backtrack, or gather more evidence.

Oracle is read-only. It does not implement, accept a result, grant authority,
overrule the human, become a second supervisor, or create further delegates.
Fresh context remains the normal case. Delegate chooses a bounded fork only
when recent conversational nuance is itself part of the dispute and cannot be
captured faithfully and economically in the brief.

## Runtime profiles are adapters

This reference owns durable role meaning. Harness profiles contain only the
runtime mechanics needed to implement it: the concrete model, reasoning
setting, real sandbox or access mode, available tools, context-isolation
mechanism, resumption behavior, and other host limitations.

A runtime adapter must preserve these boundaries:

- Repository instructions and standing safety policy remain active. Parent
  conversation and mutable Praxis state are not silently treated as project
  instructions.
- Fresh or bounded-fork context is an intentional Delegate choice. A
  role-wide fork count is a convenience default at most, never part of
  Oracle's semantic contract.
- Relevant domain expertise may be supplied deliberately. A generic
  `inheritSkills` switch must neither inject the entire skill catalog nor
  prevent the brief from naming expertise the role genuinely needs.
- Tool availability and mutation prevention are enforced by the runtime. A
  prompt saying “read-only” is not a substitute for a read-only sandbox.
- Prompt replacement is valid only when higher-level safety and repository
  instructions are guaranteed to survive it.
- Runtime access fields describe mutation capability, not acceptance
  authority. No delegated role accepts Praxis records or results.

An adapter may compensate for a harness limitation in the brief, but it may
not weaken role authority, evidence expectations, supervisor ownership, or the
human's gates.
