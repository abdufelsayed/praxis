# Cryptography, secrets, and tokens

Load when security depends on randomness, hashing, encryption, signatures,
keys, secrets, tokens, or cryptographic protocol behavior.

Start from the required property: confidentiality, integrity, authenticity,
freshness, unlinkability, password resistance, or safe comparison. Inspect
generation, entropy, derivation, algorithm and mode, parameters, binding and
associated data, storage, access, rotation, revocation, transport, logging,
backup, expiration, and destruction.

Prefer established libraries and protocols with current secure defaults. Look
for nonce or IV reuse, deterministic secrets, weak password hashing, key and
ciphertext co-location, algorithm confusion, missing domain separation,
unsigned metadata, truncation, token replay, unsafe decoding, and comparisons
that leak consequential information. Unfamiliar custom code or a named strong
primitive is not a finding without a demonstrated failed property. Preserve
unclear consequential protocol semantics as explicit uncertainty in the
returned method evidence.

Sources: [OWASP Cryptographic Storage](https://cheatsheetseries.owasp.org/cheatsheets/Cryptographic_Storage_Cheat_Sheet.html),
[OWASP Secrets Management](https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html),
[OWASP Password Storage](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html),
[CWE-327](https://cwe.mitre.org/data/definitions/327.html).
