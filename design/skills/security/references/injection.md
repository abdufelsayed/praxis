# Injection

> **Status: accepted semantic source; target runtime projection: `references/injection.md`.**

> Load when attacker-controlled data may cross into an interpreter, query,
> command, template, expression, header, or executable grammar.

Trace `source -> normalization -> construction -> protection -> interpreter ->
effect`. Name the exact grammar and context. Parameterization that is safe for
values may not protect identifiers, operators, clauses, shell structure, or a
second interpreter reached after decoding.

Inspect every transformation and alternate sink. Prefer structured APIs,
allowlisted choices, and context-correct encoding over ad hoc escaping. Verify
that the protection is applied at the final interpretation boundary and cannot
be bypassed through encoding, concatenation, type confusion, fallback paths,
or inconsistent parsers.

A suspicious string operation is not a finding. Prove attacker control,
reachable interpretation, ineffective separation between data and grammar,
and a consequential operation. Reject warnings where the fragment is fixed,
values remain bound, or the allegedly dangerous path cannot reach the
interpreter.

## Sources

- [OWASP Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html)
- [OWASP SQL Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
- [OWASP OS Command Injection Defense](https://cheatsheetseries.owasp.org/cheatsheets/OS_Command_Injection_Defense_Cheat_Sheet.html)
- [CWE-74: Injection](https://cwe.mitre.org/data/definitions/74.html)
