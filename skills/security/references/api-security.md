# API security

Load when endpoint or protocol shape introduces a security question not
captured by one narrower property.

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

Attribute the actual failed property precisely—such as authentication,
authorization, injection, resource bounds, or data protection—instead of
creating a generic API vulnerability.

Sources: [OWASP API Security Top 10](https://owasp.org/API-Security/),
[OWASP REST Security Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/REST_Security_Cheat_Sheet.html),
[OWASP GraphQL Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/GraphQL_Cheat_Sheet.html).
