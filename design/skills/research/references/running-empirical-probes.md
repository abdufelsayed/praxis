# Running Empirical Probes

> **Status: accepted Research reference design; runtime implementation
> pending.**
>
> Load this reference when a bounded factual uncertainty must be observed in an
> actual or representative environment. Research retains the claim, synthesis,
> return, authority, and stopping decision.

## Define the discrimination before running

State:

- the exact uncertainty;
- the competing expected observations;
- the relevant environment and conditions;
- which result would distinguish the claims;
- the authority and safety boundary; and
- the stopping and cleanup conditions.

This prevents an ambiguous output from being interpreted after the fact to fit
the preferred answer.

## Build the smallest useful probe

Use the least expensive disposable setup capable of exposing the load-bearing
behavior. Prefer synthetic data, isolated environments, narrow instrumentation,
and repository-native tools.

The probe must preserve every condition that matters to the claim. A mock that
removes the disputed component, a toy workload that omits representative scale,
or a browser test against the wrong target cannot distinguish the accepted
alternatives.

Read-only observation and disposable local harnesses are normal. Product
mutation, production calls, costly services, sensitive data, destructive
effects, or consequential experiments retain their ordinary explicit authority
and safety boundaries.

## Preserve reproducibility

Record enough for another capable agent to rerun and interpret the probe:

- source revision and dependency versions;
- relevant configuration and environment;
- inputs and setup;
- command or interaction;
- observed output and retained evidence; and
- cleanup or reset performed.

Keep raw output only when a future consumer needs it. The return should explain
the observation and its limits rather than dump logs.

## Interpret results at their tested scope

A positive result supports the behavior under the tested conditions. A
negative result rules out only what the probe was sensitive enough to expose.
Neither automatically proves a universal claim.

When the result is noisy, surprising, or consequential, repeat, perturb, or add
an independent case proportionately. If the probe cannot distinguish the
claims, revise the experimental design or return the uncertainty instead of
calling the attempt evidence.

## Stop after discrimination

Stop when the smallest valid probe has distinguished the competing claims or
shown that the available environment cannot resolve them. Do not expand a
bounded feasibility check into product implementation or an open-ended
benchmark.

## Return to Research

Return:

- the bounded observation;
- which competing claim it supports or weakens;
- the tested environment and conditions;
- reproducible evidence;
- fidelity, coverage, and interpretation limits;
- unresolved uncertainty; and
- any implication for the caller's question.

Research decides how this observation combines with source and external
evidence and whether the factual question is now answered.
