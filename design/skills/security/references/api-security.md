# API Security

> **Status: accepted semantic source; target runtime projection: `references/api-security.md`.**

> Load when endpoint or protocol shape introduces a security question not
> captured by one narrower property reference.

## Treat the API as a boundary

Inventory externally reachable methods, transports, versions, content types,
batch paths, webhooks, asynchronous entry points, and administrative or
internal routes. Reconstruct how identity, authority, object selection,
validation, rate limits, errors, and side effects compose across the boundary.

Look for mass assignment, over-broad response fields, method confusion,
duplicate or ambiguous parameters, inconsistent parsers, insecure defaults,
undocumented alternate routes, unsafe pagination or filtering, and versioned
paths that bypass current policy. GraphQL, REST, RPC, and event consumers have
different mechanics but the same requirement: attacker-controlled protocol
choices must not alter governing meaning or bypass enforcement.

Combine this reference with authorization, authentication, injection,
resource-abuse, or data-protection when those properties carry the actual
finding. Do not create a generic “API vulnerability” when a more precise causal
claim exists.

## Sources

- [OWASP API Security Top 10](https://owasp.org/API-Security/)
- [OWASP REST Security Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/REST_Security_Cheat_Sheet.html)
- [OWASP GraphQL Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/GraphQL_Cheat_Sheet.html)
