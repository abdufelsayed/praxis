# Authentication and session security

Load when identity establishment, credentials, recovery, MFA, sessions, or an
identity transition affects the attack path.

Inspect enrollment, login, step-up authentication, credential changes,
recovery, logout, revocation, account linking, and deletion as one lifecycle.
Establish what proves identity at each transition, which sessions or tokens
survive it, and whether an attacker can weaken or bypass the strongest path by
choosing another route.

Check enumeration, rate limits, replay, token entropy and binding, fixation,
rotation, expiration, storage, transport, cookie attributes, device or channel
assumptions, and recovery-token invalidation. MFA is not effective when
recovery, remembered devices, API tokens, or account linking bypass it.

Report a vulnerability only with attacker capability, reachable identity
transition, missing or bypassable protection, resulting identity or session,
and concrete consequence. Treat authentication as input to authorization when
identity provenance changes what the actor may do.

Sources: [OWASP Authentication Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html),
[OWASP Session Management Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html),
[OWASP Forgot Password Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html),
[NIST SP 800-63B](https://pages.nist.gov/800-63-4/sp800-63b.html).
