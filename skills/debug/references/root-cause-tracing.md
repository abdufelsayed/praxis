# Root-Cause Tracing

Use this technique when the visible failure occurs far from the value, state change, or configuration that caused it.

## Trace Backward

1. Start at the first observed failure.
2. Identify the incorrect value or state at that boundary.
3. Find the caller or upstream component that supplied it.
4. Inspect the value before and after that component's transformation.
5. Repeat until the value is correct on entry and incorrect on exit.

Do not stop at the first function where a guard could be added. A guard may improve the error, but it does not explain why the invalid value exists.

## Boundary Probe

Capture only what distinguishes components, and redact secrets:

| Boundary | Input | Output | Configuration or state | Observation |
| --- | --- | --- | --- | --- |
| caller → API | request fields | status and body | endpoint, auth mode | first mismatch |
| API → service | parsed values | domain result | feature flags | correct or incorrect |
| service → store | query or command | rows or error | transaction, tenant | correct or incorrect |

A useful probe supports one conclusion:

- The value is already wrong before component B, so B is not the origin.
- The value enters B correctly and leaves incorrectly, so inspect B's transformation.
- Values stay correct, but configuration changes between B and C, so trace configuration propagation.

## Deep Call Chains

Follow arguments toward their origin:

```text
failure(value = invalid)
  called by transform(raw = ?)
  called by load(source = ?)
  called by request(input = ?)
```

Inspect each `?` from the failure backward. Fix the earliest incorrect assumption or transformation.
