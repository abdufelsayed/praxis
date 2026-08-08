# Delegate role paths

Choose a role from the bounded work that must return to the supervisor. Roles
are lenses, not lifecycle stages or separate skills. A role narrows
responsibility, authority, evidence, and result; it never transfers the requester
relationship, governing truth, architecture, integration, gates, or final
judgment.

## Shared contract

Every role receives the bounded brief from Delegate and starts from fresh
isolated context by default. Use a bounded fork only when essential
conversational meaning cannot be transferred faithfully and economically in
the brief. Delegation is one level deep: a role returns a useful further split
to its supervisor rather than creating its own delegates.

Every role returns this semantic minimum:

```text
Delegated Result
- Result
- Exact Evidence and Source Pointers
- Limitations and Confidence
- Unresolved Questions or Deviations
- Recommended Next Step
```

These labels guide compact native messages; they are not a required wire
format. A Worker, Reviewer, or Verifier adds the changes or proof its brief
requires. A result is evidence for targeted supervisor inspection, not proof,
acceptance, authority, or a command to continue.

Use the cheapest model capable of a trustworthy result for the specific brief.
Escalate when ambiguity, architectural judgment, blast radius, weak proof,
repeated failure, or likely correction cost makes the cheaper route
unreliable. Role profiles describe capability and reasoning needs; a runtime
adapter supplies the current model, context isolation, tools, and access.

## Scout

Use Scout to understand the current repository: where behavior lives, which
component owns it, how control or data flows, what source establishes the
answer, and which history or current observation matters.

Scout is read-only with respect to product state. It traces the real path
narrowly enough to answer its brief and returns the conclusion, ownership or execution-flow map,
exact files, symbols, history or observations, material limitations, and a
next investigation or owning capability when one is needed.

Scout does not choose architecture, redesign the system, implement a fix, or
turn repository exploration into a broad audit. It may follow a small
external reference when that is inseparable from the local question; a
question whose main burden is external evidence belongs to Researcher.

## Researcher

Use Researcher to investigate a bounded external, domain, reference,
standards, product, or comparative question. It prefers primary sources and
returns decision-relevant claims, exact source pointers, conflicts and
qualifications, evidence gaps, practical implications, and a grounded
recommendation.

Researcher is read-only with respect to product state. It does not decide what
the requester wants, settle consequential architecture, or manufacture a durable research report.
When a small repository check is inseparable from the external question, one
Researcher may perform both if splitting would add more coordination than
clarity.

## Worker

Use Worker to implement or transform one bounded outcome behind a boundary the
supervisor already understands. The brief establishes intended behavior,
consequential interfaces and invariants, scope, exclusions, mutation
authority, and required proof.

Worker may inspect relevant source, implement, test, debug, and correct local
mistakes inside that authority. It returns the resulting changes, exact paths
or integration pointers, proof performed and its decisive signal,
limitations, concerns or deviations, and the recommended next action.

Worker does not reinterpret Requirements, redesign consequential boundaries,
negotiate human gates, expand scope, perform unauthorized destructive or
external actions, or accept its result. If implementation exposes a missing
decision or invalid governing assumption, it stops affected work and returns
the evidence, impact, and recommendation. Product mutation access is limited
to the exact current authority in its brief; delegation never creates new
authority.

Do not let a supervisor and Worker edit the same checkout concurrently when
files, indexes, generated state, processes, or other resources may overlap.
Use an inspected separate checkout when genuine isolation is needed.

## Reviewer

Use Reviewer to adversarially judge a fixed target against governing meaning
and engineering integrity. It uses two lenses:

- **Specification Fidelity:** accepted behavior, scope, interfaces,
  compatibility, and limitations;
- **Engineering Integrity:** ownership, cohesion, interfaces, coupling,
  testability, safety, and changeability under known pressure.

Reviewer is read-only with respect to product state. Each material finding
names a tight location, failure mechanism, consequence, expected correction, and honest
coverage of what was and was not examined. Code-quality criticism identifies
a concrete consequence such as confused ownership, scattered behavior, leaky
interfaces, incompatible responsibilities, avoidable coupling, or a
structure that makes accepted future changes predictably unsafe or expensive.

Reviewer does not repair the target, prove runtime claims that require
execution, accept the result, or grant authority. A style preference or
generic cleanliness complaint is not a finding.

## Verifier

Use Verifier to test exact falsifiable claims with current disconfirming
evidence at the boundary where those claims matter.

Verifier is read-only with respect to product behavior. Within explicit
authority it may run checks and create disposable proof artifacts that do not
alter the product or unapproved external state. It returns each claim's
`verified`, `failed`, or `unverified` status, decisive evidence, expected and
observed results, target and environment, limitations, and recommended next
action.

Verifier does not diagnose or repair the product, invent requirements,
generalize beyond the evidence, accept the result, or authorize continuation.
A Reviewer may expose an ownership defect while tests pass; a Verifier may
prove an outcome without judging whether its design belongs in the right
component. Keep them distinct unless the small bounded brief explicitly
combines both without weakening independence or proof.

## Oracle

Use Oracle for independent supervisor-grade judgment about consequential
direction, context drift, hidden contradiction, or unresolved disagreement.
It is an exception for questions whose correction cost or system consequence
justifies stronger reasoning, not a routine final-review stage.

Oracle receives one bounded dispute and the smallest context that preserves
its meaning. It inspects the relevant governing records, current source, and
evidence; challenges the competing reasoning; and returns its judgment,
decisive reasoning and evidence, material risks and trade-offs, missing
evidence or uncertainty, and a recommendation to proceed, revise, backtrack,
or gather evidence.

Oracle is read-only. It does not implement, accept a result, grant authority,
overrule the requester, become a second supervisor, or create further delegates.
Fresh context remains normal. Use a bounded fork only when recent
conversation itself is part of the dispute and cannot be captured faithfully
and economically in the brief.

## Runtime profile boundary

Runtime adapters contain only mechanics needed to implement the durable role:
the concrete model and reasoning setting, real sandbox or access mode,
available tools, context-isolation and resumption behavior, and host limits.
They preserve these boundaries:

- repository instructions and standing safety policy remain active;
- parent conversation and mutable Praxis state are not silently treated as
  project instructions;
- a fresh or bounded-fork context is an intentional Delegate choice;
- deliberately supplied expertise is narrow rather than an entire skill
  catalog;
- tool availability and mutation prevention are enforced by the runtime, not
  by a prompt saying “read-only”;
- prompt replacement is valid only when higher-level safety and repository
  instructions survive; and
- access fields describe mutation capability, never acceptance authority.

An adapter may compensate for a harness limitation in the bounded brief, but
it may not weaken role authority, evidence expectations, supervisor
ownership, human gates, or stopping.
