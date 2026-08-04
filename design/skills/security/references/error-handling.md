# Error Handling and Information Disclosure

> **Status: accepted semantic source; target runtime projection: `references/error-handling.md`.**

> Load when failure behavior can reveal protected information, weaken a
> security property, or trigger an unsafe fallback.

Trace expected and unexpected failures through boundaries, retries, fallbacks,
partial writes, cleanup, and user-visible responses. Compare status codes,
response bodies, headers, timing, logs, metrics, traces, and side effects across
close protected and unprotected cases.

Look for secrets, stack traces, internal paths, query fragments, tokens,
personal data, tenant existence, account enumeration, policy details, parser
differences, fail-open behavior, inconsistent rollback, retry amplification,
and errors swallowed before an unsafe continuation.

Do not label every detailed development error a production vulnerability.
Establish the reachable environment, attacker-observable distinction, missing
or weakened protection, and consequence. Preserve enough internal diagnostic
value for operators while keeping external responses stable and minimal.

## Sources

- [OWASP Error Handling Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Error_Handling_Cheat_Sheet.html)
- [CWE-209: Generation of Error Message Containing Sensitive Information](https://cwe.mitre.org/data/definitions/209.html)
- [CWE-636: Not Failing Securely](https://cwe.mitre.org/data/definitions/636.html)
