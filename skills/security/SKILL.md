---
name: security
description: "Investigate one bounded attacker-focused question. Use for credible trust-boundary, identity, authorization, attacker-controlled input, sensitive-data, permission, cryptography, dependency, remote-execution, secret, or deployment exposure; direct security reviews use Review."
---

# Security

Load [Praxis Control](../../references/control.md).

Security is a supporting capability inside the active Inquiry. It may pursue
the bounded attacker question autonomously within the inquiry's policy, but it
does not select a lifecycle position, meaningful transition, gate, authority,
or continuation. A direct security request may establish one bounded Inquiry.

Security owns attacker modeling, exploitability, severity, confidence, and
coverage. A direct security review of a diff, component, or result remains
[Review](../review/SKILL.md)-owned and uses Security for this evidence.

## Bind and map the attacker question

Fix the target, accepted expectation, governing meaning, architecture, policy,
constraints, exclusions, authority, known evidence, and decision needed.
Identify assets and properties, actors and privileges, trust boundaries,
attacker-controlled inputs, sensitive data, consequential effects, controls,
and the behavior an attacker would need to violate. Missing security meaning
returns to Requirements or Formalization. If no credible surface remains,
return a scoped `no-op`, never a security guarantee.

Trace real source, dependencies, configuration, tests, environment, and
controls. Load only references whose condition is present:

- [API security](references/api-security.md),
  [authentication](references/authentication.md), or
  [authorization](references/authorization.md) for request, identity, and
  actor-action-resource boundaries;
- [injection](references/injection.md), [XSS](references/xss.md),
  [CSRF](references/csrf.md), or [deserialization](references/deserialization.md)
  for interpreter and browser boundaries;
- [file security](references/file-security.md),
  [cryptography](references/cryptography.md), and
  [data protection](references/data-protection.md) for local and sensitive data;
- [SSRF](references/ssrf.md), [misconfiguration](references/misconfiguration.md),
  and [supply chain](references/supply-chain.md) for system and trust boundaries;
- [business logic](references/business-logic.md),
  [error handling](references/error-handling.md),
  [logging](references/logging.md), and
  [resource abuse](references/resource-abuse.md) for workflow, disclosure,
  detection, and attacker-amplified cost.

Load shared [evaluation guidance](../../references/evaluation.md) only when
multiple hypotheses, tools, agents, repeated attempts, or conflicting evidence
need independence or adaptive synthesis.

## Establish exploitability

For every candidate show, in order: reachable path; attacker control; absent,
ineffective, or bypassable protection; meaningful consequence; required
environment and preconditions. Scanner warnings, advisories, suspicious
patterns, and agent hypotheses are candidates, not findings. Check framework
protections and business-logic interactions, then use the narrowest safe source
proof, test, reproduction, or local probe that distinguishes a vulnerability
from a false positive.

Keep confidence (`confirmed`, `strongly supported`, `needs verification`)
separate from project-specific severity. Distinguish confirmed defects,
unresolved candidates, dismissed false positives, and hardening ideas.

Prefer project-native checks. Otherwise use only providers whose surfaces add
distinct information. Passive deterministic scans may run under existing
read-only or Delivery authority after naming tool, target, purpose, and
isolation. Active probes stay in isolated local environments with synthetic
data unless exact target-specific human authority covers more. Keep output
private and redacted; avoid credentials, privileged sockets, and unnecessary
network or write access.

If required disposable isolation is unavailable and the requester selects setup,
call [Setup](../setup/SKILL.md). Paid scans, remote traffic, real accounts or
credentials, provider-side checks, remote infrastructure, privileged
containers, persistent configuration, and consequential operations require
exact current authority. A consequential active probe additionally requires
[Check Safety](../check-safety/SKILL.md) `proceed`.

Setup `ready` or `already-ready` supplies only the selected readiness;
`partial` continues only when that condition is ready; `failed` or `blocked`
blocks the probe; and `stopped` stops. Check Safety releases only the exact
probe on `proceed`; `revise` or `stop` performs no effect.

Call [Delegate](../delegate/SKILL.md) only for a materially useful independent
path, [Research](../research/SKILL.md) for a consequential external or domain
fact, and [Verify](../verify/SKILL.md) for one exact executable security claim.
Do not re-enter Verify when already active in the assurance path. These owners
supply evidence; Security retains exploitability and severity.

Delegate `delegated` integrates scoped evidence and `partial` preserves gaps;
Research `answered` integrates, `unverified` or `conflicting` becomes
`needs-verification`, `revised` or `needs-human-judgment` returns to its owner,
and `no-op`, `blocked`, or `stopped` stays exact. Verify `verified`, `failed`,
or `unverified` remains one scoped claim; when Verify is already in the path,
return `needs-verification` without re-entry.

## Return narrowly

Return target and expectation, examined surfaces and paths, providers and
probes, confirmed findings, candidates needing proof, dismissed false
positives, separate hardening, coverage limits, remediation or backtracking
recommendation, and causal owner. Use `no-op`, `findings`,
`no-high-confidence-findings`, `needs-verification`, `needs-owner`, `blocked`,
or `stopped`. Say only that no high-confidence vulnerability was identified in
the reviewed scope—not that the target is secure. Keep raw scan output,
exploit detail, and secrets private. Security does not fix, approve, accept, or
authorize remediation.
