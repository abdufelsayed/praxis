# Local Markdown Issue Workflow

Use this adapter when the requester wants durable work in the repository rather
than a remote tracker. Prefer an existing layout. Otherwise use
`.praxis/<effort>/` as an optional workspace and create only what the selected
workflow needs:

```text
.praxis/<effort>/
  map.md
  specification.md
  issues/
```

None of these files is mandatory. Evolve owns `map.md`, Write Spec owns
`specification.md`, and Define Issues owns one file per implementation issue.
The map links to detail rather than copying it. Blocking edges live with the
issues they constrain and use stable readable filenames when no repository
convention exists.

Local files contain the accepted result, decisive context, and evidence needed
by their named future consumer. They do not contain synthetic conversation logs,
approval machinery, lifecycle gates, or automatically maintained status.

Confirm whether the effort is tracked or ignored before creating files or ignore
rules. A path named `.scratch` or `.praxis` is not disposable merely because of
its name.
