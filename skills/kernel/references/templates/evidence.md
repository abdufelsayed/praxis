# Evidence Template

Use for persisted review findings, verification proof, or audit-worthy quality signals. Omit empty sections.

```markdown
# <Claim Or Review Scope> Evidence

Date: <YYYY-MM-DD>
Evidence ID: EV-1

## Claim Or Scope

<What this evidence supports or reviews.>

## Verdict

<verified | failed | unverified | clean | findings>

## Checks Run

- CHK-1: `<command or manual check>` -> <result and signal>

## Findings

- REV-1: <severity>: <finding with file/line when relevant>

## Gaps

- <anything not verified or still risky>

## Links

- Diff:
- Plan:
- Issue:
- PR:
- Logs:
```
