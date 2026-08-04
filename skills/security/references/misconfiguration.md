# Security misconfiguration

Load when deployment, runtime, network, privilege, browser policy, or insecure
defaults can change the security result.

Reconstruct effective configuration across source defaults, environment,
generated files, container or orchestrator settings, proxies, cloud policy,
runtime flags, and deployment overrides. Inspect debug modes, exposed
administrative surfaces, default credentials, permissive CORS, missing browser
headers, weak TLS, open listeners, excessive privileges, filesystem
permissions, secret injection, isolation, and environment drift.

Do not treat every missing hardening header or noncanonical setting as a
vulnerability. Establish the governing protection, effective deployed value,
attacker reachability, and consequence. Prefer project-native validation and
read-only inspection; remote access, persistent changes, and active probes
retain their exact authority boundaries.

Sources: [OWASP Secure Headers](https://owasp.org/www-project-secure-headers/),
[OWASP TLS](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Security_Cheat_Sheet.html),
[CWE-16](https://cwe.mitre.org/data/definitions/16.html).
