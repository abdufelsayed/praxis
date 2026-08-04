# Quantitative evidence

Use this branch when measurement, sampling, variability, aggregation,
benchmarking, or probability affects the claim.

Fix the evaluation contract before collecting the decisive sample: target and
baseline, workload or input distribution, environment, warm-up and reset,
sample size or stopping rule, quantity, aggregation, threshold, uncertainty,
and invalid-run rules. Keep material configuration, data, dependencies,
resources, cache, and concurrency comparable; randomize or counterbalance
order when needed. Seeds aid reproduction but do not create independent
evidence.

Report every valid run, distribution, dispersion, failures, invalid runs,
uncertainty, and correlated evaluator, workload, or environment. If the method
is unsuitable, invalidate the earlier result, revise the contract, and collect
a new complete sample. Do not change threshold, workload, aggregation, or
stopping after seeing results. Scope the conclusion to the tested population
and report whether the evidence supports, contradicts, or cannot establish the
claim to the loading procedure.

This reference does not optimize, redefine, or stop the caller.
