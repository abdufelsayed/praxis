# Security — Maintainer Contract

This is the acceptance contract for the shipping
[Security owner](SKILL.md). It is not runtime
context, and the owner must not link to or depend on it.


## Purpose

Security is supporting work inside an active Inquiry, not a lifecycle owner.
It may pursue a bounded attacker question autonomously, but it cannot select
position, transition, gate, authority, or continuation.

Security investigates one bounded attacker-focused question and reports only
evidence-backed vulnerabilities. It joins accepted project truth, source and
dependency inspection, attack-path reasoning, focused proof, deterministic or
stochastic evidence providers, and independent evidence when those improve the
answer. Security owns
attacker modeling, exploitability, severity, confidence, and coverage; its
caller retains target meaning, authority, integrated judgment, acceptance, and
the next action.

## Entry and exclusions

Security is internally reachable when a target exposes a credible trust boundary,
identity, authentication, authorization, attacker-controlled input, sensitive
data, permission, cryptography, dependency, remote-execution, secret,
deployment, or comparable attack surface. A direct request to security-review a
diff, component, repository, or result remains Review-owned and composes this
package for attacker-focused evidence.

Security excludes universal checklists, phase or lifecycle ownership,
requirements or policy invention, acceptance, approval, authority creation,
automatic remediation, commit, publication, deployment, and fixed scanner
pipelines. Ordinary Review applies baseline security judgment without invoking
the full procedure when no meaningful surface or hypothesis needs it.

A target with no credible attacker surface may return a scoped conversational
`no-op`; this does not create a finding, security guarantee, or next action.

## Invariants

1. One run binds one attacker-focused question, target, governing expectation,
   owner, authority, exclusions, and decision boundary, or returns a typed
   owner or authority blocker.
2. Assets, security properties, actors, privileges, trust boundaries,
   attacker-controlled inputs, sensitive data, effects, controls, and violated
   behavior are reconstructed from current evidence.
3. Security depth follows exposure, consequence, uncertainty, available
   evidence, and cost; the open coverage map is a prompt, not a mandatory
   checklist or coverage promise.
4. Local references load only when their distinct domain and proof method
   affects the current path. Shared Evaluation loads only for multi-path,
   adaptive, stochastic, or conflicting evidence.
5. Scanner warnings, advisory matches, source patterns, and agent hypotheses
   remain candidates until reachability, attacker control, protection failure,
   consequence, and preconditions are established.
6. Confidence (`confirmed`, `strongly supported`, `needs verification`) is
   distinct from project-specific exploitability and impact severity.
7. Confirmed findings, dismissed false positives, unresolved candidates, and
   hardening ideas remain separate.
8. Passive local evidence is read-only and effect-announced; active, remote,
   credentialed, privileged, persistent, mutating, production, or data-affecting
   effects require exact authority and Check Safety where applicable.
9. Docker is optional and changes setup mechanics, not authority. Security
   recommends Setup only when a selected honest path needs Docker and the requester
   chooses that setup explicitly.
10. Delegate, Research, Verify, Setup, and Check Safety return bounded evidence
    or readiness; none grants authority, accepts a result, or chooses the next
    workflow. Security retains exploitability interpretation.
11. Findings that invalidate governing meaning or authority return to the exact
    causal owner. Security does not repair by implication.
12. Raw scanner output, exploit detail, secrets, and failed branches remain
    transient unless a named future consumer needs a compact pointer.
13. Completion reports target, expectations, paths, evidence, findings,
    unresolved candidates, hardening, limitations, owner, and recommendation,
    then stops without automatic continuation.
14. `assurance_path` records every Debug, TDD, Refactor, Verify, or Security
    capability entered for the same bounded work; a callee already in the path
    is not invoked again.

## Behavioral return

```text
Security Result {
  outcome: no-op | findings | no-high-confidence-findings |
           needs-verification | needs-owner | blocked | stopped,
  target_and_governing_expectations,
  attack_surfaces_and_paths_examined,
  tools_probes_and_independent_agents,
  confirmed_findings {
    path,
    attacker_capability,
    missing_or_bypassable_control,
    consequence_and_preconditions,
    confidence,
    severity,
    decisive_evidence
  }*,
  unresolved_candidates?,
  hardening_suggestions?,
  coverage_and_material_limitations,
  causal_owner_or_recommended_next_step,
  caller_retained_authority_acceptance_and_stop
}
```

`no-op` means no credible attacker surface remained and carries no security
guarantee or next action. `findings` contains one or more evidence-backed findings. A
`no-high-confidence-findings` return is scoped to the examined target and
coverage. `needs-verification` preserves candidates and missing proof;
`needs-owner` identifies changed governing meaning or authority; `blocked`
identifies a missing access, tool, environment, or safety boundary; and
`stopped` preserves safe partial state after a human stop. None implies a
secure repository, acceptance, remediation, or continuation.

## Effects, authority, persistence, and learning

Read-only source, dependency, configuration, and local deterministic or
stochastic checks are ordinary evidence providers within the caller's boundary
after effect and target are announced. Stochastic evidence uses shared
Evaluation when repetition, independence, evaluator sensitivity, or uncertainty
materially affects the judgment.
An active adversarial probe may run only in an isolated disposable local
environment with synthetic data when its effect is already in-bound. Deny
unnecessary network, mount source read-only where possible, keep output
private and redacted, avoid credentials and Docker sockets, and use controlled
caches for advisory databases.

Paid scans, remote or shared traffic, real accounts or credentials,
provider-side credential verification, remote repository or infrastructure
access, privileged containers, persistent configuration, mutating,
destructive, production, and data-affecting operations require exact
target-specific authority. Before a consequential active probe, invoke [Check
Safety](../check-safety/SPEC.md); only `proceed` permits that exact action.

If Docker is needed for an honest selected path, Security states why and
recommends [Setup](../setup/SPEC.md); Setup executes readiness or installation
only after an explicit human choice. Docker availability never widens effect
authority.

Messages and raw evidence are transient by default. Promote only a compact
finding or revisable threat model that a named future consumer needs into its
owning Project, Evolution, Issue, or operational record. It never becomes an
approval gate or authority source.

## Direct composition

Direct calls carry the callee's required brief and preserve its exact return:
 one complete brief, lossless returns, no authority transfer, and no
re-entry of a capability already in the assurance path. Each callee's own
contract owns its intake fields. Research calls carry the round identity
(`boundary_id`, `origin=security`, `return_to=security`,
`peer_edge_crossed=false`); assurance calls carry the current
`assurance_path`. This package's caller policies are:

| Direct target | Caller policy |
| --- | --- |
| [Delegate](../delegate/SPEC.md) | Use only when an independent role has a positive coverage, confidence, context, elapsed-time, or independence benefit. `delegated` integrates; `partial` preserves gaps; `no-op` or delegation-only `blocked` uses the direct path; evidence/authority/access `blocked` and human `stopped` map directly. |
| [Research](../research/SPEC.md) | Use for one consequential external, protocol, advisory, dependency, or domain fact. `answered` integrates; `unverified`/`conflicting` leaves Security `needs-verification`; `revised`/`needs-human-judgment` returns to the causal owner; `blocked`/`stopped` map directly; `no-op` uses sufficient input. |
| [Verify](../verify/SPEC.md) | Use for one exact executable security claim only when `verify` is absent from the assurance path. `verified`, `failed`, and `unverified` remain scoped evidence; an already-visited Verify returns `needs-verification` without another call; `stopped` maps directly. |
| [Setup](../setup/SPEC.md) | Use only after the requester chooses the selected Docker readiness boundary. `ready`/`already-ready` supplies readiness; `partial` continues only when the selected condition is ready, otherwise Security is `blocked`; `blocked`/`failed` map to `blocked`, and `stopped` maps directly. |
| [Check Safety](../check-safety/SPEC.md) | Use for a consequential active probe at action time. Only `proceed` releases the exact probe; `revise` and `stop` return without the effect. |

Security does not call Review to own an integrated review, and no dependency
re-enters a capability already present in `assurance_path`. Security owns
attacker interpretation while Verify owns exact status.

## Runtime references and exact tree

`SKILL.md` keeps caller ownership, attack-surface framing, hypothesis
validation, confidence versus severity, effect-based authority, supporting
calls, findings, return, and stopping inline. The seventeen local references
are conditional domain methods; they are not a tooling category or universal
coverage promise. Shared Evaluation is terminal context for multi-path,
adaptive, stochastic, or conflicting evidence. Direct-call brief, exact-return,
authority, and no-loop rules remain inline when composing a
direct call; this package owns the
rules.

```text
skills/security/
├── SKILL.md
├── SPEC.md
├── agents/
│   └── openai.yaml
└── references/
    ├── api-security.md
    ├── authentication.md
    ├── authorization.md
    ├── business-logic.md
    ├── cryptography.md
    ├── csrf.md
    ├── data-protection.md
    ├── deserialization.md
    ├── error-handling.md
    ├── file-security.md
    ├── injection.md
    ├── logging.md
    ├── misconfiguration.md
    ├── resource-abuse.md
    ├── ssrf.md
    ├── supply-chain.md
    └── xss.md
```

There are no scripts, scanner wrappers, bundles, pipelines, fixtures, assets,
templates, or required integrations.

## Source basis

At runtime, `SKILL.md` loads shared [Praxis Control](../../references/control.md)
once at owner entry.


This contract is maintained against plugin-local [Premise](../../docs/concepts/premise.md),
[System](../../docs/concepts/system.md), [Control](../../docs/concepts/control.md),
[Context](../../docs/concepts/context.md), [Work](../../docs/concepts/work.md),
the [skill-package contract](../../docs/maintainers/skill-packages.md), the
[conformance contract](../../docs/maintainers/conformance-and-release.md), the
shared [Evaluation](../../references/evaluation.md), the seventeen declared
local references, and assembled [Delegate](../delegate/SPEC.md),
[Research](../research/SPEC.md), [Verify](../verify/SPEC.md), [Setup](../setup/SPEC.md),
and [Check Safety](../check-safety/SPEC.md) contracts. These plugin-local files
are the complete maintainer source basis; no non-plugin material is required
to use, review, validate, or maintain this package.

## Conformance cases

1. A target with no credible attacker surface returns a scoped conversational
   `no-op` or caller-owned baseline judgment rather than running the full
   procedure.
2. A narrow hypothesis fixes its governing expectation and loads only the
   reference that changes its reasoning.
3. An attack path crossing domains composes the relevant references while
   retaining one causal finding and one owner.
4. A scanner or advisory warning rejected by reachability, control, protection,
   or consequence evidence is dismissed rather than reported as a finding.
5. A validated exploit reports attacker capability, bypassed control,
   consequence, preconditions, confidence, severity, and decisive evidence.
6. An unresolved candidate remains `needs-verification` with its missing proof;
   it is not inflated into a confirmed vulnerability.
7. A hardening suggestion remains separate from an actual defect.
8. Confidence and severity remain distinct, and correlated tools or agents are
   one evidence path with visible limitations.
9. Passive local tools run with announced effect and target; unrequested
   Docker is neither installed nor treated as a Praxis-wide dependency.
10. An authorized active probe runs only after exact target authority and
    `Check Safety` returns `proceed`; unsafe shared resources return `revise` or
    `stop` without traffic.
11. Findings that invalidate a Requirement, Evolution, Issue, design choice,
    proof obligation, or authority boundary return to that causal owner.
12. Search stops when another bounded attempt is unlikely to add information,
    confidence, or coverage materially.
13. A Review-owned security review receives attacker evidence without Security
    taking proposal attribution, integrated judgment, acceptance, or next
    action.
14. An assurance-component call appends its callee to `assurance_path`; a
    capability already in the path is not called again for the same work.
