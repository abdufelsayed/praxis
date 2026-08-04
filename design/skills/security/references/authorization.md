# Authorization and Access Control

> **Status: accepted semantic source; target runtime projection: `references/authorization.md`.**

> Load when the result depends on whether a known actor may perform an action
> on a resource. Security retains the caller's question, exploitability
> judgment, confidence, return, and stopping.

## Reconstruct the real policy

Trace `actor -> action -> resource -> policy -> enforcement -> effect`.
Identify the actor's identity provenance, the exact resource and tenant, the
role, capability, ownership, delegation, and state inputs, and the boundary
responsible for the final decision. A nearby role check is not proof that the
accepted policy is enforced.

Follow alternate routes, bulk operations, jobs, queues, caches, internal
services, impersonation, and delegated calls. Check whether authorization was
captured earlier and became stale after revocation or a state transition.
Enforcement must precede every consequential effect at a boundary that all
relevant paths actually reach.

## Distinguish defects from safe indirection

An attacker-controlled identifier plus a local missing check is only a
hypothesis. A centralized tenant-scoped lookup or authoritative downstream
policy may be the correct enforcement point. Conversely, middleware can be
present while enforcing the wrong tenant, role, resource, or action.

Confirm a reachable path, attacker-controlled identity or authority, the
governing policy, ineffective or bypassable enforcement, and an observable
unauthorized consequence. Use the narrowest safe source proof or reproduction
that distinguishes the defect from a close protected case.

## Sources

- [OWASP Authorization Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html)
- [OWASP API Security: Broken Object Level Authorization](https://owasp.org/API-Security/editions/2023/en/0xa1-broken-object-level-authorization/)
- [CWE-862: Missing Authorization](https://cwe.mitre.org/data/definitions/862.html)
- [Sentry security-review references](https://github.com/getsentry/skills/tree/main/skills/security-review/references)
