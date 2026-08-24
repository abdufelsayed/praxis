# Native CLI

Read this reference when command compatibility, structured transport, recovery, or
a failed Plannotator interaction must be checked.

## Detect the required surface

Inspect help for only the command and options the selected interaction needs:

```text
plannotator --version
plannotator annotate --help
plannotator review --help
plannotator last --help
plannotator sessions --help
plannotator archive --help
plannotator setup-goal interview --help
plannotator setup-goal facts --help
```

Detect features from current help rather than a pinned version. Useful native
commands include:

```text
plannotator annotate <file-or-folder-or-url>
plannotator annotate <plan-or-result> --gate --json
plannotator last
plannotator review --git
plannotator review <PR-or-MR-URL>
plannotator review --tailscale --git
plannotator setup-goal interview <bundle.json-or-> --json
plannotator setup-goal facts <bundle.json-or-> --json
plannotator sessions
plannotator archive
```

Use `--tailscale` only when requested and exposed by current help. Use structured
stdout normally and a transient `--result-file` only when stdout cannot be
retained reliably.

## Interpret and recover

Preserve the native decision and feedback. Approval applies only to the declared
target; annotation and plaintext are feedback; dismissal or closure supplies no
judgment; CLI failure leaves the interaction unfinished.

After a browser opens, quiet output usually means the requester is still reviewing.
Wait for submit, dismissal, or an explicit stop. Use `sessions` or `archive` only
for a requested or confirmed recovery need. Do not open duplicate sessions or
install automatic hooks and wrappers.

If a required command is unavailable, report the exact missing surface and route
installation or repair to Setup My Skills. A conversation does not substitute for
a requested native review.
