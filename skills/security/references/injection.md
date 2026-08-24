# Injection

Load when attacker-controlled data may cross into an interpreter, query,
command, template, expression, header, or executable grammar.

Trace `source -> normalization -> construction -> protection -> interpreter -> effect`.
Name the exact grammar and context. Parameterization safe for values may not
protect identifiers, operators, clauses, shell structure, or a second
interpreter reached after decoding.

Inspect transformations and alternate sinks. Prefer structured APIs,
allowlisted choices, and context-correct encoding over ad hoc escaping. Verify
protection at the final interpretation boundary and its resistance to encoding,
concatenation, type confusion, fallback, or parser bypass. A suspicious string
operation is not a finding without attacker control, reachable interpretation,
ineffective separation, and consequence.

Sources: [OWASP Injection Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html),
[OWASP SQL Injection Prevention](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html),
[OWASP OS Command Injection Defense](https://cheatsheetseries.owasp.org/cheatsheets/OS_Command_Injection_Defense_Cheat_Sheet.html),
[CWE-74](https://cwe.mitre.org/data/definitions/74.html).
