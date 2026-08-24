# Native CLI compatibility and recovery

Load this reference when a selected interaction needs compatibility checking,
structured transport, archive recovery, or diagnosis of a failed native
command. Setup owns installation and repair; this reference characterizes the
surface Plannotator is about to use and never opens an interaction merely to
check readiness.

## Feature-detect the selected surface

Check the commands and options required by the current branch, not a minimum
version number:

```text
plannotator --version
plannotator --help
plannotator annotate --help
plannotator review --help
plannotator last --help
plannotator sessions --help
plannotator archive --help
plannotator setup-goal --help
plannotator setup-goal interview --help
plannotator setup-goal facts --help
```

When a tailnet review is requested, also confirm that `plannotator review
--help` exposes `--tailscale`. Do not infer support from the version string.

The supported surface includes file, folder, HTML, text, and URL annotation;
`--gate` and `--json`; local Git and remote PR or MR review with optional
tailnet transport; latest-message annotation; native sessions and archive
history; and the optional interview and facts primitives. A compatible newer
version may pass; an unavailable required command or option stops the selected
interaction and is reported exactly. A version string alone does not establish
compatibility.

The direct command map is:

```text
plannotator annotate <file-or-folder-or-url>
plannotator last
plannotator annotate <stable-record-or-folder> --gate --json
plannotator review --git
plannotator review <PR-or-MR-URL>
plannotator review --tailscale --git
plannotator review --tailscale <PR-or-MR-URL>
plannotator setup-goal interview <bundle.json-or-> --json
plannotator setup-goal facts <bundle.json-or-> --json
plannotator sessions
plannotator archive
```

Add no wrapper. Normal gates omit `--require-approval`; denial remains a valid
result. Structured stdout is ordinary transport. Use `--result-file` only for
unreliable stdout capture, keep it transient, and never promote it to a
Praxis record or artifact.

## Interpret transport

Preserve the native decision and feedback long enough for the caller to
interpret them:

- `approved` means only the declared provisional judgment;
- `approved` with `feedback` is non-blocking by default, but a
  meaning-changing note returns to the owner for revision and a repeated gate;
- `annotated` or plaintext feedback is owner-bound reaction;
- dismissal or closure is no judgment and no continuation; and
- CLI failure is an unpassed interaction, never an approval.

Do not infer a revision from notes on an approved result, infer approval from
empty output, or erase distinctions by normalizing the response. Empty output
counts as approval only where the selected command explicitly defines it so.

## Session recovery

After a browser opens, wait for submit, dismissal, or an explicit stop. Quiet
foreground output usually means the requester is still reading. Never open a
second copy, refresh, terminate, or restart because nothing changed. Use
`sessions` or `archive` only for an explicit human request or confirmed
recovery. Session presence or history never means approval.

Do not emit a commentary preamble before `plannotator last`. Do not use
Codex Stop hooks, Claude or OpenCode plugins, Pi extensions, `--hook`,
automatic plan interception, or `plannotator improve-context`; these duplicate
explicit Praxis interactions or inject unreviewed instructions.

## Failure boundary

If a selected command or required feature is unavailable, report the exact
failure and affected interaction, recommend checking or invoking Setup, and
stop at that boundary. No alternate surface, empty response, or conversational
reply counts as the missing Record Gate, Result Gate, or Plan-governed code
review.
