# Security logging and auditability

Load when detection, attribution, incident reconstruction, tamper resistance,
or sensitive log content affects the security question.

Identify security-relevant events and the operator's questions: who acted, on
what, through which identity and authority, when, with what result, and which
request or transaction connects the evidence. Preserve event meaning across
services without secrets, credentials, tokens, raw personal data, or
attacker-controlled log structure.

Inspect missing high-value events, inconsistent identifiers, log injection,
silent authorization failures, excessive sensitive content, mutable or
unprotected audit trails, clock and retention limits, alert routing, and the
audited actor's ability to erase evidence. Report missing auditability as a
defect only when an accepted security or operational requirement depends on it;
otherwise keep it as hardening.

Sources: [OWASP Logging](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html),
[CWE-117](https://cwe.mitre.org/data/definitions/117.html),
[CWE-778](https://cwe.mitre.org/data/definitions/778.html).
