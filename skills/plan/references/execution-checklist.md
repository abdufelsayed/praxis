# Execution Checklist

Use this section inside an existing durable plan; do not create a separate status file.

```markdown
## Execution

- [ ] T1 — <independently checkable result>
- [ ] T2 — <independently checkable result>

Current task: <ID or none>
Blocked by: <exact signal or none>
Next action: <one concrete action>
```

Rewrite the three status lines when execution changes. Keep evidence in task checks, commits, or final verification instead of copying logs here.
