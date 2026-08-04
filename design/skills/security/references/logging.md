# Security Logging and Auditability

> **Status: accepted semantic source; target runtime projection: `references/logging.md`.**

> Load when detection, attribution, incident reconstruction, tamper resistance,
> or sensitive log content affects the security question.

Identify security-relevant events and the questions an operator must answer:
who acted, on what, through which identity and authority, when, with what
result, and which request or transaction connects the evidence. Preserve event
meaning across services without placing secrets, credentials, tokens, raw
personal data, or attacker-controlled log structure into the record.

Inspect missing high-value events, inconsistent identifiers, log injection,
silent authorization failures, excessive sensitive content, mutable or
unprotected audit trails, clock and retention limits, alert routing, and the
ability of the actor being audited to erase the evidence.

Logging rarely prevents the primary exploit. Report missing auditability as a
defect only when an accepted security or operational requirement depends on
it; otherwise keep it as hardening with explicit value and limitations.

## Sources

- [OWASP Logging Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html)
- [CWE-117: Improper Output Neutralization for Logs](https://cwe.mitre.org/data/definitions/117.html)
- [CWE-778: Insufficient Logging](https://cwe.mitre.org/data/definitions/778.html)
