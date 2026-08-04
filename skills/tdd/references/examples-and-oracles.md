# Examples and oracles

Use this branch when case selection or expected results require substantial
judgment.

Name the governing behavior before writing an assertion. Derive expectations
from an accepted example, explicit contract, standard, hand calculation,
trusted fixture, separately implemented oracle, property, invariant,
metamorphic relation, or differential comparison. Keep the expectation
independent from production code so the test can disagree with a plausible
wrong implementation.

Start with one canonical case that drives a meaningful vertical slice. Add
only a boundary, contrast, invalid input, failure, state transition, ordering
case, or demonstrated regression that could expose a credible wrong behavior.
For broad spaces, state what a property or adaptive set can and cannot prove;
leave any larger completion claim outside this method.

If source-of-truth evidence conflicts with current behavior or another
accepted record, preserve the conflict and both sources. Return the governing
claim, expectation source, cases or oracle, distinguished wrong behaviors,
limits, and next behavior to the loading procedure. This reference does not
choose route, call a skill, grant authority, define completion, or stop the
caller.
