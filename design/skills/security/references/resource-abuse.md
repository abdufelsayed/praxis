# Availability and Resource Abuse

> **Status: accepted semantic source; target runtime projection: `references/resource-abuse.md`.**

> Load when attacker-controlled input can amplify computation, memory, storage,
> queues, network traffic, third-party usage, or financial cost.

Trace `input -> amplification -> shared resource -> limit or isolation ->
recovery`. Inspect algorithmic complexity, decompression and parser bombs,
unbounded pagination or recursion, database fan-out, queue growth, cache
pollution, expensive retries, model or API calls, storage churn, connection
pools, concurrency, and rate-limit scope or bypass.

Measure the practical exhaustion boundary under controlled synthetic
conditions. Consider per-request cost, attacker parallelism, shared tenancy,
backpressure, cancellation, quotas, timeouts, circuit breakers, admission
control, graceful degradation, and recovery after load stops.

Expensive work is not automatically vulnerable. Establish attacker control,
an asymmetric or unbounded cost, inadequate limiting or isolation, and an
observable availability or financial consequence. Active load against shared
or remote systems requires exact authority.

## Sources

- [OWASP Denial of Service](https://owasp.org/www-community/attacks/Denial_of_Service)
- [CWE-400: Uncontrolled Resource Consumption](https://cwe.mitre.org/data/definitions/400.html)
- [CWE-770: Allocation of Resources Without Limits](https://cwe.mitre.org/data/definitions/770.html)
