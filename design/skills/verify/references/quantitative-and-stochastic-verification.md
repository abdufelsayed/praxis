# Quantitative and Stochastic Verification

> **Status: accepted Verify reference design; runtime implementation pending.**
>
> Load this reference when a claim depends on measurement, sampling,
> variability, aggregation, benchmarking, or probabilistic behavior. Verify
> retains claim ownership, outcome semantics, return, and stopping.

## Fix the evaluation contract before observing results

Translate the governing claim into conditions that can decide it. Define the
target and baseline, workload or input distribution, environment, warm-up and
reset behavior, sample size or stopping rule, measured quantity, aggregation,
threshold, uncertainty treatment, and invalid-run rules before collecting the
decisive sample.

The contract must match the actual claim. A latency claim may need a percentile
rather than a mean; a reliability claim may need failures over time rather than
one successful run; a model-quality claim may need held-out cases and
independent judgment rather than examples used during refinement.

## Control sources of variation

Keep consequential configuration, data, dependency, resource, cache, and
concurrency conditions comparable. Randomize or counterbalance order when
systematic run order could favor one condition. Preserve seeds when useful for
reproduction, but do not mistake repeated results under one seed for
independent evidence.

Identify correlated evidence. Repeating the same workload, fixture, evaluator,
or environment can estimate variability within that path but cannot establish
robustness beyond its shared assumptions.

## Report the complete valid sample

Retain every run admitted by the predeclared rules. Report the distribution,
dispersion, failures, invalid runs, and uncertainty needed to judge the claim,
not only a favorable summary or representative example.

If the method proves unsuitable, explain why, invalidate the earlier result,
revise the evaluation contract, and collect a new complete sample. Do not
change workloads, thresholds, aggregations, exclusions, or stopping conditions
after observing results merely to produce a passing claim.

## Interpret evidence at its supported scope

Quantitative evidence verifies only the tested workload, environment, range,
and population unless material equivalence or justified generalization is
established. Separate a statistically noisy result from a materially
insufficient improvement, and keep an inconclusive result `unverified`.

Use the shared Feedback and Evaluation reference when evaluator behavior,
adaptive trials, comparison bias, or independence materially affects the
measurement.

## Return to Verify

Return the fixed claim and evaluation contract, complete valid sample,
observations and aggregation, uncertainty and correlated evidence,
environmental limits, invalidated runs or methods, and the resulting
`verified`, `failed`, or `unverified` status. Do not optimize the system, revise
the threshold, or redefine the claim inside verification.
