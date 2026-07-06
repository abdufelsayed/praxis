# Program Template

Use for long-running uncertain design, research, architecture, or development work. A program manages evolving truth; it is not a plan, transcript, or backlog. Omit empty sections.

```markdown
# <Program Name> Program

Date: <YYYY-MM-DD>
Truth Status: draft | provisional | accepted | superseded | invalidated

Agent Control:
- Required process: `praxis:program` to edit program truth; `praxis:refine` for counterexamples, invalidations, or supersession.
- Execution mode: none until linked issue/plan is ready.
- Review gate: use `praxis:preflight` before promoting broad/risky candidates into design/spec/plan; use `praxis:review` for architecture-shaping artifacts when risk remains.
- Verification gate: every promoted candidate needs a verifier, accepted risk, or explicit gap.

## Purpose

<What the program is trying to learn, design, or change.>

## Current Synthesis

<The best current explanation/design direction in present-tense truth.>

## Frontier

- Current question:
- Next pressure point:
- Stop condition:

## Accepted Vocabulary

- <term>: <meaning>

## Facts

- FACT-1: <source-backed fact> (Evidence: <link/path/source>)

## Unknowns And Gaps

- GAP-1: <unknown that can change direction>
  - Owner/verifier:
  - Revisit when:

## Assumptions

- ASM-1: <premise being used provisionally>
  - Supports:
  - Risk if false:
  - Verifier:

## Hypotheses

- HYP-1: <testable explanation or prediction>
  - Test:
  - Status: untested | supported | weakened | invalidated

## Candidates

- CAND-1: <candidate design/spec/plan/model/code shape>
  - Depends on:
  - Verifier:
  - Status: proposed | pressured | promoted | refined | invalidated

## Counterexamples

- CE-1: <concrete case where a candidate fails>
  - Challenges:
  - Invalidates:
  - Evidence:
  - Refinement:

## Invalidations And Supersessions

- INV-1: <artifact/record invalidated or superseded>
  - Cause:
  - Successor:
  - Downstream repair:

## Accepted Risks

- RISK-1: <risk accepted for now>
  - Owner:
  - Revisit when:

## Artifact Map

- Designs:
- Decisions:
- Specs:
- Issues:
- Plans:
- Evidence:
- Handoffs:

## Next Action

<One concrete pressure, exploration, design, artifact update, or execution route.>
```
