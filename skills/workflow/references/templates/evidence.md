# Evidence Template

Use when review findings, verification proof, or audit-worthy quality signal must survive the current turn. Omit empty sections.

```markdown
# <Claim Or Review Scope> Evidence

Date: <YYYY-MM-DD>
Claim: <done | fixed | passing | reviewed | ready | blocked | other>

## Scope

- <files, issue, plan, spec, PR, or behavior checked>

## Checks

- `<command or manual check>` -> <result and signal>

## Findings

- <severity if review finding>: <file/line and issue>

## Gaps

- <anything not verified, skipped, flaky, or risky>

## Verdict

<What the evidence supports now.>

## Links

- <diff, log, test output, review, issue, plan, PR, or source>
```
