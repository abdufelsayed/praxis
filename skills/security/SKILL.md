---
name: security
description: "Investigate one bounded attacker-focused question. Use for credible trust-boundary, identity, authorization, attacker-controlled input, sensitive-data, permission, cryptography, dependency, remote-execution, secret, or deployment exposure; direct security reviews use Review."
---

# Security

Investigate whether an attacker can violate one bounded expectation. Security
owns attacker modeling, exploitability, severity, confidence, and coverage;
the caller retains target meaning, authority, integrated judgment, acceptance,
and the next action. Research broadly, report narrowly.

## 1. Bind the question and owner

Take one security question, target, accepted expectation, relevant Requirements,
Evolution or Issues, architecture, policy, constraints, exclusions, available
authority, known evidence, and decision needed from the caller. A direct
request to “security review” a diff, component, repository, or result remains
Review-owned and composes this skill for attacker-focused evidence.

Carry `assurance_path`, defaulting to `[security]`, and follow the no-loop rule
under the local assurance-path no-loop rule for assurance calls.
Security always retains attacker-path, exploitability, severity, and coverage
interpretation.

Identify the assets and security properties, actors and privileges,
trust boundaries, attacker-controlled inputs, sensitive data, consequential
side effects, existing controls, and behavior an attacker would need to
violate. If governing security meaning is missing or contradictory, return the
gap to its exact Requirements or Formalization owner; tools do not invent
policy.

This step is complete when one bounded attacker question, owner, target,
expectation, authority, and exclusions are explicit, or the typed owner return
is made. If no credible attacker surface remains, return a scoped conversational
`no-op` to the caller rather than running the full procedure.

## 2. Map the surface and load only useful context

Trace the real source, dependencies, configuration, tests, environment facts,
and existing controls. Use this open coverage map to notice distinct reasoning
without turning it into a universal checklist:

- identity and authority: authentication, authorization;
- interpreters and request boundaries: API contracts, injection,
  deserialization;
- browser boundaries: XSS, CSRF and cross-origin requests;
- data and local resources: files and paths, cryptography and tokens,
  data protection, resource abuse;
- system and trust boundaries: SSRF, misconfiguration, supply chain;
- application behavior: business logic, error handling, logging; and
- any project-specific domain whose properties and proof differ materially.

Load only references whose condition is present:

- [`api-security.md`](references/api-security.md) for endpoint or protocol
  shape, method semantics, mass assignment, or cross-boundary requests;
- [`authentication.md`](references/authentication.md) for identity, recovery,
  credentials, MFA, sessions, or identity transitions;
- [`authorization.md`](references/authorization.md) for actor, action,
  resource, tenant, role, capability, delegation, or revocation decisions;
- [`injection.md`](references/injection.md) for data entering a query,
  command, template, header, expression, or executable grammar;
- [`xss.md`](references/xss.md) for untrusted browser rendering or execution;
- [`csrf.md`](references/csrf.md) for browser ambient authority and
  cross-origin state-changing requests;
- [`file-security.md`](references/file-security.md) for paths, uploads,
  archives, downloads, or filesystem effects;
- [`cryptography.md`](references/cryptography.md) for randomness, keys,
  signatures, encryption, hashing, comparisons, or tokens;
- [`data-protection.md`](references/data-protection.md) for sensitive-data
  collection, transport, storage, logs, caches, retention, or deletion;
- [`deserialization.md`](references/deserialization.md) for attacker-selected
  types, constructors, hooks, object graphs, or parser behavior;
- [`ssrf.md`](references/ssrf.md) for attacker-influenced URLs, hosts,
  redirects, DNS, proxies, webhooks, or callbacks;
- [`business-logic.md`](references/business-logic.md) for replay, ordering,
  races, limits, valid-looking sequences, or workflow invariants;
- [`misconfiguration.md`](references/misconfiguration.md) for deployment,
  runtime, network, privilege, browser policy, or insecure defaults;
- [`supply-chain.md`](references/supply-chain.md) for dependencies, CI,
  install hooks, build inputs, artifacts, provenance, or release paths;
- [`error-handling.md`](references/error-handling.md) for disclosure,
  enumeration, timing, retries, fallback, or fail-open behavior;
- [`logging.md`](references/logging.md) for detection, attribution, tamper
  resistance, audit trails, or sensitive log content; and
- [`resource-abuse.md`](references/resource-abuse.md) for attacker-amplified
  CPU, memory, storage, queues, network, third-party, or financial cost.

Load shared [`evaluation.md`](../../references/evaluation.md) only when
multiple hypotheses, tools, agents, repeated attempts, or conflicting evidence
need independence or adaptive synthesis. A local reference guides judgment;
syntax alone never establishes attacker control, reachability, a bypass, or
consequence.

This step is complete when the relevant attack paths, controls, references,
and evidence boundaries are named without claiming unexamined coverage.

## 3. Form and challenge attack hypotheses

Trace attacker-controlled data and authority through the real system. For each
candidate establish, in order:

1. the path is reachable;
2. the attacker controls the relevant input or authority;
3. an expected protection is absent, ineffective, or bypassable;
4. a meaningful security consequence can occur; and
5. the required environment and preconditions are present.

Treat scanner warnings, advisory matches, suspicious patterns, and agent
hypotheses as candidates. Check framework protections at the reached path and
their bypasses, and search interactions and business logic that patterns miss.
Use the narrowest safe source proof, focused test, disposable reproduction, or
local probe that distinguishes a vulnerability from a false positive.

Confidence and severity answer different questions. Use confidence
`confirmed`, `strongly supported`, or `needs verification`; assign
project-specific impact and exploitability severity only after the path is
established. Keep a dismissed candidate, an unresolved candidate, a confirmed
defect, and a hardening idea distinct.

This step is complete when every reported finding has validated reachability,
control, protection failure, consequence, and conditions, or each unresolved
candidate states the missing proof.

## 4. Use proportionate evidence providers

Prefer project-native checks. Otherwise choose the smallest complementary
providers whose surfaces add information: language-aware analysis, dependency
and advisory inspection, container or IaC checks, redacted secret search,
workflow analysis, web probes, or repository posture analysis. A provider is
an evidence source, not a finding, wrapper, required integration, universal
bundle, or fixed pipeline.

Passive local deterministic scans may run under existing read-only or Delivery
authority after announcing the tool, target, purpose, and isolation.
Deterministic and stochastic providers are ordinary evidence sources, not
findings or authority. When stochastic output is material, use the shared
Evaluation method to expose repetition, independence, evaluator sensitivity,
and uncertainty. An active adversarial probe may run only against an isolated
disposable local environment with synthetic data when it remains inside the
accepted boundary. Keep output private and redacted, deny unnecessary network,
mount source read-only where possible, avoid credentials and privileged
sockets, and use controlled caches for advisory data.

This step is complete when each provider or probe has a distinct evidence
purpose, effect, target, and limitation, and no warning is reported as a
vulnerability without validation.

## 5. Respect effect-based authority

Docker changes installation mechanics, not effect authority. Before choosing a
path that depends on disposable isolation, check Docker availability and
whether its setup cost is justified. If it is missing but needed for an honest
result, tell the human what is needed. After the human chooses that exact
setup, call [Setup](../setup/SKILL.md) for the selected repository/capability
readiness boundary. Consume
`ready` or `already-ready` as scoped readiness; preserve `partial` only when it
establishes the exact selected condition, otherwise map it to Security
`blocked`. Map Setup `blocked` or `failed` to Security `blocked` and Setup
`stopped` to Security `stopped`, without running the dependent path.

Exact target-specific human authority is required for paid agentic scans,
active traffic against remote, shared, staging, or production systems, real
accounts or credentials, provider-side credential verification, remote
repository or infrastructure access, privileged containers or Docker sockets,
persistent project configuration, and mutating, destructive, or otherwise
consequential operations.

Before an active probe with a credible consequential effect, call [Check
Safety](../check-safety/SKILL.md) for the exact action-time safety boundary.
Run only on `proceed`;
`revise` and `stop` return without the probe. Local preparation never implies
authority for the visible external action. Externality alone is not a Check
Safety trigger, even though the external action still requires exact
target-specific authority.

This step is complete when every effect is read-only or explicitly bounded by
current authority and safety evidence, or the missing boundary is returned.

## 6. Compose independent paths without transferring ownership

For each call, pass the callee's required current brief and preserve its exact
return, evidence, and limits; no call transfers authority or re-enters an
active assurance path. The policies below state only what each result means for this Security
question.

Call [Delegate](../delegate/SKILL.md) when a bounded independent Scout,
Researcher, Reviewer, Verifier, or Oracle path materially improves coverage,
confidence, or context. Pass the positive delegation benefit and role, exact
question, target, and intended evidence contribution.
Integrate `delegated`; preserve gaps from `partial`; use the direct path for
`no-op` or delegation-only `blocked`; and map evidence, authority, or access
`blocked` and human `stopped` directly. Stop adding agents when another search
is unlikely to change the judgment.

Call [Research](../research/SKILL.md) for one consequential external or domain
fact that remains uncertain, carrying the round identity
(`boundary_id`, `origin=security`, `return_to=security`,
`peer_edge_crossed=false`). Integrate `answered`; map `unverified` or
`conflicting` to Security `needs-verification`; map `revised` to `needs-owner`,
`blocked` to `blocked`, and `stopped` to `stopped`. A `no-op` short circuit uses the
already-sufficient input; `needs-human-judgment` maps to `needs-owner` at the
human boundary. Security interprets exploitability and severity.

Call [Verify](../verify/SKILL.md) for one exact executable security claim only
when its factual status deserves explicit falsification and `verify` is absent
from `assurance_path`, carrying the fixed claim and current assurance path.
Consume
`verified`, `failed`, or `unverified` as scoped evidence and map `stopped`
directly. If `verify` already appears in the path, do not call it again: return
`needs-verification` with the exact missing proof. Security retains attack
path, severity, and coverage. Routine investigation does not become a chain
of repeated Research or Verify calls.

This step is complete when supporting returns are integrated as bounded
evidence, conflicts and independence are visible, and no dependency has
granted authority, accepted a result, or selected the next workflow.

## 7. Return to the causal owner

Return a bounded Security result containing the target and governing
expectations, attack surfaces and paths examined, tools, probes, and agents
used, confirmed findings, candidates needing verification, hardening kept
separate from defects, coverage limits, and a supported remediation or
backtracking recommendation.

- A false positive is dismissed with its disconfirming evidence.
- An in-bound defect returns to Delivery for authorized correction and
  revalidation.
- An unrelated pre-existing vulnerability returns to the human for separate
  work.
- A finding that invalidates a Requirement, Evolution, Issue, design choice,
  proof obligation, or authority boundary returns to that exact causal owner.

Use these outcomes where applicable: `no-op`, `findings`,
`no-high-confidence-findings`, `needs-verification`, `needs-owner`, `blocked`,
or `stopped`. `no-op` means no credible attacker surface remained and carries
no security guarantee. “No high-confidence vulnerabilities were identified in
the reviewed scope” is scoped; “secure” is not.

## 8. Stop

Stop when every material reported vulnerability has validated evidence and
unresolved candidates, hardening, coverage, uncertainty, authority, and causal
owner are explicit. Keep raw scanner output, exploit detail, secrets, and
failed branches private. Persist only a compact pointer when a named future
consumer needs continuity. Security never fixes by implication, approves a
record, accepts a result, authorizes remediation, or starts another activity.
