# XSS and unsafe rendering

Load when untrusted content reaches a browser rendering or execution context.

Identify the exact context: HTML text, attribute, URL, JavaScript, CSS, DOM
sink, markdown, rich text, or framework escape hatch. Trace server rendering,
client hydration, transformations, sanitization, storage, and later display.
Encoding is context-specific; sanitization must preserve its guarantees after
every transformation.

Inspect raw-output features, DOM APIs, URL schemes, event attributes, SVG,
user-controlled component names or props, rich-text configuration, and stored
content rendered by a different surface. Content Security Policy is defense in
depth, not proof that an unsafe sink is safe. Prove attacker influence over
the final context and executable browser behavior; inert text and effective
escaping or sanitization are safe cases.

Sources: [OWASP XSS Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html),
[OWASP DOM XSS Prevention](https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html),
[CWE-79](https://cwe.mitre.org/data/definitions/79.html).
