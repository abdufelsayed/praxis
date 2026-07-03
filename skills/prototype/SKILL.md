---
name: prototype
description: Use when a disposable spike is the fastest way to answer a design, logic, API, state, UI, performance, or library question before production implementation.
---

# Prototype

Build evidence, not production debt.

## Required Reads

Load `praxis:source` when the spike depends on external or version-sensitive behavior. Load `praxis:safety` before touching production data, secrets, migrations, or irreversible operations.

## Rules

- State the question the prototype answers.
- Keep the spike small and disposable.
- Avoid wiring it into production paths unless explicitly approved.
- Record findings and the recommended production path.
- Remove or isolate throwaway artifacts before finishing.

## Next Skills

Load `praxis:decide`, `praxis:spec`, or `praxis:plan` when the prototype answers the question. Load `praxis:finish` before calling the spike complete.
