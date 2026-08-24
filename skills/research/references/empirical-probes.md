# Empirical probes

Use this method when a bounded uncertainty must be observed in an actual or
representative environment. Research retains the claim, synthesis, return,
authority, and stopping.

## Define the discrimination first

Write the exact uncertainty, competing expected observations, relevant
environment and conditions, and which result would distinguish the claims.
Name the authority and safety boundary, inputs, and cleanup or reset evidence
before execution. An output that cannot distinguish the alternatives is not a
useful probe.

## Build the smallest valid probe

Use the least expensive disposable setup that preserves every load-bearing
condition. Prefer synthetic data, isolated environments, narrow
instrumentation, and repository-native tools. A mock that removes the
disputed component, a toy workload that omits representative scale, or a
browser test against the wrong target cannot support the original claim.

Read-only observation and disposable local harnesses are normal. Product
mutation, production calls, costly services, sensitive data, destructive
effects, or consequential experiments retain their explicit authority and
safety boundary; this method never supplies either.

## Preserve reproducibility

Record enough for another capable agent to rerun and interpret the probe:

- source revision and dependency versions;
- relevant configuration and environment;
- inputs and setup;
- command or interaction;
- observed output and retained evidence; and
- cleanup or reset performed.

Keep raw output only when a named future consumer needs the exact bytes. The
method result explains the observation and limits instead of dumping logs.

## Interpret only the tested boundary

A positive result supports the behavior under the tested conditions. A
negative result rules out only what the probe could expose. Neither proves a
universal claim. When a result is noisy, surprising, or consequential, repeat,
perturb, or add an independent case proportionately. If the probe cannot
distinguish the claims, revise the design when a bounded alternative may help;
otherwise return the uncertainty honestly.

## Return the observation

Return the bounded observation, which competing claim it supports or weakens,
tested environment and conditions, reproducible evidence, fidelity and
coverage limits, interpretation, unresolved uncertainty, and implication for
the caller. Do not expand a feasibility probe into product implementation or
an open-ended benchmark.
