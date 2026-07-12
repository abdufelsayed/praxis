---
name: record-decision
description: Use when a consequential technical, product, workflow, naming, dependency, or policy choice must remain understandable after the conversation or implementation context is gone.
---

# Record Decision

## Overview

Preserve a choice whose rationale and consequences will guide future work. Record decisions only when forgetting them would cause likely re-litigation, incompatibility, or incorrect implementation.

## Establish The Decision

State the question, constraints, and chosen option. Include alternatives only when a future maintainer is likely to choose them and needs to understand why they were rejected. Distinguish an accepted decision from a proposal awaiting approval.

Use repository conventions such as ADRs or decision logs. Create no file when the decision is already expressed durably in code, tests, configuration, an issue, or a specification.

## Record Durable Consequences

Capture:

- status and decision date when the format requires them;
- the decision in one direct statement;
- context that materially constrained the choice;
- consequences for callers, implementation, operations, or future choices;
- superseded decision links when applicable.

Avoid meeting transcripts, exhaustive option matrices, implementation plans, and speculative future work. Update or supersede a record when new evidence changes the choice; do not silently rewrite accepted history when the repository expects immutable ADRs.

When a durable local record is appropriate and no convention exists, adapt [references/decision-template.md](references/decision-template.md). Route observable behavior to `spec` and executable steps to `plan` rather than expanding the decision record.

