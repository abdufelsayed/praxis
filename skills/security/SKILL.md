---
name: security
description: Investigate a bounded attacker-focused question or review a target for credible trust-boundary, identity, authorization, input, data, dependency, secret, or deployment exposure.
---

# Security

Security establishes attacker paths, exploitability, severity, confidence, and
coverage. A scanner warning or suspicious pattern is a candidate, not a finding.

## Map the question

Fix the target, expected security property, relevant architecture and policy,
exclusions, known evidence, and decision needed. Identify assets and properties,
actors and privileges, trust boundaries, attacker-controlled inputs, sensitive
data, consequential effects, controls, and the behavior an attacker would need
to violate.

Trace actual source, dependencies, configuration, tests, environment, and
framework protections. Read only references whose condition is present:

- [API security](references/api-security.md),
  [authentication](references/authentication.md), and
  [authorization](references/authorization.md) for request and identity boundaries;
- [injection](references/injection.md), [XSS](references/xss.md),
  [CSRF](references/csrf.md), and
  [deserialization](references/deserialization.md) for interpreter and browser
  boundaries;
- [file security](references/file-security.md),
  [cryptography](references/cryptography.md), and
  [data protection](references/data-protection.md) for local and sensitive data;
- [SSRF](references/ssrf.md), [misconfiguration](references/misconfiguration.md),
  and [supply chain](references/supply-chain.md) for system and trust boundaries;
- [business logic](references/business-logic.md),
  [error handling](references/error-handling.md), [logging](references/logging.md),
  and [resource abuse](references/resource-abuse.md) for workflow, disclosure,
  detection, and attacker-amplified cost.

If no credible surface remains after inspection, report the reviewed scope rather
than making a global security claim.

## Establish exploitability

For every candidate show, in order: reachable path, attacker control, missing or
bypassable protection, meaningful consequence, and required preconditions.
Check counterevidence and framework protections. Use the narrowest safe source
proof, test, reproduction, or local probe that distinguishes a vulnerability from
a false positive.

Keep confidence—confirmed, strongly supported, or needs verification—separate
from project-specific severity. Distinguish defects, unresolved candidates,
dismissed false positives, and hardening opportunities.

Passive deterministic scans may run within existing read-only authority after
naming tool, target, purpose, and expected artifacts. Active probes belong in an
isolated local environment with synthetic data. Before paid scans, remote traffic,
real accounts or credentials, privileged containers, persistent configuration, or
other consequential probes, inspect the exact target and authorization, blast
radius, data exposure, cost, recovery, and destinations. Choose a safer bounded
probe or stop when any of those remains unclear.

Keep raw scan output, exploit detail, credentials, and sensitive evidence private
and redacted. Use Research for consequential current facts and Verify for one exact
executable security claim; neither changes Security's exploitability judgment.

## Report narrowly

Report examined surfaces and paths, confirmed findings, candidates needing proof,
dismissed false positives, separate hardening ideas, coverage limits, remediation
or backtracking recommendation, and the likely owner. Say only that no
high-confidence vulnerability was identified in the reviewed scope, never that the
target is secure.

Security does not fix, approve, accept, or authorize remediation unless the same
request explicitly asks for a separately bounded fix.
