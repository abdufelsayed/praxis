# External requests and SSRF

Load when an attacker may influence an outbound destination, request, DNS
result, redirect, proxy, webhook, callback, or fetcher.

Trace input through parsing, normalization, allowlisting, DNS, proxy
selection, redirect handling, connection establishment, retries, and every
secondary fetch. Compare the validated destination with the destination
actually reached. Inspect alternate IP notation, embedded credentials, scheme
confusion, DNS rebinding, redirects, IPv6, local sockets, cloud metadata,
internal names, and response forwarding.

Prefer fixed destinations or narrowly allowlisted schemes, hosts, ports, and
resolved ranges, with revalidation at connection and restricted network
egress. URL syntax validation alone is not a safe network destination. Prove
attacker influence, reachability, protection bypass, and meaningful internal
or privileged effect; use isolated synthetic services for active proof.

Sources: [OWASP SSRF Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Server_Side_Request_Forgery_Prevention_Cheat_Sheet.html),
[CWE-918](https://cwe.mitre.org/data/definitions/918.html).
