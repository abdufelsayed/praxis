# Business Logic and State Abuse

> **Status: accepted semantic source; target runtime projection: `references/business-logic.md`.**

> Load when individually valid actions, sequences, timing, or combinations may
> violate a governing workflow or economic invariant.

Write the invariant before searching: what value, state, limit, ownership, or
ordering must remain true? Model the state machine and every actor able to
trigger transitions. Explore replay, reordering, omission, duplication,
concurrency, stale state, partial failure, retries, alternate channels, limit
reset, price or quantity manipulation, self-referral, and collusion.

Authentication and input validation may both succeed while the workflow is
still exploitable. Check whether idempotency, atomicity, uniqueness, quotas,
and transition guards are enforced at the authoritative shared boundary rather
than only in one caller. Include background jobs and external callbacks in the
same state model.

Demonstrate the accepted-looking sequence and the violated invariant. Separate
an actual exploit from a product-policy ambiguity; missing business meaning
returns to Requirements Discovery or Formalization.

## Sources

- [OWASP Business Logic Abuse](https://owasp.org/www-community/vulnerabilities/Business_logic_vulnerability)
- [OWASP Transaction Authorization Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Transaction_Authorization_Cheat_Sheet.html)
- [CWE-841: Improper Enforcement of Behavioral Workflow](https://cwe.mitre.org/data/definitions/841.html)
