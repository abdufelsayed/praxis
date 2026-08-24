# Business logic and state abuse

Load when individually valid actions, sequences, timing, or combinations may
violate a governing workflow or economic invariant.

Write the invariant first: what value, state, limit, ownership, or ordering
must remain true? Model the state machine and every actor able to trigger
transitions. Explore replay, reordering, omission, duplication, concurrency,
stale state, partial failure, retries, alternate channels, limit reset, price
or quantity manipulation, self-referral, and collusion.

Check idempotency, atomicity, uniqueness, quotas, and transition guards at the
authoritative shared boundary, including background jobs and external
callbacks. Demonstrate the accepted-looking sequence and violated invariant.
Keep missing business meaning explicit; this method does not invent it.

Sources: [OWASP Business Logic Abuse](https://owasp.org/www-community/vulnerabilities/Business_logic_vulnerability),
[OWASP Transaction Authorization Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Transaction_Authorization_Cheat_Sheet.html),
[CWE-841](https://cwe.mitre.org/data/definitions/841.html).
