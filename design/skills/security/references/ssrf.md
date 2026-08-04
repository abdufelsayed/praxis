# External Requests and SSRF

> **Status: accepted semantic source; target runtime projection: `references/ssrf.md`.**

> Load when an attacker may influence an outbound destination, request, DNS
> result, redirect, proxy, webhook, callback, or fetcher.

Trace the value from input through parsing, normalization, allowlisting, DNS,
proxy selection, redirect handling, connection establishment, and every retry
or secondary fetch. Compare the validated destination with the destination
actually reached. Inspect alternate IP notations, embedded credentials,
scheme confusion, DNS rebinding, redirects, IPv6, local sockets, cloud metadata,
internal names, and response forwarding.

Prefer fixed destinations or narrowly allowlisted schemes, hosts, ports, and
resolved address ranges, with revalidation at the connection boundary and
restricted network egress. URL syntax validation alone does not establish a
safe network destination.

Prove attacker influence, reachability, protection bypass, and a meaningful
internal or privileged effect. Use isolated synthetic services for active
proof; remote or shared targets require exact authority.

## Sources

- [OWASP SSRF Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Server_Side_Request_Forgery_Prevention_Cheat_Sheet.html)
- [CWE-918: Server-Side Request Forgery](https://cwe.mitre.org/data/definitions/918.html)
