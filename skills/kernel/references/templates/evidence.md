# Evidence Template

Use for saved review findings, verification proof, counterexamples, retrospectives, or audit-worthy quality signals. Omit empty sections.

```markdown
# <Claim Or Review Scope> Evidence

Date: <YYYY-MM-DD>
Evidence ID: EV-1
Evidence Type: verification | review | counterexample | retrospective | source | runtime
Truth Status: accepted | superseded | invalidated
Program: <program path or "none">

## Claim Or Scope

<What this evidence supports or reviews.>

## Verdict

<verified | failed | unverified | clean | findings | counterexample | learning>

## Counterexample

- Candidate:
- Concrete failing case:
- Invalidates:
- Refinement:

## Checks Run

- CHK-1: `<command or manual check>` -> <result and signal>

## Findings

- REV-1: <severity>: <finding with file/line when relevant>

## Gaps

- <anything not verified or still risky>

## Retrospective Learning

- Proved:
- Disproved:
- Changed model:
- Artifact repairs needed:

## Links

- Diff:
- Program:
- Design:
- Decision:
- Spec:
- Plan:
- Issue:
- PR:
- Logs:
```
