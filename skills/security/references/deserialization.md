# Deserialization and object reconstruction

Load when untrusted structured data can select types, constructors, hooks,
object graphs, parser modes, or executable behavior.

Trace bytes through framing, decompression, decoding, schema selection, type
resolution, object construction, validation, callbacks, and downstream
effects. Inspect polymorphic types, magic methods, custom decoders, class
registries, implicit imports, reference expansion, schema confusion, duplicate
fields, resource amplification, and signed-but-dangerous objects.

Prefer inert formats, explicit schemas, allowlisted types, bounded depth and
size, and validation before consequential construction. Authenticity does not
make a dangerous object safe when an attacker can obtain or influence a validly
signed representation.
Prove attacker-controlled input reaches dangerous reconstruction or violates a
parser invariant; strict inert primitives with no dangerous hook are a safe
case.

Sources: [OWASP Deserialization](https://cheatsheetseries.owasp.org/cheatsheets/Deserialization_Cheat_Sheet.html),
[CWE-502](https://cwe.mitre.org/data/definitions/502.html).
