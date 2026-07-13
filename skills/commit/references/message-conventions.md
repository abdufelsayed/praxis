# Commit Message Conventions

Follow repository history first. When no convention exists, use:

```text
<type>(<optional scope>): <imperative subject>

<why the change exists and material behavior or risk>

<issue, breaking-change, or required attribution footers>
```

Common types are `feat`, `fix`, `refactor`, `perf`, `docs`, `test`, `build`, `ci`, and `chore`. Keep the subject scannable, without a trailing period. Use a body only when motivation, behavior, migration, or risk is not obvious from the diff.

Use `Fixes` only when integration should close an issue and `Refs` for context. Put breaking-change and issue footers before any repository-required co-author footer. Use real message paragraphs, never literal `\n` escapes.
