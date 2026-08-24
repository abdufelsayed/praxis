# Error handling and information disclosure

Load when failure behavior can reveal protected information, weaken a security
property, or trigger an unsafe fallback.

Trace expected and unexpected failures through boundaries, retries, fallbacks,
partial writes, cleanup, and user-visible responses. Compare status codes,
bodies, headers, timing, logs, metrics, traces, and side effects across close
protected and unprotected cases.

Look for secrets, stack traces, internal paths, query fragments, tokens,
personal data, tenant existence, account enumeration, policy details, parser
differences, fail-open behavior, inconsistent rollback, retry amplification,
and errors swallowed before unsafe continuation. Establish attacker-observable
distinction and consequence; preserve internal diagnostic value while keeping
external responses stable and minimal.

Sources: [OWASP Error Handling](https://cheatsheetseries.owasp.org/cheatsheets/Error_Handling_Cheat_Sheet.html),
[CWE-209](https://cwe.mitre.org/data/definitions/209.html),
[CWE-636](https://cwe.mitre.org/data/definitions/636.html).
