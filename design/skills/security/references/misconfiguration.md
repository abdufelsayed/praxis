# Security Misconfiguration

> **Status: accepted semantic source; target runtime projection: `references/misconfiguration.md`.**

> Load when deployment, runtime, network, privilege, browser policy, or insecure
> defaults can change the security result.

Reconstruct effective configuration across source defaults, environment,
generated files, container or orchestrator settings, proxies, cloud policy,
runtime flags, and deployment overrides. Inspect debug modes, exposed
administrative surfaces, default credentials, permissive CORS, missing browser
headers, weak TLS choices, open network listeners, excessive privileges,
filesystem permissions, secret injection, isolation, and environment drift.

Do not treat every missing hardening header or noncanonical setting as a
vulnerability. Establish the governing protection, the effective deployed
value, attacker reachability, and consequence. A secure source default may be
overridden in production; a scary fixture or development configuration may be
unreachable from the reviewed target.

Prefer project-native configuration validation and read-only inspection.
Remote environment access, persistent changes, or active probes retain their
exact authority boundaries.

## Sources

- [OWASP Secure Headers Project](https://owasp.org/www-project-secure-headers/)
- [OWASP Transport Layer Security Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Security_Cheat_Sheet.html)
- [CWE-16: Configuration](https://cwe.mitre.org/data/definitions/16.html)
