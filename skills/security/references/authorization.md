# Authorization and access control

Load when the result depends on whether a known actor may perform an action
on a resource.

Trace `actor -> action -> resource -> policy -> enforcement -> effect`.
Identify identity provenance, exact resource and tenant, role, capability,
ownership, delegation, state inputs, and the boundary responsible for the
final decision. Follow alternate routes, bulk operations, jobs, queues,
caches, internal services, impersonation, and delegated calls. Check whether
authorization became stale after revocation or a state transition. Enforcement
must happen before every consequential effect at a boundary every relevant
path reaches.

An attacker-controlled identifier plus a local missing check is only a
hypothesis: a centralized tenant-scoped lookup or authoritative downstream
policy may be the correct enforcement point. Conversely, middleware can be
present while enforcing the wrong tenant, role, resource, or action. Confirm a
reachable path, attacker-controlled identity or authority, governing policy,
ineffective or bypassable enforcement, and an observable unauthorized effect.

Sources: [OWASP Authorization Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html),
[OWASP BOLA](https://owasp.org/API-Security/editions/2023/en/0xa1-broken-object-level-authorization/),
[CWE-862](https://cwe.mitre.org/data/definitions/862.html),
[Sentry security-review references](https://github.com/getsentry/skills/tree/main/skills/security-review/references).
