# Security

> **Design document — not a runtime skill.** Accepted behavioral contract and target package design; runtime implementation pending.

## What it does

Security investigates whether an attacker can violate the expectations that
govern a bounded piece of work. It joins project truth, source inspection,
attack-path reasoning, focused proof, deterministic tools, optional agentic
scanners, and independent agents when they materially improve the answer.

Its leading idea is **research broadly, report narrowly**. Security may explore
many hypotheses, but only evidence-backed vulnerabilities belong in its
findings. Unresolved candidates remain visibly unverified, and hardening ideas
remain separate from defects.

Security is a reusable supporting discipline rather than a phase or review
workflow. [Discover Requirements](../discover-requirements/README.md) may
invoke it to expose security unknowns,
[Formalize](../formalize/README.md) may invoke it to challenge a proposed
contract or boundary, [Review](../review/README.md) may invoke it for
attacker-focused judgment, [Verify](../verify/README.md) may prove one exact
factual claim, and [Deliver](../deliver/README.md) may invoke it while
implementing or revalidating work. The
caller always retains its target, meaning, authority, result, acceptance, and
next action.

## When to reach for it

Invoke Security when the work materially touches a trust boundary, identity,
authentication, authorization, attacker-controlled input, sensitive data,
permissions, cryptography, dependency exposure, remote execution, secrets,
deployment configuration, or another credible attack surface.

Ordinary Review still applies baseline security judgment to code. It invokes
the richer Security procedure when a meaningful surface or credible hypothesis
needs threat modeling, vulnerability-specific investigation, specialized
tools, adversarial validation, or broader coverage.

A direct request to “security review” a diff, component, repository, or result
therefore uses Review as the owner and composes Security into its Engineering
Integrity judgment. Security does not duplicate target fixation, reported
scope, finding attribution, coverage, or the integrated Review result.

Do not run the full procedure merely because a repository contains code.
Security depth follows the target's exposure, consequence, uncertainty,
available evidence, and cost. A focused authorization change may need several
composed paths; a contained presentation-only edit may need none.

## Begin from the caller's question

The caller communicates its security question, target, accepted truth,
relevant constraints and exclusions, available authority, known evidence, and
the decision it needs to make. This may happen through ordinary conversation
or a native agent message; it is not a settled serialized envelope.

Read only the Requirements, selected Evolution or Issues, architecture,
security policy, source, dependencies, environment facts, and exclusions
needed to understand that question.

Then identify:

- the assets and security properties that matter;
- the actors and privileges involved;
- trust boundaries and attacker-controlled inputs;
- sensitive data and consequential side effects;
- existing controls and framework protections; and
- the behavior an attacker would need to violate.

Do not dump all durable Praxis state into a scanner or delegate. Give each tool
or agent the smallest accepted context that changes its search or
interpretation. If the security expectation itself is missing or contradictory,
return that gap to its exact Requirements or Formalization owner rather than
letting a tool invent the policy.

## Work inside the caller's ownership

The six Security “paths” describe invocation contexts rather than a
Security-owned lifecycle:

- Requirements Discovery owns security-unknown discovery.
- Formalization owns security meaning in Evolutions, Issues, and solution
  choices.
- Review owns proposal, code, component, repository, and result reviews.
- Verify owns an exact executable factual claim when one is needed.
- Delivery owns planning, remediation, revalidation, integration, and result
  explanation.
- The current caller interprets hardening and recommends any new work.

Security selects and combines only the attacker-focused reasoning needed by
that caller. A design assessment may expose one replay hypothesis and validate
it against current source without expanding into repository review or
remediation. This is local recursion around one question, not an automatic
security lifecycle.

Before selecting an audit path that depends on disposable isolation, Security
checks whether Docker is available and whether that path is worth its setup
cost. If Docker is missing but needed for an honest result, Security tells the
human what is needed and recommends Setup. Security retains the audit question;
Setup handles the human's explicit setup choice and readiness.

## Load rich context progressively

Use whatever reference is likely to improve the current judgment: focused
security guidance, OWASP or CWE material, current official documentation,
source code, tests, rubrics, tool documentation, or another high-fidelity
implementation.

Built-in references are a curated non-exhaustive library. They do not define
Praxis's security ontology or promise universal language, framework,
infrastructure, vulnerability, or tool coverage. If no reference fits, reason
from governing security properties, current source, and authoritative research
rather than skipping the surface.

References may contain concrete code, search commands, tests, examples, and
opinionated methods when those make the concept easier to use. They remain
context for model judgment: a syntactic match never establishes attacker
control, reachability, a bypass, or consequence by itself.

### Use an open coverage map

The following map helps Security notice distinct kinds of reasoning that may
matter. It is neither a mandatory checklist nor a promise that Praxis ships one
built-in file for every domain.

**Identity and authority**

- Authorization and Access Control
- Authentication and Session Security

**Interpreters and request boundaries**

- Injection
- Deserialization and Object Reconstruction
- Protocol and Request-Boundary Security

**Browser boundaries**

- XSS and Unsafe Rendering
- CSRF and Cross-Origin Request Security

**Data and local resources**

- File Handling, Uploads, and Path Security
- Cryptography, Secrets, and Tokens
- Sensitive-Data Protection and Privacy
- Memory Safety and Unsafe Boundaries
- Race Conditions and State Integrity
- Resource Exhaustion and Denial of Service

**System and trust boundaries**

- External Requests and SSRF
- Network and Transport Security
- Isolation, Sandboxing, and Capability Boundaries
- AI, Agent, and Tool Security

**Application behavior**

- Business-Logic Abuse and Workflow Invariants
- Error Handling and Information Disclosure
- Logging, Auditability, and Security Monitoring

**Operational integrity**

- Runtime Configuration and Deployment Hardening
- Dependencies, Builds, and Software Supply Chain

Group references by a shared governing property and proof method rather than
by language, framework, deployment location, or vulnerability label alone.
Injection therefore may contain focused interpreter paths, while XSS and CSRF
remain separate because their attacker models, evidence, and mitigations
differ. The map remains open when a new domain requires materially different
reasoning.

A domain in this map does not require a built-in reference. Security ships a
curated baseline of focused references for recurring, consequential reasoning
and may use authoritative external or project-specific material for everything
else. Add, split, combine, or retire a reference when real use makes retrieval
clearer; never create an empty file merely to make the map look complete.

The baseline is deliberately finer-grained than the conceptual map so Security
can load authorization without also loading authentication, injection, or
unrelated browser guidance. Each reference teaches governing properties,
attack paths, proof methods, close safe cases, false-positive traps, and useful
evidence sources. It guides judgment and never turns a nearby syntax match into
a finding.

## Investigate hypotheses, then try to disprove them

Trace attacker-controlled data and authority through the real system. Check
whether framework protections are present, correctly configured, reached by
the relevant path, and resistant to bypass. Search broadly enough to find
interactions and business-logic failures that pattern scanners cannot see.

Treat every scanner warning, agent hypothesis, advisory match, and suspicious
source pattern as a candidate. Establish:

1. whether the path is reachable;
2. whether an attacker controls the relevant input or authority;
3. whether the expected protection is missing or bypassable;
4. what consequence can actually occur; and
5. which environment and preconditions are required.

Use the narrowest safe proof capable of distinguishing a vulnerability from a
false positive. That may be source evidence, a focused test, a disposable
reproduction, a local runtime probe, or corroboration from independent tools
or agents.

Confidence and severity answer different questions. Confidence states how well
the vulnerability is established: `confirmed`, `strongly supported`, or
`needs verification`. Severity describes project-specific impact and
exploitability only after enough evidence shows that the vulnerability exists.

## Combine agent reasoning with tools

Deterministic tools add coverage and disconfirming evidence, but each sees a
different slice of the system:

- Semgrep-style analysis finds language-aware patterns and some data flows but
  cannot be assumed to prove complete cross-component behavior.
- OSV-Scanner-style analysis matches dependencies, lockfiles, SBOMs, and images
  to known advisories; it does not prove that a vulnerable path is reachable.
- Trivy-style analysis covers dependencies, containers, IaC, secrets, and
  related configuration surfaces.
- Gitleaks-style analysis passively searches for exposed secrets while keeping
  output redacted.
- TruffleHog-style analysis can verify some credentials against providers, but
  active verification crosses a network and needs explicit authority.
- zizmor-style analysis targets GitHub Actions and related workflow risks.
- ZAP-style analysis probes running web behavior; active remote scanning needs
  target-specific authority.
- OpenSSF Scorecard-style analysis describes repository and supply-chain
  posture; a weak score is neither proof of a vulnerability nor a blocking
  finding by itself.

Use the smallest complementary set that materially improves coverage or
confidence. Project-native tooling comes first when it already exists.
Otherwise prefer official version-pinned disposable containers rather than
host installations or Praxis wrappers.

## Run disposable tools safely

A passive local deterministic scan may run under the caller's existing
read-only or Delivery authority after the agent tells the human which tool it
will run, against what target, for what purpose, and in what isolation. This is
an announcement, not a permission ritual.

An active adversarial probe may also run after announcement against an isolated
disposable local environment containing synthetic data when it stays inside the
accepted Delivery boundary. The agent should deny unnecessary network, mount
source read-only where possible, keep output private and redacted, avoid
credentials and the Docker socket, and use only controlled caches for
vulnerability databases.

Explicit target-specific human authority is still required for:

- paid agentic scans;
- active traffic against remote, shared development, staging, or production
  systems;
- real accounts, credentials, or data;
- provider-side credential verification;
- remote repository or infrastructure access;
- privileged containers or Docker-socket access;
- persistent project configuration;
- mutating, destructive, or otherwise consequential operations.

Docker changes installation mechanics, not the effect of the operation. A
temporary Dockerfile or Compose file may live in private disposable state when
the run genuinely needs one. Persisting it into the repository is an ordinary
Plan-governed product change.

Before any consequential active probe, invoke
[Check Safety](../check-safety/README.md) with the exact target, effect,
recovery, and authority. Security receives `proceed`, `revise`, or `stop` and
retains the threat question and probe boundary.

## Use independent agents when they improve the search

Security may invoke existing [Delegate](../delegate/README.md) roles without
inventing a mandatory
Security agent:

- Scout traces reachability, data flow, ownership, and local controls.
- Researcher checks protocols, advisories, dependencies, and external
  references.
- Reviewer independently searches for attack paths and governing violations.
- Verifier reproduces or falsifies one candidate.
- Oracle challenges a consequential threat model, unresolved disagreement, or
  possible context drift.
- Worker implements an accepted remediation only under separate bounded
  authority.

The supervisor keeps the security expectations, target, synthesis, confidence,
backtracking, gates, and human-facing output. Multiple isolated agents are
useful when attack-surface breadth, uncertainty, or independent judgment
justifies their cost. Stop adding agents when another search is unlikely to
increase coverage, confidence, or information materially.

Security applies Praxis's shared
[In-Context Reinforcement Learning premise](../../core/premise.md) to one
domain: form hypotheses, run probes, inspect results, revise, and retain only
the strongest supported conclusions. Security does not own this pattern. The
same fixed-weight, feedback-conditioned learning mechanism operates throughout
Requirements Discovery, Formalization, and Delivery.

## Compose Research and Verify without duplicating them

Security may inspect current source, advisories, dependency metadata, and
authoritative documentation as ordinary investigation. When one consequential
external or domain fact remains uncertain enough to block judgment,
Security invokes [Research](../research/README.md) for that bounded factual
question. Research returns evidence; Security interprets what it changes in
exploitability, confidence, and consequence.

Security owns exploitability reasoning and may gather ordinary scanner, source,
and safe-probe evidence directly. When a material conclusion depends on one
exact executable fact that deserves explicit falsification, Security or its
caller invokes [Verify](../verify/README.md). Verify returns the factual status;
Security interprets
what it means for the attack path, confidence, and consequence. Routine
investigation does not become a procession of Research or Verify calls.

## Return findings to the correct owner

Security does not fix by implication.

- A false positive is dismissed with the evidence that disproves it.
- An in-bound implementation defect may be corrected and re-proved by Delivery
  when accepted specifications and Plan authority remain valid.
- An unrelated pre-existing vulnerability returns to the human with evidence
  and a recommendation for separate work.
- A finding that invalidates a Requirement, Evolution, Issue, design choice,
  proof obligation, or authority boundary returns to that exact causal owner
  and materially affected gates.

The caller interprets this return. Security never approves a revised record,
authorizes remediation, accepts a result, or automatically starts another
activity.

## Report what was actually established

A useful result states:

- the target and governing security expectations;
- the attack surfaces and vulnerability paths examined;
- the tools, probes, and independent agents used;
- confirmed high-confidence findings;
- candidates that still need verification;
- hardening suggestions kept separate from defects;
- unexamined surfaces and other coverage limitations; and
- the recommended remediation or backtracking path.

This is a settled semantic content contract, not a fixed serialized envelope.
Native messages carry it directly, and durable truth is promoted only into the
record that owns its meaning. A concrete harness adapter may choose a
machine-readable encoding without changing those semantics.

Use precise language. “No high-confidence vulnerabilities were identified in
the reviewed scope” is supportable when the stated coverage is honest.
“Secure” is not.

Raw scanner output, exploit detail, sensitive excerpts, and failed search
branches normally stay in private tool state. If a future activity needs
continuity, preserve only a compact receipt containing the target,
tool/version, coverage, finding identifiers, triage outcome, remediation proof,
and a private evidence reference.

A durable revisable threat model is justified only when a named future consumer
will use it. Reference it from the relevant Project, Evolution, or Issue; it
informs later searches but does not become an approval gate or authority
source.

## It is working when

- Security depth follows a real attack surface and consequence.
- Governing expectations come from accepted project truth.
- Several relevant paths can compose without forcing a universal checklist.
- Tool warnings remain hypotheses until validated.
- Confidence is separate from severity.
- Passive local tools run with clear isolation and effect-based authority.
- Paid, remote, credentialed, privileged, persistent, and mutating effects wait
  for exact authority.
- Confirmed defects, unresolved candidates, and hardening remain distinct.
- Findings return to the exact causal owner.
- Coverage and uncertainty are explicit.
- More search stops when its expected information gain becomes marginal.
- The owning Praxis loop retains acceptance and the next decision.

## Skill structure

Keep the runtime `SKILL.md` lean: invocation semantics, the attacker-evidence
loop, validation and confidence, effect-based authority, caller ownership,
return, and stopping. It should name progressively loadable references without
turning their inventory into a mandatory checklist.

[Review](../review/README.md), Requirements Discovery, Formalization,
[Deliver](../deliver/README.md), or another owner invokes Security for one
attacker-focused question and keeps the governing target, authority, integrated
judgment, and next action. Security may invoke
[Delegate](../delegate/README.md) for bounded independent search,
[Research](../research/README.md) for one blocking external fact,
[Verify](../verify/README.md) for one exact executable claim, and
[Check Safety](../check-safety/README.md) before a consequential active probe.
Those skills
return evidence; Security retains exploitability interpretation and creates no
gate.

Use Sentry and authoritative security sources as research inputs rather than
copying one organization's reference tree wholesale. The accepted baseline is
focused and non-exhaustive. Load only references justified by the current
surface, combine them when an attack path crosses properties, and use live
research when the built-in material is missing, stack-specific, or stale.

The baseline may evolve through ordinary source-grounded maintenance and real
use. Praxis does not require an executable evaluation or admission system for a
useful reference. Human-readable vulnerable and close safe examples remain
valuable teaching and review material, not a fixture suite or release gate.

No `code-review.md` is needed because Review already owns that procedure. Call
tools directly through their native interfaces; do not add Praxis scanner
scripts, a CLI wrapper, a universal bundle, or a fixed pipeline.

## Research basis

Codex Security is retained below only as a studied example of iterative
agentic security search. It is not a Praxis integration, Setup option, runtime
dependency, or recommended provider.

- [Codex Security documentation](https://learn.chatgpt.com/docs/security)
- [Codex Security open-source repository](https://github.com/openai/codex-security)
- [OpenAI research-preview announcement](https://openai.com/index/codex-security-now-in-research-preview/)
- [OpenAI help article](https://help.openai.com/en/articles/20001107-codex-security)
- [Sentry's security-review skill](https://github.com/getsentry/skills/tree/main/skills/security-review)
- [Anthropic's new context-engineering rules](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models)
- [Semgrep](https://github.com/semgrep/semgrep)
- [OSV-Scanner](https://google.github.io/osv-scanner/)
- [Trivy](https://github.com/aquasecurity/trivy)
- [Gitleaks](https://github.com/gitleaks/gitleaks)
- [TruffleHog](https://github.com/trufflesecurity/trufflehog)
- [zizmor](https://github.com/zizmorcore/zizmor)
- [ZAP Automation Framework](https://www.zaproxy.org/docs/automate/automation-framework/)
- [OpenSSF Scorecard](https://github.com/ossf/scorecard)

## Direct dependencies

### Skills

- [Delegate](../delegate/README.md) — run bounded independent attacker or
  evidence paths; return compact findings; Security retains threat synthesis.
- [Research](../research/README.md) — resolve one external or repository fact;
  return evidence and limits; Security retains exploitability interpretation.
- [Verify](../verify/README.md) — prove one exact security claim; return current
  evidence; Security retains severity and coverage.
- [Setup](../setup/README.md) — prepare Docker after Security's concrete
  recommendation and the human's explicit setup choice; return readiness and
  limits; Security retains the audit question and authority boundary.
- [Check Safety](../check-safety/README.md) — inspect a consequential active
  probe; return `proceed`, `revise`, or `stop`; Security retains the probe
  question and authority boundary.

### Shared references

- [Feedback and Evaluation](../../references/feedback-and-evaluation.md) —
  govern multi-hypothesis search and conflicting agent or tool evidence.

## Target runtime package

> **Status: accepted target package design; runtime implementation pending.**
> This section is not implementation authority.

### Invocation and host projection

Security is model-invoked when a concrete target exposes a credible attacker
surface or attacker-focused question.

```yaml
---
name: security
description: "Investigate one bounded attacker-focused question. Use for credible trust-boundary, identity, authorization, attacker-controlled input, sensitive-data, permission, cryptography, dependency, remote-execution, secret, or deployment exposure; direct security reviews use Review."
---
```

```yaml
interface:
  display_name: "Security"
  short_description: "Investigate one credible attacker path"
  default_prompt: "Use $security to investigate this attacker-focused question."
policy:
  allow_implicit_invocation: true
```

### Information hierarchy and references

`SKILL.md` keeps caller question and ownership, governing expectations,
attacker-evidence loop, hypothesis validation, confidence versus severity,
progressive loading, effect-based authority, supporting calls, finding classes,
coverage, return, and stopping inline. Investigation completes when every
material reported vulnerability has validated evidence and unresolved
candidates and hardening remain separately labeled.

| Decision point | Target reference | Load when | Keep inline when | Semantic ownership | Source material | Direct consumers | Gaps |
| --- | --- | --- | --- | --- | --- | --- | --- |
| API contracts and request boundaries | `references/api-security.md` | Endpoint shape, method semantics, mass assignment, protocol ambiguity, or cross-boundary request handling matters. | The question is solely one separately covered property. | Security | [API Security](references/api-security.md) | Security | None. |
| Identity establishment and continuity | `references/authentication.md` | Login, credentials, recovery, sessions, MFA, identity transitions, or account enumeration matters. | Identity provenance is already settled and only authorization is in question. | Security | [Authentication and Session Security](references/authentication.md) | Security | None. |
| Authority and access decisions | `references/authorization.md` | Actor, action, resource, tenant, ownership, delegation, role, capability, revocation, or enforcement placement matters. | No access-control decision affects the path. | Security | [Authorization and Access Control](references/authorization.md) | Security | None. |
| Interpreter boundary | `references/injection.md` | Attacker-controlled data may be interpreted as code, query, command, template, header, or another executable grammar. | Data remains inert throughout the path. | Security | [Injection](references/injection.md) | Security | None. |
| Browser rendering | `references/xss.md` | Untrusted content reaches HTML, DOM, script, URL, CSS, or another browser execution context. | No browser interpretation boundary exists. | Security | [XSS and Unsafe Rendering](references/xss.md) | Security | None. |
| Cross-origin action | `references/csrf.md` | Browser ambient authority, cross-origin requests, CORS, SameSite, or state-changing actions matter. | The client does not carry ambient browser authority. | Security | [CSRF and Cross-Origin Requests](references/csrf.md) | Security | None. |
| Files, uploads, and paths | `references/file-security.md` | Paths, archives, uploads, downloads, file types, storage names, or filesystem boundaries matter. | No file or path operation exists. | Security | [File, Upload, and Path Security](references/file-security.md) | Security | None. |
| Cryptographic protection | `references/cryptography.md` | Randomness, keys, signatures, encryption, hashing, comparison, or cryptographic protocol use matters. | The governing question is only data handling outside cryptography. | Security | [Cryptography, Secrets, and Tokens](references/cryptography.md) | Security | None. |
| Sensitive-data lifecycle | `references/data-protection.md` | Collection, storage, transport, logs, caches, backups, retention, deletion, or privacy exposure matters. | No protected data is in scope. | Security | [Data Protection and Privacy](references/data-protection.md) | Security | None. |
| Object reconstruction | `references/deserialization.md` | Structured attacker data selects types, constructors, hooks, object graphs, or parser behavior. | Parsing cannot instantiate behavior or cross a trust boundary. | Security | [Deserialization and Object Reconstruction](references/deserialization.md) | Security | None. |
| Outbound requests | `references/ssrf.md` | Attacker influence may reach a URL, host, redirect, proxy, DNS, webhook, fetcher, or internal service. | Destinations are fixed and not attacker-influenced. | Security | [External Requests and SSRF](references/ssrf.md) | Security | None. |
| Workflow and state invariants | `references/business-logic.md` | Valid-looking actions, order, replay, races, limits, or economic behavior may violate a domain invariant. | The question is fully explained by another narrow technical property. | Security | [Business Logic and State Abuse](references/business-logic.md) | Security | None. |
| Runtime and deployment posture | `references/misconfiguration.md` | Headers, CORS, debug behavior, defaults, network exposure, privilege, isolation, or deployment settings matter. | Runtime configuration cannot change the security result. | Security | [Security Misconfiguration](references/misconfiguration.md) | Security | None. |
| Build and dependency trust | `references/supply-chain.md` | Dependencies, CI authority, install hooks, build inputs, artifacts, provenance, or release paths matter. | No external build or dependency trust enters the target. | Security | [Supply Chain and Build Security](references/supply-chain.md) | Security | None. |
| Failure disclosure | `references/error-handling.md` | Errors, status differences, timing, diagnostics, retries, or fallback behavior may expose or weaken protection. | Failures reveal nothing consequential and preserve the governing property. | Security | [Error Handling and Information Disclosure](references/error-handling.md) | Security | None. |
| Audit trail | `references/logging.md` | Security events need detection, attribution, tamper resistance, safe content, or operational response. | Logging has no role in the governing question. | Security | [Security Logging and Auditability](references/logging.md) | Security | None. |
| Attacker-controlled cost | `references/resource-abuse.md` | Input can amplify CPU, memory, storage, queue, network, third-party, or financial work. | Resource use is bounded independently of attacker choice. | Security | [Availability and Resource Abuse](references/resource-abuse.md) | Security | None. |
| Multi-path evidence | `../../references/evaluation.md` | Several hypotheses, agents, or tools may be correlated or conflict. | One evidence path answers one narrow claim. | Cross-skill | [Feedback and Evaluation](../../references/feedback-and-evaluation.md) | Security | None. |

The open attack-surface map, entry, authority, direct calls, synthesis, return,
and stopping remain inline because they govern every Security invocation.
Focused local references carry only conditional domain knowledge and proof
methods.

The existing Delegate, Research, Verify, Setup, and Check Safety calls are
accepted. Passive inspection is read-only; paid, remote, credentialed,
privileged, persistent, mutating, production, or data-affecting actions require
exact authority. No scanner script, asset, fixture, template, universal
checklist, or required integration is packaged. The focused local references
above form a curated starting library, not a coverage promise.

`SPEC.md` adds cases for no credible surface, narrow hypothesis, selective
reference loading, cross-reference attack paths, tool warning rejected,
validated exploit, unresolved candidate, hardening idea, confidence versus
severity, correlated agents, passive local tool, unrequested Docker,
authorized active probe, unsafe shared resources, causal-owner return,
marginal information-gain stop, and Review-owned security review. It does not
add an executable reference-admission framework.
