# Data Protection and Privacy

> **Status: accepted semantic source; target runtime projection: `references/data-protection.md`.**

> Load when sensitive or regulated data moves through the target.

Classify the data and trace collection, derivation, transport, storage,
indexes, caches, analytics, logs, errors, exports, support tools, backups,
replicas, retention, deletion, and third parties. Identify the actors and
services that can observe each representation and whether that access is
necessary for the accepted behavior.

Check minimization, purpose boundaries, tenant isolation, field-level access,
redaction, encryption and key separation, safe defaults, test data, debug
surfaces, deletion propagation, and recovery media. Encryption at rest does not
protect data copied into logs, exposed through an authorized-but-overbroad API,
or retained indefinitely in backups.

Separate a demonstrated confidentiality, integrity, or lifecycle violation
from a general privacy improvement. Do not invent regulatory requirements;
return missing policy to Requirements Discovery or Formalization.

## Sources

- [OWASP User Privacy Protection Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html)
- [OWASP Logging Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html)
- [NIST Privacy Framework](https://www.nist.gov/privacy-framework)
