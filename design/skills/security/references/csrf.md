# CSRF and Cross-Origin Requests

> **Status: accepted semantic source; target runtime projection: `references/csrf.md`.**

> Load when a browser may attach ambient authority to an attacker-initiated or
> cross-origin request.

Map the state-changing operation, browser-carried credentials, permitted
methods and content types, origin policy, token validation, cookie `SameSite`
behavior, CORS configuration, redirects, and login or logout transitions.
Determine whether the attacker can cause the browser to send an accepted
request and whether reading the response is actually necessary for harm.

Do not confuse CORS with CSRF protection. CORS controls response access for
browser scripts; simple forms and requests may still cause effects. Conversely,
an API using an explicit bearer token unavailable to the attacker origin may
not have ambient browser authority.

Prove the real browser path and resulting unauthorized state change. Treat
token presence alone as insufficient if it is predictable, not bound to the
session, accepted from attacker-controlled locations, or skipped on alternate
routes.

## Sources

- [OWASP CSRF Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html)
- [OWASP CORS Configuration](https://cheatsheetseries.owasp.org/cheatsheets/Cross-Origin_Resource_Sharing_Cheat_Sheet.html)
- [CWE-352: Cross-Site Request Forgery](https://cwe.mitre.org/data/definitions/352.html)
