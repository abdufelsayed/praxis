# Cryptography, Secrets, and Tokens

> **Status: accepted semantic source; target runtime projection: `references/cryptography.md`.**

> Load when security depends on randomness, hashing, encryption, signatures,
> keys, secrets, tokens, or cryptographic protocol behavior.

Start from the property required: confidentiality, integrity, authenticity,
freshness, unlinkability, password resistance, or safe comparison. Then inspect
the full lifecycle: generation, entropy, derivation, algorithm and mode,
parameters, binding and associated data, storage, access, rotation, revocation,
transport, logging, backup, expiration, and destruction.

Prefer established libraries and protocols with current secure defaults. Look
for nonce or IV reuse, deterministic secrets, weak password hashing, key and
ciphertext co-location, algorithm confusion, missing domain separation,
unsigned metadata, truncation, token replay, unsafe decoding, and comparisons
that leak consequential information.

Do not report custom-looking code merely because it is unfamiliar, or accept a
named strong primitive as proof. Establish how the construction is used and
which governing property fails. If protocol guarantees are consequential and
unclear, invoke Research for authoritative semantics.

## Sources

- [OWASP Cryptographic Storage Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Cryptographic_Storage_Cheat_Sheet.html)
- [OWASP Secrets Management Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html)
- [OWASP Password Storage Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)
- [CWE-327: Broken or Risky Cryptographic Algorithm](https://cwe.mitre.org/data/definitions/327.html)
