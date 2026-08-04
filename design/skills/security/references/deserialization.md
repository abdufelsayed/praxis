# Deserialization and Object Reconstruction

> **Status: accepted semantic source; target runtime projection: `references/deserialization.md`.**

> Load when untrusted structured data can select types, constructors, hooks,
> object graphs, parser modes, or executable behavior.

Trace bytes through framing, decompression, decoding, schema selection, type
resolution, object construction, validation, callbacks, and downstream effects.
Inspect polymorphic types, magic methods, custom decoders, class registries,
implicit imports, reference expansion, schema confusion, duplicate fields,
resource amplification, and signed-but-still-dangerous objects.

Prefer inert data formats, explicit schemas, allowlisted types, bounded depth
and size, and validation before consequential construction. Authenticity does
not make a dangerous object safe when an attacker can obtain or influence a
validly signed representation.

Prove that attacker-controlled input reaches dangerous reconstruction or a
violated parser invariant. Reject generic warnings where the parser produces
only inert primitives under a strict schema and no dangerous hook is reachable.

## Sources

- [OWASP Deserialization Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Deserialization_Cheat_Sheet.html)
- [CWE-502: Deserialization of Untrusted Data](https://cwe.mitre.org/data/definitions/502.html)
