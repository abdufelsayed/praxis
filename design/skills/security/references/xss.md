# XSS and Unsafe Rendering

> **Status: accepted semantic source; target runtime projection: `references/xss.md`.**

> Load when untrusted content reaches a browser rendering or execution context.

Identify the exact context: HTML text, attribute, URL, JavaScript, CSS, DOM
sink, markdown, rich text, or framework escape hatch. Trace server rendering,
client hydration, transformations, sanitization, storage, and later display.
Encoding is context-specific; sanitization must preserve its guarantees after
every subsequent transformation.

Inspect template raw-output features, DOM APIs, URL schemes, event attributes,
SVG, user-controlled component names or props, rich-text configuration, and
stored content rendered by a different surface. Content Security Policy is
useful defense in depth but does not turn an unsafe sink into a safe one.

Prove attacker influence over the final context and executable browser
behavior. Reject findings where the framework escapes the value in the actual
sink, the sanitizer policy removes the relevant construct, or the alleged
payload is displayed only as inert text.

## Sources

- [OWASP XSS Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html)
- [OWASP DOM based XSS Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html)
- [CWE-79: Cross-site Scripting](https://cwe.mitre.org/data/definitions/79.html)
