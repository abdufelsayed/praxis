# CSRF and cross-origin requests

Load when a browser may attach ambient authority to an attacker-initiated or
cross-origin request.

Map the state-changing operation, browser-carried credentials, permitted
methods and content types, origin policy, token validation, cookie `SameSite`
behavior, CORS, redirects, and login or logout transitions. Determine whether
the attacker can cause the browser to send an accepted request and whether
reading the response is necessary for harm.

Do not confuse CORS with CSRF protection. Simple forms and requests may still
cause effects; an API using an explicit bearer token unavailable to the
attacker origin may not have ambient authority. Prove the real browser path and
unauthorized state change. Token presence is insufficient if it is predictable,
unbound, attacker-controlled, or skipped on alternate routes.

Sources: [OWASP CSRF Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html),
[OWASP CORS Configuration](https://cheatsheetseries.owasp.org/cheatsheets/Cross-Origin_Resource_Sharing_Cheat_Sheet.html),
[CWE-352](https://cwe.mitre.org/data/definitions/352.html).
