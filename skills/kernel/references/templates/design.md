# Design Template

Use when a provisional or accepted architecture, model, API, boundary, vocabulary, or placement needs to survive future sessions or guide downstream artifacts. Omit empty sections.

```markdown
# <Design Title>

Date: <YYYY-MM-DD>
Truth Status: draft | provisional | accepted | superseded | invalidated
Program: <program path or "none">

Agent Control:
- Required process: `praxis:design` to edit this design; `praxis:refine` if evidence contradicts it.
- Execution mode: none until linked issue/plan is ready.
- Review gate: use `praxis:preflight` before accepting architecture-shaping designs; use `praxis:review` before delivery when implementation risk remains.
- Verification gate: every design claim needs source evidence, verifier, accepted risk, or explicit gap.

## Design Question

<The boundary, model, API, placement, or vocabulary being shaped.>

## Current Design

<The current candidate or accepted design.>

## Context And Constraints

- <source fact, repo pattern, user constraint, program record, or requirement>

## Candidates Considered

- CAND-1: <candidate>
  - Tradeoff:
  - Status: proposed | rejected | accepted | refined | invalidated

## Verifiers

- <test, source check, review, preflight, implementation probe, or user decision>

## Counterexamples Or Gaps

- <CE/GAP/ASM/HYP link or summary>

## Consequences

- <what future agents should do because of this design>

## Links

- Program:
- Decision:
- Spec:
- Issue:
- Plan:
- Evidence:
```
